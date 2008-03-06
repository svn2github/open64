	.file	"class.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.15799, @object
	.size	__FUNCTION__.15799, 16
__FUNCTION__.15799:
	.string	"build_base_path"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/cp/class.c"
	.align 4
.LC1:
	.string	"cannot convert from base `%T' to derived type `%T' via virtual base `%T'"
	.text
.globl build_base_path
	.type	build_base_path, @function
build_base_path:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/class.c"
	.loc 1 260 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$96, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 261 0
	movl	$0, -52(%ebp)
	.loc 1 262 0
	movl	$0, -48(%ebp)
	.loc 1 266 0
	movl	$0, -32(%ebp)
	.loc 1 269 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 271 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L2
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L2
	cmpl	$0, 16(%ebp)
	jne	.L5
.L2:
	.loc 1 272 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L6
.L5:
	.loc 1 274 0
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L7
.L8:
	.loc 1 276 0
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 277 0
	cmpl	$0, -52(%ebp)
	jne	.L9
	movl	-44(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L9
	.loc 1 278 0
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
.L9:
	.loc 1 274 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
.L7:
	cmpl	$0, -44(%ebp)
	jne	.L8
	.loc 1 281 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 282 0
	cmpl	$0, -20(%ebp)
	je	.L13
	.loc 1 283 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, -44(%ebp)
.L13:
	.loc 1 285 0
	cmpl	$61, 8(%ebp)
	jne	.L15
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	sete	-65(%ebp)
	jmp	.L17
.L15:
	cmpl	$60, 8(%ebp)
	jne	.L18
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L20
.L18:
	movl	$1, -64(%ebp)
	jmp	.L21
.L20:
	movl	$0, -64(%ebp)
.L21:
	movzbl	-64(%ebp), %eax
	movb	%al, -65(%ebp)
.L17:
	cmpb	$0, -65(%ebp)
	je	.L22
	leal	__FUNCTION__.15799@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$289, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L22:
	.loc 1 291 0
	cmpl	$61, 8(%ebp)
	jne	.L24
	cmpl	$0, -52(%ebp)
	je	.L24
	.loc 1 293 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %ecx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 295 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L6
.L24:
	.loc 1 298 0
	cmpl	$0, -20(%ebp)
	jne	.L27
	.loc 1 300 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 12(%ebp)
.L27:
	.loc 1 302 0
	leal	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolves_to_fixed_type_p@PLT
	movl	%eax, -24(%ebp)
	.loc 1 303 0
	cmpl	$0, -24(%ebp)
	jg	.L29
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L29
	.loc 1 304 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
.L29:
	.loc 1 306 0
	cmpl	$0, -20(%ebp)
	je	.L32
	movl	20(%ebp), %eax
	testl	%eax, %eax
	jne	.L32
	.loc 1 307 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
.L32:
	.loc 1 309 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 311 0
	cmpl	$0, -52(%ebp)
	je	.L35
	cmpl	$0, -24(%ebp)
	jg	.L35
.LBB2:
	.loc 1 318 0
	cmpl	$0, -24(%ebp)
	jns	.L38
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L38
.LBB3:
	.loc 1 322 0
	movl	-52(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 324 0
	jmp	.L41
.L42:
	.loc 1 325 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L41:
	.loc 1 324 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L42
	.loc 1 327 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	40(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
	.loc 1 330 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, -16(%ebp)
	.loc 1 318 0
	jmp	.L44
.L38:
.LBE3:
	.loc 1 335 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %esi
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_vfield_ref@PLT
	movl	%eax, -16(%ebp)
.L44:
	.loc 1 338 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -52(%ebp)
	.loc 1 340 0
	movl	-52(%ebp), %eax
	movl	40(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
	.loc 1 342 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -16(%ebp)
	.loc 1 345 0
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -16(%ebp)
	.loc 1 346 0
	movl	-16(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
	.loc 1 348 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -40(%ebp)
	.loc 1 351 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L45
	.loc 1 352 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -16(%ebp)
.L45:
	.loc 1 354 0
	cmpl	$0, -24(%ebp)
	jns	.L47
	.loc 1 358 0
	movl	16(%ebp), %eax
	movl	24(%eax), %esi
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
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	%esi, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, -40(%ebp)
	jmp	.L35
.L47:
	.loc 1 364 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
.L35:
.LBE2:
	.loc 1 367 0
	cmpl	$60, 8(%ebp)
	jne	.L49
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L51
.L49:
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L51:
	movl	-60(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 369 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	$3, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, -36(%ebp)
	.loc 1 371 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 372 0
	cmpl	$0, -20(%ebp)
	je	.L52
	.loc 1 373 0
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
.L52:
	.loc 1 375 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, 12(%ebp)
	.loc 1 377 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L54
	.loc 1 378 0
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, 12(%ebp)
	jmp	.L56
.L54:
	.loc 1 380 0
	movl	$0, -32(%ebp)
.L56:
	.loc 1 382 0
	cmpl	$0, -20(%ebp)
	jne	.L57
	.loc 1 383 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, 12(%ebp)
.L57:
	.loc 1 385 0
	cmpl	$0, -32(%ebp)
	je	.L59
	.loc 1 386 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, 12(%ebp)
.L59:
	.loc 1 390 0
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
.L6:
	movl	-72(%ebp), %eax
	.loc 1 391 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	build_base_path, .-build_base_path
.globl convert_to_base
	.type	convert_to_base, @function
convert_to_base:
.LFB16:
	.loc 1 399 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$52, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movb	%al, -24(%ebp)
	.loc 1 402 0
	cmpb	$0, -24(%ebp)
	je	.L63
	movl	$2, -32(%ebp)
	jmp	.L65
.L63:
	movl	$1, -32(%ebp)
.L65:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	movl	%eax, -8(%ebp)
	.loc 1 405 0
	cmpl	$0, -8(%ebp)
	je	.L66
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L68
.L66:
	.loc 1 406 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L69
.L68:
	.loc 1 408 0
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, -28(%ebp)
.L69:
	movl	-28(%ebp), %eax
	.loc 1 409 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	convert_to_base, .-convert_to_base
.globl convert_to_base_statically
	.type	convert_to_base_statically, @function
convert_to_base_statically:
.LFB17:
	.loc 1 418 0
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
	.loc 1 421 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 422 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L72
.LBB4:
	.loc 1 426 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 427 0
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, 8(%ebp)
	.loc 1 428 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L74
	.loc 1 429 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_nop@PLT
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
.L74:
	.loc 1 431 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_nop@PLT
	movl	%eax, 8(%ebp)
	.loc 1 432 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%eax, 8(%ebp)
.L72:
.LBE4:
	.loc 1 435 0
	movl	8(%ebp), %eax
	.loc 1 436 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	convert_to_base_statically, .-convert_to_base_statically
	.section	.rodata
	.type	__FUNCTION__.16008, @object
	.size	__FUNCTION__.16008, 23
__FUNCTION__.16008:
	.string	"build_vtable_entry_ref"
	.text
	.type	build_vtable_entry_ref, @function
build_vtable_entry_ref:
.LFB18:
	.loc 1 444 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$52, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 447 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 448 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L78
	.loc 1 449 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L78:
	.loc 1 451 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	get_vtbl_decl_for_binfo@PLT
	movl	%eax, -16(%ebp)
	.loc 1 452 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 454 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_ref@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	.loc 1 455 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_c_cast@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	.loc 1 457 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_ref@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
	.loc 1 458 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_c_cast@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
	.loc 1 460 0
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build_binary_op@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
	.loc 1 462 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L80
	.loc 1 463 0
	leal	__FUNCTION__.16008@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$463, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L80:
	.loc 1 465 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$46, (%esp)
	call	build@PLT
	.loc 1 466 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	build_vtable_entry_ref, .-build_vtable_entry_ref
	.type	build_vtbl_ref_1, @function
build_vtbl_ref_1:
.LFB19:
	.loc 1 476 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$52, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 478 0
	movl	$0, -20(%ebp)
	.loc 1 483 0
	movl	$0, -28(%ebp)
	.loc 1 484 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixed_type_or_null
	movl	%eax, -16(%ebp)
	.loc 1 486 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 487 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L84
	.loc 1 488 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L84:
	.loc 1 490 0
	cmpl	$0, -16(%ebp)
	je	.L86
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L86
.LBB5:
	.loc 1 493 0
	movl	$0, 12(%esp)
	movl	$5, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -8(%ebp)
	.loc 1 494 0
	cmpl	$0, -8(%ebp)
	je	.L86
	.loc 1 495 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
.L86:
.LBE5:
	.loc 1 498 0
	cmpl	$0, -20(%ebp)
	jne	.L90
	.loc 1 500 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vfield_ref@PLT
	movl	%eax, -20(%ebp)
.L90:
	.loc 1 503 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_external@PLT
	.loc 1 505 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_ref@PLT
	movl	%eax, -24(%ebp)
	.loc 1 506 0
	movl	-24(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
	.loc 1 508 0
	movl	-24(%ebp), %eax
	.loc 1 509 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	build_vtbl_ref_1, .-build_vtbl_ref_1
.globl build_vtbl_ref
	.type	build_vtbl_ref, @function
build_vtbl_ref:
.LFB20:
	.loc 1 514 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$36, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 515 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtbl_ref_1
	movl	%eax, -8(%ebp)
	.loc 1 517 0
	movl	flag_vtable_gc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L94
	.loc 1 518 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtable_entry_ref
	movl	%eax, -8(%ebp)
.L94:
	.loc 1 520 0
	movl	-8(%ebp), %eax
	.loc 1 521 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	build_vtbl_ref, .-build_vtbl_ref
.globl build_vfn_ref
	.type	build_vfn_ref, @function
build_vfn_ref:
.LFB21:
	.loc 1 529 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$36, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 530 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtbl_ref_1
	movl	%eax, -8(%ebp)
	.loc 1 538 0
	movl	flag_vtable_gc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L98
	.loc 1 539 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtable_entry_ref
	movl	%eax, -8(%ebp)
.L98:
	.loc 1 541 0
	movl	-8(%ebp), %eax
	.loc 1 542 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	build_vfn_ref, .-build_vfn_ref
	.type	get_vtable_name, @function
get_vtable_name:
.LFB22:
	.loc 1 550 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$4, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 551 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_vtbl_for_type@PLT
	.loc 1 552 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	get_vtable_name, .-get_vtable_name
.globl get_vtt_name
	.type	get_vtt_name, @function
get_vtt_name:
.LFB23:
	.loc 1 560 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$4, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 561 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_vtt_for_type@PLT
	.loc 1 562 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	get_vtt_name, .-get_vtt_name
	.type	build_vtable, @function
build_vtable:
.LFB24:
	.loc 1 573 0
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
	.loc 1 576 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_lang_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 579 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 92(%edx)
	.loc 1 580 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 581 0
	movl	-8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 582 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 583 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
	.loc 1 584 0
	movl	-8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$32, %eax
	movb	%al, 33(%edx)
	.loc 1 585 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L106
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L106
	movl	$64, -24(%ebp)
	jmp	.L109
.L106:
	movl	$32, -24(%ebp)
.L109:
	movl	-8(%ebp), %edx
	movl	-24(%ebp), %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 587 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_vtable@PLT
	.loc 1 589 0
	movl	-8(%ebp), %eax
	.loc 1 590 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	build_vtable, .-build_vtable
.globl get_vtable_decl
	.type	get_vtable_decl, @function
get_vtable_decl:
.LFB25:
	.loc 1 602 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%esi
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$48, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L112
	.loc 1 606 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L114
.L112:
	.loc 1 608 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vtable_name
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtable
	movl	%eax, -12(%ebp)
	.loc 1 609 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 613 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jae	.L115
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
.L115:
	movl	-28(%ebp), %eax
	andl	$16777215, %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 616 0
	cmpl	$0, 12(%ebp)
	je	.L116
	.loc 1 618 0
	movl	-12(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 619 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_finish_decl@PLT
.L116:
	.loc 1 622 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L114:
	movl	-36(%ebp), %eax
	.loc 1 623 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	get_vtable_decl, .-get_vtable_decl
	.type	copy_virtuals, @function
copy_virtuals:
.LFB26:
	.loc 1 631 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$20, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 635 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	copy_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 636 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L120
.L121:
	.loc 1 637 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 636 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L120:
	cmpl	$0, -8(%ebp)
	jne	.L121
	.loc 1 639 0
	movl	-12(%ebp), %eax
	.loc 1 640 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	copy_virtuals, .-copy_virtuals
	.section	.rodata
	.type	__FUNCTION__.16164, @object
	.size	__FUNCTION__.16164, 21
__FUNCTION__.16164:
	.string	"build_primary_vtable"
	.text
	.type	build_primary_vtable, @function
build_primary_vtable:
.LFB27:
	.loc 1 651 0
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
	.loc 1 655 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vtable_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 657 0
	cmpl	$0, 8(%ebp)
	je	.L125
	.loc 1 659 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L127
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -36(%ebp)
	jmp	.L129
.L127:
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L129:
	movl	-36(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L130
	.loc 1 662 0
	movl	$0, -32(%ebp)
	jmp	.L132
.L130:
	.loc 1 664 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_virtuals
	movl	%eax, -8(%ebp)
	.loc 1 665 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vtbl_decl_for_binfo@PLT
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 666 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 667 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 48(%eax)
	jmp	.L133
.L125:
	.loc 1 671 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L134
	leal	__FUNCTION__.16164@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$672, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L134:
	.loc 1 673 0
	movl	$0, -8(%ebp)
.L133:
	.loc 1 683 0
	movl	12(%ebp), %eax
	movl	76(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 684 0
	movl	12(%ebp), %eax
	movl	76(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 685 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L136
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -28(%ebp)
	jmp	.L138
.L136:
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -28(%ebp)
.L138:
	movl	-28(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movl	-28(%ebp), %edx
	movb	%al, 11(%edx)
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L139
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L141
.L139:
	movl	$1, -24(%ebp)
	jmp	.L142
.L141:
	movl	$0, -24(%ebp)
.L142:
	cmpl	$0, -24(%ebp)
	jne	.L143
	leal	__FUNCTION__.16164@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L143:
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L145
	leal	__FUNCTION__.16164@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$685, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L145:
	.loc 1 686 0
	movl	$1, -32(%ebp)
.L132:
	movl	-32(%ebp), %eax
	.loc 1 687 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	build_primary_vtable, .-build_primary_vtable
	.section	.rodata
	.type	__FUNCTION__.16234, @object
	.size	__FUNCTION__.16234, 23
__FUNCTION__.16234:
	.string	"build_secondary_vtable"
	.text
	.type	build_secondary_vtable, @function
build_secondary_vtable:
.LFB28:
	.loc 1 706 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$36, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 707 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L149
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -24(%ebp)
	jmp	.L151
.L149:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L151:
	movl	-24(%ebp), %edx
	cmpl	8(%ebp), %edx
	je	.L152
	leal	__FUNCTION__.16234@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$707, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L152:
	.loc 1 709 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L154
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -20(%ebp)
	jmp	.L156
.L154:
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L156:
	movl	-20(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L157
	.loc 1 712 0
	movl	$0, -16(%ebp)
	jmp	.L159
.L157:
	.loc 1 716 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L160
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -12(%ebp)
	jmp	.L162
.L160:
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L162:
	movl	-12(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movl	-12(%ebp), %edx
	movb	%al, 11(%edx)
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L163
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L165
.L163:
	movl	$1, -8(%ebp)
	jmp	.L166
.L165:
	movl	$0, -8(%ebp)
.L166:
	cmpl	$0, -8(%ebp)
	jne	.L167
	leal	__FUNCTION__.16234@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$716, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L167:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L169
	leal	__FUNCTION__.16234@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$716, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L169:
	.loc 1 719 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_virtuals
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 723 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 724 0
	movl	$1, -16(%ebp)
.L159:
	movl	-16(%ebp), %eax
	.loc 1 725 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	build_secondary_vtable, .-build_secondary_vtable
	.type	make_new_vtable, @function
make_new_vtable:
.LFB29:
	.loc 1 734 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	subl	$24, %esp
.LCFI60:
	.loc 1 735 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L173
	.loc 1 741 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	56(%eax), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_primary_vtable
	movl	%eax, -4(%ebp)
	jmp	.L175
.L173:
	.loc 1 748 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_secondary_vtable
	movl	%eax, -4(%ebp)
.L175:
	movl	-4(%ebp), %eax
	.loc 1 749 0
	leave
	ret
.LFE29:
	.size	make_new_vtable, .-make_new_vtable
	.type	modify_vtable_entry, @function
modify_vtable_entry:
.LFB30:
	.loc 1 764 0
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
	.loc 1 767 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 769 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L178
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	jne	.L186
.L178:
.LBB6:
	.loc 1 775 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_new_vtable
	testl	%eax, %eax
	je	.L181
	.loc 1 780 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 781 0
	jmp	.L183
.L184:
	.loc 1 782 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
.L183:
	.loc 1 781 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L184
	.loc 1 783 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L181:
	.loc 1 786 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 787 0
	movl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 788 0
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 789 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%edx)
.L186:
.LBE6:
	.loc 1 791 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	modify_vtable_entry, .-modify_vtable_entry
	.section	.rodata
	.align 4
.LC2:
	.string	"`%#D' and `%#D' cannot be overloaded"
	.text
.globl add_method
	.type	add_method, @function
add_method:
.LFB31:
	.loc 1 804 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%edi
.LCFI67:
	pushl	%esi
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$124, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 805 0
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	8(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	.loc 1 810 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L188
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L188
	movl	$1, -120(%ebp)
	jmp	.L191
.L188:
	movl	$0, -120(%ebp)
.L191:
	movl	-120(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 812 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L192
	.loc 1 823 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	$8, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, 52(%esi)
.L192:
	.loc 1 825 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 826 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 829 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L194
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L196
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L198
.L196:
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L198
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L194
.L198:
	.loc 1 830 0
	movl	$0, -64(%ebp)
	.loc 1 829 0
	jmp	.L200
.L194:
	.loc 1 831 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L201
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L203
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L205
.L203:
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L205
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L201
.L205:
	.loc 1 832 0
	movl	$1, -64(%ebp)
	.loc 1 831 0
	jmp	.L200
.L201:
.LBB7:
	.loc 1 835 0
	movl	$0, -52(%ebp)
	.loc 1 838 0
	movl	$2, -64(%ebp)
	jmp	.L207
.L208:
.LBB8:
	.loc 1 840 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	.loc 1 842 0
	cmpl	$0, -48(%ebp)
	je	.L209
	.loc 1 844 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L211
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L213
.L211:
	movl	-48(%ebp), %edx
	movl	%edx, -116(%ebp)
.L213:
	movl	-116(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	.loc 1 846 0
	cmpl	$0, -56(%ebp)
	je	.L214
	.loc 1 848 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L216
	movl	-48(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L216
	movl	$1, -112(%ebp)
	jmp	.L219
.L216:
	movl	$0, -112(%ebp)
.L219:
	movl	-112(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 853 0
	cmpl	$0, -52(%ebp)
	jne	.L209
	.loc 1 855 0
	movl	-68(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -64(%ebp)
	.loc 1 856 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L209
	.loc 1 857 0
	addl	$1, -64(%ebp)
	.loc 1 859 0
	jmp	.L209
.L214:
	.loc 1 861 0
	movl	-48(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	je	.L209
.LBE8:
	.loc 1 838 0
	addl	$1, -64(%ebp)
.L207:
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L208
.L209:
	.loc 1 865 0
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jne	.L224
.LBB9:
	.loc 1 874 0
	cmpl	$0, 16(%ebp)
	jne	.L226
	.loc 1 875 0
	movl	-68(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -44(%ebp)
	jmp	.L228
.L226:
	.loc 1 880 0
	movl	-68(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -44(%ebp)
.L228:
	.loc 1 882 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -40(%ebp)
	.loc 1 883 0
	movl	-68(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	-60(%ebp), %edx
	addl	$20, %edx
	movl	-40(%ebp), %eax
	addl	$20, %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 885 0
	movl	-44(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 886 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 52(%edx)
	movl	52(%edx), %eax
	movl	%eax, -60(%ebp)
.L224:
.LBE9:
	.loc 1 889 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L200
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L200
	.loc 1 897 0
	cmpl	$0, -56(%ebp)
	je	.L231
	.loc 1 898 0
	movl	$2, -64(%ebp)
	jmp	.L233
.L231:
	.loc 1 900 0
	movl	$2, -64(%ebp)
	jmp	.L234
.L235:
.LBB10:
	.loc 1 902 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 904 0
	cmpl	$0, -36(%ebp)
	je	.L233
	.loc 1 909 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L237
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -108(%ebp)
	jmp	.L239
.L237:
	movl	-36(%ebp), %edx
	movl	%edx, -108(%ebp)
.L239:
	movl	-108(%ebp), %ecx
	movl	52(%ecx), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L233
.LBE10:
	.loc 1 900 0
	addl	$1, -64(%ebp)
.L234:
	movl	-64(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jl	.L235
.L233:
	.loc 1 915 0
	cmpl	$0, -56(%ebp)
	je	.L241
	cmpl	$0, -52(%ebp)
	je	.L241
	jmp	.L200
.L241:
	.loc 1 917 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L200
	.loc 1 926 0
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	subl	%edx, %eax
	sall	$2, %eax
	subl	$4, %eax
	movl	%eax, %esi
	movl	-60(%ebp), %edx
	addl	$20, %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	-60(%ebp), %edx
	addl	$20, %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	memmove@PLT
	.loc 1 929 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	$0, 20(%eax,%edx,4)
.L200:
.LBE7:
	.loc 1 934 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	template_class_depth@PLT
	testl	%eax, %eax
	jne	.L245
.LBB11:
	.loc 1 943 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 944 0
	jmp	.L247
.L248:
.LBB12:
	.loc 1 947 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L249
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -104(%ebp)
	jmp	.L251
.L249:
	movl	-32(%ebp), %eax
	movl	%eax, -104(%ebp)
.L251:
	movl	-104(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 950 0
	movb	$1, -13(%ebp)
	.loc 1 952 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L252
	.loc 1 965 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 966 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 971 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L254
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L254
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -100(%ebp)
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L257
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L257
	movl	$1, -96(%ebp)
	jmp	.L260
.L257:
	movl	$0, -96(%ebp)
.L260:
	movl	-96(%ebp), %eax
	sall	$3, %eax
	movl	-100(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -92(%ebp)
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -88(%ebp)
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L261
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L261
	movl	$1, -84(%ebp)
	jmp	.L264
.L261:
	movl	$0, -84(%ebp)
.L264:
	movl	-84(%ebp), %eax
	sall	$3, %eax
	orl	-88(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	je	.L254
	.loc 1 975 0
	movb	$0, -13(%ebp)
.L254:
	.loc 1 978 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L266
	movl	12(%ebp), %eax
	movl	60(%eax), %edx
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comp_template_parms@PLT
	testl	%eax, %eax
	jne	.L266
	.loc 1 981 0
	movb	$0, -13(%ebp)
.L266:
	.loc 1 983 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L269
	.loc 1 984 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L269:
	.loc 1 985 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L271
	.loc 1 986 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L271:
	.loc 1 988 0
	cmpb	$0, -13(%ebp)
	je	.L252
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	compparms@PLT
	testl	%eax, %eax
	je	.L252
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L275
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L252
.L275:
	.loc 1 993 0
	cmpl	$0, -72(%ebp)
	je	.L277
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L277
	.loc 1 995 0
	jmp	.L286
.L277:
	.loc 1 998 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1006 0
	jmp	.L286
.L252:
.LBE12:
	.loc 1 945 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L281
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L283
.L281:
	movl	$0, -80(%ebp)
.L283:
	movl	-80(%ebp), %eax
	movl	%eax, -32(%ebp)
.L247:
	.loc 1 944 0
	cmpl	$0, -32(%ebp)
	jne	.L248
.L245:
.LBE11:
	.loc 1 1013 0
	movl	-64(%ebp), %esi
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_overload@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 20(%eax,%esi,4)
	.loc 1 1017 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L286
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L286
	.loc 1 1019 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_class_level_binding@PLT
.L286:
	.loc 1 1021 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	add_method, .-add_method
	.section	.rodata
.LC3:
	.string	"duplicate enum value `%D'"
	.align 4
.LC4:
	.string	"duplicate field `%D' (as enum and non-enum)"
.LC5:
	.string	"duplicate nested type `%D'"
	.align 4
.LC6:
	.string	"duplicate field `%D' (as type and non-type)"
.LC7:
	.string	"duplicate member `%D'"
	.text
	.type	delete_duplicate_fields_1, @function
delete_duplicate_fields_1:
.LFB32:
	.loc 1 1042 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%esi
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$32, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1044 0
	movl	$0, -12(%ebp)
	.loc 1 1045 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L288
	.loc 1 1047 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L290
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L292
.L290:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L293
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L293
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L293
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L293
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L292
.L293:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L298
.L292:
	.loc 1 1048 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L299
.L298:
	.loc 1 1050 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L300
.L301:
	.loc 1 1051 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_duplicate_fields_1
	movl	%eax, 12(%ebp)
	.loc 1 1050 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L300:
	cmpl	$0, -16(%ebp)
	jne	.L301
	.loc 1 1052 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L299
.L288:
	.loc 1 1056 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L303
.L304:
	.loc 1 1058 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L305
	.loc 1 1060 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L307
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L309
.L307:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L310
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L310
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L310
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L310
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L309
.L310:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L309
	.loc 1 1062 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %esi
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_duplicate_fields_1
	movl	%eax, 16(%esi)
	.loc 1 1064 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L309
	.loc 1 1066 0
	cmpl	$0, -12(%ebp)
	jne	.L318
	.loc 1 1067 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L309
.L318:
	.loc 1 1069 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L309
.L305:
	.loc 1 1072 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-56, %al
	je	.L309
	.loc 1 1078 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L309
	.loc 1 1080 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L322
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L322
	.loc 1 1082 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1080 0
	jmp	.L325
.L322:
	.loc 1 1083 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L326
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L328
.L326:
	.loc 1 1085 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1083 0
	jmp	.L325
.L328:
	.loc 1 1087 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L329
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L331
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L331
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L329
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L329
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L331
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L331
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L331
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L331
.L329:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L339
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L331
	movl	-16(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L331
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L339
	movl	-16(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L339
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L331
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L331
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L331
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L331
.L339:
	.loc 1 1090 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L309
	.loc 1 1092 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1087 0
	jmp	.L325
.L331:
	.loc 1 1094 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L349
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L351
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L351
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L349
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L349
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L351
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L351
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L351
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L349
.L351:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L349
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L360
	movl	-16(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L360
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L349
	movl	-16(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L349
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L360
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L360
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L360
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L360
.L349:
	.loc 1 1098 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L368
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L309
.L368:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L370
	movl	-16(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L309
.L370:
	.loc 1 1103 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1094 0
	jmp	.L325
.L360:
	.loc 1 1107 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L325:
	.loc 1 1108 0
	cmpl	$0, -12(%ebp)
	jne	.L372
	.loc 1 1109 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ebp)
	jmp	.L309
.L372:
	.loc 1 1111 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
.L309:
	.loc 1 1056 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L303:
	cmpl	$0, -16(%ebp)
	jne	.L304
	.loc 1 1115 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L299:
	movl	-28(%ebp), %eax
	.loc 1 1116 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	delete_duplicate_fields_1, .-delete_duplicate_fields_1
	.type	delete_duplicate_fields, @function
delete_duplicate_fields:
.LFB33:
	.loc 1 1121 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	subl	$24, %esp
.LCFI78:
	.loc 1 1123 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L377
.L378:
	.loc 1 1124 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_duplicate_fields_1
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1123 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L377:
	cmpl	$0, -4(%ebp)
	je	.L381
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L378
.L381:
	.loc 1 1125 0
	leave
	ret
.LFE33:
	.size	delete_duplicate_fields, .-delete_duplicate_fields
	.section	.rodata
	.type	__FUNCTION__.16869, @object
	.size	__FUNCTION__.16869, 13
__FUNCTION__.16869:
	.string	"alter_access"
	.align 4
.LC8:
	.string	"conflicting access specifications for method `%D', ignored"
	.align 4
.LC9:
	.string	"conflicting access specifications for field `%s', ignored"
	.text
	.type	alter_access, @function
alter_access:
.LFB34:
	.loc 1 1135 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%esi
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$32, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1138 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	jne	.L383
	.loc 1 1139 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	retrofit_lang_decl@PLT
.L383:
	.loc 1 1141 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L385
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L385
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L385
	.loc 1 1142 0
	leal	__FUNCTION__.16869@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1142, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L385:
	.loc 1 1144 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	purpose_member@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1145 0
	cmpl	$0, -12(%ebp)
	je	.L389
	.loc 1 1147 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L391
	.loc 1 1149 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L393
	.loc 1 1150 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	jmp	.L391
.L393:
	.loc 1 1152 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L391:
	.loc 1 1168 0
	movl	$0, -28(%ebp)
	jmp	.L395
.L389:
	.loc 1 1164 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	enforce_access@PLT
	.loc 1 1165 0
	movl	12(%ebp), %eax
	movl	136(%eax), %esi
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 12(%esi)
	.loc 1 1166 0
	movl	$1, -28(%ebp)
.L395:
	movl	-28(%ebp), %eax
	.loc 1 1169 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	alter_access, .-alter_access
	.section	.rodata
.LC10:
	.string	"`%D' names constructor"
.LC11:
	.string	"`%D' invalid in `%T'"
	.align 4
.LC12:
	.string	"no members matching `%D' in `%#T'"
.LC13:
	.string	"`%D' invalid in `%#T'"
	.align 4
.LC14:
	.string	"  because of local method `%#D' with same name"
	.align 4
.LC15:
	.string	"  because of local member `%#D' with same name"
	.text
	.type	handle_using_decl, @function
handle_using_decl:
.LFB35:
	.loc 1 1177 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$84, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1178 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1179 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1183 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L398
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	168(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L400
.L398:
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L401
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L403
.L401:
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, -60(%ebp)
.L403:
	movl	-60(%ebp), %eax
	movl	%eax, -64(%ebp)
.L400:
	movl	-64(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1185 0
	movl	$0, -12(%ebp)
	.loc 1 1188 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L452
	.loc 1 1191 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1192 0
	cmpl	$0, -16(%ebp)
	jne	.L406
	.loc 1 1194 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	error_not_base_type@PLT
	.loc 1 1195 0
	jmp	.L452
.L406:
	.loc 1 1198 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name_p@PLT
	testb	%al, %al
	je	.L408
	.loc 1 1200 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1201 0
	jmp	.L452
.L408:
	.loc 1 1203 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name_p@PLT
	testb	%al, %al
	je	.L410
	.loc 1 1205 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1206 0
	jmp	.L452
.L410:
	.loc 1 1209 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_member@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1211 0
	cmpl	$0, -20(%ebp)
	jne	.L412
	.loc 1 1213 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1214 0
	jmp	.L452
.L412:
	.loc 1 1217 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L414
	.loc 1 1219 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
.L414:
	.loc 1 1221 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1222 0
	cmpl	$0, -8(%ebp)
	je	.L416
	.loc 1 1224 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L418
	.loc 1 1225 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L420
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L422
.L420:
	movl	-8(%ebp), %eax
	movl	%eax, -56(%ebp)
.L422:
	movl	-56(%ebp), %eax
	movl	%eax, -8(%ebp)
.L418:
	.loc 1 1227 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L423
	movl	-8(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L423
	jmp	.L416
.L423:
	.loc 1 1230 0
	movl	$0, -8(%ebp)
.L416:
	.loc 1 1233 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L426
	.loc 1 1234 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
.L426:
	.loc 1 1236 0
	cmpl	$0, -8(%ebp)
	je	.L428
	.loc 1 1238 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L430
	.loc 1 1240 0
	cmpl	$0, -12(%ebp)
	jne	.L428
	.loc 1 1245 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1246 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L434
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L436
.L434:
	movl	-8(%ebp), %eax
	movl	%eax, -52(%ebp)
.L436:
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1248 0
	jmp	.L452
.L430:
	.loc 1 1251 0
	movl	-8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L428
	.loc 1 1253 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1254 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 1255 0
	jmp	.L452
.L428:
	.loc 1 1259 0
	cmpl	$0, -12(%ebp)
	je	.L438
	.loc 1 1260 0
	jmp	.L440
.L441:
	.loc 1 1262 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L442
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L444
.L442:
	movl	-12(%ebp), %eax
	movl	%eax, -48(%ebp)
.L444:
	movl	$0, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_method@PLT
	.loc 1 1263 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L445
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L447
.L445:
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
.L447:
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	alter_access
	.loc 1 1260 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L448
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L450
.L448:
	movl	$0, -40(%ebp)
.L450:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
.L440:
	cmpl	$0, -12(%ebp)
	jne	.L441
	jmp	.L452
.L438:
	.loc 1 1266 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	alter_access
.L452:
	.loc 1 1267 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	handle_using_decl, .-handle_using_decl
	.section	.rodata
	.align 4
.LC16:
	.string	"base class `%#T' has a non-virtual destructor"
	.align 4
.LC17:
	.string	"base `%T' with only non-default constructor in class without a constructor"
	.text
	.type	check_bases, @function
check_bases:
.LFB36:
	.loc 1 1281 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$52, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1287 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1288 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L454
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L456
.L454:
	movl	$0, -40(%ebp)
.L456:
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1289 0
	movl	$0, -24(%ebp)
	.loc 1 1292 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %edx
	cmpl	$0, -32(%ebp)
	setne	%al
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1294 0
	movl	$0, -28(%ebp)
	jmp	.L457
.L458:
.LBB13:
	.loc 1 1300 0
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1301 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1306 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L459
.LBB14:
	.loc 1 1312 0
	movl	-32(%ebp), %eax
	subl	$1, %eax
	cmpl	-28(%ebp), %eax
	jne	.L461
	.loc 1 1313 0
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	$0, 20(%eax,%edx,4)
.L461:
	.loc 1 1314 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1315 0
	subl	$1, -32(%ebp)
	.loc 1 1316 0
	movl	-28(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L463
.L464:
	.loc 1 1317 0
	movl	-8(%ebp), %ecx
	movl	-8(%ebp), %edx
	addl	$1, %edx
	movl	-20(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 20(%eax,%ecx,4)
	.loc 1 1316 0
	addl	$1, -8(%ebp)
.L463:
	movl	-8(%ebp), %eax
	addl	$1, %eax
	cmpl	-32(%ebp), %eax
	jl	.L464
	.loc 1 1318 0
	jmp	.L466
.L459:
.LBE14:
	.loc 1 1324 0
	movl	warn_ecpp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L467
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L467
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L467
	.loc 1 1326 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L467:
	.loc 1 1333 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L471
	.loc 1 1334 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L471:
	.loc 1 1335 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L473
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L473
	.loc 1 1337 0
	movl	20(%ebp), %eax
	movl	$1, (%eax)
.L473:
	.loc 1 1341 0
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L476
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L476
	.loc 1 1344 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 1345 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L476
	.loc 1 1346 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L476:
	.loc 1 1350 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L480
	.loc 1 1353 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L482
	.loc 1 1355 0
	cmpl	$0, -24(%ebp)
	je	.L484
	.loc 1 1358 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-9, %eax
	movb	%al, 5(%edx)
	jmp	.L480
.L484:
	.loc 1 1361 0
	movl	$1, -24(%ebp)
	jmp	.L480
.L482:
	.loc 1 1363 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	jne	.L480
	.loc 1 1366 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-9, %eax
	movb	%al, 5(%edx)
.L480:
	.loc 1 1370 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	38(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	.loc 1 1371 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	39(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 1373 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	9(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1375 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1376 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	6(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 1377 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	6(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 1378 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	6(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 1379 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	11(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 1380 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
.L466:
.LBE13:
	.loc 1 1294 0
	addl	$1, -28(%ebp)
.L457:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L458
	.loc 1 1383 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	check_bases, .-check_bases
	.section	.rodata
	.type	__FUNCTION__.17200, @object
	.size	__FUNCTION__.17200, 24
__FUNCTION__.17200:
	.string	"force_canonical_binfo_r"
	.text
	.type	force_canonical_binfo_r, @function
force_canonical_binfo_r:
.LFB37:
	.loc 1 1396 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$52, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1397 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L491
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L493
.L491:
	movl	$0, -40(%ebp)
.L493:
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1399 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L494
	leal	__FUNCTION__.17200@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1399, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L494:
	.loc 1 1400 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 10(%edx)
	.loc 1 1402 0
	movl	12(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	movb	%al, 10(%edx)
	.loc 1 1403 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 11(%edx)
	.loc 1 1404 0
	movl	12(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	movb	%al, 11(%edx)
	.loc 1 1405 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	11(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 1406 0
	movl	12(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$-5, %eax
	movb	%al, 11(%edx)
	.loc 1 1407 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L496
.LBB15:
	.loc 1 1409 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1414 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	purpose_member@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1415 0
	cmpl	$0, -20(%ebp)
	je	.L498
	.loc 1 1416 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L498:
	.loc 1 1417 0
	movl	8(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 60(%eax)
	.loc 1 1418 0
	movl	12(%ebp), %eax
	movl	$0, 60(%eax)
.L496:
.LBE15:
	.loc 1 1420 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L500
	leal	__FUNCTION__.17200@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1421, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L500:
	.loc 1 1422 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 20(%ebp)
	.loc 1 1424 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L502
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L502
.LBB16:
	.loc 1 1427 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1429 0
	movl	-16(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L502
	.loc 1 1430 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	force_canonical_binfo
.L502:
.LBE16:
	.loc 1 1434 0
	movl	$0, -32(%ebp)
	jmp	.L506
.L507:
.LBB17:
	.loc 1 1436 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1437 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1439 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L508
	.loc 1 1441 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L513
	movl	-12(%ebp), %eax
	movl	60(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	purpose_member@PLT
	testl	%eax, %eax
	je	.L513
	.loc 1 1445 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_canonical_binfo
	jmp	.L513
.L508:
	.loc 1 1448 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_canonical_binfo_r
.L513:
.LBE17:
	.loc 1 1434 0
	addl	$1, -32(%ebp)
.L506:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L507
	.loc 1 1450 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	force_canonical_binfo_r, .-force_canonical_binfo_r
	.type	force_canonical_binfo, @function
force_canonical_binfo:
.LFB38:
	.loc 1 1468 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$36, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1470 0
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	purpose_member@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1471 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L519
	.loc 1 1473 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1474 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_canonical_binfo_r
.L519:
	.loc 1 1476 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	force_canonical_binfo, .-force_canonical_binfo
	.type	mark_primary_virtual_base, @function
mark_primary_virtual_base:
.LFB39:
	.loc 1 1486 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$36, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1487 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1489 0
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L521
	.loc 1 1494 0
	movl	$0, -24(%ebp)
	jmp	.L523
.L521:
	.loc 1 1501 0
	movl	8(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L524
	.loc 1 1502 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_canonical_binfo
.L524:
	.loc 1 1504 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L523:
	movl	-24(%ebp), %eax
	.loc 1 1505 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	mark_primary_virtual_base, .-mark_primary_virtual_base
	.section	.rodata
	.type	__FUNCTION__.17308, @object
	.size	__FUNCTION__.17308, 27
__FUNCTION__.17308:
	.string	"dfs_unshared_virtual_bases"
	.text
	.type	dfs_unshared_virtual_bases, @function
dfs_unshared_virtual_bases:
.LFB40:
	.loc 1 1514 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$36, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1515 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1517 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L528
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L528
.LBB18:
	.loc 1 1527 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L531
.L532:
	.loc 1 1528 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L531:
	.loc 1 1527 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L532
	.loc 1 1530 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_original_base
	movl	%eax, -12(%ebp)
	.loc 1 1533 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L534
	leal	__FUNCTION__.17308@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1533, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L534:
	.loc 1 1534 0
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	11(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 1535 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L528
	.loc 1 1536 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 60(%edx)
.L528:
.LBE18:
	.loc 1 1539 0
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L537
	.loc 1 1543 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L537:
	.loc 1 1547 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L539
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L539
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	cmpl	8(%ebp), %eax
	jne	.L539
.LBB19:
	.loc 1 1551 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1552 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L539
	.loc 1 1553 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_binfo_offsets
.L539:
.LBE19:
	.loc 1 1556 0
	movl	8(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$-2, %eax
	movb	%al, 11(%edx)
	.loc 1 1557 0
	movl	$0, %eax
	.loc 1 1558 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	dfs_unshared_virtual_bases, .-dfs_unshared_virtual_bases
	.type	mark_primary_bases, @function
mark_primary_bases:
.LFB41:
	.loc 1 1566 0
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
	.loc 1 1570 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L546
.L547:
.LBB20:
	.loc 1 1574 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L548
	.loc 1 1578 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1580 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L550
	.loc 1 1581 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_primary_virtual_base
	movl	%eax, -8(%ebp)
.L550:
	.loc 1 1583 0
	cmpl	$0, -8(%ebp)
	je	.L552
	.loc 1 1584 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 60(%edx)
	jmp	.L554
.L552:
	.loc 1 1586 0
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$4, %edx
	movb	%dl, 11(%eax)
.L554:
	.loc 1 1588 0
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$1, %edx
	movb	%dl, 11(%eax)
.L548:
.LBE20:
	.loc 1 1570 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L546:
	cmpl	$0, -12(%ebp)
	jne	.L547
	.loc 1 1598 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_unshared_virtual_bases@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dfs_walk@PLT
	.loc 1 1599 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	mark_primary_bases, .-mark_primary_bases
	.type	set_primary_base, @function
set_primary_base:
.LFB42:
	.loc 1 1607 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	subl	$16, %esp
.LCFI114:
	.loc 1 1610 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1611 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1612 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-4(%ebp), %eax
	movl	76(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, 28(%edx)
	.loc 1 1613 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-4(%ebp), %eax
	movl	76(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, 32(%edx)
	.loc 1 1614 0
	movl	-4(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1615 0
	leave
	ret
.LFE42:
	.size	set_primary_base, .-set_primary_base
	.type	determine_primary_base, @function
determine_primary_base:
.LFB43:
	.loc 1 1622 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%esi
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$80, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1623 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L560
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L562
.L560:
	movl	$0, -76(%ebp)
.L562:
	movl	-76(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1628 0
	cmpl	$0, -60(%ebp)
	je	.L606
	.loc 1 1631 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1633 0
	movl	$0, -64(%ebp)
	jmp	.L565
.L566:
.LBB21:
	.loc 1 1635 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	-64(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1636 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1638 0
	movl	-44(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L567
	movl	-44(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L569
.L567:
	.loc 1 1642 0
	movl	-48(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L569
	.loc 1 1645 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L571
	.loc 1 1647 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_primary_base
	.loc 1 1648 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	-44(%ebp), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	copy_list@PLT
	movl	%eax, 16(%esi)
	jmp	.L569
.L571:
.LBB22:
	.loc 1 1655 0
	movl	-44(%ebp), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1656 0
	jmp	.L573
.L574:
	.loc 1 1658 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L575
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L577
.L575:
	.loc 1 1660 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %edx
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 16(%esi)
.L577:
	.loc 1 1657 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L573:
	.loc 1 1656 0
	cmpl	$0, -40(%ebp)
	jne	.L574
.L569:
.LBE22:
.LBE21:
	.loc 1 1633 0
	addl	$1, -64(%ebp)
.L565:
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jl	.L566
	.loc 1 1668 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L579
	.loc 1 1669 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	$0, 12(%eax)
.L579:
	.loc 1 1673 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1674 0
	jmp	.L581
.L582:
.LBB23:
	.loc 1 1677 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1682 0
	movl	$0, -64(%ebp)
	jmp	.L583
.L584:
.LBB24:
	.loc 1 1684 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-64(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1687 0
	movl	-32(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1688 0
	jmp	.L585
.L586:
.LBB25:
	.loc 1 1691 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1693 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L587
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L587
	.loc 1 1697 0
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$1, %edx
	movb	%dl, 10(%eax)
	.loc 1 1698 0
	jmp	.L590
.L587:
.LBE25:
	.loc 1 1689 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L585:
	.loc 1 1688 0
	cmpl	$0, -28(%ebp)
	jne	.L586
.L590:
	.loc 1 1705 0
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L591
.LBE24:
	.loc 1 1682 0
	addl	$1, -64(%ebp)
.L583:
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jl	.L584
.L591:
.LBE23:
	.loc 1 1675 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L581:
	.loc 1 1674 0
	cmpl	$0, -56(%ebp)
	jne	.L582
	.loc 1 1712 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L594
.LBB26:
	.loc 1 1716 0
	movl	$0, -20(%ebp)
	.loc 1 1720 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1721 0
	jmp	.L596
.L597:
.LBB27:
	.loc 1 1724 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1726 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L598
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L598
	.loc 1 1731 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L601
	.loc 1 1733 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1734 0
	jmp	.L603
.L601:
	.loc 1 1741 0
	cmpl	$0, -20(%ebp)
	jne	.L598
	.loc 1 1742 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L598:
.LBE27:
	.loc 1 1722 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L596:
	.loc 1 1721 0
	cmpl	$0, -16(%ebp)
	jne	.L597
.L603:
	.loc 1 1747 0
	cmpl	$0, -20(%ebp)
	je	.L594
	.loc 1 1749 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_primary_base
	.loc 1 1750 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	copy_list@PLT
	movl	%eax, 16(%esi)
.L594:
.LBE26:
	.loc 1 1756 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_primary_bases
.L606:
	.loc 1 1757 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE43:
	.size	determine_primary_base, .-determine_primary_base
	.type	finish_struct_bits, @function
finish_struct_bits:
.LFB44:
	.loc 1 1765 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%ebx
.LCFI122:
	subl	$52, %esp
.LCFI123:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1766 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L608
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L610
.L608:
	movl	$0, -40(%ebp)
.L610:
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1769 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1770 0
	jmp	.L611
.L612:
	.loc 1 1774 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	39(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 1775 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	39(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 1776 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	38(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	.loc 1 1777 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	39(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 1780 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	11(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 1782 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	11(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 1783 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	11(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 1785 0
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 1786 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 1787 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1788 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1789 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1790 0
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -24(%ebp)
.L611:
	.loc 1 1770 0
	cmpl	$0, -24(%ebp)
	jne	.L612
	.loc 1 1793 0
	cmpl	$0, -28(%ebp)
	je	.L614
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L614
	.loc 1 1802 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pure_virtuals@PLT
.L614:
	.loc 1 1804 0
	cmpl	$0, -28(%ebp)
	je	.L617
.LBB28:
	.loc 1 1807 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1808 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1811 0
	movl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L619
.L620:
	.loc 1 1813 0
	movl	-32(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1815 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	%al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 1811 0
	subl	$1, -32(%ebp)
.L619:
	cmpl	$0, -32(%ebp)
	jns	.L620
.L617:
.LBE28:
	.loc 1 1823 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L621
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L621
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L627
.L621:
.LBB29:
	.loc 1 1826 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movb	$52, 32(%eax)
	.loc 1 1827 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L625
.L626:
	.loc 1 1829 0
	movl	-8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	orl	$104, %eax
	movb	%al, 37(%edx)
	.loc 1 1830 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 1827 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
.L625:
	cmpl	$0, -8(%ebp)
	jne	.L626
.L627:
.LBE29:
	.loc 1 1833 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	finish_struct_bits, .-finish_struct_bits
	.section	.rodata
	.align 4
.LC18:
	.string	"all member functions in class `%T' are private"
	.align 4
.LC19:
	.string	"`%#T' only defines a private destructor and has no friends"
	.align 4
.LC20:
	.string	"`%#T' only defines private constructors and has no friends"
	.text
	.type	maybe_warn_about_overly_private_class, @function
maybe_warn_about_overly_private_class:
.LFB45:
	.loc 1 1845 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	pushl	%ebx
.LCFI126:
	subl	$52, %esp
.LCFI127:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1846 0
	movl	$0, -36(%ebp)
	.loc 1 1847 0
	movl	$0, -32(%ebp)
	.loc 1 1850 0
	movl	warn_ctor_dtor_privacy@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L676
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L676
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L676
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L633
	.loc 1 1860 0
	jmp	.L676
.L633:
	.loc 1 1878 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L635
.L636:
	.loc 1 1881 0
	movl	-28(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L637
	.loc 1 1883 0
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L639
	.loc 1 1885 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L676
	.loc 1 1892 0
	movl	$1, -32(%ebp)
	jmp	.L637
.L639:
	.loc 1 1895 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L637
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L637
	.loc 1 1896 0
	movl	$1, -36(%ebp)
.L637:
	.loc 1 1878 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L635:
	cmpl	$0, -28(%ebp)
	jne	.L636
	.loc 1 1899 0
	cmpl	$0, -32(%ebp)
	jne	.L645
	cmpl	$0, -36(%ebp)
	je	.L645
.LBB30:
	.loc 1 1908 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1909 0
	movl	$0, -24(%ebp)
	jmp	.L648
.L649:
	.loc 1 1910 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L650
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L652
.L650:
	.loc 1 1913 0
	movl	$1, -32(%ebp)
	.loc 1 1914 0
	jmp	.L653
.L652:
	.loc 1 1909 0
	addl	$1, -24(%ebp)
.L648:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L654
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L656
.L654:
	movl	$0, -48(%ebp)
.L656:
	movl	-48(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jg	.L649
.L653:
	.loc 1 1916 0
	cmpl	$0, -32(%ebp)
	jne	.L645
	.loc 1 1918 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 1919 0
	jmp	.L676
.L645:
.LBE30:
	.loc 1 1926 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L658
.LBB31:
	.loc 1 1928 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1930 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L658
	.loc 1 1932 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 1934 0
	jmp	.L676
.L658:
.LBE31:
	.loc 1 1938 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L676
.LBB32:
	.loc 1 1940 0
	movl	$0, -12(%ebp)
	.loc 1 1952 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L662
	.loc 1 1953 0
	movl	$1, -12(%ebp)
	jmp	.L664
.L662:
	.loc 1 1955 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1956 0
	jmp	.L665
.L666:
.LBB33:
	.loc 1 1959 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L667
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L669
.L667:
	movl	-28(%ebp), %eax
	movl	%eax, -44(%ebp)
.L669:
	movl	-44(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1966 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L670
	.loc 1 1968 0
	movl	$1, -12(%ebp)
	.loc 1 1969 0
	jmp	.L664
.L670:
.LBE33:
	.loc 1 1957 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L672
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L674
.L672:
	movl	$0, -40(%ebp)
.L674:
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
.L665:
	.loc 1 1956 0
	cmpl	$0, -28(%ebp)
	jne	.L666
.L664:
	.loc 1 1973 0
	cmpl	$0, -12(%ebp)
	jne	.L676
	.loc 1 1975 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L676:
.LBE32:
	.loc 1 1980 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	maybe_warn_about_overly_private_class, .-maybe_warn_about_overly_private_class
	.type	field_decl_cmp, @function
field_decl_cmp:
.LFB46:
	.loc 1 1987 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	subl	$12, %esp
.LCFI130:
	.loc 1 1988 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L678
	.loc 1 1990 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L680
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L682
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L682
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L680
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L680
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L682
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L682
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L682
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L682
.L680:
	movl	$1, -8(%ebp)
	jmp	.L690
.L682:
	movl	$0, -8(%ebp)
.L690:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L691
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L693
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L693
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L691
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L691
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L693
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L693
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L693
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L693
.L691:
	movl	$1, -4(%ebp)
	jmp	.L701
.L693:
	movl	$0, -4(%ebp)
.L701:
	movl	-8(%ebp), %eax
	subl	-4(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L702
.L678:
	.loc 1 1991 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L703
	.loc 1 1992 0
	movl	$-1, -12(%ebp)
	jmp	.L702
.L703:
	.loc 1 1993 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L705
	.loc 1 1994 0
	movl	$1, -12(%ebp)
	jmp	.L702
.L705:
	.loc 1 1995 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jae	.L707
	.loc 1 1996 0
	movl	$-1, -12(%ebp)
	jmp	.L702
.L707:
	.loc 1 1997 0
	movl	$1, -12(%ebp)
.L702:
	movl	-12(%ebp), %eax
	.loc 1 1998 0
	leave
	ret
.LFE46:
	.size	field_decl_cmp, .-field_decl_cmp
	.type	method_name_cmp, @function
method_name_cmp:
.LFB47:
	.loc 1 2005 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	subl	$16, %esp
.LCFI133:
	.loc 1 2006 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L711
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L711
	.loc 1 2007 0
	movl	$0, -16(%ebp)
	jmp	.L714
.L711:
	.loc 1 2008 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L715
	.loc 1 2009 0
	movl	$-1, -16(%ebp)
	jmp	.L714
.L715:
	.loc 1 2010 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L717
	.loc 1 2011 0
	movl	$1, -16(%ebp)
	jmp	.L714
.L717:
	.loc 1 2012 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L719
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L721
.L719:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L721:
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L722
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L724
.L722:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L724:
	movl	-4(%ebp), %edx
	movl	52(%edx), %eax
	cmpl	%eax, -8(%ebp)
	jae	.L725
	.loc 1 2013 0
	movl	$-1, -16(%ebp)
	jmp	.L714
.L725:
	.loc 1 2014 0
	movl	$1, -16(%ebp)
.L714:
	movl	-16(%ebp), %eax
	.loc 1 2015 0
	leave
	ret
.LFE47:
	.size	method_name_cmp, .-method_name_cmp
	.section	.rodata
	.type	__FUNCTION__.17852, @object
	.size	__FUNCTION__.17852, 22
__FUNCTION__.17852:
	.string	"finish_struct_methods"
	.text
	.type	finish_struct_methods, @function
finish_struct_methods:
.LFB48:
	.loc 1 2036 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%esi
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$64, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2041 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L729
	.loc 1 2045 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-3, %eax
	movb	%al, 39(%edx)
	.loc 1 2046 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-5, %eax
	movb	%al, 39(%edx)
	.loc 1 2047 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	$0, 52(%eax)
	.loc 1 2048 0
	jmp	.L752
.L729:
	.loc 1 2051 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2052 0
	cmpl	$0, -24(%ebp)
	jne	.L732
	leal	__FUNCTION__.17852@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2052, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L732:
	.loc 1 2053 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2057 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L734
.L735:
	.loc 1 2060 0
	movl	-28(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$-2, %eax
	movb	%al, 38(%edx)
	.loc 1 2058 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L734:
	.loc 1 2057 0
	cmpl	$0, -28(%ebp)
	jne	.L735
	.loc 1 2062 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L737
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L737
	.loc 1 2065 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 39(%eax)
.L737:
	.loc 1 2069 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_warn_about_overly_private_class
	.loc 1 2072 0
	jmp	.L740
.L741:
	.loc 1 2073 0
	subl	$1, -16(%ebp)
.L740:
	.loc 1 2072 0
	cmpl	$2, -16(%ebp)
	jle	.L742
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movl	-24(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L741
.L742:
	.loc 1 2074 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2078 0
	movl	$2, -20(%ebp)
	jmp	.L744
.L745:
.LBB34:
	.loc 1 2080 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2082 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L746
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L748
.L746:
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
.L748:
	movl	-44(%ebp), %edx
	movl	52(%edx), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L749
.LBE34:
	.loc 1 2078 0
	addl	$1, -20(%ebp)
.L744:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L745
.L749:
	.loc 1 2085 0
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	$1, %eax
	jle	.L752
	.loc 1 2086 0
	leal	method_name_cmp@GOTOFF(%ebx), %ecx
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movl	-24(%ebp), %edx
	addl	$20, %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%ecx, 12(%esp)
	movl	$4, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	qsort@PLT
.L752:
	.loc 1 2088 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE48:
	.size	finish_struct_methods, .-finish_struct_methods
	.section	.rodata
.LC21:
	.string	"redefinition of `%#T'"
.LC22:
	.string	"previous definition of `%#T'"
	.text
.globl duplicate_tag_error
	.type	duplicate_tag_error, @function
duplicate_tag_error:
.LFB49:
	.loc 1 2095 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%ebx
.LCFI141:
	subl	$68, %esp
.LCFI142:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2096 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2097 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2109 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L754
.LBB35:
	.loc 1 2111 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2112 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2113 0
	movl	$0, -36(%ebp)
	jmp	.L756
.L757:
.LBB36:
	.loc 1 2115 0
	movl	-36(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2116 0
	jmp	.L758
.L759:
	.loc 1 2118 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L760
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L762
.L760:
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
.L762:
	movl	-60(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 2119 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L763
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L765
.L763:
	movl	$0, -56(%ebp)
.L765:
	movl	-56(%ebp), %eax
	movl	%eax, -28(%ebp)
.L758:
	.loc 1 2116 0
	cmpl	$0, -28(%ebp)
	jne	.L759
.LBE36:
	.loc 1 2113 0
	addl	$1, -36(%ebp)
.L756:
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L757
.L754:
.LBE35:
	.loc 1 2124 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L767
.LBB37:
	.loc 1 2126 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2127 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2128 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2129 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2130 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 2132 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, %edx
	movl	$76, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 2133 0
	movl	-24(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 2135 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	(%edx), %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 2136 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 2137 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-20(%ebp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	6(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 2138 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	cmpl	$0, -16(%ebp)
	setne	%al
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	6(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 6(%ecx)
	.loc 1 2139 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	orl	$1, %eax
	movb	%al, 8(%edx)
	.loc 1 2140 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 64(%edx)
	.loc 1 2141 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-8(%ebp), %eax
	andl	$3, %eax
	andl	$3, %eax
	leal	0(,%eax,4), %edx
	movzbl	8(%ecx), %eax
	andl	$-13, %eax
	orl	%edx, %eax
	movb	%al, 8(%ecx)
	.loc 1 2142 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	$0, 60(%eax)
.L767:
.LBE37:
	.loc 1 2144 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 2145 0
	movl	8(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$1, %eax
	movb	%al, 37(%edx)
	.loc 1 2146 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 2147 0
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
	.loc 1 2148 0
	movl	8(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 2149 0
	movl	8(%ebp), %eax
	movl	$0, 80(%eax)
	.loc 1 2152 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-2, %eax
	movb	%al, 39(%edx)
	.loc 1 2153 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-3, %eax
	movb	%al, 39(%edx)
	.loc 1 2154 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-5, %eax
	movb	%al, 39(%edx)
	.loc 1 2155 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-9, %eax
	movb	%al, 39(%edx)
	.loc 1 2156 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-17, %eax
	movb	%al, 39(%edx)
	.loc 1 2157 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-33, %eax
	movb	%al, 39(%edx)
	.loc 1 2158 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	andl	$-65, %eax
	movb	%al, 39(%edx)
	.loc 1 2160 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	orl	$32, %eax
	movb	%al, 39(%edx)
	.loc 1 2161 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	duplicate_tag_error, .-duplicate_tag_error
	.type	layout_vtable_decl, @function
layout_vtable_decl:
.LFB50:
	.loc 1 2171 0
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
	.loc 1 2175 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_cplus_array_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2177 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 2180 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vtbl_decl_for_binfo@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2181 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L774
	.loc 1 2183 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2184 0
	movl	-8(%ebp), %eax
	movl	$0, 48(%eax)
	movl	-8(%ebp), %eax
	movl	48(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2185 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 2189 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	120(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	%edx, -24(%ebp)
	movl	-28(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jae	.L773
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L773:
	movl	-24(%ebp), %eax
	andl	$16777215, %eax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
.L774:
	.loc 1 2192 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	layout_vtable_decl, .-layout_vtable_decl
.globl same_signature_p
	.type	same_signature_p, @function
same_signature_p:
.LFB51:
	.loc 1 2200 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%esi
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$48, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2203 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L776
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L776
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	special_function_p@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	special_function_p@PLT
	cmpl	%eax, %esi
	jne	.L776
	.loc 1 2205 0
	movl	$1, -48(%ebp)
	jmp	.L780
.L776:
	.loc 1 2210 0
	movl	12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L781
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L783
.L781:
	.loc 1 2211 0
	movl	$0, -48(%ebp)
	jmp	.L780
.L783:
	.loc 1 2213 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	%eax, %edx
	jne	.L784
.LBB38:
	.loc 1 2216 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2217 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2218 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L786
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L786
	movl	$1, -40(%ebp)
	jmp	.L789
.L786:
	movl	$0, -40(%ebp)
.L789:
	movl	-40(%ebp), %eax
	sall	$3, %eax
	movl	-44(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -36(%ebp)
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	orl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -32(%ebp)
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L790
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L790
	movl	$1, -28(%ebp)
	jmp	.L793
.L790:
	movl	$0, -28(%ebp)
.L793:
	movl	-28(%ebp), %eax
	sall	$3, %eax
	orl	-32(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L784
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compparms@PLT
	testl	%eax, %eax
	je	.L784
	.loc 1 2221 0
	movl	$1, -48(%ebp)
	jmp	.L780
.L784:
.LBE38:
	.loc 1 2223 0
	movl	$0, -48(%ebp)
.L780:
	movl	-48(%ebp), %eax
	.loc 1 2224 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE51:
	.size	same_signature_p, .-same_signature_p
	.type	dfs_base_derived_from, @function
dfs_base_derived_from:
.LFB52:
	.loc 1 2230 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$36, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2231 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2233 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L798
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L798
	.loc 1 2235 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L801
.L798:
	.loc 1 2237 0
	movl	$0, -24(%ebp)
.L801:
	movl	-24(%ebp), %eax
	.loc 1 2238 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	dfs_base_derived_from, .-dfs_base_derived_from
	.type	base_derived_from, @function
base_derived_from:
.LFB53:
	.loc 1 2245 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%ebx
.LCFI158:
	subl	$20, %esp
.LCFI159:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2246 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_base_derived_from@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 2247 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	base_derived_from, .-base_derived_from
	.type	dfs_find_final_overrider, @function
dfs_find_final_overrider:
.LFB54:
	.loc 1 2266 0
	pushl	%ebp
.LCFI160:
	movl	%esp, %ebp
.LCFI161:
	pushl	%ebx
.LCFI162:
	subl	$36, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2267 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2269 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L806
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L806
.LBB39:
	.loc 1 2278 0
	movl	$0, -12(%ebp)
	.loc 1 2281 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	reverse_path@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2282 0
	jmp	.L809
.L810:
	.loc 1 2284 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L809:
	.loc 1 2282 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L810
	.loc 1 2285 0
	jmp	.L812
.L813:
	.loc 1 2287 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	look_for_overrides_here@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2289 0
	cmpl	$0, -12(%ebp)
	je	.L814
	.loc 1 2291 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2292 0
	jmp	.L816
.L814:
	.loc 1 2295 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L812:
	.loc 1 2285 0
	cmpl	$0, -16(%ebp)
	jne	.L813
.L816:
	.loc 1 2300 0
	cmpl	$0, -16(%ebp)
	je	.L806
.LBB40:
	.loc 1 2305 0
	movl	-20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -8(%ebp)
	.loc 1 2306 0
	jmp	.L827
.L819:
	.loc 1 2310 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	base_derived_from
	testb	%al, %al
	je	.L820
	.loc 1 2311 0
	movl	$0, -24(%ebp)
	jmp	.L822
.L820:
	.loc 1 2313 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	base_derived_from
	testb	%al, %al
	je	.L823
	.loc 1 2314 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L818
.L823:
	.loc 1 2316 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L818:
.L827:
	.loc 1 2306 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L819
	.loc 1 2320 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L806:
.LBE40:
.LBE39:
	.loc 1 2324 0
	movl	$0, -24(%ebp)
.L822:
	movl	-24(%ebp), %eax
	.loc 1 2325 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	dfs_find_final_overrider, .-dfs_find_final_overrider
	.section	.rodata
	.align 4
.LC23:
	.string	"no unique final overrider for `%D' in `%T'"
	.text
	.type	find_final_overrider, @function
find_final_overrider:
.LFB55:
	.loc 1 2337 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	pushl	%ebx
.LCFI166:
	subl	$36, %esp
.LCFI167:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2358 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2359 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2360 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2361 0
	movl	$0, -8(%ebp)
	.loc 1 2363 0
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_find_final_overrider@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk@PLT
	.loc 1 2369 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	je	.L829
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L831
.L829:
	.loc 1 2371 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2373 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L832
.L831:
	.loc 1 2376 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L832:
	movl	-24(%ebp), %eax
	.loc 1 2377 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	find_final_overrider, .-find_final_overrider
	.section	.rodata
	.type	__FUNCTION__.18212, @object
	.size	__FUNCTION__.18212, 16
__FUNCTION__.18212:
	.string	"get_vcall_index"
	.text
	.type	get_vcall_index, @function
get_vcall_index:
.LFB56:
	.loc 1 2384 0
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
	.loc 1 2387 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L835
.L836:
	.loc 1 2388 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L837
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L839
.L837:
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	same_signature_p@PLT
	testl	%eax, %eax
	jne	.L839
	.loc 1 2387 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L835:
	cmpl	$0, -8(%ebp)
	jne	.L836
.L839:
	.loc 1 2393 0
	cmpl	$0, -8(%ebp)
	jne	.L841
	leal	__FUNCTION__.18212@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2393, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L841:
	.loc 1 2395 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	.loc 1 2396 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	get_vcall_index, .-get_vcall_index
	.type	update_vtable_entry_for_fn, @function
update_vtable_entry_for_fn:
.LFB57:
	.loc 1 2408 0
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
	pushl	%esi
.LCFI174:
	pushl	%ebx
.LCFI175:
	subl	$64, %esp
.LCFI176:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2414 0
	movb	$0, -9(%ebp)
	.loc 1 2419 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
.L845:
	.loc 1 2421 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	look_for_overrides_here@PLT
	testl	%eax, %eax
	jne	.L846
	.loc 1 2425 0
	movl	-32(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L848
	.loc 1 2426 0
	movb	$1, -9(%ebp)
.L848:
	.loc 1 2419 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2427 0
	jmp	.L845
.L846:
	.loc 1 2428 0
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2431 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_final_overrider
	movl	%eax, -28(%ebp)
	.loc 1 2432 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L865
	.loc 1 2437 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	check_final_overrider@PLT
	.loc 1 2441 0
	movl	$0, -20(%ebp)
	.loc 1 2445 0
	jmp	.L852
.L853:
	.loc 1 2449 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L854
	.loc 1 2456 0
	cmpl	$0, -20(%ebp)
	jne	.L856
	movl	-32(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L856
	.loc 1 2457 0
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
.L856:
	.loc 1 2445 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L852:
	cmpl	$0, -32(%ebp)
	jne	.L853
.L854:
	.loc 1 2463 0
	cmpl	$0, -20(%ebp)
	je	.L859
	.loc 1 2466 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, -24(%ebp)
	jmp	.L861
.L859:
	.loc 1 2468 0
	cmpb	$0, -9(%ebp)
	je	.L862
	.loc 1 2473 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L861
.L862:
	.loc 1 2478 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, -24(%ebp)
.L861:
	.loc 1 2481 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	modify_vtable_entry
	.loc 1 2487 0
	cmpl	$0, -20(%ebp)
	je	.L865
	.loc 1 2488 0
	movl	20(%ebp), %eax
	movl	(%eax), %esi
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	get_vcall_index
	movl	%eax, 4(%esi)
.L865:
	.loc 1 2491 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE57:
	.size	update_vtable_entry_for_fn, .-update_vtable_entry_for_fn
	.type	dfs_modify_vtables, @function
dfs_modify_vtables:
.LFB58:
	.loc 1 2499 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%edi
.LCFI179:
	pushl	%esi
.LCFI180:
	subl	$32, %esp
.LCFI181:
	.loc 1 2500 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L867
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L869
.L867:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L869
.LBB41:
	.loc 1 2512 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2514 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	make_new_vtable
	.loc 1 2520 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2521 0
	jmp	.L871
.L872:
	.loc 1 2524 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	update_vtable_entry_for_fn
	.loc 1 2523 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L871:
	.loc 1 2521 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L872
.L869:
.LBE41:
	.loc 1 2530 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L873
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L875
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L877
.L875:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L878
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L878
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L878
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L878
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L877
.L878:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
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
	jmp	.L884
.L877:
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	orl	$1, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
	jmp	.L884
.L873:
	movl	8(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$1, %edx
	movb	%dl, 11(%eax)
.L884:
	.loc 1 2532 0
	movl	$0, %eax
	.loc 1 2533 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE58:
	.size	dfs_modify_vtables, .-dfs_modify_vtables
	.type	modify_all_vtables, @function
modify_all_vtables:
.LFB59:
	.loc 1 2548 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$36, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2549 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2553 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	dfs_unmarked_real_bases_queue_p@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	dfs_modify_vtables@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk@PLT
	.loc 1 2557 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	dfs_marked_real_bases_queue_p@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	dfs_unmark@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk@PLT
	.loc 1 2563 0
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L894
.L888:
.LBB42:
	.loc 1 2565 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2567 0
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	value_member@PLT
	testl	%eax, %eax
	je	.L889
	movl	-8(%ebp), %eax
	movl	124(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L891
.L889:
	.loc 1 2572 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 16(%edx)
	.loc 1 2573 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 2576 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2567 0
	jmp	.L887
.L891:
	.loc 1 2580 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
.L887:
.L894:
.LBE42:
	.loc 1 2563 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L888
	.loc 1 2583 0
	movl	12(%ebp), %eax
	.loc 1 2584 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	modify_all_vtables, .-modify_all_vtables
	.type	get_basefndecls, @function
get_basefndecls:
.LFB60:
	.loc 1 2592 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%ebx
.LCFI188:
	subl	$68, %esp
.LCFI189:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2594 0
	movl	$0, -24(%ebp)
	.loc 1 2595 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L896
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L898
.L896:
	movl	$0, -52(%ebp)
.L898:
	movl	-52(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2599 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_fnfields_1@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2600 0
	cmpl	$-1, -16(%ebp)
	je	.L899
	.loc 1 2601 0
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2602 0
	jmp	.L901
.L902:
.LBB43:
	.loc 1 2605 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L903
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L905
.L903:
	movl	-28(%ebp), %eax
	movl	%eax, -48(%ebp)
.L905:
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2607 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L906
	movl	-12(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L906
	.loc 1 2609 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
.L906:
.LBE43:
	.loc 1 2603 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L909
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L911
.L909:
	movl	$0, -44(%ebp)
.L911:
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
.L901:
	.loc 1 2602 0
	cmpl	$0, -28(%ebp)
	jne	.L902
.L899:
	.loc 1 2612 0
	cmpl	$0, -24(%ebp)
	je	.L912
	.loc 1 2613 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L914
.L912:
	.loc 1 2615 0
	movl	$0, -16(%ebp)
	jmp	.L915
.L916:
.LBB44:
	.loc 1 2617 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2618 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_basefndecls
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, -24(%ebp)
.LBE44:
	.loc 1 2615 0
	addl	$1, -16(%ebp)
.L915:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L916
	.loc 1 2622 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L914:
	movl	-40(%ebp), %eax
	.loc 1 2623 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	get_basefndecls, .-get_basefndecls
	.type	check_for_override, @function
check_for_override:
.LFB61:
	.loc 1 2632 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%ebx
.LCFI192:
	subl	$20, %esp
.LCFI193:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2633 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L930
	.loc 1 2639 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L922
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L924
.L922:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	look_for_overrides@PLT
	testl	%eax, %eax
	je	.L924
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L924
	.loc 1 2646 0
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 124(%edx)
.L924:
	.loc 1 2648 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L930
	.loc 1 2650 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L928
	.loc 1 2651 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 124(%eax)
.L928:
	.loc 1 2652 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movzbl	11(%edx), %eax
	orl	$2, %eax
	movb	%al, 11(%edx)
.L930:
	.loc 1 2654 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	check_for_override, .-check_for_override
	.section	.rodata
.LC24:
	.string	"`%D' was hidden"
.LC25:
	.string	"  by `%D'"
	.text
.globl warn_hidden
	.type	warn_hidden, @function
warn_hidden:
.LFB62:
	.loc 1 2662 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	pushl	%esi
.LCFI196:
	pushl	%ebx
.LCFI197:
	subl	$80, %esp
.LCFI198:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2663 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2664 0
	cmpl	$0, -44(%ebp)
	je	.L932
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L934
.L932:
	movl	$0, -80(%ebp)
.L934:
	movl	-80(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2668 0
	movl	$2, -36(%ebp)
	jmp	.L935
.L936:
.LBB45:
	.loc 1 2678 0
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L937
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L939
.L937:
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -76(%ebp)
.L939:
	movl	-76(%ebp), %edx
	movl	52(%edx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2680 0
	movl	$0, -48(%ebp)
	.loc 1 2683 0
	movl	$0, -20(%ebp)
	jmp	.L940
.L941:
.LBB46:
	.loc 1 2685 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2686 0
	movl	-48(%ebp), %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_basefndecls
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, -48(%ebp)
.LBE46:
	.loc 1 2683 0
	addl	$1, -20(%ebp)
.L940:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L942
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L944
.L942:
	movl	$0, -72(%ebp)
.L944:
	movl	-72(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jg	.L941
	.loc 1 2691 0
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L946
	.loc 1 2695 0
	movl	-36(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	jmp	.L948
.L949:
	.loc 1 2697 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L950
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L952
.L950:
	movl	-32(%ebp), %edx
	movl	%edx, -68(%ebp)
.L952:
	movl	-68(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2698 0
	movl	-24(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L953
.LBB47:
	.loc 1 2700 0
	leal	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2702 0
	jmp	.L971
.L956:
	.loc 1 2706 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	same_signature_p@PLT
	testl	%eax, %eax
	je	.L957
	.loc 1 2707 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L955
.L957:
	.loc 1 2709 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L955:
.L971:
	.loc 1 2702 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L956
.L953:
.LBE47:
	.loc 1 2695 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L959
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L961
.L959:
	movl	$0, -64(%ebp)
.L961:
	movl	-64(%ebp), %edx
	movl	%edx, -32(%ebp)
.L948:
	cmpl	$0, -32(%ebp)
	jne	.L949
	.loc 1 2715 0
	jmp	.L963
.L964:
	.loc 1 2718 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	.loc 1 2719 0
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L965
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L967
.L965:
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	20(%eax,%edx,4), %edx
	movl	%edx, -60(%ebp)
.L967:
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	.loc 1 2721 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L963:
	.loc 1 2715 0
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	jne	.L964
.L946:
.LBE45:
	.loc 1 2668 0
	addl	$1, -36(%ebp)
.L935:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	.L970
	movl	-36(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L936
.L970:
	.loc 1 2724 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE62:
	.size	warn_hidden, .-warn_hidden
	.section	.rodata
	.align 4
.LC26:
	.string	"ISO C++ forbids member `%D' with same name as enclosing class"
	.align 4
.LC27:
	.string	"`%#D' invalid; an anonymous union can only have non-static data members"
	.align 4
.LC28:
	.string	"private member `%#D' in anonymous union"
	.align 4
.LC29:
	.string	"protected member `%#D' in anonymous union"
	.text
	.type	finish_struct_anon, @function
finish_struct_anon:
.LFB63:
	.loc 1 2732 0
	pushl	%ebp
.LCFI199:
	movl	%esp, %ebp
.LCFI200:
	pushl	%esi
.LCFI201:
	pushl	%ebx
.LCFI202:
	subl	$32, %esp
.LCFI203:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2735 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L973
.L974:
	.loc 1 2737 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L975
	.loc 1 2739 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L975
	.loc 1 2742 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L975
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L979
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L975
.L979:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L981
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L981
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L981
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L981
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L975
.L981:
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L975
.LBB48:
	.loc 1 2745 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2746 0
	jmp	.L987
.L988:
	.loc 1 2755 0
	movl	-12(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L989
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L991
	movl	-12(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L991
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L994
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L996
.L994:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L997
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L997
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L997
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L997
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L997
.L996:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L989
.L997:
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L989
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	je	.L991
.L989:
	.loc 1 2760 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	cmpl	%eax, %esi
	jne	.L1003
	.loc 1 2761 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
.L1003:
	.loc 1 2764 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	je	.L1005
	.loc 1 2766 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
	.loc 1 2768 0
	jmp	.L991
.L1005:
	.loc 1 2771 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1007
	.loc 1 2772 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
	jmp	.L1009
.L1007:
	.loc 1 2774 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1009
	.loc 1 2775 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
.L1009:
	.loc 1 2778 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	10(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 2779 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	10(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
.L991:
	.loc 1 2746 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L987:
	cmpl	$0, -12(%ebp)
	jne	.L988
.L975:
.LBE48:
	.loc 1 2735 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L973:
	cmpl	$0, -16(%ebp)
	jne	.L974
	.loc 1 2783 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE63:
	.size	finish_struct_anon, .-finish_struct_anon
.globl maybe_add_class_template_decl_list
	.type	maybe_add_class_template_decl_list, @function
maybe_add_class_template_decl_list:
.LFB64:
	.loc 1 2800 0
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
	.loc 1 2802 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1019
	.loc 1 2803 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L1016
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1018
.L1016:
	movl	$0, -8(%ebp)
.L1018:
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	-16(%ebp), %edx
	movl	%eax, 60(%edx)
.L1019:
	.loc 1 2806 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	maybe_add_class_template_decl_list, .-maybe_add_class_template_decl_list
	.section	.rodata
	.align 4
.LC30:
	.string	"vtable layout for class `%T' may not be ABI-compliant and may change in a future version of GCC due to implicit virtual destructor"
	.text
	.type	add_implicitly_declared_members, @function
add_implicitly_declared_members:
.LFB65:
	.loc 1 2825 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$36, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2827 0
	movl	$0, -20(%ebp)
	.loc 1 2828 0
	movl	$0, -12(%ebp)
	.loc 1 2831 0
	movl	adding_implicit_members@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	adding_implicit_members@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2834 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1021
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1021
	.loc 1 2836 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	implicitly_declare_fn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2837 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	check_for_override
	.loc 1 2840 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L1024
	.loc 1 2841 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %edx
	andl	$-17, %edx
	movb	%dl, 39(%eax)
	jmp	.L1028
.L1024:
	.loc 1 2844 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2845 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2847 0
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L1028
	.loc 1 2848 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2834 0
	jmp	.L1028
.L1021:
	.loc 1 2853 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	39(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
.L1028:
	.loc 1 2856 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1029
	cmpl	$0, 12(%ebp)
	jne	.L1029
	.loc 1 2858 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	implicitly_declare_fn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2859 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2860 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1029:
	.loc 1 2864 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1032
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1032
	.loc 1 2868 0
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	implicitly_declare_fn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2871 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2872 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2874 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
.L1032:
	.loc 1 2879 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1035
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1035
	.loc 1 2881 0
	cmpl	$0, 20(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	implicitly_declare_fn@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2884 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2885 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1035:
	.loc 1 2890 0
	leal	-20(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1038
.L1039:
	.loc 1 2892 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_method@PLT
	.loc 1 2893 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	maybe_add_class_template_decl_list@PLT
	.loc 1 2890 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1038:
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1039
	.loc 1 2895 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1041
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1043
.L1041:
	.loc 1 2899 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 2895 0
	jmp	.L1044
.L1043:
	.loc 1 2902 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1045
	cmpl	$0, -12(%ebp)
	je	.L1045
	.loc 1 2903 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1045:
	.loc 1 2907 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2908 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
.L1044:
	.loc 1 2911 0
	movl	adding_implicit_members@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	adding_implicit_members@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2912 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	add_implicitly_declared_members, .-add_implicitly_declared_members
	.type	count_fields, @function
count_fields:
.LFB66:
	.loc 1 2920 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	subl	$20, %esp
.LCFI214:
	.loc 1 2922 0
	movl	$0, -4(%ebp)
	.loc 1 2923 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1050
.L1051:
	.loc 1 2925 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1052
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1054
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1052
.L1054:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1056
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1056
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1056
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1056
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1052
.L1056:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1052
	.loc 1 2926 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	count_fields
	addl	%eax, -4(%ebp)
	.loc 1 2925 0
	jmp	.L1062
.L1052:
	.loc 1 2928 0
	addl	$1, -4(%ebp)
.L1062:
	.loc 1 2923 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1050:
	cmpl	$0, -8(%ebp)
	jne	.L1051
	.loc 1 2930 0
	movl	-4(%ebp), %eax
	.loc 1 2931 0
	leave
	ret
.LFE66:
	.size	count_fields, .-count_fields
	.type	add_fields_to_vec, @function
add_fields_to_vec:
.LFB67:
	.loc 1 2940 0
	pushl	%ebp
.LCFI215:
	movl	%esp, %ebp
.LCFI216:
	subl	$28, %esp
.LCFI217:
	.loc 1 2942 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1066
.L1067:
	.loc 1 2944 0
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1068
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1070
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1068
.L1070:
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1072
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1072
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1072
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1072
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1068
.L1072:
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1068
	.loc 1 2945 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_fields_to_vec
	movl	%eax, 16(%ebp)
	.loc 1 2944 0
	jmp	.L1078
.L1068:
	.loc 1 2947 0
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 20(%edx,%ecx,4)
	addl	$1, 16(%ebp)
.L1078:
	.loc 1 2942 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1066:
	cmpl	$0, -4(%ebp)
	jne	.L1067
	.loc 1 2949 0
	movl	16(%ebp), %eax
	.loc 1 2950 0
	leave
	ret
.LFE67:
	.size	add_fields_to_vec, .-add_fields_to_vec
	.section	.rodata
	.align 4
.LC31:
	.string	"bit-field `%#D' with non-integral type"
	.align 4
.LC32:
	.string	"bit-field `%D' width not an integer constant"
	.align 4
.LC33:
	.string	"negative width in bit-field `%D'"
.LC34:
	.string	"zero width for bit-field `%D'"
	.align 4
.LC35:
	.string	"width of `%D' exceeds its type"
	.align 4
.LC36:
	.string	"`%D' is too small to hold all values of `%#T'"
	.text
	.type	check_bitfield_decl, @function
check_bitfield_decl:
.LFB68:
	.loc 1 2959 0
	pushl	%ebp
.LCFI218:
	movl	%esp, %ebp
.LCFI219:
	pushl	%ebx
.LCFI220:
	subl	$52, %esp
.LCFI221:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2960 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2961 0
	movl	$0, -8(%ebp)
	.loc 1 2964 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1082
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1082
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1082
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1082
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L1082
	.loc 1 2967 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2968 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1082:
	.loc 1 2972 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1088
	.loc 1 2974 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2977 0
	jmp	.L1090
.L1091:
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1090:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1092
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1092
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1095
.L1092:
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1095
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1091
.L1095:
	.loc 1 2980 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	jne	.L1097
	.loc 1 2981 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1099
.L1097:
	.loc 1 2983 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_constant_value@PLT
	movl	%eax, -8(%ebp)
.L1099:
	.loc 1 2985 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1100
	.loc 1 2987 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2989 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1088
.L1100:
	.loc 1 2991 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L1102
	.loc 1 2993 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2994 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1088
.L1102:
	.loc 1 2996 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1104
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1104
	.loc 1 2998 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 2999 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2996 0
	jmp	.L1088
.L1104:
	.loc 1 3001 0
	movl	-12(%ebp), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jle	.L1107
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1107
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1107
	.loc 1 3004 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	.loc 1 3001 0
	jmp	.L1088
.L1107:
	.loc 1 3005 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	jne	.L1088
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	min_precision@PLT
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	js	.L1112
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	64(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	min_precision@PLT
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jns	.L1088
.L1112:
	.loc 1 3013 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
.L1088:
	.loc 1 3019 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 3021 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L1114
	.loc 1 3023 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 3024 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$16, %eax
	movb	%al, 33(%edx)
	.loc 1 3026 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1123
	movl	targetm@GOT(%ebx), %eax
	movl	204(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	xorl	$1, %eax
	testb	%al, %al
	je	.L1123
	.loc 1 3030 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -40(%ebp)
	cmpl	$32, -40(%ebp)
	jge	.L1119
	movl	$32, -40(%ebp)
.L1119:
	movl	-40(%ebp), %eax
	andl	$16777215, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 3036 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -36(%ebp)
	movl	%edx, -32(%ebp)
	movl	-36(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	jae	.L1120
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1120:
	movl	-32(%ebp), %eax
	andl	$16777215, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 3038 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	jmp	.L1123
.L1114:
	.loc 1 3046 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-17, %eax
	movb	%al, 33(%edx)
	.loc 1 3047 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$-3, %eax
	movb	%al, 38(%edx)
	.loc 1 3048 0
	movl	-12(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, -28(%ebp)
	movl	%edx, -24(%ebp)
	movl	-28(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jae	.L1122
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1122:
	movl	-24(%ebp), %eax
	andl	$16777215, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 3049 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
.L1123:
	.loc 1 3051 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	check_bitfield_decl, .-check_bitfield_decl
	.section	.rodata
	.align 4
.LC37:
	.string	"member `%#D' with constructor not allowed in union"
	.align 4
.LC38:
	.string	"member `%#D' with destructor not allowed in union"
	.align 4
.LC39:
	.string	"member `%#D' with copy assignment operator not allowed in union"
	.align 4
.LC40:
	.string	"multiple fields in union `%T' initialized"
	.text
	.type	check_field_decl, @function
check_field_decl:
.LFB69:
	.loc 1 3067 0
	pushl	%ebp
.LCFI222:
	movl	%esp, %ebp
.LCFI223:
	pushl	%ebx
.LCFI224:
	subl	$52, %esp
.LCFI225:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3068 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3072 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1125
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1127
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1125
.L1127:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1129
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1129
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1129
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1129
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1125
.L1129:
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1125
	jmp	.L1135
.L1125:
	.loc 1 3076 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1136
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1138
.L1136:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1139
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1139
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1139
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1139
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1138
.L1139:
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1138
.LBB49:
	.loc 1 3080 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1145
.L1146:
	.loc 1 3081 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1147
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1147
	.loc 1 3082 0
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
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_field_decl
.L1147:
	.loc 1 3080 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1145:
	cmpl	$0, -8(%ebp)
	jne	.L1146
	.loc 1 3076 0
	jmp	.L1135
.L1138:
.LBE49:
	.loc 1 3088 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1151
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1135
.L1151:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1153
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1153
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1153
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1153
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1135
.L1153:
	.loc 1 3092 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	abstract_virtuals_error@PLT
	.loc 1 3094 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1158
	.loc 1 3096 0
	movl	-12(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1160
	.loc 1 3097 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1160:
	.loc 1 3099 0
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1162
	.loc 1 3100 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1162:
	.loc 1 3102 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1166
	.loc 1 3103 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	jmp	.L1166
.L1158:
	.loc 1 3108 0
	movl	12(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	38(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	.loc 1 3109 0
	movl	12(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	39(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 39(%ecx)
	.loc 1 3111 0
	movl	12(%ebp), %eax
	movl	92(%eax), %ecx
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	9(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 3112 0
	movl	12(%ebp), %eax
	movl	92(%eax), %ecx
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
.L1166:
	.loc 1 3115 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1167
	.loc 1 3116 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L1167:
	.loc 1 3118 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L1169
	.loc 1 3119 0
	movl	24(%ebp), %eax
	movl	$1, (%eax)
.L1169:
	.loc 1 3121 0
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1135
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1135
	.loc 1 3123 0
	movl	20(%ebp), %eax
	movl	$1, (%eax)
.L1135:
	.loc 1 3125 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1178
	.loc 1 3129 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1175
	cmpl	$0, 28(%ebp)
	je	.L1175
	.loc 1 3130 0
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1175:
	.loc 1 3131 0
	movl	28(%ebp), %eax
	movl	$1, (%eax)
.L1178:
	.loc 1 3133 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	check_field_decl, .-check_field_decl
	.section	.rodata
	.align 4
.LC41:
	.string	"field `%D' in local class cannot be static"
	.align 4
.LC42:
	.string	"field `%D' invalidly declared function type"
	.align 4
.LC43:
	.string	"field `%D' invalidly declared method type"
	.align 4
.LC44:
	.string	"field `%D' invalidly declared offset type"
	.align 4
.LC45:
	.string	"field `%D' declared static in union"
	.align 4
.LC46:
	.string	"non-static reference `%#D' in class without a constructor"
	.align 4
.LC47:
	.string	"non-static const member `%#D' in class without a constructor"
	.align 4
.LC48:
	.string	"field `%#D' with same name as class"
	.align 4
.LC49:
	.string	"`%#T' has pointer data members"
	.align 4
.LC50:
	.string	"  but does not override `%T(const %T&)'"
.LC51:
	.string	"  or `operator=(const %T&)'"
	.align 4
.LC52:
	.string	"  but does not override `operator=(const %T&)'"
	.text
	.type	check_field_decls, @function
check_field_decls:
.LFB70:
	.loc 1 3169 0
	pushl	%ebp
.LCFI226:
	movl	%esp, %ebp
.LCFI227:
	pushl	%esi
.LCFI228:
	pushl	%ebx
.LCFI229:
	subl	$64, %esp
.LCFI230:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3176 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	delete_duplicate_fields
	.loc 1 3179 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3181 0
	movl	$0, -24(%ebp)
	.loc 1 3184 0
	movl	$0, -36(%ebp)
	.loc 1 3186 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -32(%ebp)
	jmp	.L1180
.L1181:
.LBB50:
	.loc 1 3188 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3189 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3191 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3193 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1182
	.loc 1 3195 0
	movl	-20(%ebp), %eax
	movzbl	33(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	-20(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	33(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 33(%ecx)
	.loc 1 3197 0
	movl	-20(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1184
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1184
	jmp	.L1182
.L1184:
.LBB51:
	.loc 1 3206 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	andl	$-3, %eax
	movb	%al, 10(%edx)
	.loc 1 3208 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-9, %eax
	movb	%al, 5(%edx)
	.loc 1 3211 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3212 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1187
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1182
.L1187:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1189
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1189
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1189
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1189
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1182
.L1189:
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1182
	.loc 1 3214 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
.L1182:
.LBE51:
	.loc 1 3218 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-56, %al
	jne	.L1195
	.loc 1 3221 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3224 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3228 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3229 0
	jmp	.L1197
.L1195:
	.loc 1 3232 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L1197
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L1197
	.loc 1 3239 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 3242 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1200
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1200
	.loc 1 3243 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1200:
	.loc 1 3247 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L1203
	.loc 1 3249 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 3251 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3252 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L1205
.L1203:
	.loc 1 3254 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L1206
	.loc 1 3256 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 3257 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3258 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L1205
.L1206:
	.loc 1 3260 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L1205
	.loc 1 3262 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 3263 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3264 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
.L1205:
	.loc 1 3267 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L1197
	.loc 1 3271 0
	movl	-20(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$2, %eax
	movb	%al, 33(%edx)
	.loc 1 3273 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$33, %al
	je	.L1197
	.loc 1 3276 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1211
	.loc 1 3278 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1197
	.loc 1 3280 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
	.loc 1 3282 0
	jmp	.L1197
.L1211:
	.loc 1 3287 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1215
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1217
.L1215:
	.loc 1 3288 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
.L1217:
	.loc 1 3292 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1218
	.loc 1 3294 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$4, %eax
	movb	%al, 5(%edx)
	.loc 1 3295 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L1220
	.loc 1 3296 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	(%edx), %eax
	orl	$64, %eax
	movb	%al, (%edx)
.L1220:
	.loc 1 3302 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 3303 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 3305 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1218
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1218
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1218
	.loc 1 3307 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
.L1218:
	.loc 1 3310 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3312 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1225
	.loc 1 3313 0
	movl	$1, -24(%ebp)
.L1225:
	.loc 1 3315 0
	movl	-20(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1227
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_has_mutable_p@PLT
	testl	%eax, %eax
	je	.L1229
.L1227:
	.loc 1 3316 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$1, %eax
	movb	%al, 5(%edx)
.L1229:
	.loc 1 3318 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	pod_type_p@PLT
	testl	%eax, %eax
	jne	.L1230
	.loc 1 3321 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$4, %eax
	movb	%al, 5(%edx)
.L1230:
	.loc 1 3323 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	zero_init_p@PLT
	testl	%eax, %eax
	jne	.L1232
	.loc 1 3324 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
.L1232:
	.loc 1 3327 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	andl	$1, %eax
	testb	%al, %al
	je	.L1234
	.loc 1 3329 0
	movl	8(%ebp), %edx
	movzbl	39(%edx), %eax
	orl	$1, %eax
	movb	%al, 39(%edx)
	.loc 1 3330 0
	movl	-20(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L1236
	.loc 1 3331 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	(%edx), %eax
	orl	$32, %eax
	movb	%al, (%edx)
.L1236:
	.loc 1 3337 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 3338 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$4, %eax
	movb	%al, 9(%edx)
	.loc 1 3340 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1242
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1242
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1242
	.loc 1 3342 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	jmp	.L1242
.L1234:
	.loc 1 3345 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1243
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1243
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1243
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1243
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1242
.L1243:
	.loc 1 3347 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	39(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 3348 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1248
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movb	%al, -42(%ebp)
	jmp	.L1250
.L1248:
	movb	$0, -42(%ebp)
.L1250:
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1251
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movb	%al, -41(%ebp)
	jmp	.L1253
.L1251:
	movb	$0, -41(%ebp)
.L1253:
	movzbl	-42(%ebp), %eax
	orb	-41(%ebp), %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movl	-48(%ebp), %ecx
	movzbl	(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movl	-48(%ebp), %edx
	movb	%al, (%edx)
.L1242:
	.loc 1 3356 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	cmpl	%eax, %esi
	jne	.L1254
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1254
	.loc 1 3358 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_pedwarn_at@PLT
.L1254:
	.loc 1 3362 0
	movl	-20(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1257
	.loc 1 3363 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	check_bitfield_decl
	jmp	.L1197
.L1257:
	.loc 1 3365 0
	leal	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	check_field_decl
.L1197:
.LBE50:
	.loc 1 3186 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1180:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1181
	.loc 1 3373 0
	cmpl	$0, -24(%ebp)
	je	.L1260
	movl	warn_ecpp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1260
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1260
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1264
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1260
.L1264:
	.loc 1 3376 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3378 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1266
	.loc 1 3380 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3381 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1260
	.loc 1 3382 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1260
.L1266:
	.loc 1 3384 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1260
	.loc 1 3385 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1260:
	.loc 1 3390 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_struct_anon
	.loc 1 3394 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3395 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE70:
	.size	check_field_decls, .-check_field_decls
	.type	record_subobject_offset, @function
record_subobject_offset:
.LFB71:
	.loc 1 3405 0
	pushl	%ebp
.LCFI231:
	movl	%esp, %ebp
.LCFI232:
	pushl	%ebx
.LCFI233:
	subl	$36, %esp
.LCFI234:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3408 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	jne	.L1273
	.loc 1 3409 0
	movl	$0, -24(%ebp)
	jmp	.L1275
.L1273:
	.loc 1 3412 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3413 0
	cmpl	$0, -8(%ebp)
	jne	.L1276
	.loc 1 3414 0
	movl	12(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	movl	%eax, -8(%ebp)
.L1276:
	.loc 1 3417 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3422 0
	movl	$0, -24(%ebp)
.L1275:
	movl	-24(%ebp), %eax
	.loc 1 3423 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE71:
	.size	record_subobject_offset, .-record_subobject_offset
	.type	check_subobject_offset, @function
check_subobject_offset:
.LFB72:
	.loc 1 3433 0
	pushl	%ebp
.LCFI235:
	movl	%esp, %ebp
.LCFI236:
	pushl	%ebx
.LCFI237:
	subl	$36, %esp
.LCFI238:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3437 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	jne	.L1280
	.loc 1 3438 0
	movl	$0, -24(%ebp)
	jmp	.L1282
.L1280:
	.loc 1 3441 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3442 0
	cmpl	$0, -12(%ebp)
	jne	.L1283
	.loc 1 3443 0
	movl	$0, -24(%ebp)
	jmp	.L1282
.L1283:
	.loc 1 3445 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1285
.L1286:
	.loc 1 3446 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1287
	.loc 1 3447 0
	movl	$1, -24(%ebp)
	jmp	.L1282
.L1287:
	.loc 1 3445 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1285:
	cmpl	$0, -8(%ebp)
	jne	.L1286
	.loc 1 3449 0
	movl	$0, -24(%ebp)
.L1282:
	movl	-24(%ebp), %eax
	.loc 1 3450 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	check_subobject_offset, .-check_subobject_offset
	.type	walk_subobject_offsets, @function
walk_subobject_offsets:
.LFB73:
	.loc 1 3471 0
	pushl	%ebp
.LCFI239:
	movl	%esp, %ebp
.LCFI240:
	pushl	%edi
.LCFI241:
	pushl	%esi
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$252, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3472 0
	movl	$0, -68(%ebp)
	.loc 1 3473 0
	movl	$0, -64(%ebp)
	.loc 1 3477 0
	cmpl	$0, 24(%ebp)
	je	.L1292
	movl	24(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -240(%ebp)
	movl	%ecx, -236(%ebp)
	movl	16(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -232(%ebp)
	movl	%ecx, -228(%ebp)
	movl	-228(%ebp), %ecx
	cmpl	%ecx, -236(%ebp)
	jl	.L1294
	movl	-228(%ebp), %eax
	cmpl	%eax, -236(%ebp)
	jg	.L1296
	movl	-232(%ebp), %edx
	cmpl	%edx, -240(%ebp)
	jb	.L1294
.L1296:
	movl	24(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	16(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1292
	movl	24(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -224(%ebp)
	movl	%ecx, -220(%ebp)
	movl	16(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -216(%ebp)
	movl	%ecx, -212(%ebp)
	movl	-212(%ebp), %ecx
	cmpl	%ecx, -220(%ebp)
	ja	.L1292
	movl	-212(%ebp), %eax
	cmpl	%eax, -220(%ebp)
	jb	.L1294
	movl	-216(%ebp), %edx
	cmpl	%edx, -224(%ebp)
	jae	.L1292
.L1294:
	.loc 1 3478 0
	movl	$0, -204(%ebp)
	jmp	.L1299
.L1292:
	.loc 1 3480 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L1300
	.loc 1 3482 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1302
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1304
.L1302:
	.loc 1 3483 0
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
.L1304:
	.loc 1 3484 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L1300:
	.loc 1 3487 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1305
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1307
.L1305:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1308
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1308
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1308
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1308
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1307
.L1308:
.LBB52:
	.loc 1 3494 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1313
	.loc 1 3495 0
	movl	$0, -204(%ebp)
	jmp	.L1299
.L1313:
	.loc 1 3498 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	movl	%eax, -68(%ebp)
	.loc 1 3499 0
	cmpl	$0, -68(%ebp)
	je	.L1315
	.loc 1 3500 0
	movl	-68(%ebp), %ecx
	movl	%ecx, -204(%ebp)
	jmp	.L1299
.L1315:
	.loc 1 3503 0
	cmpl	$0, -64(%ebp)
	jne	.L1317
	.loc 1 3504 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -64(%ebp)
.L1317:
	.loc 1 3505 0
	movl	$0, -52(%ebp)
	jmp	.L1319
.L1320:
.LBB53:
	.loc 1 3509 0
	movl	-64(%ebp), %eax
	movl	36(%eax), %edx
	movl	-52(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3511 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1321
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1323
.L1321:
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1324
.L1323:
	.loc 1 3515 0
	cmpl	$0, 28(%ebp)
	jne	.L1325
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1325
	movl	-56(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L1324
.L1325:
	.loc 1 3520 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1328
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1328
	.loc 1 3521 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3520 0
	jmp	.L1331
.L1328:
.LBB54:
	.loc 1 3530 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-52(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3531 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -48(%ebp)
.L1331:
.LBE54:
	.loc 1 3536 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1332
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1332
	movl	28(%ebp), %eax
	movl	%eax, -200(%ebp)
	jmp	.L1335
.L1332:
	movl	$0, -200(%ebp)
.L1335:
	movl	-200(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_subobject_offsets
	movl	%eax, -68(%ebp)
	.loc 1 3543 0
	cmpl	$0, -68(%ebp)
	je	.L1324
	.loc 1 3544 0
	movl	-68(%ebp), %ecx
	movl	%ecx, -204(%ebp)
	jmp	.L1299
.L1324:
.LBE53:
	.loc 1 3505 0
	addl	$1, -52(%ebp)
.L1319:
	movl	-64(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1337
	movl	-64(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -196(%ebp)
	jmp	.L1339
.L1337:
	movl	$0, -196(%ebp)
.L1339:
	movl	-196(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jg	.L1320
	.loc 1 3547 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1341
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1343
.L1341:
.LBB55:
	.loc 1 3556 0
	cmpl	$0, 28(%ebp)
	je	.L1344
	.loc 1 3557 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3558 0
	jmp	.L1346
.L1347:
	.loc 1 3561 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 3562 0
	movl	-56(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_subobject_offsets
	movl	%eax, -68(%ebp)
	.loc 1 3570 0
	cmpl	$0, -68(%ebp)
	je	.L1348
	.loc 1 3571 0
	movl	-68(%ebp), %edx
	movl	%edx, -204(%ebp)
	jmp	.L1299
.L1348:
	.loc 1 3559 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1346:
	.loc 1 3558 0
	cmpl	$0, -40(%ebp)
	jne	.L1347
	jmp	.L1343
.L1344:
	.loc 1 3578 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3579 0
	cmpl	$0, -40(%ebp)
	je	.L1343
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1343
.LBB56:
	.loc 1 3581 0
	movl	-64(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3582 0
	jmp	.L1353
.L1354:
	.loc 1 3583 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1353:
	.loc 1 3582 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1354
	.loc 1 3584 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3585 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3587 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L1343
	.loc 1 3589 0
	movl	$0, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_subobject_offsets
	movl	%eax, -68(%ebp)
	.loc 1 3592 0
	cmpl	$0, -68(%ebp)
	je	.L1343
	.loc 1 3593 0
	movl	-68(%ebp), %ecx
	movl	%ecx, -204(%ebp)
	jmp	.L1299
.L1343:
.LBE56:
.LBE55:
	.loc 1 3600 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1358
.L1359:
	.loc 1 3601 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1360
	movl	-60(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1360
.LBB57:
	.loc 1 3605 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1363
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1365
.L1363:
	.loc 1 3606 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	byte_position@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3605 0
	jmp	.L1366
.L1365:
	.loc 1 3609 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
.L1366:
	.loc 1 3611 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$1, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	walk_subobject_offsets
	movl	%eax, -68(%ebp)
	.loc 1 3619 0
	cmpl	$0, -68(%ebp)
	je	.L1360
	.loc 1 3620 0
	movl	-68(%ebp), %eax
	movl	%eax, -204(%ebp)
	jmp	.L1299
.L1360:
.LBE57:
	.loc 1 3600 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L1358:
	cmpl	$0, -60(%ebp)
	jne	.L1359
	.loc 1 3487 0
	jmp	.L1369
.L1307:
.LBE52:
	.loc 1 3623 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1369
.LBB58:
	.loc 1 3625 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_array_types@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3626 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3630 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1371
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1373
.L1371:
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1374
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1374
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1374
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1374
	movl	-28(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1373
.L1374:
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1379
.L1373:
	.loc 1 3632 0
	movl	$0, -204(%ebp)
	jmp	.L1299
.L1379:
	.loc 1 3635 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3637 0
	jmp	.L1380
.L1381:
	.loc 1 3642 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	walk_subobject_offsets
	movl	%eax, -68(%ebp)
	.loc 1 3648 0
	cmpl	$0, -68(%ebp)
	je	.L1382
	.loc 1 3649 0
	movl	-68(%ebp), %edx
	movl	%edx, -204(%ebp)
	jmp	.L1299
.L1382:
	.loc 1 3650 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, 16(%ebp)
	.loc 1 3655 0
	cmpl	$0, 24(%ebp)
	je	.L1384
	movl	24(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -192(%ebp)
	movl	%ecx, -188(%ebp)
	movl	16(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -184(%ebp)
	movl	%ecx, -180(%ebp)
	movl	-180(%ebp), %ecx
	cmpl	%ecx, -188(%ebp)
	jl	.L1369
	movl	-180(%ebp), %eax
	cmpl	%eax, -188(%ebp)
	jg	.L1387
	movl	-184(%ebp), %edx
	cmpl	%edx, -192(%ebp)
	jb	.L1369
.L1387:
	movl	24(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	16(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1384
	movl	24(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -176(%ebp)
	movl	%ecx, -172(%ebp)
	movl	16(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -168(%ebp)
	movl	%ecx, -164(%ebp)
	movl	-164(%ebp), %ecx
	cmpl	%ecx, -172(%ebp)
	jb	.L1369
	movl	-164(%ebp), %eax
	cmpl	%eax, -172(%ebp)
	ja	.L1384
	movl	-168(%ebp), %edx
	cmpl	%edx, -176(%ebp)
	jb	.L1369
.L1384:
	.loc 1 3640 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -20(%ebp)
.L1380:
	.loc 1 3637 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1390
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1392
.L1390:
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	movl	-140(%ebp), %ecx
	cmpl	%ecx, -148(%ebp)
	jl	.L1393
	movl	-140(%ebp), %eax
	cmpl	%eax, -148(%ebp)
	jg	.L1395
	movl	-144(%ebp), %edx
	cmpl	%edx, -152(%ebp)
	jb	.L1393
.L1395:
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-20(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1396
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-124(%ebp), %ecx
	cmpl	%ecx, -132(%ebp)
	jb	.L1393
	movl	-124(%ebp), %eax
	cmpl	%eax, -132(%ebp)
	ja	.L1396
	movl	-128(%ebp), %edx
	cmpl	%edx, -136(%ebp)
	jb	.L1393
.L1396:
	movl	$1, -156(%ebp)
	jmp	.L1399
.L1393:
	movl	$0, -156(%ebp)
.L1399:
	movzbl	-156(%ebp), %ecx
	movb	%cl, -157(%ebp)
	jmp	.L1400
.L1392:
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-100(%ebp), %ecx
	cmpl	%ecx, -108(%ebp)
	jl	.L1401
	movl	-100(%ebp), %eax
	cmpl	%eax, -108(%ebp)
	jg	.L1403
	movl	-104(%ebp), %edx
	cmpl	%edx, -112(%ebp)
	jb	.L1401
.L1403:
	movl	-20(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1404
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-24(%ebp), %eax
	movl	64(%eax), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-84(%ebp), %ecx
	cmpl	%ecx, -92(%ebp)
	ja	.L1404
	movl	-84(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	jb	.L1401
	movl	-88(%ebp), %edx
	cmpl	%edx, -96(%ebp)
	jae	.L1404
.L1401:
	movl	$1, -116(%ebp)
	jmp	.L1407
.L1404:
	movl	$0, -116(%ebp)
.L1407:
	movzbl	-116(%ebp), %ecx
	movb	%cl, -157(%ebp)
.L1400:
	cmpb	$0, -157(%ebp)
	jne	.L1381
.L1369:
.LBE58:
	.loc 1 3660 0
	movl	$0, -204(%ebp)
.L1299:
	movl	-204(%ebp), %eax
	.loc 1 3661 0
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE73:
	.size	walk_subobject_offsets, .-walk_subobject_offsets
	.type	record_subobject_offsets, @function
record_subobject_offsets:
.LFB74:
	.loc 1 3673 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	pushl	%ebx
.LCFI247:
	subl	$36, %esp
.LCFI248:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3674 0
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$0, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	record_subobject_offset@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_subobject_offsets
	.loc 1 3676 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	record_subobject_offsets, .-record_subobject_offsets
	.type	layout_conflict_p, @function
layout_conflict_p:
.LFB75:
	.loc 1 3688 0
	pushl	%ebp
.LCFI249:
	movl	%esp, %ebp
.LCFI250:
	pushl	%ebx
.LCFI251:
	subl	$52, %esp
.LCFI252:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3693 0
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_max@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3696 0
	cmpl	$0, -8(%ebp)
	jne	.L1412
	.loc 1 3697 0
	movl	$0, -24(%ebp)
	jmp	.L1414
.L1412:
	.loc 1 3699 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	check_subobject_offset@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_subobject_offsets
	movl	%eax, -24(%ebp)
.L1414:
	movl	-24(%ebp), %eax
	.loc 1 3702 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	layout_conflict_p, .-layout_conflict_p
	.type	layout_nonempty_base_or_field, @function
layout_nonempty_base_or_field:
.LFB76:
	.loc 1 3715 0
	pushl	%ebp
.LCFI253:
	movl	%esp, %ebp
.LCFI254:
	pushl	%esi
.LCFI255:
	pushl	%ebx
.LCFI256:
	subl	$96, %esp
.LCFI257:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3716 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3717 0
	movl	$0, -20(%ebp)
	.loc 1 3721 0
	cmpl	$0, 16(%ebp)
	je	.L1417
	.loc 1 3727 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3728 0
	movb	$0, -9(%ebp)
	jmp	.L1419
.L1417:
	.loc 1 3732 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3733 0
	movb	$1, -9(%ebp)
.L1419:
.LBB59:
	.loc 1 3741 0
	movl	8(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -68(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -64(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -60(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -56(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -52(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -48(%ebp)
	movl	24(%edx), %eax
	movl	%eax, -44(%ebp)
	movl	28(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	32(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	36(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	40(%edx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3744 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	place_field@PLT
	.loc 1 3745 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	byte_position@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3764 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1420
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1420
	cmpl	$0, 16(%ebp)
	je	.L1420
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1424
.L1420:
	.loc 1 3766 0
	movzbl	-9(%ebp), %eax
	movl	%eax, -84(%ebp)
	cmpb	$0, -9(%ebp)
	je	.L1425
	movl	-16(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1427
.L1425:
	movl	16(%ebp), %eax
	movl	%eax, -80(%ebp)
.L1427:
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_conflict_p
	testl	%eax, %eax
	je	.L1424
	.loc 1 3772 0
	movl	8(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, (%edx)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-52(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-48(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-44(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-40(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	-36(%ebp), %eax
	movl	%eax, 32(%edx)
	movl	-32(%ebp), %eax
	movl	%eax, 36(%edx)
	movl	-28(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 3775 0
	cmpl	$0, 16(%ebp)
	je	.L1429
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1431
.L1429:
	movl	-16(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -76(%ebp)
.L1431:
	movl	-76(%ebp), %eax
	movl	$0, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 3780 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize_rli@PLT
	.loc 1 3785 0
	jmp	.L1419
.L1424:
.LBE59:
	.loc 1 3789 0
	cmpl	$0, 16(%ebp)
	je	.L1441
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1434
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1441
.L1434:
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1436
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1436
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1436
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1436
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1441
.L1436:
	.loc 1 3794 0
	movl	16(%ebp), %eax
	movl	24(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_binfo_offsets
.L1441:
	.loc 1 3799 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE76:
	.size	layout_nonempty_base_or_field, .-layout_nonempty_base_or_field
	.type	empty_base_at_nonzero_offset_p, @function
empty_base_at_nonzero_offset_p:
.LFB77:
	.loc 1 3807 0
	pushl	%ebp
.LCFI258:
	movl	%esp, %ebp
.LCFI259:
	pushl	%ebx
.LCFI260:
	subl	$20, %esp
.LCFI261:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3808 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	je	.L1443
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1443
	movl	$1, -8(%ebp)
	jmp	.L1446
.L1443:
	movl	$0, -8(%ebp)
.L1446:
	movl	-8(%ebp), %eax
	.loc 1 3809 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	empty_base_at_nonzero_offset_p, .-empty_base_at_nonzero_offset_p
	.section	.rodata
	.type	__FUNCTION__.19895, @object
	.size	__FUNCTION__.19895, 18
__FUNCTION__.19895:
	.string	"layout_empty_base"
	.align 4
.LC53:
	.string	"offset of empty base `%T' may not be ABI-compliant and maychange in a future version of GCC"
	.text
	.type	layout_empty_base, @function
layout_empty_base:
.LFB78:
	.loc 1 3823 0
	pushl	%ebp
.LCFI262:
	movl	%esp, %ebp
.LCFI263:
	pushl	%ebx
.LCFI264:
	subl	$36, %esp
.LCFI265:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3825 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3826 0
	movb	$0, -5(%ebp)
	.loc 1 3829 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	jne	.L1449
	leal	__FUNCTION__.19895@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3829, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1449:
	.loc 1 3830 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	40(%eax), %eax
	shrl	$3, %eax
	movl	$0, %edx
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3832 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1451
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1453
.L1451:
	.loc 1 3833 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L1453:
	.loc 1 3834 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1454
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1454
	.loc 1 3835 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1454:
	.loc 1 3841 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_conflict_p
	testl	%eax, %eax
	je	.L1457
	.loc 1 3848 0
	movb	$1, -5(%ebp)
	.loc 1 3849 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_binfo_offsets
.L1459:
	.loc 1 3852 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_conflict_p
	testl	%eax, %eax
	je	.L1457
	.loc 1 3860 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_binfo_offsets
	.loc 1 3861 0
	jmp	.L1459
.L1457:
	.loc 1 3863 0
	movzbl	-5(%ebp), %eax
	.loc 1 3864 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	layout_empty_base, .-layout_empty_base
	.section	.rodata
	.align 4
.LC54:
	.string	"class `%T' will be considered nearly empty in a future version of GCC"
	.text
	.type	build_base_field, @function
build_base_field:
.LFB79:
	.loc 1 3878 0
	pushl	%ebp
.LCFI266:
	movl	%esp, %ebp
.LCFI267:
	pushl	%esi
.LCFI268:
	pushl	%ebx
.LCFI269:
	subl	$64, %esp
.LCFI270:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3879 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3880 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3882 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1463
	.loc 1 3885 0
	movl	20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1465
.L1463:
	.loc 1 3888 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	jne	.L1466
.LBB60:
	.loc 1 3894 0
	movl	-28(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	andl	$-3, %eax
	movb	%al, 10(%edx)
	.loc 1 3897 0
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3898 0
	movl	-20(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 3899 0
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 3900 0
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 3901 0
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	24(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 3902 0
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 3903 0
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 3904 0
	movl	-20(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$64, %eax
	movb	%al, 33(%edx)
	.loc 1 3909 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_nonempty_base_or_field
	.loc 1 3911 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3912 0
	movl	20(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3913 0
	movl	-20(%ebp), %eax
	movl	%eax, 20(%ebp)
	jmp	.L1468
.L1466:
.LBE60:
.LBB61:
	.loc 1 3922 0
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	40(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rli_size_unit_so_far@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3924 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_empty_base
	movb	%al, -9(%ebp)
	.loc 1 3927 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1468
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1468
	.loc 1 3929 0
	cmpb	$0, -9(%ebp)
	je	.L1471
	.loc 1 3930 0
	movl	-28(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-9, %eax
	movb	%al, 5(%edx)
	jmp	.L1468
.L1471:
	.loc 1 3934 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	leal	empty_base_at_nonzero_offset_p@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_subobject_offsets
	testl	%eax, %eax
	je	.L1468
	.loc 1 3941 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1474
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1476
.L1474:
	.loc 1 3942 0
	movl	-28(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-9, %eax
	movb	%al, 5(%edx)
	.loc 1 3941 0
	jmp	.L1468
.L1476:
	.loc 1 3943 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1468
	.loc 1 3944 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1468:
.LBE61:
	.loc 1 3962 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	record_subobject_offsets
	.loc 1 3967 0
	movl	20(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1465:
	movl	-44(%ebp), %eax
	.loc 1 3968 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE79:
	.size	build_base_field, .-build_base_field
	.type	build_base_fields, @function
build_base_fields:
.LFB80:
	.loc 1 3979 0
	pushl	%ebp
.LCFI271:
	movl	%esp, %ebp
.LCFI272:
	subl	$40, %esp
.LCFI273:
	.loc 1 3982 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3983 0
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1480
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1482
.L1480:
	movl	$0, -20(%ebp)
.L1482:
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3987 0
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1483
	.loc 1 3988 0
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_base_field
	movl	%eax, 16(%ebp)
.L1483:
	.loc 1 3992 0
	movl	$0, -8(%ebp)
	jmp	.L1485
.L1486:
.LBB62:
	.loc 1 3996 0
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -4(%ebp)
	.loc 1 4000 0
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-4(%ebp), %eax
	je	.L1487
	.loc 1 4006 0
	movl	-4(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1489
	movl	-4(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L1487
.L1489:
	.loc 1 4010 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_base_field
	movl	%eax, 16(%ebp)
.L1487:
.LBE62:
	.loc 1 3992 0
	addl	$1, -8(%ebp)
.L1485:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L1486
	.loc 1 4013 0
	leave
	ret
.LFE80:
	.size	build_base_fields, .-build_base_fields
	.section	.rodata
	.align 4
.LC55:
	.string	"initializer specified for non-virtual method `%D'"
	.text
	.type	check_methods, @function
check_methods:
.LFB81:
	.loc 1 4022 0
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	pushl	%esi
.LCFI276:
	pushl	%ebx
.LCFI277:
	subl	$32, %esp
.LCFI278:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4025 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1494
.L1495:
	.loc 1 4028 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L1496
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L1496
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	56(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1499
.L1496:
	.loc 1 4032 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	check_for_override
	.loc 1 4033 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1500
	movl	-12(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L1500
	.loc 1 4034 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L1500:
	.loc 1 4038 0
	movl	-12(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L1499
	.loc 1 4040 0
	movl	8(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$4, %eax
	movb	%al, 11(%edx)
	.loc 1 4041 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1499
	.loc 1 4042 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 44(%esi)
.L1499:
	.loc 1 4025 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1494:
	cmpl	$0, -12(%ebp)
	jne	.L1495
	.loc 1 4046 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE81:
	.size	check_methods, .-check_methods
	.type	build_clone, @function
build_clone:
.LFB82:
	.loc 1 4056 0
	pushl	%ebp
.LCFI279:
	movl	%esp, %ebp
.LCFI280:
	pushl	%esi
.LCFI281:
	pushl	%ebx
.LCFI282:
	subl	$48, %esp
.LCFI283:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4061 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl@PLT
	movl	%eax, -28(%ebp)
	.loc 1 4063 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 4064 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 88(%edx)
	.loc 1 4066 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 4067 0
	movl	-28(%ebp), %eax
	movl	$0, 92(%eax)
	.loc 1 4069 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movl	$0, 48(%eax)
	.loc 1 4070 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	44(%edx), %eax
	andl	$-3, %eax
	movb	%al, 44(%edx)
	.loc 1 4072 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-2, %eax
	movb	%al, 6(%edx)
	.loc 1 4075 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1508
	.loc 1 4077 0
	movl	-28(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-33, %eax
	movb	%al, 33(%edx)
	.loc 1 4078 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L1508
	.loc 1 4079 0
	movl	-28(%ebp), %eax
	movl	$0, 124(%eax)
.L1508:
	.loc 1 4084 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1511
.LBB63:
	.loc 1 4090 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4091 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4092 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4094 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4096 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4098 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1513
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1515
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1517
	movl	-28(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	cmpl	%eax, %edx
	je	.L1513
.L1517:
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1515
	movl	-28(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	cmpl	%eax, %edx
	je	.L1513
.L1515:
	.loc 1 4100 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1513:
	.loc 1 4103 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4107 0
	cmpl	$0, -16(%ebp)
	je	.L1511
	.loc 1 4108 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
.L1511:
.LBE63:
	.loc 1 4114 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L1521
	.loc 1 4116 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	copy_list@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 4118 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1523
	.loc 1 4120 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %edx
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 4122 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-65, %eax
	movb	%al, 5(%edx)
.L1523:
	.loc 1 4125 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1525
	.loc 1 4127 0
	movl	-28(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1527
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1529
	movl	-28(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	cmpl	%eax, %edx
	je	.L1531
.L1529:
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1527
	movl	-28(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1527
.L1531:
	.loc 1 4128 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$-128, %eax
	movb	%al, 5(%edx)
	.loc 1 4127 0
	jmp	.L1525
.L1527:
	.loc 1 4131 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %edx
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 4133 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$127, %eax
	movb	%al, 5(%edx)
.L1525:
	.loc 1 4137 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1533
.L1534:
	.loc 1 4139 0
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 4140 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_dup_lang_specific_decl@PLT
	.loc 1 4137 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L1533:
	cmpl	$0, -32(%ebp)
	jne	.L1534
.L1521:
	.loc 1 4145 0
	movl	-28(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 4146 0
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
	.loc 1 4149 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4150 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4153 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1535
.LBB64:
	.loc 1 4157 0
	movl	-28(%ebp), %eax
	movl	64(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_clone
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 4159 0
	movl	-28(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4160 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %esi
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 8(%esi)
	.loc 1 4161 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%edx)
	jmp	.L1537
.L1535:
.LBE64:
	.loc 1 4163 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1537
	.loc 1 4164 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	defer_fn@PLT
.L1537:
	.loc 1 4166 0
	movl	-28(%ebp), %eax
	.loc 1 4167 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE82:
	.size	build_clone, .-build_clone
	.section	.rodata
	.type	__FUNCTION__.20226, @object
	.size	__FUNCTION__.20226, 20
__FUNCTION__.20226:
	.string	"clone_function_decl"
	.text
.globl clone_function_decl
	.type	clone_function_decl, @function
clone_function_decl:
.LFB83:
	.loc 1 4177 0
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
	.loc 1 4181 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1541
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1577
.L1541:
	.loc 1 4185 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1544
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1546
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1548
.L1546:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1548
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1544
.L1548:
	.loc 1 4189 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_clone
	movl	%eax, -12(%ebp)
	.loc 1 4190 0
	cmpl	$0, 12(%ebp)
	je	.L1550
	.loc 1 4191 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_method@PLT
.L1550:
.LBB65:
	.loc 1 4196 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4197 0
	movl	-8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1552
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1552
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_fn_p@PLT
	testl	%eax, %eax
	jle	.L1552
	.loc 1 4199 0
	movl	-12(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1556
	movl	-12(%ebp), %eax
	movl	52(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	192(%eax), %eax
	cmpl	%eax, %edx
	je	.L1558
.L1556:
	.loc 1 4200 0
	leal	__FUNCTION__.20226@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4200, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1558:
	.loc 1 4201 0
	movl	-8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 72(%edx)
.L1552:
.LBE65:
	.loc 1 4206 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	196(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_clone
	movl	%eax, -12(%ebp)
	.loc 1 4207 0
	cmpl	$0, 12(%ebp)
	je	.L1561
	.loc 1 4208 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_method@PLT
	.loc 1 4185 0
	jmp	.L1561
.L1544:
	.loc 1 4212 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1562
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1564
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1566
.L1564:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1566
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1562
.L1566:
	movl	$1, -24(%ebp)
	jmp	.L1568
.L1562:
	movl	$0, -24(%ebp)
.L1568:
	cmpl	$0, -24(%ebp)
	jne	.L1569
	leal	__FUNCTION__.20226@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4212, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1569:
	.loc 1 4223 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1571
	.loc 1 4225 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	212(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_clone
	movl	%eax, -12(%ebp)
	.loc 1 4226 0
	cmpl	$0, 12(%ebp)
	je	.L1571
	.loc 1 4227 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_method@PLT
.L1571:
	.loc 1 4229 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	204(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_clone
	movl	%eax, -12(%ebp)
	.loc 1 4230 0
	cmpl	$0, 12(%ebp)
	je	.L1574
	.loc 1 4231 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_method@PLT
.L1574:
	.loc 1 4232 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	208(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_clone
	movl	%eax, -12(%ebp)
	.loc 1 4233 0
	cmpl	$0, 12(%ebp)
	je	.L1561
	.loc 1 4234 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %edx
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_method@PLT
.L1561:
	.loc 1 4238 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 33(%eax)
.L1577:
	.loc 1 4239 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	clone_function_decl, .-clone_function_decl
	.section	.rodata
	.type	__FUNCTION__.20330, @object
	.size	__FUNCTION__.20330, 18
__FUNCTION__.20330:
	.string	"adjust_clone_args"
	.text
.globl adjust_clone_args
	.type	adjust_clone_args, @function
adjust_clone_args:
.LFB84:
	.loc 1 4251 0
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
	.loc 1 4254 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1579
.L1580:
.LBB66:
	.loc 1 4257 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4258 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4261 0
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4264 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4265 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4267 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1581
	.loc 1 4268 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1581:
	.loc 1 4269 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1583
	.loc 1 4270 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1583:
	.loc 1 4272 0
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4273 0
	movl	-36(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1585
	.loc 1 4274 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1585:
	.loc 1 4276 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1587
.L1588:
	.loc 1 4280 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1589
	leal	__FUNCTION__.20330@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4281, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1589:
	.loc 1 4283 0
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1591
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1591
.LBB67:
	.loc 1 4287 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4288 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4291 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4293 0
	movl	-36(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1594
	.loc 1 4295 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4298 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
.L1594:
	.loc 1 4300 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cplus_method_type@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4303 0
	cmpl	$0, -16(%ebp)
	je	.L1596
	.loc 1 4304 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_exception_variant@PLT
	movl	%eax, -8(%ebp)
.L1596:
	.loc 1 4305 0
	movl	-36(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 4307 0
	movl	$0, -20(%ebp)
	.loc 1 4308 0
	jmp	.L1598
.L1591:
.LBE67:
	.loc 1 4278 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1587:
	.loc 1 4276 0
	cmpl	$0, -24(%ebp)
	jne	.L1588
.L1598:
	.loc 1 4311 0
	cmpl	$0, -20(%ebp)
	je	.L1599
	leal	__FUNCTION__.20330@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4311, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1599:
.LBE66:
	.loc 1 4255 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1579:
	.loc 1 4254 0
	cmpl	$0, -36(%ebp)
	je	.L1603
	movl	-36(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1580
.L1603:
	.loc 1 4313 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	adjust_clone_args, .-adjust_clone_args
	.type	clone_constructors_and_destructors, @function
clone_constructors_and_destructors:
.LFB85:
	.loc 1 4321 0
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
	.loc 1 4326 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L1624
	.loc 1 4329 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1607
.L1608:
	.loc 1 4330 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1609
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1611
.L1609:
	movl	-8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1611:
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	clone_function_decl@PLT
	.loc 1 4329 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1612
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1614
.L1612:
	movl	$0, -32(%ebp)
.L1614:
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1607:
	cmpl	$0, -8(%ebp)
	jne	.L1608
	.loc 1 4331 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1616
.L1617:
	.loc 1 4332 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1618
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1620
.L1618:
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1620:
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	clone_function_decl@PLT
	.loc 1 4331 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1621
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1623
.L1621:
	movl	$0, -24(%ebp)
.L1623:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.L1616:
	cmpl	$0, -8(%ebp)
	jne	.L1617
.L1624:
	.loc 1 4333 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE85:
	.size	clone_constructors_and_destructors, .-clone_constructors_and_destructors
	.type	remove_zero_width_bit_fields, @function
remove_zero_width_bit_fields:
.LFB86:
	.loc 1 4340 0
	pushl	%ebp
.LCFI296:
	movl	%esp, %ebp
.LCFI297:
	subl	$16, %esp
.LCFI298:
	.loc 1 4343 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -4(%ebp)
	.loc 1 4344 0
	jmp	.L1634
.L1627:
	.loc 1 4346 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1628
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1628
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1628
	.loc 1 4349 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4346 0
	jmp	.L1626
.L1628:
	.loc 1 4351 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1626:
.L1634:
	.loc 1 4344 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1627
	.loc 1 4353 0
	leave
	ret
.LFE86:
	.size	remove_zero_width_bit_fields, .-remove_zero_width_bit_fields
	.section	.rodata
	.type	__FUNCTION__.20462, @object
	.size	__FUNCTION__.20462, 27
__FUNCTION__.20462:
	.string	"type_requires_array_cookie"
	.text
	.type	type_requires_array_cookie, @function
type_requires_array_cookie:
.LFB87:
	.loc 1 4361 0
	pushl	%ebp
.LCFI299:
	movl	%esp, %ebp
.LCFI300:
	pushl	%ebx
.LCFI301:
	subl	$52, %esp
.LCFI302:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4363 0
	movb	$0, -5(%ebp)
	.loc 1 4365 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1636
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1638
.L1636:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1639
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1639
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1639
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1639
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1638
.L1639:
	movl	$1, -36(%ebp)
	jmp	.L1644
.L1638:
	movl	$0, -36(%ebp)
.L1644:
	cmpl	$0, -36(%ebp)
	jne	.L1645
	leal	__FUNCTION__.20462@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4365, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1645:
	.loc 1 4370 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1647
	.loc 1 4371 0
	movl	$1, -32(%ebp)
	jmp	.L1649
.L1647:
	.loc 1 4377 0
	movl	operator_name_info@GOT(%ebx), %eax
	movl	2944(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_fnfields@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4382 0
	cmpl	$0, -20(%ebp)
	je	.L1650
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L1652
.L1650:
	.loc 1 4383 0
	movl	$0, -32(%ebp)
	jmp	.L1649
.L1652:
	.loc 1 4385 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1653
.L1654:
.LBB68:
	.loc 1 4391 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1655
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1657
.L1655:
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
.L1657:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4394 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4395 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L1658
	.loc 1 4396 0
	movl	$0, -32(%ebp)
	jmp	.L1649
.L1658:
	.loc 1 4400 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1660
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L1660
	.loc 1 4402 0
	movb	$1, -5(%ebp)
.L1660:
.LBE68:
	.loc 1 4385 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L1663
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1665
.L1663:
	movl	$0, -24(%ebp)
.L1665:
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1653:
	cmpl	$0, -20(%ebp)
	jne	.L1654
	.loc 1 4405 0
	movzbl	-5(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1649:
	movl	-32(%ebp), %eax
	.loc 1 4406 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	type_requires_array_cookie, .-type_requires_array_cookie
	.type	check_bases_and_members, @function
check_bases_and_members:
.LFB88:
	.loc 1 4416 0
	pushl	%ebp
.LCFI303:
	movl	%esp, %ebp
.LCFI304:
	pushl	%esi
.LCFI305:
	subl	$100, %esp
.LCFI306:
	.loc 1 4430 0
	movl	$0, -8(%ebp)
	.loc 1 4431 0
	movl	$0, -12(%ebp)
	.loc 1 4432 0
	movl	$0, -16(%ebp)
	.loc 1 4435 0
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_bases
	.loc 1 4439 0
	leal	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_field_decls
	.loc 1 4445 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_methods
	.loc 1 4449 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1669
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1669
	.loc 1 4450 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	andl	$-9, %eax
	movb	%al, 5(%edx)
.L1669:
	.loc 1 4454 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movb	%al, -69(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1672
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1672
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1675
.L1672:
	movl	$1, -68(%ebp)
	jmp	.L1676
.L1675:
	movl	$0, -68(%ebp)
.L1676:
	movzbl	-68(%ebp), %eax
	orb	-69(%ebp), %al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movl	-76(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movl	-76(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4458 0
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movb	%al, -61(%ebp)
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1677
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1677
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1680
.L1677:
	movl	$1, -60(%ebp)
	jmp	.L1681
.L1680:
	movl	$0, -60(%ebp)
.L1681:
	movzbl	-60(%ebp), %eax
	orb	-61(%ebp), %al
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	38(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 38(%ecx)
	.loc 1 4462 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movb	%al, -49(%ebp)
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1682
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1684
.L1682:
	movl	$1, -48(%ebp)
	jmp	.L1685
.L1684:
	movl	$0, -48(%ebp)
.L1685:
	movzbl	-48(%ebp), %eax
	orb	-49(%ebp), %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movl	-56(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movl	-56(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4464 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movb	%al, -37(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1686
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1686
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1689
.L1686:
	movl	$1, -36(%ebp)
	jmp	.L1690
.L1689:
	movl	$0, -36(%ebp)
.L1690:
	movzbl	-36(%ebp), %eax
	orb	-37(%ebp), %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	-44(%ebp), %ecx
	movzbl	5(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movl	-44(%ebp), %edx
	movb	%al, 5(%edx)
	.loc 1 4467 0
	movl	8(%ebp), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzbl	8(%ecx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, 8(%ecx)
	.loc 1 4468 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movb	%al, -25(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1691
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1691
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1694
.L1691:
	movl	$1, -24(%ebp)
	jmp	.L1695
.L1694:
	movl	$0, -24(%ebp)
.L1695:
	movzbl	-24(%ebp), %eax
	orb	-25(%ebp), %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %ecx
	movzbl	9(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movl	-32(%ebp), %edx
	movb	%al, 9(%edx)
	.loc 1 4473 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_implicitly_declared_members
	.loc 1 4479 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	clone_constructors_and_destructors
	.loc 1 4482 0
	jmp	.L1696
.L1697:
	.loc 1 4483 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	handle_using_decl
	.loc 1 4482 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1696:
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L1697
	.loc 1 4486 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_struct_methods
	.loc 1 4490 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_requires_array_cookie
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	7(%esi), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 7(%esi)
	.loc 1 4492 0
	addl	$100, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE88:
	.size	check_bases_and_members, .-check_bases_and_members
	.section	.rodata
.LC56:
	.string	".vf"
	.text
	.type	create_vtable_ptr, @function
create_vtable_ptr:
.LFB89:
	.loc 1 4505 0
	pushl	%ebp
.LCFI307:
	movl	%esp, %ebp
.LCFI308:
	pushl	%esi
.LCFI309:
	pushl	%ebx
.LCFI310:
	subl	$32, %esp
.LCFI311:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4509 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1701
.L1702:
	.loc 1 4510 0
	movl	-20(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L1703
	movl	-20(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1705
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1707
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L1703
.L1707:
	movl	-20(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L1703
	movl	-20(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1703
.L1705:
	movl	-20(%ebp), %eax
	movl	124(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1703
.LBB69:
	.loc 1 4513 0
	movl	$3, (%esp)
	call	make_node@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4515 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 4516 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 4518 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4519 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L1703:
.LBE69:
	.loc 1 4509 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L1701:
	cmpl	$0, -20(%ebp)
	jne	.L1702
	.loc 1 4526 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L1712
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1714
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1714
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1712
.L1714:
.LBB70:
	.loc 1 4549 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	124(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vfield_name
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4550 0
	movl	$3, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 92(%eax)
	.loc 1 4551 0
	movl	-12(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$32, %eax
	movb	%al, 33(%edx)
	.loc 1 4552 0
	movl	-12(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 4553 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 4554 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 124(%edx)
	.loc 1 4555 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	124(%eax), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 4556 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	124(%eax), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 4558 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 4561 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	andl	$-3, %eax
	movb	%al, 10(%edx)
	.loc 1 4563 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1717
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1717
	.loc 1 4568 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$2, %edx
	movb	%dl, 11(%eax)
.L1717:
	.loc 1 4570 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1720
.L1712:
.LBE70:
	.loc 1 4573 0
	movl	$0, -28(%ebp)
.L1720:
	movl	-28(%ebp), %eax
	.loc 1 4574 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE89:
	.size	create_vtable_ptr, .-create_vtable_ptr
	.type	fixup_pending_inline, @function
fixup_pending_inline:
.LFB90:
	.loc 1 4582 0
	pushl	%ebp
.LCFI312:
	movl	%esp, %ebp
.LCFI313:
	subl	$16, %esp
.LCFI314:
	.loc 1 4583 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L1727
.LBB71:
	.loc 1 4585 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 4586 0
	jmp	.L1725
.L1726:
	.loc 1 4588 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 4589 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1725:
	.loc 1 4586 0
	cmpl	$0, -4(%ebp)
	jne	.L1726
.L1727:
.LBE71:
	.loc 1 4592 0
	leave
	ret
.LFE90:
	.size	fixup_pending_inline, .-fixup_pending_inline
	.type	fixup_inline_methods, @function
fixup_inline_methods:
.LFB91:
	.loc 1 4600 0
	pushl	%ebp
.LCFI315:
	movl	%esp, %ebp
.LCFI316:
	subl	$20, %esp
.LCFI317:
	.loc 1 4601 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 4603 0
	cmpl	$0, -4(%ebp)
	je	.L1736
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L1736
	.loc 1 4605 0
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1732
	.loc 1 4606 0
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1736
.L1732:
	.loc 1 4607 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1734
	.loc 1 4608 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1736
.L1734:
	.loc 1 4610 0
	movl	-4(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 4614 0
	jmp	.L1736
.L1737:
	.loc 1 4615 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_pending_inline
	.loc 1 4614 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1736:
	cmpl	$0, -4(%ebp)
	jne	.L1737
	.loc 1 4618 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 4619 0
	jmp	.L1739
.L1740:
	.loc 1 4621 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	fixup_pending_inline
	.loc 1 4620 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1739:
	.loc 1 4619 0
	cmpl	$0, -4(%ebp)
	jne	.L1740
	.loc 1 4622 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	$0, 44(%eax)
	.loc 1 4623 0
	leave
	ret
.LFE91:
	.size	fixup_inline_methods, .-fixup_inline_methods
	.type	propagate_binfo_offsets, @function
propagate_binfo_offsets:
.LFB92:
	.loc 1 4635 0
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
	.loc 1 4640 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 4647 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4651 0
	movl	$-1, -16(%ebp)
	jmp	.L1744
.L1745:
.LBB72:
	.loc 1 4658 0
	cmpl	$-1, -16(%ebp)
	jne	.L1746
	.loc 1 4660 0
	cmpl	$0, -12(%ebp)
	je	.L1748
	.loc 1 4663 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1750
.L1746:
	.loc 1 4667 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4669 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L1748
.L1750:
	.loc 1 4674 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1751
	movl	-8(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1748
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	cmpl	-8(%ebp), %eax
	jne	.L1748
.L1751:
	.loc 1 4679 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_binfo_offsets
.L1748:
.LBE72:
	.loc 1 4651 0
	addl	$1, -16(%ebp)
.L1744:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1754
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1756
.L1754:
	movl	$0, -24(%ebp)
.L1756:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jg	.L1745
	.loc 1 4681 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE92:
	.size	propagate_binfo_offsets, .-propagate_binfo_offsets
	.type	dfs_set_offset_for_unshared_vbases, @function
dfs_set_offset_for_unshared_vbases:
.LFB93:
	.loc 1 4689 0
	pushl	%ebp
.LCFI322:
	movl	%esp, %ebp
.LCFI323:
	pushl	%ebx
.LCFI324:
	subl	$36, %esp
.LCFI325:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4693 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1760
.LBB73:
	.loc 1 4695 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4699 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4700 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1760
	.loc 1 4702 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4703 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_binfo_offsets
.L1760:
.LBE73:
	.loc 1 4707 0
	movl	$0, %eax
	.loc 1 4708 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	dfs_set_offset_for_unshared_vbases, .-dfs_set_offset_for_unshared_vbases
	.section	.rodata
	.align 4
.LC57:
	.string	"offset of virtual base `%T' is not ABI-compliant and may change in a future version of GCC"
	.text
	.type	layout_virtual_bases, @function
layout_virtual_bases:
.LFB94:
	.loc 1 4716 0
	pushl	%ebp
.LCFI326:
	movl	%esp, %ebp
.LCFI327:
	pushl	%edi
.LCFI328:
	pushl	%esi
.LCFI329:
	pushl	%ebx
.LCFI330:
	subl	$60, %esp
.LCFI331:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4718 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4719 0
	movb	$1, -13(%ebp)
	.loc 1 4722 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1788
	movl	-32(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1767
	.loc 1 4723 0
	jmp	.L1788
.L1767:
	.loc 1 4725 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1769
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1769
	.loc 1 4729 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_record_layout@PLT
	.loc 1 4732 0
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1772
	.loc 1 4733 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -48(%ebp)
	cmpl	$8, -48(%ebp)
	jae	.L1774
	movl	$8, -48(%ebp)
.L1774:
	movl	-32(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%edx, 40(%eax)
.L1772:
	.loc 1 4735 0
	movl	-32(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 4736 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 4737 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.L1769:
	.loc 1 4742 0
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -28(%ebp)
	.loc 1 4743 0
	jmp	.L1775
.L1776:
	.loc 1 4744 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1775:
	.loc 1 4743 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1776
	.loc 1 4749 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4750 0
	jmp	.L1778
.L1779:
.LBB74:
	.loc 1 4755 0
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1780
	.loc 1 4758 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4760 0
	movl	-24(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L1780
.LBB75:
	.loc 1 4762 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4766 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_base_field
	movl	%eax, -28(%ebp)
	.loc 1 4776 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1783
	cmpb	$0, -13(%ebp)
	je	.L1783
	movl	-24(%ebp), %eax
	movl	24(%eax), %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edi
	movl	-20(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	size_binop@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L1783
	.loc 1 4784 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1783:
	.loc 1 4787 0
	movb	$0, -13(%ebp)
.L1780:
.LBE75:
.LBE74:
	.loc 1 4751 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L1778:
	.loc 1 4750 0
	cmpl	$0, -36(%ebp)
	jne	.L1779
	.loc 1 4796 0
	movl	-32(%ebp), %eax
	movl	76(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_set_offset_for_unshared_vbases@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dfs_walk@PLT
.L1788:
	.loc 1 4797 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE94:
	.size	layout_virtual_bases, .-layout_virtual_bases
	.type	end_of_base, @function
end_of_base:
.LFB95:
	.loc 1 4804 0
	pushl	%ebp
.LCFI332:
	movl	%esp, %ebp
.LCFI333:
	pushl	%ebx
.LCFI334:
	subl	$36, %esp
.LCFI335:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4807 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	je	.L1790
	.loc 1 4811 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1792
.L1790:
	.loc 1 4813 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
.L1792:
	.loc 1 4815 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	.loc 1 4816 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE95:
	.size	end_of_base, .-end_of_base
	.type	end_of_class, @function
end_of_class:
.LFB96:
	.loc 1 4826 0
	pushl	%ebp
.LCFI336:
	movl	%esp, %ebp
.LCFI337:
	pushl	%edi
.LCFI338:
	pushl	%esi
.LCFI339:
	pushl	%ebx
.LCFI340:
	subl	$108, %esp
.LCFI341:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4827 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4832 0
	movl	$0, -20(%ebp)
	jmp	.L1795
.L1796:
	.loc 1 4834 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4836 0
	cmpl	$0, 12(%ebp)
	jne	.L1797
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1797
	movl	-28(%ebp), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1800
.L1797:
	.loc 1 4841 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	end_of_base
	movl	%eax, -24(%ebp)
	.loc 1 4842 0
	movl	-32(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-92(%ebp), %eax
	cmpl	%eax, -100(%ebp)
	jb	.L1801
	movl	-92(%ebp), %edx
	cmpl	%edx, -100(%ebp)
	ja	.L1803
	movl	-96(%ebp), %ecx
	cmpl	%ecx, -104(%ebp)
	jb	.L1801
.L1803:
	movl	-32(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1800
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %ecx
	cmpl	%ecx, -84(%ebp)
	ja	.L1800
	movl	-76(%ebp), %eax
	cmpl	%eax, -84(%ebp)
	jb	.L1801
	movl	-80(%ebp), %edx
	cmpl	%edx, -88(%ebp)
	jae	.L1800
.L1801:
	.loc 1 4843 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1800:
	.loc 1 4832 0
	addl	$1, -20(%ebp)
.L1795:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1806
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1808
.L1806:
	movl	$0, -68(%ebp)
.L1808:
	movl	-68(%ebp), %ecx
	cmpl	-20(%ebp), %ecx
	jg	.L1796
	.loc 1 4847 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1810
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1812
.L1810:
	cmpl	$0, 12(%ebp)
	je	.L1812
	.loc 1 4848 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4849 0
	jmp	.L1814
.L1815:
	.loc 1 4852 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	end_of_base
	movl	%eax, -24(%ebp)
	.loc 1 4853 0
	movl	-32(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jb	.L1816
	movl	-52(%ebp), %edx
	cmpl	%edx, -60(%ebp)
	ja	.L1818
	movl	-56(%ebp), %ecx
	cmpl	%ecx, -64(%ebp)
	jb	.L1816
.L1818:
	movl	-32(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1819
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	%ecx, -44(%ebp)
	ja	.L1819
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jb	.L1816
	movl	-40(%ebp), %edx
	cmpl	%edx, -48(%ebp)
	jae	.L1819
.L1816:
	.loc 1 4854 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1819:
	.loc 1 4850 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1814:
	.loc 1 4849 0
	cmpl	$0, -28(%ebp)
	jne	.L1815
.L1812:
	.loc 1 4857 0
	movl	-32(%ebp), %eax
	.loc 1 4858 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE96:
	.size	end_of_class, .-end_of_class
	.section	.rodata
	.align 4
.LC58:
	.string	"direct base `%T' inaccessible in `%T' due to ambiguity"
	.align 4
.LC59:
	.string	"virtual base `%T' inaccessible in `%T' due to ambiguity"
	.text
	.type	warn_about_ambiguous_bases, @function
warn_about_ambiguous_bases:
.LFB97:
	.loc 1 4873 0
	pushl	%ebp
.LCFI342:
	movl	%esp, %ebp
.LCFI343:
	pushl	%ebx
.LCFI344:
	subl	$36, %esp
.LCFI345:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4879 0
	movl	$0, -16(%ebp)
	jmp	.L1824
.L1825:
	.loc 1 4881 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4883 0
	movl	$0, 12(%esp)
	movl	$5, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	jne	.L1826
	.loc 1 4884 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1826:
	.loc 1 4879 0
	addl	$1, -16(%ebp)
.L1824:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L1828
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1830
.L1828:
	movl	$0, -24(%ebp)
.L1830:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jg	.L1825
	.loc 1 4889 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1838
	.loc 1 4890 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4891 0
	jmp	.L1834
.L1835:
	.loc 1 4894 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4896 0
	movl	$0, 12(%esp)
	movl	$5, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	jne	.L1836
	.loc 1 4897 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1836:
	.loc 1 4892 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1834:
	.loc 1 4891 0
	cmpl	$0, -12(%ebp)
	jne	.L1835
.L1838:
	.loc 1 4900 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	warn_about_ambiguous_bases, .-warn_about_ambiguous_bases
	.type	splay_tree_compare_integer_csts, @function
splay_tree_compare_integer_csts:
.LFB98:
	.loc 1 4908 0
	pushl	%ebp
.LCFI346:
	movl	%esp, %ebp
.LCFI347:
	pushl	%ebx
.LCFI348:
	subl	$20, %esp
.LCFI349:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4909 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_compare@PLT
	.loc 1 4910 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE98:
	.size	splay_tree_compare_integer_csts, .-splay_tree_compare_integer_csts
	.type	include_empty_classes, @function
include_empty_classes:
.LFB99:
	.loc 1 4917 0
	pushl	%ebp
.LCFI350:
	movl	%esp, %ebp
.LCFI351:
	pushl	%edi
.LCFI352:
	pushl	%esi
.LCFI353:
	pushl	%ebx
.LCFI354:
	subl	$76, %esp
.LCFI355:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4926 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	end_of_class
	movl	%eax, -24(%ebp)
	.loc 1 4928 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rli_size_unit_so_far@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4929 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1849
	movl	-20(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jb	.L1844
	movl	-52(%ebp), %edx
	cmpl	%edx, -60(%ebp)
	ja	.L1846
	movl	-56(%ebp), %ecx
	cmpl	%ecx, -64(%ebp)
	jb	.L1844
.L1846:
	movl	-20(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1849
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	%ecx, -44(%ebp)
	ja	.L1849
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jb	.L1844
	movl	-40(%ebp), %edx
	cmpl	%edx, -48(%ebp)
	jae	.L1849
.L1844:
	.loc 1 4932 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 4933 0
	movl	$3, 8(%esp)
	movl	$8, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 4941 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize_rli@PLT
.L1849:
	.loc 1 4943 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE99:
	.size	include_empty_classes, .-include_empty_classes
	.section	.rodata
	.align 4
.LC60:
	.string	"size assigned to `%T' may not be ABI-compliant and may change in a future version of GCC"
	.align 4
.LC61:
	.string	"the offset of `%D' may not be ABI-compliant and may change in a future version of GCC"
	.align 4
.LC62:
	.string	"offset of `%D' is not ABI-compliant and may change in a future version of GCC"
	.align 4
.LC63:
	.string	"`%D' contains empty classes which may cause base classes to be placed at different locations in a future version of GCC"
	.align 4
.LC64:
	.string	"layout of classes derived from empty class `%T' may change in a future version of GCC"
	.text
	.type	layout_class_type, @function
layout_class_type:
.LFB100:
	.loc 1 4951 0
	pushl	%ebp
.LCFI356:
	movl	%esp, %ebp
.LCFI357:
	pushl	%edi
.LCFI358:
	pushl	%esi
.LCFI359:
	pushl	%ebx
.LCFI360:
	subl	$156, %esp
.LCFI361:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4960 0
	movb	$0, -17(%ebp)
	.loc 1 4967 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 4970 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	start_record_layout@PLT
	movl	%eax, -60(%ebp)
	.loc 1 4974 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	determine_primary_base
	.loc 1 4977 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	create_vtable_ptr
	movl	%eax, -64(%ebp)
	.loc 1 4980 0
	cmpl	$0, -64(%ebp)
	je	.L1851
	.loc 1 4982 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4983 0
	movl	8(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 4984 0
	movl	-64(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 4985 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	place_field@PLT
	jmp	.L1853
.L1851:
	.loc 1 4988 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -52(%ebp)
.L1853:
	.loc 1 4991 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	splay_tree_compare_integer_csts@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	splay_tree_new@PLT
	movl	%eax, -56(%ebp)
	.loc 1 4993 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_base_fields
	.loc 1 4996 0
	movl	-72(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1854
.L1855:
.LBB76:
	.loc 1 5003 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	je	.L1856
	.loc 1 5005 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	place_field@PLT
	.loc 1 5016 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1860
	.loc 1 5017 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_register_incomplete_var@PLT
	.loc 1 5018 0
	jmp	.L1860
.L1856:
	.loc 1 5021 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 5026 0
	movl	-68(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1861
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-132(%ebp), %ecx
	cmpl	%ecx, -140(%ebp)
	jl	.L1863
	movl	-132(%ebp), %eax
	cmpl	%eax, -140(%ebp)
	jg	.L1865
	movl	-136(%ebp), %edx
	cmpl	%edx, -144(%ebp)
	jb	.L1863
.L1865:
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1861
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-116(%ebp), %ecx
	cmpl	%ecx, -124(%ebp)
	ja	.L1861
	movl	-116(%ebp), %eax
	cmpl	%eax, -124(%ebp)
	jb	.L1863
	movl	-120(%ebp), %edx
	cmpl	%edx, -128(%ebp)
	jae	.L1861
.L1863:
.LBB77:
	.loc 1 5036 0
	movl	$0, -36(%ebp)
	jmp	.L1868
.L1869:
	.loc 1 5037 0
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-36(%ebp), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-100(%ebp), %ecx
	cmpl	%ecx, -108(%ebp)
	jl	.L1870
	movl	-100(%ebp), %eax
	cmpl	%eax, -108(%ebp)
	jg	.L1872
	movl	-104(%ebp), %edx
	cmpl	%edx, -112(%ebp)
	jb	.L1870
.L1872:
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-36(%ebp), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1873
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-36(%ebp), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-84(%ebp), %ecx
	cmpl	%ecx, -92(%ebp)
	jb	.L1870
	movl	-84(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	ja	.L1873
	movl	-88(%ebp), %edx
	cmpl	%edx, -96(%ebp)
	jb	.L1870
.L1873:
	.loc 1 5036 0
	addl	$1, -36(%ebp)
.L1868:
	cmpl	$11, -36(%ebp)
	jne	.L1869
.L1870:
	.loc 1 5044 0
	movl	-36(%ebp), %edx
	subl	$1, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5046 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1876
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1878
.L1876:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1878
	.loc 1 5049 0
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5046 0
	jmp	.L1880
.L1878:
	.loc 1 5052 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1881
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1881
	.loc 1 5053 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1881:
	.loc 1 5057 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, -40(%ebp)
.L1880:
	.loc 1 5060 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5061 0
	movl	-32(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	-68(%ebp), %edx
	movl	%eax, %ecx
	andl	$16777215, %ecx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	%eax, 40(%edx)
	.loc 1 5062 0
	movl	-32(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	-68(%ebp), %edx
	movl	%eax, %ecx
	andl	$1, %ecx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 37(%edx)
	.loc 1 5063 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_nonempty_base_or_field
	.loc 1 5068 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 5070 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1884
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1886
.L1884:
	.loc 1 5071 0
	movl	-44(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movb	%dl, 32(%eax)
	.loc 1 5070 0
	jmp	.L1890
.L1886:
	.loc 1 5072 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1890
	movl	-68(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %edx
	movl	-44(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	je	.L1890
	.loc 1 5076 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5026 0
	jmp	.L1890
.L1861:
.LBE77:
	.loc 1 5081 0
	movl	$0, -40(%ebp)
	.loc 1 5082 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_nonempty_base_or_field
.L1890:
	.loc 1 5087 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1891
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1893
.L1891:
	.loc 1 5088 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	byte_position@PLT
	movl	%eax, %ecx
	movl	-68(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	record_subobject_offsets
.L1893:
	.loc 1 5096 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1894
	movl	-68(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1894
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1894
	movl	global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edx
	movl	-68(%ebp), %eax
	movl	112(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$67, (%esp)
	call	size_binop@PLT
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1894
	.loc 1 5102 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
.L1894:
	.loc 1 5107 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1899
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	byte_position@PLT
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	60(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	jne	.L1899
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_empty_class_p
	testb	%al, %al
	je	.L1899
	.loc 1 5111 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
.L1899:
	.loc 1 5118 0
	cmpl	$0, -40(%ebp)
	je	.L1903
.LBB78:
	.loc 1 5122 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5125 0
	movl	-28(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$16, %eax
	movb	%al, 33(%edx)
	.loc 1 5126 0
	movl	-28(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 5127 0
	movl	-28(%ebp), %edx
	movl	40(%edx), %eax
	andl	$-16777216, %eax
	orl	$1, %eax
	movl	%eax, 40(%edx)
	.loc 1 5128 0
	movl	-28(%ebp), %edx
	movzbl	37(%edx), %eax
	andl	$-2, %eax
	movb	%al, 37(%edx)
	.loc 1 5129 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_nonempty_base_or_field
.L1903:
.LBE78:
	.loc 1 5134 0
	movl	-68(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -17(%ebp)
.L1860:
.LBE76:
	.loc 1 4996 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L1854:
	cmpl	$0, -68(%ebp)
	jne	.L1855
	.loc 1 5137 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1906
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1908
.L1906:
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1908
	.loc 1 5142 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	round_up@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 5143 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize_rli@PLT
.L1908:
	.loc 1 5148 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1910
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1910
	.loc 1 5149 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	include_empty_classes
.L1910:
	.loc 1 5153 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_zero_width_bit_fields
	.loc 1 5158 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1913
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1915
.L1913:
	.loc 1 5160 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	make_node@PLT
	movl	%eax, -48(%ebp)
	.loc 1 5165 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1916
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1916
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1916
	.loc 1 5167 0
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5168 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5169 0
	movl	warn_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1923
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	rli_size_unit_so_far@PLT
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1923
	.loc 1 5170 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5165 0
	jmp	.L1923
.L1916:
.LBB79:
	.loc 1 5185 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	end_of_class
	movl	%eax, -24(%ebp)
	.loc 1 5186 0
	movl	$3, 8(%esp)
	movl	$8, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	rli_size_so_far@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$81, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 5193 0
	movl	$3, 8(%esp)
	movl	$8, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %esi
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	rli_size_so_far@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$81, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 20(%eax)
.L1923:
.LBE79:
	.loc 1 5200 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 5201 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	shrb	$7, %al
	movl	-48(%ebp), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	movzbl	39(%edx), %eax
	andl	$127, %eax
	orl	%ecx, %eax
	movb	%al, 39(%edx)
	.loc 1 5204 0
	movl	-48(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -52(%ebp)
	.loc 1 5205 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1924
.L1925:
	.loc 1 5206 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L1926
	.loc 1 5208 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 5211 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 5212 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 60(%edx)
	.loc 1 5213 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	112(%eax), %eax
	movl	%eax, 112(%edx)
	.loc 1 5216 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 28(%edx)
	.loc 1 5217 0
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-68(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, 48(%edx)
	.loc 1 5219 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L1926:
	.loc 1 5205 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L1924:
	cmpl	$0, -68(%ebp)
	jne	.L1925
	.loc 1 5223 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 5224 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 80(%edx)
	.loc 1 5158 0
	jmp	.L1929
.L1915:
	.loc 1 5227 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 40(%edx)
.L1929:
	.loc 1 5230 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1930
	.loc 1 5231 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
.L1930:
	.loc 1 5236 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	layout_decl@PLT
	.loc 1 5242 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_virtual_bases
	.loc 1 5246 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	include_empty_classes
	.loc 1 5249 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	rli_size_unit_so_far@PLT
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1932
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1932
	.loc 1 5250 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	place_field@PLT
.L1932:
	.loc 1 5254 0
	movl	$1, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_record_layout@PLT
	.loc 1 5257 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_about_ambiguous_bases
	.loc 1 5260 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete@PLT
	.loc 1 5261 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE100:
	.size	layout_class_type, .-layout_class_type
	.type	key_method, @function
key_method:
.LFB101:
	.loc 1 5268 0
	pushl	%ebp
.LCFI362:
	movl	%esp, %ebp
.LCFI363:
	subl	$20, %esp
.LCFI364:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 5271 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1937
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1937
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1937
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L1941
.L1937:
	.loc 1 5275 0
	movl	$0, -20(%ebp)
	jmp	.L1942
.L1941:
	.loc 1 5277 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L1943
.L1944:
	.loc 1 5279 0
	movl	-4(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L1945
	movl	-4(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1945
	movl	-4(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1945
	.loc 1 5282 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1942
.L1945:
	.loc 1 5278 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L1943:
	.loc 1 5277 0
	cmpl	$0, -4(%ebp)
	jne	.L1944
	.loc 1 5284 0
	movl	$0, -20(%ebp)
.L1942:
	movl	-20(%ebp), %eax
	.loc 1 5285 0
	leave
	ret
.LFE101:
	.size	key_method, .-key_method
	.section	.rodata
	.type	__FUNCTION__.21382, @object
	.size	__FUNCTION__.21382, 16
__FUNCTION__.21382:
	.string	"finish_struct_1"
	.align 4
.LC65:
	.string	"`%#T' has virtual functions but non-virtual destructor"
	.text
.globl finish_struct_1
	.type	finish_struct_1, @function
finish_struct_1:
.LFB102:
	.loc 1 5293 0
	pushl	%ebp
.LCFI365:
	movl	%esp, %ebp
.LCFI366:
	pushl	%esi
.LCFI367:
	pushl	%ebx
.LCFI368:
	subl	$80, %esp
.LCFI369:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5296 0
	movl	$0, -44(%ebp)
	.loc 1 5297 0
	movl	$0, -36(%ebp)
	.loc 1 5300 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1952
	.loc 1 5302 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L1954
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L1954
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L1954
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L1954
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1959
.L1954:
	.loc 1 5303 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 5306 0
	call	popclass@PLT
	.loc 1 5307 0
	jmp	.L2033
.L1959:
	.loc 1 5305 0
	leal	__FUNCTION__.21382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5305, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1952:
	.loc 1 5312 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 5313 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	8(%edx), %eax
	andl	$-17, %eax
	movb	%al, 8(%edx)
	.loc 1 5314 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	$0, 12(%eax)
	.loc 1 5316 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixup_inline_methods
	.loc 1 5320 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$2, %eax
	movb	%al, 10(%edx)
	.loc 1 5321 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	5(%edx), %eax
	orl	$8, %eax
	movb	%al, 5(%edx)
	.loc 1 5322 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	10(%edx), %eax
	andl	$-5, %eax
	movb	%al, 10(%edx)
	.loc 1 5326 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	check_bases_and_members
	.loc 1 5329 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1961
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1963
.L1961:
	.loc 1 5331 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	key_method
	movl	%eax, 56(%esi)
	.loc 1 5335 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	.L1963
	.loc 1 5336 0
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
.L1963:
	.loc 1 5340 0
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_class_type
	.loc 1 5343 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 5344 0
	cmpl	$0, -32(%ebp)
	je	.L1965
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1965
.LBB80:
	.loc 1 5346 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5348 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L1968
	leal	__FUNCTION__.21382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5350, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1968:
	.loc 1 5352 0
	movl	-32(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1970
	leal	__FUNCTION__.21382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5353, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1970:
	.loc 1 5354 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1972
	leal	__FUNCTION__.21382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5355, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1972:
	.loc 1 5357 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_decl@PLT
	movl	%eax, -32(%ebp)
	.loc 1 5358 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 5359 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 5344 0
	jmp	.L1974
.L1965:
.LBE80:
	.loc 1 5362 0
	cmpl	$0, -32(%ebp)
	je	.L1975
	movl	-32(%ebp), %eax
	movl	56(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1977
.L1975:
	movl	$1, -64(%ebp)
	jmp	.L1978
.L1977:
	movl	$0, -64(%ebp)
.L1978:
	cmpl	$0, -64(%ebp)
	jne	.L1974
	leal	__FUNCTION__.21382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5362, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1974:
	.loc 1 5364 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	modify_all_vtables
	movl	%eax, -44(%ebp)
	.loc 1 5368 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L1981
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1981
	.loc 1 5369 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, 16(%esi)
.L1981:
	.loc 1 5373 0
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L1984
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1984
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1987
.L1984:
	.loc 1 5376 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1988
	.loc 1 5377 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_primary_vtable
	jmp	.L1987
.L1988:
	.loc 1 5378 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1990
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -60(%ebp)
	jmp	.L1992
.L1990:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -60(%ebp)
.L1992:
	movl	-60(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1987
	.loc 1 5381 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_primary_vtable
.L1987:
	.loc 1 5384 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1994
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1996
.L1994:
.LBB81:
	.loc 1 5389 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L1997
	.loc 1 5390 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	28(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1997
	leal	__FUNCTION__.21382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5391, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1997:
	.loc 1 5392 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2001
	.loc 1 5393 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L2001
	leal	__FUNCTION__.21382@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5394, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2001:
	.loc 1 5397 0
	movl	8(%ebp), %eax
	movl	76(%eax), %esi
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, 32(%esi)
	.loc 1 5400 0
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5401 0
	jmp	.L2005
.L2006:
	.loc 1 5405 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	124(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2007
	.loc 1 5406 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %esi
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	build_shared_int_cst@PLT
	movl	%eax, 124(%esi)
.L2007:
	.loc 1 5404 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	addl	$1, -24(%ebp)
.L2005:
	.loc 1 5401 0
	cmpl	$0, -20(%ebp)
	jne	.L2006
.L1996:
.LBE81:
	.loc 1 5409 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_struct_bits
	.loc 1 5413 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2009
.L2010:
	.loc 1 5414 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2011
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2011
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %edx
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2011
	.loc 1 5416 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movb	%dl, 32(%eax)
.L2011:
	.loc 1 5413 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L2009:
	cmpl	$0, -40(%ebp)
	jne	.L2010
	.loc 1 5425 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	count_fields
	movl	%eax, -36(%ebp)
	.loc 1 5426 0
	cmpl	$7, -36(%ebp)
	jle	.L2016
.LBB82:
	.loc 1 5428 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5429 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	$0, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	add_fields_to_vec
	.loc 1 5430 0
	leal	field_decl_cmp@GOTOFF(%ebx), %eax
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %ecx
	addl	$20, %ecx
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	qsort@PLT
	.loc 1 5432 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	jne	.L2018
	.loc 1 5433 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	retrofit_lang_decl@PLT
.L2018:
	.loc 1 5434 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	136(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 48(%edx)
.L2016:
.LBE82:
	.loc 1 5437 0
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2020
.LBB83:
	.loc 1 5439 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5441 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5442 0
	jmp	.L2022
.L2023:
	.loc 1 5446 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2024
	.loc 1 5447 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$4, %edx
	movb	%dl, 9(%eax)
.L2024:
	.loc 1 5442 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2022:
	cmpl	$0, -12(%ebp)
	jne	.L2023
.L2020:
.LBE83:
	.loc 1 5452 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_vtbls
	.loc 1 5455 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtt
	.loc 1 5457 0
	movl	warn_nonvdtor@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2026
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2026
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2026
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	24(%eax), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	jne	.L2026
	.loc 1 5459 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L2026:
	.loc 1 5461 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_vars@PLT
	.loc 1 5463 0
	movl	warn_overloaded_virtual@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2031
	.loc 1 5464 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warn_hidden@PLT
.L2031:
	.loc 1 5466 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_suppress_debug_info@PLT
	.loc 1 5468 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_class_hierarchy
	.loc 1 5471 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_type_compilation@PLT
.L2033:
	.loc 1 5472 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE102:
	.size	finish_struct_1, .-finish_struct_1
.globl unreverse_member_declarations
	.type	unreverse_member_declarations, @function
unreverse_member_declarations:
.LFB103:
	.loc 1 5480 0
	pushl	%ebp
.LCFI370:
	movl	%esp, %ebp
.LCFI371:
	pushl	%esi
.LCFI372:
	pushl	%ebx
.LCFI373:
	subl	$32, %esp
.LCFI374:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5487 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 5488 0
	movl	8(%ebp), %eax
	movl	92(%eax), %esi
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 60(%esi)
	.loc 1 5492 0
	movl	$0, -16(%ebp)
	.loc 1 5493 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5494 0
	jmp	.L2035
.L2036:
	.loc 1 5497 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5498 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5499 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 5495 0
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2035:
	.loc 1 5494 0
	cmpl	$0, -12(%ebp)
	je	.L2037
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2036
.L2037:
	.loc 1 5501 0
	cmpl	$0, -16(%ebp)
	je	.L2042
	.loc 1 5503 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5504 0
	cmpl	$0, -16(%ebp)
	je	.L2042
	.loc 1 5505 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
.L2042:
	.loc 1 5507 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE103:
	.size	unreverse_member_declarations, .-unreverse_member_declarations
	.section	.rodata
	.align 4
.LC66:
	.string	"trying to finish struct, but kicked out due to previous parse errors"
	.text
.globl finish_struct
	.type	finish_struct, @function
finish_struct:
.LFB104:
	.loc 1 5512 0
	pushl	%ebp
.LCFI375:
	movl	%esp, %ebp
.LCFI376:
	pushl	%ebx
.LCFI377:
	subl	$36, %esp
.LCFI378:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5513 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5514 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5518 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unreverse_member_declarations@PLT
	.loc 1 5520 0
	movl	$8, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cplus_decl_attributes@PLT
	.loc 1 5524 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	16(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5525 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	20(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5527 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2044
	.loc 1 5529 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_struct_methods
	.loc 1 5530 0
	movl	8(%ebp), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	%eax, 20(%edx)
	jmp	.L2046
.L2044:
	.loc 1 5533 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_struct_1@PLT
.L2046:
	.loc 1 5535 0
	movl	input_filename@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5536 0
	movl	lineno@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5538 0
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	7(%edx), %eax
	andl	$127, %eax
	movb	%al, 7(%edx)
	.loc 1 5540 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2047
	.loc 1 5541 0
	call	popclass@PLT
	jmp	.L2049
.L2047:
	.loc 1 5543 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2049:
	.loc 1 5545 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2050
	call	at_function_scope_p@PLT
	testl	%eax, %eax
	je	.L2050
	.loc 1 5546 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$222, (%esp)
	call	build_min@PLT
	movl	%eax, (%esp)
	call	add_stmt@PLT
.L2050:
	.loc 1 5548 0
	movl	8(%ebp), %eax
	.loc 1 5549 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	finish_struct, .-finish_struct
	.type	fixed_type_or_null, @function
fixed_type_or_null:
.LFB105:
	.loc 1 5564 0
	pushl	%ebp
.LCFI379:
	movl	%esp, %ebp
.LCFI380:
	pushl	%ebx
.LCFI381:
	subl	$40, %esp
.LCFI382:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5565 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$35, %eax
	movl	%eax, -32(%ebp)
	cmpl	$88, -32(%ebp)
	ja	.L2055
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L2066@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2066:
	.long	.L2056@GOTOFF
	.long	.L2057@GOTOFF
	.long	.L2057@GOTOFF
	.long	.L2056@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2058@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2059@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2057@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2060@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2061@GOTOFF
	.long	.L2061@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2062@GOTOFF
	.long	.L2062@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2063@GOTOFF
	.long	.L2055@GOTOFF
	.long	.L2064@GOTOFF
	.long	.L2065@GOTOFF
	.text
.L2059:
	.loc 1 5568 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2067
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2069
.L2067:
	.loc 1 5569 0
	movl	$0, -28(%ebp)
	jmp	.L2070
.L2069:
	.loc 1 5571 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixed_type_or_null
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2060:
	.loc 1 5576 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2071
	.loc 1 5578 0
	cmpl	$0, 12(%ebp)
	je	.L2073
	.loc 1 5579 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L2073:
	.loc 1 5580 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2071:
	.loc 1 5582 0
	movl	$0, -28(%ebp)
	jmp	.L2070
.L2063:
	.loc 1 5586 0
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2075
	.loc 1 5588 0
	cmpl	$0, 12(%ebp)
	je	.L2077
	.loc 1 5589 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L2077:
	.loc 1 5590 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2075:
	.loc 1 5592 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixed_type_or_null
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2064:
	.loc 1 5595 0
	movl	$0, -28(%ebp)
	jmp	.L2070
.L2061:
	.loc 1 5599 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L2079
	.loc 1 5600 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixed_type_or_null
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2079:
	.loc 1 5601 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2081
	.loc 1 5603 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixed_type_or_null
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2081:
	.loc 1 5604 0
	movl	$0, -28(%ebp)
	jmp	.L2070
.L2062:
	.loc 1 5608 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixed_type_or_null
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2065:
	.loc 1 5611 0
	cmpl	$0, 12(%ebp)
	je	.L2083
	.loc 1 5612 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L2083:
	.loc 1 5613 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixed_type_or_null
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2058:
	.loc 1 5616 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixed_type_or_null
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2056:
	.loc 1 5620 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2057
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2086
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2086
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2086
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2086
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2057
.L2086:
	.loc 1 5623 0
	cmpl	$0, 12(%ebp)
	je	.L2091
	.loc 1 5624 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L2091:
	.loc 1 5625 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2057:
	.loc 1 5631 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2093
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2093
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2093
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2093
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2098
.L2093:
	.loc 1 5633 0
	cmpl	$0, 12(%ebp)
	je	.L2099
	.loc 1 5634 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L2099:
	.loc 1 5635 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2098:
	.loc 1 5637 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2101
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2103
.L2101:
	movl	$0, -24(%ebp)
.L2103:
	movl	-24(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L2104
	.loc 1 5639 0
	cmpl	$0, 12(%ebp)
	je	.L2106
	.loc 1 5640 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L2106:
	.loc 1 5643 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L2114
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2110
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2114
.L2110:
	.loc 1 5647 0
	cmpl	$0, 16(%ebp)
	je	.L2112
	.loc 1 5648 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L2112:
	.loc 1 5649 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2104:
	.loc 1 5652 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2114
	.loc 1 5655 0
	cmpl	$0, 12(%ebp)
	je	.L2116
	.loc 1 5656 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
.L2116:
	.loc 1 5661 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L2114
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L2114
	movl	8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2114
.LBB84:
	.loc 1 5666 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 5667 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fixed_type_or_null
	movl	%eax, -8(%ebp)
	.loc 1 5669 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	andl	$-3, %eax
	movb	%al, 38(%edx)
	.loc 1 5670 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2070
.L2114:
.LBE84:
	.loc 1 5673 0
	movl	$0, -28(%ebp)
	jmp	.L2070
.L2055:
	.loc 1 5676 0
	movl	$0, -28(%ebp)
.L2070:
	movl	-28(%ebp), %eax
	.loc 1 5678 0
	addl	$40, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE105:
	.size	fixed_type_or_null, .-fixed_type_or_null
.globl resolves_to_fixed_type_p
	.type	resolves_to_fixed_type_p, @function
resolves_to_fixed_type_p:
.LFB106:
	.loc 1 5698 0
	pushl	%ebp
.LCFI383:
	movl	%esp, %ebp
.LCFI384:
	pushl	%ebx
.LCFI385:
	subl	$36, %esp
.LCFI386:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5699 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5700 0
	movl	$0, -16(%ebp)
	.loc 1 5702 0
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fixed_type_or_null
	movl	%eax, -8(%ebp)
	.loc 1 5703 0
	cmpl	$0, -8(%ebp)
	jne	.L2123
	.loc 1 5704 0
	movl	$0, -28(%ebp)
	jmp	.L2125
.L2123:
	.loc 1 5705 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2126
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2128
.L2126:
	.loc 1 5706 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L2128:
	.loc 1 5707 0
	movl	-8(%ebp), %eax
	movl	72(%eax), %edx
	movl	-12(%ebp), %eax
	movl	72(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2129
	.loc 1 5708 0
	movl	$0, -28(%ebp)
	jmp	.L2125
.L2129:
	.loc 1 5709 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L2131
	movl	$-1, -24(%ebp)
	jmp	.L2133
.L2131:
	movl	$1, -24(%ebp)
.L2133:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L2125:
	movl	-28(%ebp), %eax
	.loc 1 5710 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE106:
	.size	resolves_to_fixed_type_p, .-resolves_to_fixed_type_p
	.section	.rodata
.LC67:
	.string	"local_classes"
	.text
.globl init_class_processing
	.type	init_class_processing, @function
init_class_processing:
.LFB107:
	.loc 1 5715 0
	pushl	%ebp
.LCFI387:
	movl	%esp, %ebp
.LCFI388:
	pushl	%ebx
.LCFI389:
	subl	$20, %esp
.LCFI390:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5716 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5717 0
	movl	$10, current_class_stack_size@GOTOFF(%ebx)
	.loc 1 5718 0
	movl	current_class_stack_size@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, current_class_stack@GOTOFF(%ebx)
	.loc 1 5721 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$8, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	local_classes@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5723 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 156(%eax)
	.loc 1 5724 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 160(%eax)
	.loc 1 5725 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$2, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 164(%eax)
	.loc 1 5726 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$3, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 168(%eax)
	.loc 1 5727 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$4, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 172(%eax)
	.loc 1 5728 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$5, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 176(%eax)
	.loc 1 5729 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$6, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 180(%eax)
	.loc 1 5730 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$7, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 184(%eax)
	.loc 1 5732 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	292(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 5733 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	296(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	168(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 5734 0
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	300(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	164(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 5735 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE107:
	.size	init_class_processing, .-init_class_processing
.globl pushclass
	.type	pushclass, @function
pushclass:
.LFB108:
	.loc 1 5775 0
	pushl	%ebp
.LCFI391:
	movl	%esp, %ebp
.LCFI392:
	pushl	%ebx
.LCFI393:
	subl	$36, %esp
.LCFI394:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5776 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 5779 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	current_class_stack_size@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jl	.L2138
	.loc 1 5781 0
	movl	current_class_stack_size@GOTOFF(%ebx), %eax
	addl	%eax, %eax
	movl	%eax, current_class_stack_size@GOTOFF(%ebx)
	.loc 1 5782 0
	movl	current_class_stack_size@GOTOFF(%ebx), %eax
	sall	$4, %eax
	movl	current_class_stack@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, current_class_stack@GOTOFF(%ebx)
.L2138:
	.loc 1 5789 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 5790 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 5791 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 5792 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 12(%eax)
	.loc 1 5793 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	current_class_depth@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5796 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 12(%edx)
	.loc 1 5797 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2140
	.loc 1 5798 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, 12(%edx)
.L2140:
	.loc 1 5799 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 5803 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L2142
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	168(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2144
.L2142:
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, -24(%ebp)
.L2144:
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 5807 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L2145
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2147
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2145
.L2147:
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L2145
	.loc 1 5813 0
	call	invalidate_class_lookup_cache@PLT
.L2145:
	.loc 1 5818 0
	cmpl	$0, 12(%ebp)
	je	.L2150
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L2150
	.loc 1 5819 0
	call	clear_identifier_class_values@PLT
.L2150:
	.loc 1 5821 0
	call	pushlevel_class@PLT
	.loc 1 5823 0
	cmpl	$0, 12(%ebp)
	je	.L2164
	.loc 1 5825 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2155
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L2157
.L2155:
	.loc 1 5826 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_class_decls@PLT
	.loc 1 5825 0
	jmp	.L2158
.L2157:
.LBB85:
	.loc 1 5836 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	set_class_shadows@PLT
	.loc 1 5837 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2159
.L2160:
.LBB86:
	.loc 1 5839 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5840 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5842 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	push_class_binding@PLT
	.loc 1 5843 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L2161
	.loc 1 5844 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_identifier_type_value@PLT
.L2161:
.LBE86:
	.loc 1 5837 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L2159:
	cmpl	$0, -16(%ebp)
	jne	.L2160
	.loc 1 5846 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unuse_fields@PLT
.L2158:
.LBE85:
	.loc 1 5849 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	cxx_remember_type_decls@PLT
.L2164:
	.loc 1 5851 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE108:
	.size	pushclass, .-pushclass
.globl invalidate_class_lookup_cache
	.type	invalidate_class_lookup_cache, @function
invalidate_class_lookup_cache:
.LFB109:
	.loc 1 5860 0
	pushl	%ebp
.LCFI395:
	movl	%esp, %ebp
.LCFI396:
	subl	$16, %esp
.LCFI397:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 5864 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L2166
.L2167:
	.loc 1 5865 0
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, 48(%eax)
	.loc 1 5864 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L2166:
	cmpl	$0, -4(%ebp)
	jne	.L2167
	.loc 1 5867 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$0, 44(%eax)
	.loc 1 5868 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	$0, 40(%eax)
	.loc 1 5869 0
	leave
	ret
.LFE109:
	.size	invalidate_class_lookup_cache, .-invalidate_class_lookup_cache
.globl popclass
	.type	popclass, @function
popclass:
.LFB110:
	.loc 1 5876 0
	pushl	%ebp
.LCFI398:
	movl	%esp, %ebp
.LCFI399:
	pushl	%ebx
.LCFI400:
	subl	$4, %esp
.LCFI401:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5877 0
	call	poplevel_class@PLT
	.loc 1 5878 0
	call	pop_class_decls@PLT
	.loc 1 5880 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	current_class_depth@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5881 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%ecx)
	.loc 1 5882 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%ecx)
	.loc 1 5883 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 20(%ecx)
	.loc 1 5884 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L2173
	.loc 1 5885 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete@PLT
.L2173:
	.loc 1 5886 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE110:
	.size	popclass, .-popclass
.globl currently_open_class
	.type	currently_open_class, @function
currently_open_class:
.LFB111:
	.loc 1 5895 0
	pushl	%ebp
.LCFI402:
	movl	%esp, %ebp
.LCFI403:
	subl	$20, %esp
.LCFI404:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 5897 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2175
	.loc 1 5898 0
	movl	$1, -20(%ebp)
	jmp	.L2177
.L2175:
	.loc 1 5899 0
	movl	$1, -4(%ebp)
	jmp	.L2178
.L2179:
	.loc 1 5900 0
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2180
	.loc 1 5901 0
	movl	$1, -20(%ebp)
	jmp	.L2177
.L2180:
	.loc 1 5899 0
	addl	$1, -4(%ebp)
.L2178:
	movl	current_class_depth@GOT(%ecx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -4(%ebp)
	jl	.L2179
	.loc 1 5902 0
	movl	$0, -20(%ebp)
.L2177:
	movl	-20(%ebp), %eax
	.loc 1 5903 0
	leave
	ret
.LFE111:
	.size	currently_open_class, .-currently_open_class
.globl currently_open_derived_class
	.type	currently_open_derived_class, @function
currently_open_derived_class:
.LFB112:
	.loc 1 5912 0
	pushl	%ebp
.LCFI405:
	movl	%esp, %ebp
.LCFI406:
	pushl	%ebx
.LCFI407:
	subl	$36, %esp
.LCFI408:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5915 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L2185
	.loc 1 5916 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2187
.L2185:
	.loc 1 5918 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L2188
.L2189:
	.loc 1 5919 0
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L2190
	.loc 1 5920 0
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2187
.L2190:
	.loc 1 5918 0
	subl	$1, -8(%ebp)
.L2188:
	cmpl	$0, -8(%ebp)
	jg	.L2189
	.loc 1 5922 0
	movl	$0, -24(%ebp)
.L2187:
	movl	-24(%ebp), %eax
	.loc 1 5923 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE112:
	.size	currently_open_derived_class, .-currently_open_derived_class
.globl push_nested_class
	.type	push_nested_class, @function
push_nested_class:
.LFB113:
	.loc 1 5936 0
	pushl	%ebp
.LCFI409:
	movl	%esp, %ebp
.LCFI410:
	pushl	%ebx
.LCFI411:
	subl	$36, %esp
.LCFI412:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5940 0
	cmpl	$0, 8(%ebp)
	je	.L2216
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2216
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	je	.L2216
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2199
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2199
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2199
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2199
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2216
.L2199:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2216
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	jne	.L2205
	.loc 1 5946 0
	jmp	.L2216
.L2205:
	.loc 1 5948 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5950 0
	cmpl	$0, -8(%ebp)
	je	.L2207
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2209
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2207
.L2209:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2211
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2211
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2211
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2211
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2207
.L2211:
	.loc 1 5951 0
	movl	$2, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_nested_class@PLT
.L2207:
	.loc 1 5952 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pushclass@PLT
.L2216:
	.loc 1 5953 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE113:
	.size	push_nested_class, .-push_nested_class
.globl pop_nested_class
	.type	pop_nested_class, @function
pop_nested_class:
.LFB114:
	.loc 1 5959 0
	pushl	%ebp
.LCFI413:
	movl	%esp, %ebp
.LCFI414:
	pushl	%ebx
.LCFI415:
	subl	$20, %esp
.LCFI416:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5960 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	72(%eax), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 5962 0
	call	popclass@PLT
	.loc 1 5963 0
	cmpl	$0, -8(%ebp)
	je	.L2227
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2220
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2227
.L2220:
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2222
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2222
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2222
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2222
	movl	-8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2227
.L2222:
	.loc 1 5964 0
	call	pop_nested_class@PLT
.L2227:
	.loc 1 5965 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE114:
	.size	pop_nested_class, .-pop_nested_class
.globl current_lang_depth
	.type	current_lang_depth, @function
current_lang_depth:
.LFB115:
	.loc 1 5971 0
	pushl	%ebp
.LCFI417:
	movl	%esp, %ebp
.LCFI418:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 5972 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	.loc 1 5973 0
	popl	%ebp
	ret
.LFE115:
	.size	current_lang_depth, .-current_lang_depth
	.section	.rodata
	.align 4
.LC68:
	.string	"language string `\"%s\"' not recognized"
	.text
.globl push_lang_context
	.type	push_lang_context, @function
push_lang_context:
.LFB116:
	.loc 1 5981 0
	pushl	%ebp
.LCFI419:
	movl	%esp, %ebp
.LCFI420:
	pushl	%esi
.LCFI421:
	pushl	%ebx
.LCFI422:
	subl	$16, %esp
.LCFI423:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5982 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L2231
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, 28(%esi)
.L2231:
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %esi
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %ecx
	movl	4(%ecx), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 5984 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	252(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2233
	.loc 1 5986 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 32(%edx)
	jmp	.L2240
.L2233:
	.loc 1 5988 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	256(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2236
	.loc 1 5990 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 32(%edx)
	.loc 1 5995 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	56(%eax), %edx
	movzbl	33(%edx), %eax
	andl	$-65, %eax
	movb	%al, 33(%edx)
	.loc 1 5996 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	56(%eax), %edx
	movzbl	33(%edx), %eax
	andl	$-65, %eax
	movb	%al, 33(%edx)
	.loc 1 5997 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	56(%eax), %edx
	movzbl	33(%edx), %eax
	andl	$-65, %eax
	movb	%al, 33(%edx)
	.loc 1 5998 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	12(%eax), %eax
	movl	56(%eax), %edx
	movzbl	33(%edx), %eax
	andl	$-65, %eax
	movb	%al, 33(%edx)
	.loc 1 5999 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	56(%eax), %edx
	movzbl	33(%edx), %eax
	andl	$-65, %eax
	movb	%al, 33(%edx)
	.loc 1 6000 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	56(%eax), %edx
	movzbl	33(%edx), %eax
	andl	$-65, %eax
	movb	%al, 33(%edx)
	.loc 1 6001 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	24(%eax), %eax
	movl	56(%eax), %edx
	movzbl	33(%edx), %eax
	andl	$-65, %eax
	movb	%al, 33(%edx)
	.loc 1 6002 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	56(%eax), %edx
	movzbl	33(%edx), %eax
	andl	$-65, %eax
	movb	%al, 33(%edx)
	jmp	.L2240
.L2236:
	.loc 1 6004 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	248(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2238
	.loc 1 6006 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 32(%edx)
	jmp	.L2240
.L2238:
	.loc 1 6009 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2240:
	.loc 1 6010 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE116:
	.size	push_lang_context, .-push_lang_context
.globl pop_lang_context
	.type	pop_lang_context, @function
pop_lang_context:
.LFB117:
	.loc 1 6016 0
	pushl	%ebp
.LCFI424:
	movl	%esp, %ebp
.LCFI425:
	pushl	%ebx
.LCFI426:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6017 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %ecx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	16(%ecx,%eax,4), %eax
	movl	%eax, 32(%edx)
	.loc 1 6018 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %edx
	movl	4(%edx), %eax
	subl	$1, %eax
	movl	%eax, 4(%edx)
	.loc 1 6019 0
	popl	%ebx
	popl	%ebp
	ret
.LFE117:
	.size	pop_lang_context, .-pop_lang_context
	.local	explained.22318
	.comm	explained.22318,4,4
	.section	.rodata
	.align 32
	.type	__FUNCTION__.22290, @object
	.size	__FUNCTION__.22290, 39
__FUNCTION__.22290:
	.string	"resolve_address_of_overloaded_function"
	.align 4
.LC69:
	.string	"cannot resolve overloaded function `%D' based on conversion to type `%T'"
	.align 4
.LC70:
	.string	"no matches converting function `%D' to type `%#T'"
	.align 4
.LC71:
	.string	"converting overloaded function `%D' to type `%#T' is ambiguous"
	.align 4
.LC72:
	.string	"assuming pointer to member `%D'"
	.align 4
.LC73:
	.string	"(a pointer to member can only be formed with `&%E')"
	.text
	.type	resolve_address_of_overloaded_function, @function
resolve_address_of_overloaded_function:
.LFB118:
	.loc 1 6044 0
	pushl	%ebp
.LCFI427:
	movl	%esp, %ebp
.LCFI428:
	pushl	%ebx
.LCFI429:
	subl	$132, %esp
.LCFI430:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6071 0
	movl	$0, -72(%ebp)
	.loc 1 6072 0
	movl	$0, -68(%ebp)
	.loc 1 6076 0
	movl	$0, -64(%ebp)
	.loc 1 6082 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2244
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	je	.L2246
.L2244:
	movl	$1, -100(%ebp)
	jmp	.L2247
.L2246:
	movl	$0, -100(%ebp)
.L2247:
	cmpl	$0, -100(%ebp)
	jne	.L2248
	leal	__FUNCTION__.22290@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6084, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2248:
	.loc 1 6086 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L2250
	.loc 1 6087 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
.L2250:
	.loc 1 6090 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2252
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2252
	jmp	.L2255
.L2252:
	.loc 1 6092 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2256
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2256
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2256
	.loc 1 6094 0
	movl	$1, -72(%ebp)
	.loc 1 6092 0
	jmp	.L2255
.L2256:
	.loc 1 6095 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	jne	.L2260
	.loc 1 6099 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, 8(%ebp)
	.loc 1 6100 0
	movl	$1, -68(%ebp)
	jmp	.L2255
.L2260:
	.loc 1 6104 0
	cmpl	$0, 16(%ebp)
	je	.L2262
	.loc 1 6105 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2262:
	.loc 1 6108 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2264
.L2255:
	.loc 1 6115 0
	cmpl	$0, 24(%ebp)
	jne	.L2265
.LBB87:
	.loc 1 6119 0
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L2267
.L2268:
.LBB88:
	.loc 1 6121 0
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 6124 0
	movl	-52(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	je	.L2269
	.loc 1 6128 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	sete	%al
	movzbl	%al, %eax
	cmpl	-72(%ebp), %eax
	jne	.L2269
	.loc 1 6135 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 6136 0
	cmpl	$0, -72(%ebp)
	je	.L2272
	.loc 1 6137 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, (%esp)
	call	build_ptrmemfunc_type@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2274
.L2272:
	.loc 1 6138 0
	cmpl	$0, -68(%ebp)
	jne	.L2274
	.loc 1 6139 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -48(%ebp)
.L2274:
	.loc 1 6141 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_convert_arg@PLT
	testl	%eax, %eax
	je	.L2269
	.loc 1 6142 0
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -64(%ebp)
.L2269:
.LBE88:
	.loc 1 6119 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L2267:
	cmpl	$0, -56(%ebp)
	jne	.L2268
.L2265:
.LBE87:
	.loc 1 6149 0
	cmpl	$0, -64(%ebp)
	jne	.L2277
.LBB89:
	.loc 1 6156 0
	cmpl	$0, -72(%ebp)
	je	.L2279
	.loc 1 6157 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2281
.L2279:
	.loc 1 6160 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L2281:
	.loc 1 6161 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 6162 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 6165 0
	movl	-44(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2282
	.loc 1 6166 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L2282:
	.loc 1 6168 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L2284
.L2285:
.LBB90:
	.loc 1 6170 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6175 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L2286
	.loc 1 6179 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	sete	%al
	movzbl	%al, %eax
	cmpl	-72(%ebp), %eax
	jne	.L2286
	.loc 1 6186 0
	movl	-28(%ebp), %eax
	movl	60(%eax), %eax
	movl	20(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6187 0
	movl	$-1, 24(%esp)
	movl	$2, 20(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fn_type_unification@PLT
	testl	%eax, %eax
	jne	.L2286
	.loc 1 6194 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_template@PLT
	movl	%eax, -24(%ebp)
	.loc 1 6195 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L2286
	.loc 1 6200 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 6201 0
	cmpl	$0, -72(%ebp)
	je	.L2291
	.loc 1 6202 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, (%esp)
	call	build_ptrmemfunc_type@PLT
	movl	%eax, -20(%ebp)
	jmp	.L2293
.L2291:
	.loc 1 6204 0
	cmpl	$0, -68(%ebp)
	jne	.L2293
	.loc 1 6205 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -20(%ebp)
.L2293:
	.loc 1 6206 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_convert_arg@PLT
	testl	%eax, %eax
	je	.L2286
	.loc 1 6207 0
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -64(%ebp)
.L2286:
.LBE90:
	.loc 1 6168 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L2284:
	cmpl	$0, -32(%ebp)
	jne	.L2285
	.loc 1 6211 0
	cmpl	$0, -64(%ebp)
	je	.L2277
.LBB91:
	.loc 1 6213 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	most_specialized_instantiation@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6215 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L2277
	.loc 1 6216 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -64(%ebp)
.L2277:
.LBE91:
.LBE89:
	.loc 1 6221 0
	cmpl	$0, -64(%ebp)
	jne	.L2299
	.loc 1 6224 0
	cmpl	$0, 16(%ebp)
	je	.L2301
	.loc 1 6226 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6233 0
	jmp	.L2303
.L2304:
	.loc 1 6234 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L2305
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L2307
.L2305:
	movl	12(%ebp), %eax
	movl	%eax, -92(%ebp)
.L2307:
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -64(%ebp)
	.loc 1 6233 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L2308
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L2310
.L2308:
	movl	$0, -88(%ebp)
.L2310:
	movl	-88(%ebp), %eax
	movl	%eax, 12(%ebp)
.L2303:
	cmpl	$0, 12(%ebp)
	jne	.L2304
	.loc 1 6237 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	print_candidates@PLT
.L2301:
	.loc 1 6239 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2264
.L2299:
	.loc 1 6241 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2312
	.loc 1 6245 0
	cmpl	$0, 16(%ebp)
	je	.L2314
.LBB92:
	.loc 1 6249 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6255 0
	movl	-64(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L2316
.L2317:
	.loc 1 6256 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 6255 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L2316:
	cmpl	$0, -8(%ebp)
	jne	.L2317
	.loc 1 6258 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	print_candidates@PLT
.L2314:
.LBE92:
	.loc 1 6261 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2264
.L2312:
	.loc 1 6265 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 6267 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L2319
	cmpl	$0, 20(%ebp)
	jne	.L2319
	movl	flag_ms_extensions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2319
.LBB93:
	.loc 1 6272 0
	cmpl	$0, 16(%ebp)
	jne	.L2323
	.loc 1 6273 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L2264
.L2323:
	.loc 1 6275 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 6276 0
	movl	explained.22318@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2319
	.loc 1 6278 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
	.loc 1 6279 0
	movl	$1, explained.22318@GOTOFF(%ebx)
.L2319:
.LBE93:
	.loc 1 6282 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_used@PLT
	.loc 1 6284 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L2326
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	.L2328
.L2326:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L2329
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L2329
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2329
.L2328:
	.loc 1 6285 0
	movl	$0, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -96(%ebp)
	jmp	.L2264
.L2329:
	.loc 1 6291 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	cxx_mark_addressable@PLT
	.loc 1 6293 0
	movl	-60(%ebp), %eax
	movl	%eax, -96(%ebp)
.L2264:
	movl	-96(%ebp), %eax
	.loc 1 6295 0
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE118:
	.size	resolve_address_of_overloaded_function, .-resolve_address_of_overloaded_function
	.section	.rodata
	.type	__FUNCTION__.22499, @object
	.size	__FUNCTION__.22499, 17
__FUNCTION__.22499:
	.string	"instantiate_type"
.LC74:
	.string	"not enough type information"
	.align 4
.LC75:
	.string	"argument of type `%T' does not match `%T'"
	.align 4
.LC76:
	.string	"invalid operation on uninstantiated type"
	.text
.globl instantiate_type
	.type	instantiate_type, @function
instantiate_type:
.LFB119:
	.loc 1 6311 0
	pushl	%ebp
.LCFI431:
	movl	%esp, %ebp
.LCFI432:
	pushl	%esi
.LCFI433:
	pushl	%ebx
.LCFI434:
	subl	$80, %esp
.LCFI435:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6312 0
	movl	16(%ebp), %eax
	andl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 6314 0
	movl	16(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L2334
	movl	$8, -52(%ebp)
	jmp	.L2336
.L2334:
	movl	$0, -52(%ebp)
.L2336:
	movl	-52(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6315 0
	movl	16(%ebp), %eax
	andl	$32, %eax
	movl	%eax, -24(%ebp)
	.loc 1 6317 0
	andl	$-33, 16(%ebp)
	.loc 1 6319 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$25, %al
	jne	.L2337
	.loc 1 6321 0
	cmpl	$0, -32(%ebp)
	je	.L2339
	.loc 1 6322 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2339:
	.loc 1 6323 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2337:
	.loc 1 6326 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L2342
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	jne	.L2342
	.loc 1 6328 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2345
	.loc 1 6329 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2345:
	.loc 1 6330 0
	cmpl	$0, -32(%ebp)
	je	.L2347
	.loc 1 6331 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC75@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2347:
	.loc 1 6333 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2342:
	.loc 1 6336 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L2349
	.loc 1 6337 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
.L2349:
	.loc 1 6341 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	je	.L2351
	.loc 1 6342 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 12(%ebp)
.L2351:
	.loc 1 6349 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$204, -44(%ebp)
	ja	.L2353
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L2371@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2371:
	.long	.L2354@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2355@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2356@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2357@GOTOFF
	.long	.L2358@GOTOFF
	.long	.L2357@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2358@GOTOFF
	.long	.L2359@GOTOFF
	.long	.L2360@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2361@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2362@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2359@GOTOFF
	.long	.L2359@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2364@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2358@GOTOFF
	.long	.L2365@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2358@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2366@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2367@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2363@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2368@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2358@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2353@GOTOFF
	.long	.L2369@GOTOFF
	.long	.L2370@GOTOFF
	.text
.L2358:
	.loc 1 6356 0
	leal	__FUNCTION__.22499@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6356, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2357:
.LBB94:
	.loc 1 6364 0
	movl	12(%ebp), %eax
	movl	20(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 6366 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L2372
	.loc 1 6367 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2372:
	.loc 1 6369 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6370 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 6371 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2365:
.LBE94:
	.loc 1 6375 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 12(%ebp)
	.loc 1 6376 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	116(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6377 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2356:
	.loc 1 6380 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2368:
	.loc 1 6383 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 6384 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L2374
	.loc 1 6385 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	orl	16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2374:
	.loc 1 6390 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-53, %al
	je	.L2369
	leal	__FUNCTION__.22499@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6390, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2369:
.LBB95:
	.loc 1 6396 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6397 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6399 0
	movl	-12(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	$1, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_address_of_overloaded_function
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2370:
.LBE95:
	.loc 1 6409 0
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_address_of_overloaded_function
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2355:
	.loc 1 6419 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	je	.L2378
	leal	__FUNCTION__.22499@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6419, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2378:
	.loc 1 6421 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2362:
	.loc 1 6425 0
	leal	__FUNCTION__.22499@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6425, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2359:
	.loc 1 6431 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 6433 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2380
	.loc 1 6434 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2380:
	.loc 1 6435 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 6437 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2382
	.loc 1 6438 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2382:
	.loc 1 6440 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6441 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2363:
	.loc 1 6476 0
	cmpl	$0, -32(%ebp)
	je	.L2384
	.loc 1 6477 0
	leal	.LC76@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2384:
	.loc 1 6478 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2364:
	.loc 1 6492 0
	cmpl	$0, -32(%ebp)
	je	.L2386
	.loc 1 6493 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2386:
	.loc 1 6494 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2361:
	.loc 1 6497 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	type_unknown_p@PLT
	testl	%eax, %eax
	je	.L2388
	.loc 1 6499 0
	cmpl	$0, -32(%ebp)
	je	.L2390
	.loc 1 6500 0
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L2390:
	.loc 1 6501 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2388:
	.loc 1 6503 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 6505 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2392
	.loc 1 6506 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2392:
	.loc 1 6507 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 6509 0
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2394
	.loc 1 6510 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2394:
	.loc 1 6512 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6513 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2360:
	.loc 1 6516 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 6518 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2396
	.loc 1 6519 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2396:
	.loc 1 6521 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6522 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2366:
	.loc 1 6526 0
	movl	12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L2398
	.loc 1 6527 0
	orl	$32, 16(%ebp)
.L2398:
	.loc 1 6529 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	instantiate_type@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2367:
	.loc 1 6532 0
	leal	__FUNCTION__.22499@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6532, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2354:
	.loc 1 6536 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L2341
.L2353:
	.loc 1 6539 0
	leal	__FUNCTION__.22499@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6539, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2341:
	movl	-48(%ebp), %eax
	.loc 1 6542 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE119:
	.size	instantiate_type, .-instantiate_type
	.section	.rodata
.LC77:
	.string	"_vptr.%s"
	.text
	.type	get_vfield_name, @function
get_vfield_name:
.LFB120:
	.loc 1 6553 0
	pushl	%ebp
.LCFI436:
	movl	%esp, %ebp
.LCFI437:
	pushl	%ebx
.LCFI438:
	subl	$36, %esp
.LCFI439:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6553 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 6554 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6557 0
	jmp	.L2402
.L2403:
	.loc 1 6560 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L2402:
	.loc 1 6557 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2404
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2406
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2404
.L2406:
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2403
.L2404:
	.loc 1 6562 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6563 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %eax
	addl	$11, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %edx
	movl	%edx, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6565 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC77@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 6567 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	.loc 1 6568 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L2409
	call	__stack_chk_fail_local
.L2409:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE120:
	.size	get_vfield_name, .-get_vfield_name
.globl print_class_statistics
	.type	print_class_statistics, @function
print_class_statistics:
.LFB121:
	.loc 1 6572 0
	pushl	%ebp
.LCFI440:
	movl	%esp, %ebp
.LCFI441:
	.loc 1 6586 0
	popl	%ebp
	ret
.LFE121:
	.size	print_class_statistics, .-print_class_statistics
.globl build_self_reference
	.type	build_self_reference, @function
build_self_reference:
.LFB122:
	.loc 1 6596 0
	pushl	%ebp
.LCFI442:
	movl	%esp, %ebp
.LCFI443:
	pushl	%ebx
.LCFI444:
	subl	$36, %esp
.LCFI445:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6597 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	constructor_name@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6598 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	build_lang_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 6601 0
	movl	-12(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$2, %eax
	movb	%al, 33(%edx)
	.loc 1 6602 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 6603 0
	movl	-12(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 6604 0
	movl	-12(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$2, %eax
	movb	%al, 38(%edx)
	.loc 1 6606 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L2413
	.loc 1 6607 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	push_template_decl@PLT
	movl	%eax, -12(%ebp)
.L2413:
	.loc 1 6609 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6610 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	160(%eax), %eax
	movl	%eax, 20(%edx)
	.loc 1 6611 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_member_declaration@PLT
	.loc 1 6612 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 6613 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE122:
	.size	build_self_reference, .-build_self_reference
.globl is_empty_class
	.type	is_empty_class, @function
is_empty_class:
.LFB123:
	.loc 1 6620 0
	pushl	%ebp
.LCFI446:
	movl	%esp, %ebp
.LCFI447:
	pushl	%ebx
.LCFI448:
	subl	$20, %esp
.LCFI449:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6621 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2417
	.loc 1 6622 0
	movl	$0, -8(%ebp)
	jmp	.L2419
.L2417:
	.loc 1 6624 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2420
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2420
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2420
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2420
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2420
	.loc 1 6625 0
	movl	$0, -8(%ebp)
	jmp	.L2419
.L2420:
	.loc 1 6629 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2426
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L2428
.L2426:
	.loc 1 6630 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	10(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	jmp	.L2419
.L2428:
	.loc 1 6632 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	40(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	movl	%eax, -8(%ebp)
.L2419:
	movl	-8(%ebp), %eax
	.loc 1 6633 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE123:
	.size	is_empty_class, .-is_empty_class
	.type	contains_empty_class_p, @function
contains_empty_class_p:
.LFB124:
	.loc 1 6639 0
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
	.loc 1 6640 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	je	.L2431
	.loc 1 6641 0
	movl	$1, -28(%ebp)
	jmp	.L2433
.L2431:
	.loc 1 6642 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2434
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2436
.L2434:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2437
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2437
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2437
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2437
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2436
.L2437:
.LBB96:
	.loc 1 6647 0
	movl	$0, -8(%ebp)
	jmp	.L2442
.L2443:
	.loc 1 6648 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_empty_class_p
	testb	%al, %al
	je	.L2444
	.loc 1 6649 0
	movl	$1, -28(%ebp)
	jmp	.L2433
.L2444:
	.loc 1 6647 0
	addl	$1, -8(%ebp)
.L2442:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2446
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2448
.L2446:
	movl	$0, -24(%ebp)
.L2448:
	movl	-24(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jg	.L2443
	.loc 1 6650 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2450
.L2451:
	.loc 1 6651 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L2452
	movl	-12(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2452
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	je	.L2452
	.loc 1 6654 0
	movl	$1, -28(%ebp)
	jmp	.L2433
.L2452:
	.loc 1 6650 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L2450:
	cmpl	$0, -12(%ebp)
	jne	.L2451
	.loc 1 6642 0
	jmp	.L2457
.L2436:
.LBE96:
	.loc 1 6656 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L2457
	.loc 1 6657 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_empty_class_p
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L2433
.L2457:
	.loc 1 6658 0
	movl	$0, -28(%ebp)
.L2433:
	movl	-28(%ebp), %eax
	.loc 1 6659 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE124:
	.size	contains_empty_class_p, .-contains_empty_class_p
	.section	.rodata
	.type	__FUNCTION__.22852, @object
	.size	__FUNCTION__.22852, 20
__FUNCTION__.22852:
	.string	"get_enclosing_class"
	.text
.globl get_enclosing_class
	.type	get_enclosing_class, @function
get_enclosing_class:
.LFB125:
	.loc 1 6667 0
	pushl	%ebp
.LCFI454:
	movl	%esp, %ebp
.LCFI455:
	pushl	%ebx
.LCFI456:
	subl	$36, %esp
.LCFI457:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6668 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6670 0
	jmp	.L2472
.L2462:
	.loc 1 6672 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	cmpl	$100, -28(%ebp)
	je	.L2464
	cmpl	$116, -28(%ebp)
	je	.L2465
	jmp	.L2463
.L2464:
	.loc 1 6675 0
	movl	-8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6676 0
	jmp	.L2461
.L2465:
	.loc 1 6679 0
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L2466
	.loc 1 6680 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2468
.L2466:
	.loc 1 6681 0
	movl	-8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6682 0
	jmp	.L2461
.L2463:
	.loc 1 6685 0
	leal	__FUNCTION__.22852@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6685, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2461:
.L2472:
	.loc 1 6670 0
	cmpl	$0, -8(%ebp)
	je	.L2469
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L2462
.L2469:
	.loc 1 6688 0
	movl	$0, -24(%ebp)
.L2468:
	movl	-24(%ebp), %eax
	.loc 1 6689 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE125:
	.size	get_enclosing_class, .-get_enclosing_class
.globl is_base_of_enclosing_class
	.type	is_base_of_enclosing_class, @function
is_base_of_enclosing_class:
.LFB126:
	.loc 1 6696 0
	pushl	%ebp
.LCFI458:
	movl	%esp, %ebp
.LCFI459:
	pushl	%ebx
.LCFI460:
	subl	$20, %esp
.LCFI461:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6697 0
	jmp	.L2474
.L2475:
	.loc 1 6699 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lookup_base@PLT
	testl	%eax, %eax
	je	.L2476
	.loc 1 6700 0
	movl	$1, -8(%ebp)
	jmp	.L2478
.L2476:
	.loc 1 6702 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_enclosing_class@PLT
	movl	%eax, 12(%ebp)
.L2474:
	.loc 1 6697 0
	cmpl	$0, 12(%ebp)
	jne	.L2475
	.loc 1 6704 0
	movl	$0, -8(%ebp)
.L2478:
	movl	-8(%ebp), %eax
	.loc 1 6705 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE126:
	.size	is_base_of_enclosing_class, .-is_base_of_enclosing_class
.globl maybe_note_name_used_in_class
	.type	maybe_note_name_used_in_class, @function
maybe_note_name_used_in_class:
.LFB127:
	.loc 1 6714 0
	pushl	%ebp
.LCFI462:
	movl	%esp, %ebp
.LCFI463:
	pushl	%esi
.LCFI464:
	pushl	%ebx
.LCFI465:
	subl	$32, %esp
.LCFI466:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6718 0
	call	innermost_scope_is_class_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L2487
	.loc 1 6723 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L2487
	.loc 1 6726 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$16, %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L2485
	.loc 1 6727 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	leal	-16(%eax), %esi
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	splay_tree_compare_pointers@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	splay_tree_new@PLT
	movl	%eax, 12(%esi)
.L2485:
	.loc 1 6729 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$16, %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6731 0
	movl	12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
.L2487:
	.loc 1 6734 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE127:
	.size	maybe_note_name_used_in_class, .-maybe_note_name_used_in_class
	.section	.rodata
.LC78:
	.string	"declaration of `%#D'"
	.align 4
.LC79:
	.string	"changes meaning of `%D' from `%+#D'"
	.text
.globl note_name_declared_in_class
	.type	note_name_declared_in_class, @function
note_name_declared_in_class:
.LFB128:
	.loc 1 6743 0
	pushl	%ebp
.LCFI467:
	movl	%esp, %ebp
.LCFI468:
	pushl	%ebx
.LCFI469:
	subl	$36, %esp
.LCFI470:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6748 0
	movl	current_class_depth@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	current_class_stack@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	subl	$16, %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6750 0
	cmpl	$0, -12(%ebp)
	je	.L2495
	.loc 1 6753 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6754 0
	cmpl	$0, -8(%ebp)
	je	.L2495
	.loc 1 6761 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC78@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 6762 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-52, %al
	jne	.L2492
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2494
.L2492:
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2494:
	movl	-24(%ebp), %edx
	movl	52(%edx), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC79@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_error_at@PLT
.L2495:
	.loc 1 6766 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE128:
	.size	note_name_declared_in_class, .-note_name_declared_in_class
	.section	.rodata
	.type	__FUNCTION__.22953, @object
	.size	__FUNCTION__.22953, 24
__FUNCTION__.22953:
	.string	"get_vtbl_decl_for_binfo"
	.text
.globl get_vtbl_decl_for_binfo
	.type	get_vtbl_decl_for_binfo, @function
get_vtbl_decl_for_binfo:
.LFB129:
	.loc 1 6775 0
	pushl	%ebp
.LCFI471:
	movl	%esp, %ebp
.LCFI472:
	pushl	%ebx
.LCFI473:
	subl	$36, %esp
.LCFI474:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6778 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6779 0
	cmpl	$0, -8(%ebp)
	je	.L2497
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L2497
	.loc 1 6781 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	je	.L2500
	leal	__FUNCTION__.22953@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6782, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2500:
	.loc 1 6783 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L2497:
	.loc 1 6785 0
	cmpl	$0, -8(%ebp)
	je	.L2502
	.loc 1 6786 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L2502
	leal	__FUNCTION__.22953@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6786, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2502:
	.loc 1 6787 0
	movl	-8(%ebp), %eax
	.loc 1 6788 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE129:
	.size	get_vtbl_decl_for_binfo, .-get_vtbl_decl_for_binfo
	.type	dfs_get_primary_binfo, @function
dfs_get_primary_binfo:
.LFB130:
	.loc 1 6798 0
	pushl	%ebp
.LCFI475:
	movl	%esp, %ebp
.LCFI476:
	pushl	%ebx
.LCFI477:
	subl	$36, %esp
.LCFI478:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6799 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6800 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 6802 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2508
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2508
	.loc 1 6807 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
.L2508:
	.loc 1 6809 0
	movl	$0, %eax
	.loc 1 6810 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE130:
	.size	dfs_get_primary_binfo, .-dfs_get_primary_binfo
	.section	.rodata
	.type	__FUNCTION__.23004, @object
	.size	__FUNCTION__.23004, 18
__FUNCTION__.23004:
	.string	"get_primary_binfo"
	.text
.globl get_primary_binfo
	.type	get_primary_binfo, @function
get_primary_binfo:
.LFB131:
	.loc 1 6822 0
	pushl	%ebp
.LCFI479:
	movl	%esp, %ebp
.LCFI480:
	pushl	%ebx
.LCFI481:
	subl	$68, %esp
.LCFI482:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6824 0
	movl	$0, -28(%ebp)
	.loc 1 6827 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 6828 0
	cmpl	$0, -32(%ebp)
	jne	.L2513
	.loc 1 6829 0
	movl	$0, -44(%ebp)
	jmp	.L2515
.L2513:
	.loc 1 6833 0
	movl	-32(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2516
.LBB97:
	.loc 1 6839 0
	movl	$0, -20(%ebp)
	jmp	.L2518
.L2519:
.LBB98:
	.loc 1 6841 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 6843 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2520
	.loc 1 6845 0
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2515
.L2520:
.LBE98:
	.loc 1 6839 0
	addl	$1, -20(%ebp)
.L2518:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2522
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2524
.L2522:
	movl	$0, -40(%ebp)
.L2524:
	movl	-40(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jg	.L2519
	.loc 1 6849 0
	leal	__FUNCTION__.23004@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6849, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2516:
.LBE97:
	.loc 1 6858 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -24(%ebp)
	.loc 1 6859 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_get_primary_binfo@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk@PLT
	.loc 1 6860 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 6863 0
	cmpl	$0, -24(%ebp)
	jne	.L2526
	leal	__FUNCTION__.23004@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6863, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2526:
	.loc 1 6865 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2528
.LBB99:
	.loc 1 6874 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 6875 0
	jmp	.L2530
.L2531:
	.loc 1 6876 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L2530:
	.loc 1 6875 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2531
	.loc 1 6878 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -8(%ebp)
	.loc 1 6881 0
	jmp	.L2533
.L2534:
	.loc 1 6883 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 6885 0
	movl	-8(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L2535
	.loc 1 6889 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2540
	leal	__FUNCTION__.23004@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6889, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2535:
	.loc 1 6881 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L2533:
	cmpl	$0, -24(%ebp)
	jne	.L2534
	jmp	.L2540
.L2528:
.LBE99:
	.loc 1 6895 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L2540:
	.loc 1 6896 0
	movl	-28(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2515:
	movl	-44(%ebp), %eax
	.loc 1 6897 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE131:
	.size	get_primary_binfo, .-get_primary_binfo
	.section	.rodata
.LC80:
	.string	""
.LC81:
	.string	"%*s"
	.text
	.type	maybe_indent_hierarchy, @function
maybe_indent_hierarchy:
.LFB132:
	.loc 1 6906 0
	pushl	%ebp
.LCFI483:
	movl	%esp, %ebp
.LCFI484:
	pushl	%ebx
.LCFI485:
	subl	$20, %esp
.LCFI486:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6907 0
	cmpl	$0, 16(%ebp)
	jne	.L2543
	.loc 1 6908 0
	leal	.LC80@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC81@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L2543:
	.loc 1 6909 0
	movl	$1, %eax
	.loc 1 6910 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE132:
	.size	maybe_indent_hierarchy, .-maybe_indent_hierarchy
	.section	.rodata
.LC82:
	.string	"%s (0x%lx) "
.LC83:
	.string	"%lld"
.LC84:
	.string	" empty"
.LC85:
	.string	" nearly-empty"
.LC86:
	.string	" virtual"
.LC87:
	.string	" canonical"
.LC88:
	.string	" non-canonical"
.LC89:
	.string	" primary-for %s (0x%lx)"
.LC90:
	.string	" lost-primary"
.LC91:
	.string	" subvttidx=%s"
.LC92:
	.string	" vptridx=%s"
.LC93:
	.string	" vbaseoffset=%s"
.LC94:
	.string	" vptr=%s"
	.text
	.type	dump_class_hierarchy_r, @function
dump_class_hierarchy_r:
.LFB133:
	.loc 1 6923 0
	pushl	%ebp
.LCFI487:
	movl	%esp, %ebp
.LCFI488:
	pushl	%esi
.LCFI489:
	pushl	%ebx
.LCFI490:
	subl	$48, %esp
.LCFI491:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 6925 0
	movl	$0, -20(%ebp)
	.loc 1 6927 0
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_indent_hierarchy
	movl	%eax, -20(%ebp)
	.loc 1 6928 0
	movl	20(%ebp), %eax
	movl	%eax, %esi
	movl	$0, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC82@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 6931 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC83@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 6933 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	is_empty_class@PLT
	testl	%eax, %eax
	je	.L2547
	.loc 1 6934 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC84@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L2549
.L2547:
	.loc 1 6935 0
	movl	20(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2549
	.loc 1 6936 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC85@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L2549:
	.loc 1 6937 0
	movl	20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2551
.LBB100:
	.loc 1 6939 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -16(%ebp)
	.loc 1 6941 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC86@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 6942 0
	movl	-16(%ebp), %eax
	cmpl	20(%ebp), %eax
	jne	.L2553
	.loc 1 6943 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L2551
.L2553:
	.loc 1 6945 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L2551:
.LBE100:
	.loc 1 6947 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 6949 0
	movl	$0, -20(%ebp)
	.loc 1 6950 0
	movl	20(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2555
	.loc 1 6952 0
	movl	24(%ebp), %edx
	addl	$3, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_indent_hierarchy
	movl	%eax, -20(%ebp)
	.loc 1 6953 0
	movl	20(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	60(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L2555:
	.loc 1 6958 0
	movl	20(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2557
	.loc 1 6960 0
	movl	24(%ebp), %edx
	addl	$3, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_indent_hierarchy
	movl	%eax, -20(%ebp)
	.loc 1 6961 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L2557:
	.loc 1 6963 0
	cmpl	$0, -20(%ebp)
	je	.L2559
	.loc 1 6964 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2559:
	.loc 1 6966 0
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L2561
.LBB101:
	.loc 1 6968 0
	movl	$0, -12(%ebp)
	.loc 1 6970 0
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L2563
	.loc 1 6972 0
	movl	24(%ebp), %edx
	addl	$3, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_indent_hierarchy
	movl	%eax, -12(%ebp)
	.loc 1 6973 0
	movl	20(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expr_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L2563:
	.loc 1 6977 0
	movl	20(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2565
	.loc 1 6979 0
	movl	24(%ebp), %edx
	addl	$3, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_indent_hierarchy
	movl	%eax, -12(%ebp)
	.loc 1 6980 0
	movl	20(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expr_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L2565:
	.loc 1 6984 0
	movl	20(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L2567
	.loc 1 6986 0
	movl	24(%ebp), %edx
	addl	$3, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_indent_hierarchy
	movl	%eax, -12(%ebp)
	.loc 1 6987 0
	movl	20(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expr_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L2567:
	.loc 1 6991 0
	movl	20(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2569
	.loc 1 6993 0
	movl	24(%ebp), %edx
	addl	$3, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_indent_hierarchy
	movl	%eax, -12(%ebp)
	.loc 1 6994 0
	movl	20(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expr_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L2569:
	.loc 1 6999 0
	cmpl	$0, -12(%ebp)
	je	.L2561
	.loc 1 7000 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2561:
.LBE101:
	.loc 1 7004 0
	movl	$0, -24(%ebp)
	jmp	.L2572
.L2573:
	.loc 1 7005 0
	movl	24(%ebp), %ecx
	addl	$2, %ecx
	movl	20(%ebp), %eax
	movl	36(%eax), %edx
	movl	-24(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_class_hierarchy_r
	.loc 1 7004 0
	addl	$1, -24(%ebp)
.L2572:
	movl	20(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2574
	movl	20(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2576
.L2574:
	movl	$0, -28(%ebp)
.L2576:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jg	.L2573
	.loc 1 7008 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE133:
	.size	dump_class_hierarchy_r, .-dump_class_hierarchy_r
	.section	.rodata
.LC95:
	.string	"Class %s\n"
.LC96:
	.string	"   size=%lu align=%lu\n"
	.text
	.type	dump_class_hierarchy, @function
dump_class_hierarchy:
.LFB134:
	.loc 1 7015 0
	pushl	%ebp
.LCFI492:
	movl	%esp, %ebp
.LCFI493:
	pushl	%edi
.LCFI494:
	pushl	%esi
.LCFI495:
	pushl	%ebx
.LCFI496:
	subl	$76, %esp
.LCFI497:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7017 0
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_begin@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7019 0
	cmpl	$0, -20(%ebp)
	je	.L2582
	.loc 1 7022 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7023 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, -44(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-40(%ebp), %eax
	adcl	-36(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	-44(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7026 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	-24(%ebp), %edx
	movl	$0, 16(%esp)
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_class_hierarchy_r
	.loc 1 7027 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 7028 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_end@PLT
.L2582:
	.loc 1 7029 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE134:
	.size	dump_class_hierarchy, .-dump_class_hierarchy
	.section	.rodata
.LC97:
	.string	"%s:"
.LC98:
	.string	" %s entries"
.LC99:
	.string	"%-4ld  %s\n"
	.text
	.type	dump_array, @function
dump_array:
.LFB135:
	.loc 1 7035 0
	pushl	%ebp
.LCFI498:
	movl	%esp, %ebp
.LCFI499:
	pushl	%edi
.LCFI500:
	pushl	%esi
.LCFI501:
	pushl	%ebx
.LCFI502:
	subl	$76, %esp
.LCFI503:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7039 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7041 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 7043 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7044 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expr_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7047 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 7049 0
	movl	$0, -24(%ebp)
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7050 0
	jmp	.L2584
.L2585:
	.loc 1 7051 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	expr_as_string@PLT
	movl	%eax, %edi
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, %esi
	imull	-40(%ebp), %esi
	movl	-36(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-40(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7050 0
	addl	$1, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2584:
	cmpl	$0, -28(%ebp)
	jne	.L2585
	.loc 1 7053 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE135:
	.size	dump_array, .-dump_array
	.section	.rodata
.LC100:
	.string	"Construction vtable"
.LC101:
	.string	"Vtable"
.LC102:
	.string	"%s for %s"
.LC103:
	.string	" (0x%lx instance)"
.LC104:
	.string	" in %s"
	.text
	.type	dump_vtable, @function
dump_vtable:
.LFB136:
	.loc 1 7060 0
	pushl	%ebp
.LCFI504:
	movl	%esp, %ebp
.LCFI505:
	pushl	%ebx
.LCFI506:
	subl	$52, %esp
.LCFI507:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7062 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_begin@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7064 0
	cmpl	$0, -12(%ebp)
	je	.L2600
	.loc 1 7067 0
	movl	-16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L2591
.LBB102:
	.loc 1 7069 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	12(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 7071 0
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L2593
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2595
.L2593:
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L2595:
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7074 0
	cmpl	$0, -8(%ebp)
	je	.L2596
	.loc 1 7076 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2598
	.loc 1 7077 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L2598:
	.loc 1 7078 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L2596:
	.loc 1 7080 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 7081 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_array
	.loc 1 7082 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2591:
.LBE102:
	.loc 1 7085 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_end@PLT
.L2600:
	.loc 1 7086 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE136:
	.size	dump_vtable, .-dump_vtable
	.section	.rodata
.LC105:
	.string	"VTT for %s\n"
	.text
	.type	dump_vtt, @function
dump_vtt:
.LFB137:
	.loc 1 7092 0
	pushl	%ebp
.LCFI508:
	movl	%esp, %ebp
.LCFI509:
	pushl	%ebx
.LCFI510:
	subl	$36, %esp
.LCFI511:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7094 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_begin@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7096 0
	cmpl	$0, -8(%ebp)
	je	.L2606
	.loc 1 7099 0
	movl	-12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L2604
	.loc 1 7101 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	type_as_string@PLT
	movl	%eax, 8(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 7103 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_array
	.loc 1 7104 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
.L2604:
	.loc 1 7107 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_end@PLT
.L2606:
	.loc 1 7108 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE137:
	.size	dump_vtt, .-dump_vtt
	.type	finish_vtbls, @function
finish_vtbls:
.LFB138:
	.loc 1 7117 0
	pushl	%ebp
.LCFI512:
	movl	%esp, %ebp
.LCFI513:
	pushl	%esi
.LCFI514:
	pushl	%ebx
.LCFI515:
	subl	$64, %esp
.LCFI516:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7125 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	28(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -28(%ebp)
	.loc 1 7126 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %ecx
	movl	8(%ebp), %eax
	movl	76(%eax), %esi
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	accumulate_vtbl_inits
	.loc 1 7130 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2608
.L2609:
.LBB103:
	.loc 1 7134 0
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2610
	.loc 1 7139 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -16(%ebp)
	.loc 1 7141 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	accumulate_vtbl_inits
.L2610:
.LBE103:
	.loc 1 7130 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L2608:
	cmpl	$0, -24(%ebp)
	jne	.L2609
	.loc 1 7147 0
	movl	$0, -20(%ebp)
	jmp	.L2613
.L2614:
.LBB104:
	.loc 1 7149 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 7150 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2615
	.loc 1 7152 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -24(%ebp)
	.loc 1 7153 0
	movl	-24(%ebp), %eax
	movl	40(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 40(%eax)
.L2615:
.LBE104:
	.loc 1 7147 0
	addl	$1, -20(%ebp)
.L2613:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2617
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2619
.L2617:
	movl	$0, -44(%ebp)
.L2619:
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jg	.L2614
	.loc 1 7157 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2623
	.loc 1 7158 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	initialize_vtable
.L2623:
	.loc 1 7159 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE138:
	.size	finish_vtbls, .-finish_vtbls
	.type	initialize_vtable, @function
initialize_vtable:
.LFB139:
	.loc 1 7167 0
	pushl	%ebp
.LCFI517:
	movl	%esp, %ebp
.LCFI518:
	pushl	%ebx
.LCFI519:
	subl	$36, %esp
.LCFI520:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7170 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_vtable_decl
	.loc 1 7171 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vtbl_decl_for_binfo@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7172 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_array
	.loc 1 7173 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_vtable
	.loc 1 7174 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE139:
	.size	initialize_vtable, .-initialize_vtable
	.type	initialize_array, @function
initialize_array:
.LFB140:
	.loc 1 7183 0
	pushl	%ebp
.LCFI521:
	movl	%esp, %ebp
.LCFI522:
	pushl	%ebx
.LCFI523:
	subl	$36, %esp
.LCFI524:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7186 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7187 0
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 7188 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build_nt@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 7189 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movb	%al, 11(%edx)
	.loc 1 7190 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_finish_decl@PLT
	.loc 1 7191 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 7192 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE140:
	.size	initialize_array, .-initialize_array
	.type	build_vtt, @function
build_vtt:
.LFB141:
	.loc 1 7210 0
	pushl	%ebp
.LCFI525:
	movl	%esp, %ebp
.LCFI526:
	pushl	%ebx
.LCFI527:
	subl	$36, %esp
.LCFI528:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7217 0
	movl	$0, -16(%ebp)
	.loc 1 7218 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7219 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_vtt_inits
	.loc 1 7222 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L2631
	.loc 1 7226 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7227 0
	movl	global_trees@GOT(%ebx), %eax
	movl	136(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_cplus_array_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7230 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vtt_name@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtable
	movl	%eax, -8(%ebp)
	.loc 1 7231 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_array
	.loc 1 7233 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 7234 0
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 7236 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_vtt
.L2631:
	.loc 1 7237 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE141:
	.size	build_vtt, .-build_vtt
	.section	.rodata
	.type	__FUNCTION__.23360, @object
	.size	__FUNCTION__.23360, 18
__FUNCTION__.23360:
	.string	"get_original_base"
	.text
	.type	get_original_base, @function
get_original_base:
.LFB142:
	.loc 1 7248 0
	pushl	%ebp
.LCFI529:
	movl	%esp, %ebp
.LCFI530:
	pushl	%ebx
.LCFI531:
	subl	$36, %esp
.LCFI532:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7252 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2633
	.loc 1 7253 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2635
.L2633:
	.loc 1 7254 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2636
	.loc 1 7255 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -28(%ebp)
	jmp	.L2635
.L2636:
	.loc 1 7256 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_original_base
	movl	%eax, -12(%ebp)
	.loc 1 7258 0
	movl	$0, -8(%ebp)
	jmp	.L2638
.L2639:
	.loc 1 7259 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2640
	.loc 1 7261 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2635
.L2640:
	.loc 1 7258 0
	addl	$1, -8(%ebp)
.L2638:
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2642
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2644
.L2642:
	movl	$0, -24(%ebp)
.L2644:
	movl	-24(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L2639
	.loc 1 7262 0
	leal	__FUNCTION__.23360@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7262, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2635:
	movl	-28(%ebp), %eax
	.loc 1 7264 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE142:
	.size	get_original_base, .-get_original_base
	.type	binfo_ctor_vtable, @function
binfo_ctor_vtable:
.LFB143:
	.loc 1 7274 0
	pushl	%ebp
.LCFI533:
	movl	%esp, %ebp
.LCFI534:
	subl	$16, %esp
.LCFI535:
.L2648:
	.loc 1 7279 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 7280 0
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L2649
	.loc 1 7281 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L2649:
	.loc 1 7282 0
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$4, %al
	jne	.L2651
	.loc 1 7283 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 7286 0
	jmp	.L2648
.L2651:
	.loc 1 7288 0
	movl	-4(%ebp), %eax
	.loc 1 7289 0
	leave
	ret
.LFE143:
	.size	binfo_ctor_vtable, .-binfo_ctor_vtable
	.section	.rodata
	.type	__FUNCTION__.23417, @object
	.size	__FUNCTION__.23417, 16
__FUNCTION__.23417:
	.string	"build_vtt_inits"
	.text
	.type	build_vtt_inits, @function
build_vtt_inits:
.LFB144:
	.loc 1 7305 0
	pushl	%ebp
.LCFI536:
	movl	%esp, %ebp
.LCFI537:
	pushl	%ebx
.LCFI538:
	subl	$68, %esp
.LCFI539:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7310 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	movl	%eax, -16(%ebp)
	.loc 1 7313 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2655
	.loc 1 7314 0
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2657
.L2655:
	.loc 1 7318 0
	cmpl	$0, -16(%ebp)
	jne	.L2658
	.loc 1 7320 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_ctor_vtbl_group
	.loc 1 7323 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
.L2658:
	.loc 1 7327 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_ctor_vtable
	movl	%eax, -24(%ebp)
	.loc 1 7328 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 7329 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ebp)
	.loc 1 7330 0
	cmpl	$0, -16(%ebp)
	je	.L2660
	.loc 1 7332 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2662
	leal	__FUNCTION__.23417@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7332, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2662:
	.loc 1 7333 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
.L2660:
	.loc 1 7335 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 7338 0
	movl	$0, -32(%ebp)
	jmp	.L2664
.L2665:
	.loc 1 7340 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7341 0
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2666
	.loc 1 7342 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	20(%edx,%eax,4), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_vtt_inits
	movl	%eax, 16(%ebp)
.L2666:
	.loc 1 7338 0
	addl	$1, -32(%ebp)
.L2664:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2668
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L2670
.L2668:
	movl	$0, -40(%ebp)
.L2670:
	movl	-40(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jg	.L2665
	.loc 1 7349 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7350 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 7351 0
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	-20(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	9(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 7352 0
	movl	-20(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	movb	%al, 10(%edx)
	.loc 1 7354 0
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	dfs_ctor_vtable_bases_queue_p@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_build_secondary_vptr_vtt_inits@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk_real@PLT
	.loc 1 7359 0
	movl	-20(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 7360 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	dfs_ctor_vtable_bases_queue_p@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	dfs_unmark@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk@PLT
	.loc 1 7363 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 7368 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7369 0
	cmpl	$0, -20(%ebp)
	je	.L2672
	.loc 1 7371 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 7372 0
	movl	-20(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 7373 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2672
	leal	__FUNCTION__.23417@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7373, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2672:
	.loc 1 7377 0
	cmpl	$0, -16(%ebp)
	je	.L2676
	.loc 1 7378 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2678
.L2679:
.LBB105:
	.loc 1 7382 0
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2680
	.loc 1 7385 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7386 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtt_inits
	movl	%eax, 16(%ebp)
.L2680:
.LBE105:
	.loc 1 7378 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2678:
	cmpl	$0, -28(%ebp)
	jne	.L2679
.L2676:
	.loc 1 7389 0
	cmpl	$0, -16(%ebp)
	jne	.L2682
.LBB106:
	.loc 1 7391 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7392 0
	movl	-8(%ebp), %edx
	movzbl	9(%edx), %eax
	andl	$-33, %eax
	movb	%al, 9(%edx)
	.loc 1 7393 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	andl	$-2, %eax
	movb	%al, 10(%edx)
	.loc 1 7395 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	dfs_ctor_vtable_bases_queue_p@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	dfs_fixup_binfo_vtbls@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dfs_walk@PLT
.L2682:
.LBE106:
	.loc 1 7400 0
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
.L2657:
	movl	-44(%ebp), %eax
	.loc 1 7401 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE144:
	.size	build_vtt_inits, .-build_vtt_inits
	.section	.rodata
	.align 32
	.type	__FUNCTION__.23505, @object
	.size	__FUNCTION__.23505, 35
__FUNCTION__.23505:
	.string	"dfs_build_secondary_vptr_vtt_inits"
	.text
	.type	dfs_build_secondary_vptr_vtt_inits, @function
dfs_build_secondary_vptr_vtt_inits:
.LFB145:
	.loc 1 7414 0
	pushl	%ebp
.LCFI540:
	movl	%esp, %ebp
.LCFI541:
	pushl	%edi
.LCFI542:
	pushl	%esi
.LCFI543:
	pushl	%ebx
.LCFI544:
	subl	$60, %esp
.LCFI545:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7421 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 7422 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7423 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 7425 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2686
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2688
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2690
.L2688:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2691
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2691
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2691
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2691
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2690
.L2691:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
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
	jmp	.L2697
.L2690:
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	orl	$1, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
	jmp	.L2697
.L2686:
	movl	8(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$1, %edx
	movb	%dl, 11(%eax)
.L2697:
	.loc 1 7428 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L2698
	.loc 1 7429 0
	movl	$0, -48(%ebp)
	jmp	.L2700
.L2698:
	.loc 1 7432 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2701
	.loc 1 7433 0
	movl	$0, -48(%ebp)
	jmp	.L2700
.L2701:
	.loc 1 7436 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2703
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2703
	.loc 1 7437 0
	movl	$0, -48(%ebp)
	jmp	.L2700
.L2703:
	.loc 1 7441 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2706
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_via_virtual@PLT
	testl	%eax, %eax
	jne	.L2706
	.loc 1 7443 0
	movl	$0, -48(%ebp)
	jmp	.L2700
.L2706:
	.loc 1 7446 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7447 0
	cmpl	$0, -16(%ebp)
	je	.L2709
	.loc 1 7449 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L2711
	leal	__FUNCTION__.23505@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7449, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2711:
	.loc 1 7450 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 56(%edx)
.L2709:
	.loc 1 7452 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 7456 0
	cmpl	$0, -16(%ebp)
	je	.L2713
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2713
	.loc 1 7461 0
	jmp	.L2716
.L2717:
	.loc 1 7462 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, 8(%ebp)
.L2716:
	.loc 1 7461 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L2717
.L2713:
	.loc 1 7464 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_ctor_vtable
	movl	%eax, -24(%ebp)
	.loc 1 7465 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 7467 0
	movl	$0, -48(%ebp)
.L2700:
	movl	-48(%ebp), %eax
	.loc 1 7468 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE145:
	.size	dfs_build_secondary_vptr_vtt_inits, .-dfs_build_secondary_vptr_vtt_inits
	.type	dfs_ctor_vtable_bases_queue_p, @function
dfs_ctor_vtable_bases_queue_p:
.LFB146:
	.loc 1 7479 0
	pushl	%ebp
.LCFI546:
	movl	%esp, %ebp
.LCFI547:
	pushl	%ebx
.LCFI548:
	subl	$20, %esp
.LCFI549:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7480 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2720
	.loc 1 7482 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, 8(%ebp)
.L2720:
	.loc 1 7484 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2722
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2724
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2726
.L2724:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2727
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2727
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2727
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2727
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2726
.L2727:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	jmp	.L2732
.L2726:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	88(%eax), %edx
	movl	84(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L2732:
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L2733
.L2722:
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
.L2733:
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, -16(%ebp)
	jne	.L2734
	.loc 1 7485 0
	movl	$0, -8(%ebp)
	jmp	.L2736
.L2734:
	.loc 1 7486 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L2736:
	movl	-8(%ebp), %eax
	.loc 1 7487 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE146:
	.size	dfs_ctor_vtable_bases_queue_p, .-dfs_ctor_vtable_bases_queue_p
	.type	dfs_fixup_binfo_vtbls, @function
dfs_fixup_binfo_vtbls:
.LFB147:
	.loc 1 7498 0
	pushl	%ebp
.LCFI550:
	movl	%esp, %ebp
.LCFI551:
	pushl	%edi
.LCFI552:
	pushl	%esi
.LCFI553:
	subl	$4, %esp
.LCFI554:
	.loc 1 7499 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2739
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2741
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2743
.L2741:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2744
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2744
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2744
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2744
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2743
.L2744:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	andl	$62, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L2750
.L2743:
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	andl	$-2, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
	jmp	.L2750
.L2739:
	movl	8(%ebp), %eax
	movzbl	11(%eax), %edx
	andl	$-2, %edx
	movb	%dl, 11(%eax)
.L2750:
	.loc 1 7502 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L2751
	.loc 1 7503 0
	movl	$0, -12(%ebp)
	jmp	.L2753
.L2751:
	.loc 1 7507 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L2754
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$3, %al
	jne	.L2754
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2754
	.loc 1 7511 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
.L2754:
	.loc 1 7513 0
	movl	$0, -12(%ebp)
.L2753:
	movl	-12(%ebp), %eax
	.loc 1 7514 0
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE147:
	.size	dfs_fixup_binfo_vtbls, .-dfs_fixup_binfo_vtbls
	.section	.rodata
	.type	__FUNCTION__.23733, @object
	.size	__FUNCTION__.23733, 22
__FUNCTION__.23733:
	.string	"build_ctor_vtbl_group"
	.text
	.type	build_ctor_vtbl_group, @function
build_ctor_vtbl_group:
.LFB148:
	.loc 1 7523 0
	pushl	%ebp
.LCFI555:
	movl	%esp, %ebp
.LCFI556:
	pushl	%esi
.LCFI557:
	pushl	%ebx
.LCFI558:
	subl	$64, %esp
.LCFI559:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7532 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_ctor_vtbl_for_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 7533 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	testl	%eax, %eax
	jne	.L2769
	.loc 1 7536 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2762
	leal	__FUNCTION__.23733@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7536, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2762:
	.loc 1 7540 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtable
	movl	%eax, -32(%ebp)
	.loc 1 7541 0
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -40(%ebp)
	.loc 1 7542 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	accumulate_vtbl_inits
	.loc 1 7547 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7548 0
	jmp	.L2764
.L2765:
.LBB107:
	.loc 1 7554 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2766
	.loc 1 7556 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -16(%ebp)
	.loc 1 7557 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7559 0
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	accumulate_vtbl_inits
.L2766:
.LBE107:
	.loc 1 7549 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L2764:
	.loc 1 7548 0
	cmpl	$0, -20(%ebp)
	jne	.L2765
	.loc 1 7561 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7564 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, -36(%ebp)
	.loc 1 7565 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_cplus_array_type@PLT
	movl	%eax, -36(%ebp)
	.loc 1 7566 0
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 7569 0
	movl	12(%ebp), %eax
	movl	92(%eax), %esi
	movl	12(%ebp), %eax
	movl	92(%eax), %eax
	movl	24(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, 24(%esi)
	.loc 1 7570 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	initialize_array
	.loc 1 7571 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_vtable
.L2769:
	.loc 1 7572 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE148:
	.size	build_ctor_vtbl_group, .-build_ctor_vtbl_group
	.section	.rodata
	.type	__FUNCTION__.23785, @object
	.size	__FUNCTION__.23785, 22
__FUNCTION__.23785:
	.string	"accumulate_vtbl_inits"
	.text
	.type	accumulate_vtbl_inits, @function
accumulate_vtbl_inits:
.LFB149:
	.loc 1 7591 0
	pushl	%ebp
.LCFI560:
	movl	%esp, %ebp
.LCFI561:
	pushl	%ebx
.LCFI562:
	subl	$52, %esp
.LCFI563:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7593 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 7595 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	jne	.L2771
	leal	__FUNCTION__.23785@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7597, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2771:
	.loc 1 7600 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2773
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2786
.L2773:
	.loc 1 7605 0
	cmpl	$0, -12(%ebp)
	je	.L2776
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L2776
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	binfo_via_virtual@PLT
	testl	%eax, %eax
	je	.L2786
.L2776:
	.loc 1 7611 0
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
	call	dfs_accumulate_vtbl_inits
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	chainon@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 7621 0
	movl	$0, -16(%ebp)
	jmp	.L2779
.L2780:
.LBB108:
	.loc 1 7623 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7626 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2781
	.loc 1 7628 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%edx,%eax,4), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	accumulate_vtbl_inits
.L2781:
.LBE108:
	.loc 1 7621 0
	addl	$1, -16(%ebp)
.L2779:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2783
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2785
.L2783:
	movl	$0, -24(%ebp)
.L2785:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jg	.L2780
.L2786:
	.loc 1 7633 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE149:
	.size	accumulate_vtbl_inits, .-accumulate_vtbl_inits
	.type	dfs_accumulate_vtbl_inits, @function
dfs_accumulate_vtbl_inits:
.LFB150:
	.loc 1 7645 0
	pushl	%ebp
.LCFI564:
	movl	%esp, %ebp
.LCFI565:
	pushl	%esi
.LCFI566:
	pushl	%ebx
.LCFI567:
	subl	$64, %esp
.LCFI568:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7646 0
	movl	$0, -32(%ebp)
	.loc 1 7647 0
	movl	$0, -28(%ebp)
	.loc 1 7648 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 7650 0
	cmpl	$0, -24(%ebp)
	je	.L2788
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2788
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2788
.LBB109:
	.loc 1 7668 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 7669 0
	movl	$0, -16(%ebp)
	.loc 1 7673 0
	jmp	.L2792
.L2793:
	.loc 1 7675 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7676 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2794
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L2794
	.loc 1 7673 0
	movl	-20(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -20(%ebp)
.L2792:
	cmpl	$0, -20(%ebp)
	jne	.L2793
.L2794:
	.loc 1 7681 0
	cmpl	$0, -20(%ebp)
	jne	.L2797
	.loc 1 7682 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L2799
.L2800:
	.loc 1 7683 0
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2797
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L2797
	.loc 1 7682 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L2799:
	cmpl	$0, -20(%ebp)
	jne	.L2800
.L2797:
	.loc 1 7690 0
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L2803
	cmpl	$0, -20(%ebp)
	je	.L2807
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	testl	%eax, %eax
	je	.L2807
.L2803:
	.loc 1 7696 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7650 0
	jmp	.L2807
.L2788:
.LBE109:
	.loc 1 7700 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2808
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -48(%ebp)
	jmp	.L2810
.L2808:
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
.L2810:
	movl	-48(%ebp), %edx
	movzbl	11(%edx), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2807
	.loc 1 7701 0
	movl	-32(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2812
.L2807:
	.loc 1 7703 0
	cmpl	$0, -28(%ebp)
	jne	.L2813
.LBB110:
	.loc 1 7709 0
	leal	-36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtbl_initializer
	movl	%eax, -32(%ebp)
	.loc 1 7713 0
	movl	24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7714 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	124(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -28(%ebp)
	.loc 1 7717 0
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
	.loc 1 7718 0
	movl	24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7721 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, -12(%ebp)
	.loc 1 7724 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 7725 0
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
.L2813:
.LBE110:
	.loc 1 7728 0
	cmpl	$0, -24(%ebp)
	je	.L2815
	.loc 1 7732 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	jmp	.L2817
.L2815:
	.loc 1 7733 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L2818
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2818
	.loc 1 7734 0
	movl	$0, -32(%ebp)
	.loc 1 7733 0
	jmp	.L2817
.L2818:
	.loc 1 7737 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 28(%edx)
.L2817:
	.loc 1 7739 0
	movl	-32(%ebp), %edx
	movl	%edx, -44(%ebp)
.L2812:
	movl	-44(%ebp), %eax
	.loc 1 7740 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE150:
	.size	dfs_accumulate_vtbl_inits, .-dfs_accumulate_vtbl_inits
	.section	.rodata
	.type	__FUNCTION__.23960, @object
	.size	__FUNCTION__.23960, 23
__FUNCTION__.23960:
	.string	"build_vtbl_initializer"
.LC106:
	.string	"fns"
	.text
	.type	build_vtbl_initializer, @function
build_vtbl_initializer:
.LFB151:
	.loc 1 7772 0
	pushl	%ebp
.LCFI569:
	movl	%esp, %ebp
.LCFI570:
	pushl	%edi
.LCFI571:
	pushl	%esi
.LCFI572:
	pushl	%ebx
.LCFI573:
	subl	$124, %esp
.LCFI574:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7779 0
	leal	-112(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$11, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 7780 0
	movl	8(%ebp), %eax
	movl	%eax, -112(%ebp)
	.loc 1 7781 0
	movl	16(%ebp), %eax
	movl	%eax, -108(%ebp)
	.loc 1 7782 0
	movl	20(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 7783 0
	leal	-112(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -96(%ebp)
	.loc 1 7784 0
	movl	16(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	8(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -80(%ebp)
	.loc 1 7785 0
	movl	20(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	.loc 1 7786 0
	movb	$1, -72(%ebp)
	.loc 1 7788 0
	movl	$1, 8(%esp)
	movl	$-3, (%esp)
	movl	$-1, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, -84(%ebp)
	.loc 1 7791 0
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_rtti_vtbl_entries
	.loc 1 7796 0
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, -88(%ebp)
	.loc 1 7798 0
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vcall_and_vbase_vtbl_entries
	.loc 1 7801 0
	movl	16(%ebp), %eax
	movl	92(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 7802 0
	jmp	.L2823
.L2824:
	.loc 1 7804 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2825
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2827
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2829
.L2827:
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2830
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2830
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2830
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2830
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2829
.L2830:
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	andl	$59, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L2836
.L2829:
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	andl	$-5, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
	jmp	.L2836
.L2825:
	movl	-56(%ebp), %eax
	movl	20(%eax), %edx
	movzbl	11(%edx), %eax
	andl	$-9, %eax
	movb	%al, 11(%edx)
.L2836:
	.loc 1 7803 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L2823:
	.loc 1 7802 0
	cmpl	$0, -56(%ebp)
	jne	.L2824
	.loc 1 7825 0
	cmpl	$0, 24(%ebp)
	je	.L2838
	.loc 1 7826 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	list_length@PLT
	movl	%eax, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
.L2838:
	.loc 1 7830 0
	movl	$0, -60(%ebp)
	.loc 1 7831 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L2840
.L2841:
.LBB111:
	.loc 1 7836 0
	movl	$0, -24(%ebp)
	.loc 1 7838 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7850 0
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
.L2842:
	.loc 1 7853 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	look_for_overrides_here@PLT
	testl	%eax, %eax
	jne	.L2843
	.loc 1 7858 0
	movl	-64(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2845
	.loc 1 7860 0
	movl	global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 7861 0
	jmp	.L2843
.L2845:
	.loc 1 7850 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -64(%ebp)
	.loc 1 7863 0
	jmp	.L2842
.L2843:
	.loc 1 7865 0
	cmpl	$0, -24(%ebp)
	jne	.L2847
	.loc 1 7869 0
	movl	-68(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 7870 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 7872 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2849
	leal	__FUNCTION__.23960@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7872, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2849:
	.loc 1 7873 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L2851
	leal	__FUNCTION__.23960@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7873, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2851:
	.loc 1 7877 0
	movl	-28(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2853
	.loc 1 7878 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L2855
.L2853:
	.loc 1 7879 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2856
	cmpl	$0, -32(%ebp)
	je	.L2855
.L2856:
	.loc 1 7880 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	make_thunk@PLT
	movl	%eax, -28(%ebp)
.L2855:
	.loc 1 7883 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	.loc 1 7885 0
	movl	-24(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
.L2847:
	.loc 1 7907 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -60(%ebp)
.LBE111:
	.loc 1 7831 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L2840:
	cmpl	$0, -68(%ebp)
	jne	.L2841
	.loc 1 7912 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -60(%ebp)
	.loc 1 7915 0
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, -100(%ebp)
	.loc 1 7918 0
	movl	-100(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	.loc 1 7919 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE151:
	.size	build_vtbl_initializer, .-build_vtbl_initializer
	.type	build_vcall_and_vbase_vtbl_entries, @function
build_vcall_and_vbase_vtbl_entries:
.LFB152:
	.loc 1 7928 0
	pushl	%ebp
.LCFI575:
	movl	%esp, %ebp
.LCFI576:
	pushl	%ebx
.LCFI577:
	subl	$36, %esp
.LCFI578:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7933 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -8(%ebp)
	.loc 1 7934 0
	cmpl	$0, -8(%ebp)
	je	.L2861
	.loc 1 7935 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vcall_and_vbase_vtbl_entries
.L2861:
	.loc 1 7938 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vbase_offset_vtbl_entries
	.loc 1 7940 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vcall_offset_vtbl_entries
	.loc 1 7941 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE152:
	.size	build_vcall_and_vbase_vtbl_entries, .-build_vcall_and_vbase_vtbl_entries
	.section	.rodata
	.align 32
	.type	__FUNCTION__.24120, @object
	.size	__FUNCTION__.24120, 32
__FUNCTION__.24120:
	.string	"build_vbase_offset_vtbl_entries"
	.text
	.type	build_vbase_offset_vtbl_entries, @function
build_vbase_offset_vtbl_entries:
.LFB153:
	.loc 1 7952 0
	pushl	%ebp
.LCFI579:
	movl	%esp, %ebp
.LCFI580:
	pushl	%edi
.LCFI581:
	pushl	%esi
.LCFI582:
	pushl	%ebx
.LCFI583:
	subl	$60, %esp
.LCFI584:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7959 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L2907
	.loc 1 7962 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 7967 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 7968 0
	jmp	.L2867
.L2868:
.LBB112:
	.loc 1 7976 0
	movl	-32(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2869
	.loc 1 7978 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 7979 0
	jmp	.L2871
.L2869:
	.loc 1 7982 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7983 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	cmpl	-32(%ebp), %eax
	jne	.L2871
	.loc 1 7985 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L2867:
.LBE112:
	.loc 1 7968 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2868
.L2871:
	.loc 1 7989 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 7990 0
	jmp	.L2873
.L2874:
.LBB113:
	.loc 1 7996 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2875
	.loc 1 8001 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -24(%ebp)
	.loc 1 8005 0
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2877
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2879
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2881
.L2879:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2882
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2882
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2882
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2882
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2881
.L2882:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	-45(%ebp)
	jmp	.L2887
.L2881:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	88(%eax), %edx
	movl	84(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	-45(%ebp)
.L2887:
	movzbl	-45(%ebp), %eax
	movb	%al, -46(%ebp)
	jmp	.L2888
.L2877:
	movl	-24(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	setne	-46(%ebp)
.L2888:
	cmpb	$0, -46(%ebp)
	jne	.L2875
	.loc 1 8007 0
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2890
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L2892
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L2894
.L2892:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L2895
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L2895
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L2895
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L2895
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2894
.L2895:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	orl	$4, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L2901
.L2894:
	movl	-24(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	orl	$4, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
	jmp	.L2901
.L2890:
	movl	-24(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$8, %edx
	movb	%dl, 11(%eax)
.L2901:
	.loc 1 8010 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, -20(%ebp)
	.loc 1 8014 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L2902
	.loc 1 8015 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 40(%edx)
.L2902:
	.loc 1 8017 0
	movl	-36(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L2904
.LBB114:
	.loc 1 8022 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	binfo_for_vbase@PLT
	movl	%eax, -16(%ebp)
	.loc 1 8026 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	jne	.L2904
	.loc 1 8028 0
	leal	__FUNCTION__.24120@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8028, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2904:
.LBE114:
	.loc 1 8032 0
	movl	$1, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 8039 0
	movl	-32(%ebp), %eax
	movl	24(%eax), %edx
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, -20(%ebp)
	.loc 1 8041 0
	movl	12(%ebp), %eax
	movl	16(%eax), %esi
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, (%esi)
	.loc 1 8046 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
.L2875:
.LBE113:
	.loc 1 7991 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L2873:
	.loc 1 7990 0
	cmpl	$0, -40(%ebp)
	jne	.L2874
.L2907:
	.loc 1 8048 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE153:
	.size	build_vbase_offset_vtbl_entries, .-build_vbase_offset_vtbl_entries
	.type	build_vcall_offset_vtbl_entries, @function
build_vcall_offset_vtbl_entries:
.LFB154:
	.loc 1 8058 0
	pushl	%ebp
.LCFI585:
	movl	%esp, %ebp
.LCFI586:
	subl	$8, %esp
.LCFI587:
	.loc 1 8062 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2909
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2914
.L2909:
	.loc 1 8082 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 8085 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2912
	.loc 1 8086 0
	movl	12(%ebp), %eax
	movb	$0, 40(%eax)
.L2912:
	.loc 1 8088 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_vcall_offset_vtbl_entries_r
.L2914:
	.loc 1 8090 0
	leave
	ret
.LFE154:
	.size	build_vcall_offset_vtbl_entries, .-build_vcall_offset_vtbl_entries
	.type	add_vcall_offset_vtbl_entries_r, @function
add_vcall_offset_vtbl_entries_r:
.LFB155:
	.loc 1 8098 0
	pushl	%ebp
.LCFI588:
	movl	%esp, %ebp
.LCFI589:
	pushl	%ebx
.LCFI590:
	subl	$36, %esp
.LCFI591:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8106 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2916
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L2928
.L2916:
	.loc 1 8110 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -12(%ebp)
	.loc 1 8111 0
	cmpl	$0, -12(%ebp)
	je	.L2919
	.loc 1 8112 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_vcall_offset_vtbl_entries_r
.L2919:
	.loc 1 8115 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_vcall_offset_vtbl_entries_1
	.loc 1 8118 0
	movl	$0, -16(%ebp)
	jmp	.L2921
.L2922:
.LBB115:
	.loc 1 8122 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 8123 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L2923
	.loc 1 8124 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_vcall_offset_vtbl_entries_r
.L2923:
.LBE115:
	.loc 1 8118 0
	addl	$1, -16(%ebp)
.L2921:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2925
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L2927
.L2925:
	movl	$0, -24(%ebp)
.L2927:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jg	.L2922
.L2928:
	.loc 1 8126 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE155:
	.size	add_vcall_offset_vtbl_entries_r, .-add_vcall_offset_vtbl_entries_r
	.section	.rodata
	.align 32
	.type	__FUNCTION__.24318, @object
	.size	__FUNCTION__.24318, 32
__FUNCTION__.24318:
	.string	"add_vcall_offset_vtbl_entries_1"
	.text
	.type	add_vcall_offset_vtbl_entries_1, @function
add_vcall_offset_vtbl_entries_1:
.LFB156:
	.loc 1 8134 0
	pushl	%ebp
.LCFI592:
	movl	%esp, %ebp
.LCFI593:
	pushl	%ebx
.LCFI594:
	subl	$52, %esp
.LCFI595:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8136 0
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2930
	movl	flag_abi_version@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L2932
.L2930:
.LBB116:
	.loc 1 8142 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 8143 0
	jmp	.L2933
.L2934:
	.loc 1 8145 0
	movl	-32(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	.L2935
	.loc 1 8146 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	add_vcall_offset
.L2935:
	.loc 1 8144 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L2933:
	.loc 1 8143 0
	cmpl	$0, -32(%ebp)
	jne	.L2934
	.loc 1 8136 0
	jmp	.L2953
.L2932:
.LBE116:
.LBB117:
	.loc 1 8160 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 8161 0
	jmp	.L2939
.L2940:
.LBB118:
	.loc 1 8171 0
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2941
	.loc 1 8173 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L2943
	.loc 1 8174 0
	leal	__FUNCTION__.24318@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8174, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2943:
	.loc 1 8175 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 8176 0
	jmp	.L2945
.L2941:
	.loc 1 8179 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 8180 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	cmpl	-16(%ebp), %eax
	jne	.L2945
	.loc 1 8182 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L2939:
.LBE118:
	.loc 1 8161 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L2940
.L2945:
	.loc 1 8185 0
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L2947
	.loc 1 8188 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_original_base
	movl	%eax, -16(%ebp)
.L2947:
	.loc 1 8193 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 8194 0
	jmp	.L2949
.L2950:
.LBB119:
	.loc 1 8203 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 8208 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	comptypes@PLT
	testl	%eax, %eax
	je	.L2951
	.loc 1 8211 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_vcall_offset
.L2951:
.LBE119:
	.loc 1 8197 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L2949:
	.loc 1 8194 0
	cmpl	$0, -24(%ebp)
	jne	.L2950
.L2953:
.LBE117:
	.loc 1 8214 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE156:
	.size	add_vcall_offset_vtbl_entries_1, .-add_vcall_offset_vtbl_entries_1
	.type	add_vcall_offset, @function
add_vcall_offset:
.LFB157:
	.loc 1 8220 0
	pushl	%ebp
.LCFI596:
	movl	%esp, %ebp
.LCFI597:
	pushl	%esi
.LCFI598:
	pushl	%ebx
.LCFI599:
	subl	$48, %esp
.LCFI600:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8228 0
	movl	$0, -28(%ebp)
	jmp	.L2955
.L2956:
.LBB120:
	.loc 1 8232 0
	movl	16(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 8233 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	same_signature_p@PLT
	testl	%eax, %eax
	jne	.L2971
	movl	-20(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2959
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	5(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2959
	.loc 1 8238 0
	jmp	.L2971
.L2959:
.LBE120:
	.loc 1 8228 0
	addl	$1, -28(%ebp)
.L2955:
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	ja	.L2956
	.loc 1 8244 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2963
	.loc 1 8245 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %esi
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, 20(%esi)
.L2963:
	.loc 1 8251 0
	movl	$1, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 8255 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L2965
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 24(%eax)
.L2965:
	movl	16(%ebp), %eax
	movl	24(%eax), %esi
	movl	16(%ebp), %eax
	movl	24(%eax), %ecx
	movl	4(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
	.loc 1 8257 0
	movl	16(%ebp), %eax
	movzbl	40(%eax), %eax
	testb	%al, %al
	je	.L2971
.LBB121:
	.loc 1 8263 0
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_final_overrider
	movl	%eax, -12(%ebp)
	.loc 1 8264 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L2968
	.loc 1 8265 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -24(%ebp)
	jmp	.L2970
.L2968:
	.loc 1 8269 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 8275 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, -24(%ebp)
	.loc 1 8277 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
.L2970:
	.loc 1 8281 0
	movl	16(%ebp), %eax
	movl	16(%eax), %esi
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, (%esi)
	.loc 1 8282 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, 16(%eax)
.L2971:
.LBE121:
	.loc 1 8284 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE157:
	.size	add_vcall_offset, .-add_vcall_offset
	.section	.rodata
	.type	__FUNCTION__.24454, @object
	.size	__FUNCTION__.24454, 24
__FUNCTION__.24454:
	.string	"build_rtti_vtbl_entries"
	.text
	.type	build_rtti_vtbl_entries, @function
build_rtti_vtbl_entries:
.LFB158:
	.loc 1 8294 0
	pushl	%ebp
.LCFI601:
	movl	%esp, %ebp
.LCFI602:
	pushl	%esi
.LCFI603:
	pushl	%ebx
.LCFI604:
	subl	$48, %esp
.LCFI605:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 8302 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 8303 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 8307 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 8308 0
	jmp	.L2973
.L2974:
.LBB122:
	.loc 1 8313 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_primary_binfo@PLT
	movl	%eax, -12(%ebp)
	.loc 1 8314 0
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L2975
	leal	__FUNCTION__.24454@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$8314, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2975:
	.loc 1 8315 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L2973:
.LBE122:
	.loc 1 8308 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	92(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L2977
	movl	-36(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L2974
.L2977:
	.loc 1 8317 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	size_diffop@PLT
	movl	%eax, -24(%ebp)
	.loc 1 8320 0
	movl	flag_rtti@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2979
	.loc 1 8321 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_decl@PLT
	movl	%eax, (%esp)
	call	build_address@PLT
	movl	%eax, -20(%ebp)
	jmp	.L2981
.L2979:
	.loc 1 8323 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
.L2981:
	.loc 1 8327 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_nop@PLT
	movl	%eax, -16(%ebp)
	.loc 1 8328 0
	movl	12(%ebp), %eax
	movl	16(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, (%esi)
	.loc 1 8329 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 8334 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_nop@PLT
	movl	%eax, -16(%ebp)
	.loc 1 8335 0
	movl	12(%ebp), %eax
	movl	16(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	build_tree_list@PLT
	movl	%eax, (%esi)
	.loc 1 8336 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 8337 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE158:
	.size	build_rtti_vtbl_entries, .-build_rtti_vtbl_entries
	.local	current_class_stack_size
	.comm	current_class_stack_size,4,4
	.local	current_class_stack
	.comm	current_class_stack,4,4
	.comm	current_class_depth,4,4
	.comm	local_classes,4,4
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
	.long	.LCFI45-.LCFI42
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI70-.LCFI66
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
	.long	.LCFI71-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI72
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
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
	.long	.LCFI83-.LCFI80
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
	.long	.LCFI95-.LCFI93
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
	.long	.LCFI96-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI100-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI104-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI108-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI112-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
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
	.long	.LCFI115-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI119-.LCFI116
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
	.long	.LCFI120-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI121
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
	.long	.LCFI124-.LFB45
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI128-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI129-.LCFI128
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
	.long	.LCFI131-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
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
	.long	.LCFI138-.LCFI135
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
	.long	.LCFI139-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI143-.LFB50
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI147-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI148-.LCFI147
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI151-.LCFI148
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI152-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI155-.LCFI153
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
	.long	.LCFI156-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI159-.LCFI157
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
	.long	.LCFI160-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI161-.LCFI160
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI161
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
	.long	.LCFI164-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI167-.LCFI165
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
	.long	.LCFI168-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI172-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI176-.LCFI173
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI177-.LFB58
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
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI182-.LFB59
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
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI186-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI189-.LCFI187
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
	.long	.LCFI190-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI191-.LCFI190
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI193-.LCFI191
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
	.long	.LCFI194-.LFB62
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
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI199-.LFB63
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
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI204-.LFB64
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
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI208-.LFB65
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
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI212-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI213-.LCFI212
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
	.long	.LCFI215-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI216-.LCFI215
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI218-.LFB68
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
	.long	.LCFI222-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI225-.LCFI223
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
	.long	.LCFI226-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI227-.LCFI226
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI230-.LCFI227
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI231-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI234-.LCFI232
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
	.long	.LCFI235-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI238-.LCFI236
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
	.long	.LCFI239-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI240-.LCFI239
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI244-.LCFI240
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
	.long	.LCFI245-.LFB74
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
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI249-.LFB75
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
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI253-.LFB76
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
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI258-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI261-.LCFI259
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
	.long	.LCFI262-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI263-.LCFI262
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI265-.LCFI263
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
	.long	.LCFI266-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI267-.LCFI266
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI270-.LCFI267
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI274-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI278-.LCFI275
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI279-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI280-.LCFI279
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI283-.LCFI280
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.align 4
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI299-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI300-.LCFI299
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI302-.LCFI300
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
	.long	.LCFI303-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI304-.LCFI303
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI306-.LCFI304
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
	.long	.LCFI307-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI308-.LCFI307
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI311-.LCFI308
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.byte	0x4
	.long	.LCFI312-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI313-.LCFI312
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
	.long	.LCFI315-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI316-.LCFI315
	.byte	0xd
	.uleb128 0x5
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
	.long	.LCFI331-.LCFI327
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI332-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI333-.LCFI332
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI335-.LCFI333
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
	.long	.LCFI336-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI337-.LCFI336
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI341-.LCFI337
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI342-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI343-.LCFI342
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI345-.LCFI343
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
	.long	.LCFI346-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI347-.LCFI346
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI349-.LCFI347
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
	.long	.LCFI350-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI351-.LCFI350
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI355-.LCFI351
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI356-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI357-.LCFI356
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI361-.LCFI357
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
	.long	.LCFI362-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI363-.LCFI362
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE172:
.LSFDE174:
	.long	.LEFDE174-.LASFDE174
.LASFDE174:
	.long	.Lframe0
	.long	.LFB102
	.long	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI365-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI366-.LCFI365
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI369-.LCFI366
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI370-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI371-.LCFI370
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI374-.LCFI371
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI375-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI376-.LCFI375
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI378-.LCFI376
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
	.long	.LCFI379-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI380-.LCFI379
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI382-.LCFI380
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
	.long	.LCFI383-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI384-.LCFI383
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI386-.LCFI384
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
	.long	.LCFI387-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI388-.LCFI387
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI390-.LCFI388
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
	.long	.LCFI391-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI392-.LCFI391
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI394-.LCFI392
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
	.long	.LCFI395-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI396-.LCFI395
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.long	.LFB110
	.long	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI398-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI399-.LCFI398
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI401-.LCFI399
	.byte	0x83
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
	.long	.LCFI402-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI403-.LCFI402
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE192:
.LSFDE194:
	.long	.LEFDE194-.LASFDE194
.LASFDE194:
	.long	.Lframe0
	.long	.LFB112
	.long	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI405-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI406-.LCFI405
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI408-.LCFI406
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
	.long	.LCFI409-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI410-.LCFI409
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI412-.LCFI410
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
	.long	.LCFI413-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI414-.LCFI413
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI416-.LCFI414
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
	.long	.LCFI417-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI418-.LCFI417
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE200:
.LSFDE202:
	.long	.LEFDE202-.LASFDE202
.LASFDE202:
	.long	.Lframe0
	.long	.LFB116
	.long	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI419-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI420-.LCFI419
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI423-.LCFI420
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI424-.LFB117
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI425-.LCFI424
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI426-.LCFI425
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE204:
.LSFDE206:
	.long	.LEFDE206-.LASFDE206
.LASFDE206:
	.long	.Lframe0
	.long	.LFB118
	.long	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI427-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI428-.LCFI427
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI430-.LCFI428
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE206:
.LSFDE208:
	.long	.LEFDE208-.LASFDE208
.LASFDE208:
	.long	.Lframe0
	.long	.LFB119
	.long	.LFE119-.LFB119
	.byte	0x4
	.long	.LCFI431-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI432-.LCFI431
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI435-.LCFI432
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.byte	0x4
	.long	.LCFI439-.LCFI437
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE210:
.LSFDE212:
	.long	.LEFDE212-.LASFDE212
.LASFDE212:
	.long	.Lframe0
	.long	.LFB121
	.long	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI440-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI441-.LCFI440
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
	.byte	0x4
	.long	.LCFI457-.LCFI455
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE220:
.LSFDE222:
	.long	.LEFDE222-.LASFDE222
.LASFDE222:
	.long	.Lframe0
	.long	.LFB126
	.long	.LFE126-.LFB126
	.byte	0x4
	.long	.LCFI458-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI459-.LCFI458
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI461-.LCFI459
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
	.long	.LCFI462-.LFB127
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI463-.LCFI462
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI466-.LCFI463
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI467-.LFB128
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI468-.LCFI467
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI470-.LCFI468
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
	.long	.LCFI471-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI472-.LCFI471
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI474-.LCFI472
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
	.long	.LCFI475-.LFB130
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI476-.LCFI475
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI478-.LCFI476
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
	.long	.LCFI479-.LFB131
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI480-.LCFI479
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI482-.LCFI480
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
	.long	.LCFI483-.LFB132
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI484-.LCFI483
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI486-.LCFI484
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
	.long	.LCFI487-.LFB133
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI488-.LCFI487
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI491-.LCFI488
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI492-.LFB134
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI493-.LCFI492
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI497-.LCFI493
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI498-.LFB135
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI499-.LCFI498
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI503-.LCFI499
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE240:
.LSFDE242:
	.long	.LEFDE242-.LASFDE242
.LASFDE242:
	.long	.Lframe0
	.long	.LFB136
	.long	.LFE136-.LFB136
	.byte	0x4
	.long	.LCFI504-.LFB136
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI505-.LCFI504
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI507-.LCFI505
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
	.long	.LCFI508-.LFB137
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI509-.LCFI508
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI511-.LCFI509
	.byte	0x83
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
	.long	.LCFI512-.LFB138
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI513-.LCFI512
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI516-.LCFI513
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE246:
.LSFDE248:
	.long	.LEFDE248-.LASFDE248
.LASFDE248:
	.long	.Lframe0
	.long	.LFB139
	.long	.LFE139-.LFB139
	.byte	0x4
	.long	.LCFI517-.LFB139
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI518-.LCFI517
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI520-.LCFI518
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE248:
.LSFDE250:
	.long	.LEFDE250-.LASFDE250
.LASFDE250:
	.long	.Lframe0
	.long	.LFB140
	.long	.LFE140-.LFB140
	.byte	0x4
	.long	.LCFI521-.LFB140
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI522-.LCFI521
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI524-.LCFI522
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE250:
.LSFDE252:
	.long	.LEFDE252-.LASFDE252
.LASFDE252:
	.long	.Lframe0
	.long	.LFB141
	.long	.LFE141-.LFB141
	.byte	0x4
	.long	.LCFI525-.LFB141
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI526-.LCFI525
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI528-.LCFI526
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE252:
.LSFDE254:
	.long	.LEFDE254-.LASFDE254
.LASFDE254:
	.long	.Lframe0
	.long	.LFB142
	.long	.LFE142-.LFB142
	.byte	0x4
	.long	.LCFI529-.LFB142
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI530-.LCFI529
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI532-.LCFI530
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE254:
.LSFDE256:
	.long	.LEFDE256-.LASFDE256
.LASFDE256:
	.long	.Lframe0
	.long	.LFB143
	.long	.LFE143-.LFB143
	.byte	0x4
	.long	.LCFI533-.LFB143
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI534-.LCFI533
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE256:
.LSFDE258:
	.long	.LEFDE258-.LASFDE258
.LASFDE258:
	.long	.Lframe0
	.long	.LFB144
	.long	.LFE144-.LFB144
	.byte	0x4
	.long	.LCFI536-.LFB144
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI537-.LCFI536
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI539-.LCFI537
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE258:
.LSFDE260:
	.long	.LEFDE260-.LASFDE260
.LASFDE260:
	.long	.Lframe0
	.long	.LFB145
	.long	.LFE145-.LFB145
	.byte	0x4
	.long	.LCFI540-.LFB145
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI541-.LCFI540
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI545-.LCFI541
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE260:
.LSFDE262:
	.long	.LEFDE262-.LASFDE262
.LASFDE262:
	.long	.Lframe0
	.long	.LFB146
	.long	.LFE146-.LFB146
	.byte	0x4
	.long	.LCFI546-.LFB146
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI547-.LCFI546
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI549-.LCFI547
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE262:
.LSFDE264:
	.long	.LEFDE264-.LASFDE264
.LASFDE264:
	.long	.Lframe0
	.long	.LFB147
	.long	.LFE147-.LFB147
	.byte	0x4
	.long	.LCFI550-.LFB147
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI551-.LCFI550
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI554-.LCFI551
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE264:
.LSFDE266:
	.long	.LEFDE266-.LASFDE266
.LASFDE266:
	.long	.Lframe0
	.long	.LFB148
	.long	.LFE148-.LFB148
	.byte	0x4
	.long	.LCFI555-.LFB148
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI556-.LCFI555
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI559-.LCFI556
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE266:
.LSFDE268:
	.long	.LEFDE268-.LASFDE268
.LASFDE268:
	.long	.Lframe0
	.long	.LFB149
	.long	.LFE149-.LFB149
	.byte	0x4
	.long	.LCFI560-.LFB149
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI561-.LCFI560
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI563-.LCFI561
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE268:
.LSFDE270:
	.long	.LEFDE270-.LASFDE270
.LASFDE270:
	.long	.Lframe0
	.long	.LFB150
	.long	.LFE150-.LFB150
	.byte	0x4
	.long	.LCFI564-.LFB150
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI565-.LCFI564
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI568-.LCFI565
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE270:
.LSFDE272:
	.long	.LEFDE272-.LASFDE272
.LASFDE272:
	.long	.Lframe0
	.long	.LFB151
	.long	.LFE151-.LFB151
	.byte	0x4
	.long	.LCFI569-.LFB151
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI570-.LCFI569
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI574-.LCFI570
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE272:
.LSFDE274:
	.long	.LEFDE274-.LASFDE274
.LASFDE274:
	.long	.Lframe0
	.long	.LFB152
	.long	.LFE152-.LFB152
	.byte	0x4
	.long	.LCFI575-.LFB152
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI576-.LCFI575
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI578-.LCFI576
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE274:
.LSFDE276:
	.long	.LEFDE276-.LASFDE276
.LASFDE276:
	.long	.Lframe0
	.long	.LFB153
	.long	.LFE153-.LFB153
	.byte	0x4
	.long	.LCFI579-.LFB153
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI580-.LCFI579
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI584-.LCFI580
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE276:
.LSFDE278:
	.long	.LEFDE278-.LASFDE278
.LASFDE278:
	.long	.Lframe0
	.long	.LFB154
	.long	.LFE154-.LFB154
	.byte	0x4
	.long	.LCFI585-.LFB154
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI586-.LCFI585
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE278:
.LSFDE280:
	.long	.LEFDE280-.LASFDE280
.LASFDE280:
	.long	.Lframe0
	.long	.LFB155
	.long	.LFE155-.LFB155
	.byte	0x4
	.long	.LCFI588-.LFB155
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI589-.LCFI588
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI591-.LCFI589
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE280:
.LSFDE282:
	.long	.LEFDE282-.LASFDE282
.LASFDE282:
	.long	.Lframe0
	.long	.LFB156
	.long	.LFE156-.LFB156
	.byte	0x4
	.long	.LCFI592-.LFB156
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI593-.LCFI592
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI595-.LCFI593
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE282:
.LSFDE284:
	.long	.LEFDE284-.LASFDE284
.LASFDE284:
	.long	.Lframe0
	.long	.LFB157
	.long	.LFE157-.LFB157
	.byte	0x4
	.long	.LCFI596-.LFB157
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI597-.LCFI596
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI600-.LCFI597
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE284:
.LSFDE286:
	.long	.LEFDE286-.LASFDE286
.LASFDE286:
	.long	.Lframe0
	.long	.LFB158
	.long	.LFE158-.LFB158
	.byte	0x4
	.long	.LCFI601-.LFB158
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI602-.LCFI601
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI605-.LCFI602
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE286:
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI152-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI153-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI164-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI165-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
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
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI190-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI191-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
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
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
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
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI226-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI226-.Ltext0
	.long	.LCFI227-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI227-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI235-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI235-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI236-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
	.long	.LCFI239-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI239-.Ltext0
	.long	.LCFI240-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI240-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI258-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI258-.Ltext0
	.long	.LCFI259-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI259-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI262-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI262-.Ltext0
	.long	.LCFI263-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI263-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI266-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI266-.Ltext0
	.long	.LCFI267-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI267-.Ltext0
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
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI279-.Ltext0
	.long	.LCFI280-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI280-.Ltext0
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
	.long	.LCFI299-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI299-.Ltext0
	.long	.LCFI300-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI300-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
	.long	.LCFI303-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI303-.Ltext0
	.long	.LCFI304-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI304-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI307-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI307-.Ltext0
	.long	.LCFI308-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI308-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI312-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI312-.Ltext0
	.long	.LCFI313-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI313-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI315-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI315-.Ltext0
	.long	.LCFI316-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI316-.Ltext0
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
	.long	.LCFI332-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI332-.Ltext0
	.long	.LCFI333-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI333-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI336-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI336-.Ltext0
	.long	.LCFI337-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI337-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
	.long	.LCFI342-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI342-.Ltext0
	.long	.LCFI343-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI343-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
	.long	.LCFI346-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI346-.Ltext0
	.long	.LCFI347-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI347-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
	.long	.LCFI350-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI350-.Ltext0
	.long	.LCFI351-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI351-.Ltext0
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI356-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI356-.Ltext0
	.long	.LCFI357-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI357-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB101-.Ltext0
	.long	.LCFI362-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI362-.Ltext0
	.long	.LCFI363-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI363-.Ltext0
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
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
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
	.long	.LCFI370-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI370-.Ltext0
	.long	.LCFI371-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI371-.Ltext0
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
	.long	.LCFI375-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI375-.Ltext0
	.long	.LCFI376-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI376-.Ltext0
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
	.long	.LCFI379-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI379-.Ltext0
	.long	.LCFI380-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI380-.Ltext0
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
	.long	.LCFI383-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI383-.Ltext0
	.long	.LCFI384-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI384-.Ltext0
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
	.long	.LCFI387-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI387-.Ltext0
	.long	.LCFI388-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI388-.Ltext0
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
	.long	.LCFI391-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI391-.Ltext0
	.long	.LCFI392-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI392-.Ltext0
	.long	.LFE108-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LFB109-.Ltext0
	.long	.LCFI395-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI395-.Ltext0
	.long	.LCFI396-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI396-.Ltext0
	.long	.LFE109-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LFB110-.Ltext0
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
	.long	.LFE110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LFB111-.Ltext0
	.long	.LCFI402-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI402-.Ltext0
	.long	.LCFI403-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI403-.Ltext0
	.long	.LFE111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LFB112-.Ltext0
	.long	.LCFI405-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI405-.Ltext0
	.long	.LCFI406-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI406-.Ltext0
	.long	.LFE112-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LFB113-.Ltext0
	.long	.LCFI409-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI409-.Ltext0
	.long	.LCFI410-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI410-.Ltext0
	.long	.LFE113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LFB114-.Ltext0
	.long	.LCFI413-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI413-.Ltext0
	.long	.LCFI414-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI414-.Ltext0
	.long	.LFE114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LFB115-.Ltext0
	.long	.LCFI417-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI417-.Ltext0
	.long	.LCFI418-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI418-.Ltext0
	.long	.LFE115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LFB116-.Ltext0
	.long	.LCFI419-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI419-.Ltext0
	.long	.LCFI420-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI420-.Ltext0
	.long	.LFE116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LFB117-.Ltext0
	.long	.LCFI424-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI424-.Ltext0
	.long	.LCFI425-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI425-.Ltext0
	.long	.LFE117-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LFB118-.Ltext0
	.long	.LCFI427-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI427-.Ltext0
	.long	.LCFI428-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI428-.Ltext0
	.long	.LFE118-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LFB119-.Ltext0
	.long	.LCFI431-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI431-.Ltext0
	.long	.LCFI432-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI432-.Ltext0
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
	.long	.LCFI440-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI440-.Ltext0
	.long	.LCFI441-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI441-.Ltext0
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
	.long	.LCFI458-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI458-.Ltext0
	.long	.LCFI459-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI459-.Ltext0
	.long	.LFE126-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LFB127-.Ltext0
	.long	.LCFI462-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI462-.Ltext0
	.long	.LCFI463-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI463-.Ltext0
	.long	.LFE127-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LFB128-.Ltext0
	.long	.LCFI467-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI467-.Ltext0
	.long	.LCFI468-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI468-.Ltext0
	.long	.LFE128-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LFB129-.Ltext0
	.long	.LCFI471-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI471-.Ltext0
	.long	.LCFI472-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI472-.Ltext0
	.long	.LFE129-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LFB130-.Ltext0
	.long	.LCFI475-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI475-.Ltext0
	.long	.LCFI476-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI476-.Ltext0
	.long	.LFE130-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LFB131-.Ltext0
	.long	.LCFI479-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI479-.Ltext0
	.long	.LCFI480-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI480-.Ltext0
	.long	.LFE131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LFB132-.Ltext0
	.long	.LCFI483-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI483-.Ltext0
	.long	.LCFI484-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI484-.Ltext0
	.long	.LFE132-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LFB133-.Ltext0
	.long	.LCFI487-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI487-.Ltext0
	.long	.LCFI488-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI488-.Ltext0
	.long	.LFE133-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LFB134-.Ltext0
	.long	.LCFI492-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI492-.Ltext0
	.long	.LCFI493-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI493-.Ltext0
	.long	.LFE134-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LFB135-.Ltext0
	.long	.LCFI498-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI498-.Ltext0
	.long	.LCFI499-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI499-.Ltext0
	.long	.LFE135-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LFB136-.Ltext0
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
	.long	.LFE136-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LFB137-.Ltext0
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
	.long	.LFE137-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LFB138-.Ltext0
	.long	.LCFI512-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI512-.Ltext0
	.long	.LCFI513-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI513-.Ltext0
	.long	.LFE138-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LFB139-.Ltext0
	.long	.LCFI517-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI517-.Ltext0
	.long	.LCFI518-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI518-.Ltext0
	.long	.LFE139-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LFB140-.Ltext0
	.long	.LCFI521-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI521-.Ltext0
	.long	.LCFI522-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI522-.Ltext0
	.long	.LFE140-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LFB141-.Ltext0
	.long	.LCFI525-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI525-.Ltext0
	.long	.LCFI526-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI526-.Ltext0
	.long	.LFE141-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST127:
	.long	.LFB142-.Ltext0
	.long	.LCFI529-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI529-.Ltext0
	.long	.LCFI530-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI530-.Ltext0
	.long	.LFE142-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST128:
	.long	.LFB143-.Ltext0
	.long	.LCFI533-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI533-.Ltext0
	.long	.LCFI534-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI534-.Ltext0
	.long	.LFE143-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST129:
	.long	.LFB144-.Ltext0
	.long	.LCFI536-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI536-.Ltext0
	.long	.LCFI537-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI537-.Ltext0
	.long	.LFE144-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST130:
	.long	.LFB145-.Ltext0
	.long	.LCFI540-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI540-.Ltext0
	.long	.LCFI541-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI541-.Ltext0
	.long	.LFE145-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST131:
	.long	.LFB146-.Ltext0
	.long	.LCFI546-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI546-.Ltext0
	.long	.LCFI547-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI547-.Ltext0
	.long	.LFE146-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST132:
	.long	.LFB147-.Ltext0
	.long	.LCFI550-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI550-.Ltext0
	.long	.LCFI551-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI551-.Ltext0
	.long	.LFE147-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST133:
	.long	.LFB148-.Ltext0
	.long	.LCFI555-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI555-.Ltext0
	.long	.LCFI556-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI556-.Ltext0
	.long	.LFE148-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST134:
	.long	.LFB149-.Ltext0
	.long	.LCFI560-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI560-.Ltext0
	.long	.LCFI561-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI561-.Ltext0
	.long	.LFE149-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST135:
	.long	.LFB150-.Ltext0
	.long	.LCFI564-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI564-.Ltext0
	.long	.LCFI565-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI565-.Ltext0
	.long	.LFE150-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST136:
	.long	.LFB151-.Ltext0
	.long	.LCFI569-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI569-.Ltext0
	.long	.LCFI570-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI570-.Ltext0
	.long	.LFE151-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST137:
	.long	.LFB152-.Ltext0
	.long	.LCFI575-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI575-.Ltext0
	.long	.LCFI576-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI576-.Ltext0
	.long	.LFE152-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST138:
	.long	.LFB153-.Ltext0
	.long	.LCFI579-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI579-.Ltext0
	.long	.LCFI580-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI580-.Ltext0
	.long	.LFE153-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST139:
	.long	.LFB154-.Ltext0
	.long	.LCFI585-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI585-.Ltext0
	.long	.LCFI586-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI586-.Ltext0
	.long	.LFE154-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST140:
	.long	.LFB155-.Ltext0
	.long	.LCFI588-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI588-.Ltext0
	.long	.LCFI589-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI589-.Ltext0
	.long	.LFE155-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST141:
	.long	.LFB156-.Ltext0
	.long	.LCFI592-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI592-.Ltext0
	.long	.LCFI593-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI593-.Ltext0
	.long	.LFE156-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST142:
	.long	.LFB157-.Ltext0
	.long	.LCFI596-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI596-.Ltext0
	.long	.LCFI597-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI597-.Ltext0
	.long	.LFE157-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST143:
	.long	.LFB158-.Ltext0
	.long	.LCFI601-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI601-.Ltext0
	.long	.LCFI602-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI602-.Ltext0
	.long	.LFE158-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xdee5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/class.c"
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
	.long	0x72d6
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
	.long	0x81e
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
	.long	0x7cfd
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
	.long	0x7d0d
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
	.long	0x3123
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x3441
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3489
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x35ac
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x34ea
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x3557
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x88d
	.long	0x3632
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x88e
	.long	0x46a7
	.uleb128 0x8
	.long	.LASF3
	.byte	0x3
	.value	0x88f
	.long	0x3897
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x3669
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x36b0
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x3701
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x374d
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x50a4
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
	.byte	0x9
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0x9
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
	.byte	0x9
	.value	0xad5
	.long	0x2e3
	.uleb128 0x2
	.string	"size_t"
	.byte	0xd
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
	.byte	0x12
	.byte	0x3b
	.long	0x451
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x12
	.byte	0x90
	.long	0x49b
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x12
	.byte	0x91
	.long	0x47c
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d4
	.uleb128 0x2
	.string	"FILE"
	.byte	0x10
	.byte	0x2e
	.long	0x4cc
	.uleb128 0x13
	.long	0x747
	.long	.LASF5
	.byte	0x94
	.byte	0x10
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x11
	.value	0x10c
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x11
	.value	0x111
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x11
	.value	0x112
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x11
	.value	0x113
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x11
	.value	0x114
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x11
	.value	0x115
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x11
	.value	0x116
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x11
	.value	0x117
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x11
	.value	0x118
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x11
	.value	0x11a
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x11
	.value	0x11b
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x11
	.value	0x11c
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x11
	.value	0x11e
	.long	0x7a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x11
	.value	0x120
	.long	0x7af
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x11
	.value	0x122
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x11
	.value	0x126
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x11
	.value	0x128
	.long	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x11
	.value	0x12c
	.long	0x40a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x11
	.value	0x12d
	.long	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x11
	.value	0x12e
	.long	0x7b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x11
	.value	0x132
	.long	0x7c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x11
	.value	0x13b
	.long	0x4a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x11
	.value	0x144
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x11
	.value	0x145
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x11
	.value	0x146
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x11
	.value	0x147
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x11
	.value	0x148
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x11
	.value	0x14a
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x11
	.value	0x14c
	.long	0x7cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74d
	.uleb128 0xa
	.long	0x3f9
	.uleb128 0x3
	.byte	0x4
	.long	0x3f9
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x11
	.byte	0xb0
	.uleb128 0x4
	.long	0x7a9
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x11
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x11
	.byte	0xb7
	.long	0x7a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x11
	.byte	0xb8
	.long	0x7af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x11
	.byte	0xbc
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x766
	.uleb128 0x3
	.byte	0x4
	.long	0x4cc
	.uleb128 0xf
	.long	0x7c5
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x758
	.uleb128 0xf
	.long	0x7db
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x7eb
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x17
	.byte	0x0
	.uleb128 0xf
	.long	0x7fb
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x80b
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x2dc
	.uleb128 0x3
	.byte	0x4
	.long	0x2dc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x816
	.uleb128 0x16
	.long	0xa67
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
	.long	0xa99
	.string	"location_s"
	.byte	0x8
	.byte	0x7
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x7
	.byte	0x1e
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x7
	.byte	0x21
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x7
	.byte	0x23
	.long	0xa67
	.uleb128 0x16
	.long	0x13cd
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
	.long	0x3b5
	.uleb128 0x4
	.long	0x141a
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
	.uleb128 0x18
	.long	.LASF6
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
	.long	0x1424
	.uleb128 0x19
	.string	"st"
	.byte	0x1
	.uleb128 0x1a
	.long	0x1479
	.long	.LASF7
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
	.long	0x3123
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
	.long	0x3405
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
	.uleb128 0x18
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
	.long	0xaab
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
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x3
	.byte	0xa8
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x3
	.byte	0xa9
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x3
	.byte	0xaa
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x3
	.byte	0xab
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x3
	.byte	0xac
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x3
	.byte	0xad
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF14
	.byte	0x3
	.byte	0xae
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF15
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
	.long	0x3441
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x451
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3489
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x3123
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
	.long	0x3405
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x34d7
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x3123
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
	.long	0x34e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x34d7
	.uleb128 0xc
	.long	0x3551
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x3123
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
	.long	0x3551
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x141a
	.uleb128 0xc
	.long	0x35ac
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x3123
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
	.long	0x35f4
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x3123
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
	.long	0x3632
	.long	.LASF16
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x6
	.byte	0x1c
	.long	0x747
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x1d
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x6
	.byte	0x1e
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3669
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x3123
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x35f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x36b0
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x3123
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
	.long	0x36f1
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x3123
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
	.long	0x36f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x3701
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x374d
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x3123
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
	.long	0x36f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x383d
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x3123
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x3
	.value	0x40e
	.long	0x3b5
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
	.uleb128 0x1c
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
	.uleb128 0x1f
	.long	0x3884
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
	.long	0x4ba
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x3891
	.byte	0x0
	.uleb128 0x19
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3884
	.uleb128 0xc
	.long	0x3bdc
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x3123
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
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x555
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
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
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
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
	.uleb128 0x1d
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x81e
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x3
	.value	0x562
	.long	0x3b5
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x3
	.value	0x564
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x3
	.value	0x565
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x3
	.value	0x566
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x3
	.value	0x567
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x3
	.value	0x568
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x3
	.value	0x569
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x3
	.value	0x56a
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x3
	.value	0x56b
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF23
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
	.long	0x383d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
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
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x3
	.value	0x57b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF26
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
	.long	0x451
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x3
	.value	0x57f
	.long	0x3bfd
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
	.long	0x13de
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
	.long	0x3bfd
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x4e0
	.long	0x6cff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3bdc
	.uleb128 0xc
	.long	0x3c46
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x3
	.value	0x818
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1f
	.long	0x3c7b
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1479
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x451
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3c03
	.byte	0x0
	.uleb128 0x1f
	.long	0x3cba
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x4669
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
	.uleb128 0x20
	.long	0x4669
	.string	"function"
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x6
	.string	"eh"
	.byte	0x8
	.byte	0xb5
	.long	0x5785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x8
	.byte	0xb6
	.long	0x5799
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x8
	.byte	0xb7
	.long	0x579f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x8
	.byte	0xb8
	.long	0x57a5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x8
	.byte	0xb9
	.long	0x57bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF24
	.byte	0x8
	.byte	0xbe
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.long	.LASF2
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
	.long	0x4669
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x8
	.byte	0xc9
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x8
	.byte	0xce
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x8
	.byte	0xd3
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x8
	.byte	0xd7
	.long	0x2dc
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
	.long	0x3d3
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
	.uleb128 0x18
	.long	.LASF28
	.byte	0x8
	.byte	0xec
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x8
	.byte	0xf0
	.long	0x57d8
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x8
	.byte	0xf3
	.long	0x2dc
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
	.long	0x451
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
	.long	0x3b5
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x8
	.value	0x157
	.long	0x5629
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x8
	.value	0x15a
	.long	0x57ea
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x8
	.value	0x15d
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x8
	.value	0x160
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x8
	.value	0x166
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x8
	.value	0x16a
	.long	0x5485
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x8
	.value	0x16d
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x8
	.value	0x16e
	.long	0x2dc
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
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x8
	.value	0x178
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x8
	.value	0x17d
	.long	0x5803
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x8
	.value	0x17f
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x8
	.value	0x181
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x8
	.value	0x184
	.long	0x5a3e
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
	.uleb128 0x1d
	.string	"returns_struct"
	.byte	0x8
	.value	0x190
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x570f
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x8
	.value	0x1fe
	.long	0x2dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3cba
	.uleb128 0x21
	.long	0x46a7
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x3551
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x13cd
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3b5
	.byte	0x0
	.uleb128 0xc
	.long	0x4de9
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x3123
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0xa99
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
	.uleb128 0x1d
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x81e
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x3
	.value	0x7d3
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF7
	.byte	0x3
	.value	0x7ed
	.long	0x1429
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x3
	.value	0x7f0
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x3
	.value	0x7f2
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x3
	.value	0x7fa
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF9
	.byte	0x3
	.value	0x7fb
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF10
	.byte	0x3
	.value	0x7fc
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x3
	.value	0x7fd
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x3
	.value	0x7fe
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF13
	.byte	0x3
	.value	0x7ff
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x3
	.value	0x800
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x3
	.value	0x801
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3c46
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x81d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x3
	.value	0x81e
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.long	.LASF26
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
	.uleb128 0x1c
	.long	.LASF31
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
	.long	0x451
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
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
	.uleb128 0x1c
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
	.long	0x3c7b
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
	.long	0x451
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x3
	.value	0x848
	.long	0x4e20
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1d
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
	.uleb128 0x1d
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
	.long	0x466f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x13de
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
	.long	0x4e20
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xd
	.string	"decl_flags"
	.byte	0xa
	.value	0x73a
	.long	0x6dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"u"
	.byte	0xa
	.value	0x763
	.long	0x71be
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4de9
	.uleb128 0x16
	.long	0x50a4
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
	.long	0x50f3
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x3123
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4e26
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x22
	.long	0x51c3
	.long	.LASF32
	.byte	0x4
	.byte	0x3
	.value	0x94c
	.uleb128 0x17
	.string	"itk_char"
	.sleb128 0
	.uleb128 0x17
	.string	"itk_signed_char"
	.sleb128 1
	.uleb128 0x17
	.string	"itk_unsigned_char"
	.sleb128 2
	.uleb128 0x17
	.string	"itk_short"
	.sleb128 3
	.uleb128 0x17
	.string	"itk_unsigned_short"
	.sleb128 4
	.uleb128 0x17
	.string	"itk_int"
	.sleb128 5
	.uleb128 0x17
	.string	"itk_unsigned_int"
	.sleb128 6
	.uleb128 0x17
	.string	"itk_long"
	.sleb128 7
	.uleb128 0x17
	.string	"itk_unsigned_long"
	.sleb128 8
	.uleb128 0x17
	.string	"itk_long_long"
	.sleb128 9
	.uleb128 0x17
	.string	"itk_unsigned_long_long"
	.sleb128 10
	.uleb128 0x17
	.string	"itk_none"
	.sleb128 11
	.byte	0x0
	.uleb128 0x23
	.long	.LASF32
	.byte	0x3
	.value	0x95b
	.long	0x50f3
	.uleb128 0xc
	.long	0x528a
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x3
	.value	0xa20
	.long	0x528a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x80b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x80b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x528f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x528f
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x528f
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x52cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2c9
	.uleb128 0xa
	.long	0x5294
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x24
	.long	0x52c1
	.byte	0x1
	.long	0x1e6
	.uleb128 0x25
	.long	0x52c1
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x2dc
	.uleb128 0x25
	.long	0x52c7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e6
	.uleb128 0x3
	.byte	0x4
	.long	0x5294
	.uleb128 0xa
	.long	0x52d2
	.uleb128 0x3
	.byte	0x4
	.long	0x529d
	.uleb128 0xc
	.long	0x53fe
	.string	"record_layout_info_s"
	.byte	0x2c
	.byte	0x3
	.value	0xaaf
	.uleb128 0xd
	.string	"t"
	.byte	0x3
	.value	0xab1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.value	0xab4
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"offset_align"
	.byte	0x3
	.value	0xab6
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"bitpos"
	.byte	0x3
	.value	0xab8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"record_align"
	.byte	0x3
	.value	0xaba
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"unpacked_align"
	.byte	0x3
	.value	0xabc
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"unpadded_align"
	.byte	0x3
	.value	0xabf
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"prev_field"
	.byte	0x3
	.value	0xac1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"pending_statics"
	.byte	0x3
	.value	0xac4
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"remaining_in_alignment"
	.byte	0x3
	.value	0xac6
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"packed_maybe_necessary"
	.byte	0x3
	.value	0xac7
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x11
	.string	"record_layout_info"
	.byte	0x3
	.value	0xac8
	.long	0x5419
	.uleb128 0x3
	.byte	0x4
	.long	0x52d8
	.uleb128 0x4
	.long	0x5485
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
	.long	0x81e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x8
	.byte	0x1a
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0x8
	.byte	0x1b
	.long	0x5485
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x541f
	.uleb128 0x13
	.long	0x54d4
	.long	.LASF33
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
	.uleb128 0x18
	.long	.LASF34
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
	.long	0x54d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x548b
	.uleb128 0x4
	.long	0x5629
	.string	"emit_status"
	.byte	0x34
	.byte	0x8
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x8
	.byte	0x3a
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x8
	.byte	0x3d
	.long	0x2dc
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
	.uleb128 0x18
	.long	.LASF34
	.byte	0x8
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF33
	.byte	0x8
	.byte	0x50
	.long	0x54d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x8
	.byte	0x54
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x8
	.byte	0x58
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x8
	.byte	0x59
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x8
	.byte	0x5f
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x8
	.byte	0x65
	.long	0x752
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x8
	.byte	0x69
	.long	0x52c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x8
	.byte	0x70
	.long	0x5629
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d
	.uleb128 0x4
	.long	0x570f
	.string	"expr_status"
	.byte	0x1c
	.byte	0x8
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x8
	.byte	0x80
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x8
	.byte	0x91
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x8
	.byte	0x97
	.long	0x2dc
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
	.uleb128 0x22
	.long	0x5779
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
	.uleb128 0x19
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5779
	.uleb128 0x19
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x578b
	.uleb128 0x3
	.byte	0x4
	.long	0x562f
	.uleb128 0x3
	.byte	0x4
	.long	0x54da
	.uleb128 0x19
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57ab
	.uleb128 0x19
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57c1
	.uleb128 0x19
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57de
	.uleb128 0x19
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x57f0
	.uleb128 0xc
	.long	0x5a3e
	.string	"language_function"
	.byte	0x64
	.byte	0x8
	.value	0x184
	.uleb128 0x1c
	.long	.LASF35
	.byte	0xa
	.value	0x370
	.long	0x6229
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
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"returns_null"
	.byte	0xa
	.value	0x37b
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"returns_abnormally"
	.byte	0xa
	.value	0x37c
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"in_function_try_handler"
	.byte	0xa
	.value	0x37d
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"in_base_initializer"
	.byte	0xa
	.value	0x37e
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"x_expanding_p"
	.byte	0xa
	.value	0x37f
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1d
	.string	"can_throw"
	.byte	0xa
	.value	0x382
	.long	0x5294
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
	.long	0x658e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"x_named_labels"
	.byte	0xa
	.value	0x385
	.long	0x65a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
	.long	.LASF36
	.byte	0xa
	.value	0x386
	.long	0x62cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"x_local_names"
	.byte	0xa
	.value	0x387
	.long	0x6185
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.long	.LASF28
	.byte	0xa
	.value	0x389
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"unparsed_inlines"
	.byte	0xa
	.value	0x38a
	.long	0x65bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5809
	.uleb128 0x2
	.string	"splay_tree_key"
	.byte	0xf
	.byte	0x2f
	.long	0x420
	.uleb128 0x2
	.string	"splay_tree_value"
	.byte	0xf
	.byte	0x30
	.long	0x420
	.uleb128 0x2
	.string	"splay_tree_node"
	.byte	0xf
	.byte	0x33
	.long	0x5a89
	.uleb128 0x3
	.byte	0x4
	.long	0x5a8f
	.uleb128 0x4
	.long	0x5ae7
	.string	"splay_tree_node_s"
	.byte	0x10
	.byte	0xf
	.byte	0x33
	.uleb128 0x6
	.string	"key"
	.byte	0xf
	.byte	0x54
	.long	0x5a44
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"value"
	.byte	0xf
	.byte	0x57
	.long	0x5a5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"left"
	.byte	0xf
	.byte	0x5a
	.long	0x5a72
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"right"
	.byte	0xf
	.byte	0x5b
	.long	0x5a72
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_compare_fn"
	.byte	0xf
	.byte	0x37
	.long	0x5b04
	.uleb128 0x3
	.byte	0x4
	.long	0x5b0a
	.uleb128 0x24
	.long	0x5b1f
	.byte	0x1
	.long	0x2dc
	.uleb128 0x25
	.long	0x5a44
	.uleb128 0x25
	.long	0x5a44
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_key_fn"
	.byte	0xf
	.byte	0x3b
	.long	0x5b3f
	.uleb128 0x3
	.byte	0x4
	.long	0x5b45
	.uleb128 0x26
	.long	0x5b51
	.byte	0x1
	.uleb128 0x25
	.long	0x5a44
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_delete_value_fn"
	.byte	0xf
	.byte	0x3f
	.long	0x5b73
	.uleb128 0x3
	.byte	0x4
	.long	0x5b79
	.uleb128 0x26
	.long	0x5b85
	.byte	0x1
	.uleb128 0x25
	.long	0x5a5a
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_allocate_fn"
	.byte	0xf
	.byte	0x48
	.long	0x5ba3
	.uleb128 0x3
	.byte	0x4
	.long	0x5ba9
	.uleb128 0x24
	.long	0x5bbe
	.byte	0x1
	.long	0x4b8
	.uleb128 0x25
	.long	0x2dc
	.uleb128 0x25
	.long	0x4b8
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree_deallocate_fn"
	.byte	0xf
	.byte	0x4e
	.long	0x5bde
	.uleb128 0x3
	.byte	0x4
	.long	0x5be4
	.uleb128 0x26
	.long	0x5bf5
	.byte	0x1
	.uleb128 0x25
	.long	0x4b8
	.uleb128 0x25
	.long	0x4b8
	.byte	0x0
	.uleb128 0x4
	.long	0x5c95
	.string	"splay_tree_s"
	.byte	0x1c
	.byte	0xf
	.byte	0x60
	.uleb128 0x6
	.string	"root"
	.byte	0xf
	.byte	0x62
	.long	0x5a72
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"comp"
	.byte	0xf
	.byte	0x65
	.long	0x5ae7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"delete_key"
	.byte	0xf
	.byte	0x68
	.long	0x5b1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"delete_value"
	.byte	0xf
	.byte	0x6b
	.long	0x5b51
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"allocate"
	.byte	0xf
	.byte	0x6e
	.long	0x5b85
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"deallocate"
	.byte	0xf
	.byte	0x6f
	.long	0x5bbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"allocate_data"
	.byte	0xf
	.byte	0x70
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.string	"splay_tree"
	.byte	0xf
	.byte	0x72
	.long	0x5ca7
	.uleb128 0x3
	.byte	0x4
	.long	0x5bf5
	.uleb128 0x4
	.long	0x5ce3
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
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x16
	.long	0x5e7e
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
	.long	0x5f7a
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x27
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x7b5
	.uleb128 0x27
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x5f7a
	.uleb128 0x27
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x5f8a
	.uleb128 0x27
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x5f9a
	.uleb128 0x27
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x5faa
	.uleb128 0x27
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x5fba
	.uleb128 0x27
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x5fca
	.uleb128 0x27
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x5fda
	.uleb128 0x27
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x5fea
	.uleb128 0x27
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x5ffa
	.uleb128 0x27
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x600a
	.uleb128 0x27
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x601a
	.uleb128 0x27
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x602a
	.uleb128 0x27
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x603a
	.uleb128 0x27
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x604a
	.uleb128 0x27
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x605a
	.uleb128 0x27
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x6082
	.uleb128 0x27
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x60a7
	.uleb128 0x27
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x60b7
	.uleb128 0x27
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x60df
	.byte	0x0
	.uleb128 0xf
	.long	0x5f8a
	.long	0x3f9
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f9a
	.long	0x444
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5faa
	.long	0x40a
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5fba
	.long	0x2dc
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5fca
	.long	0x3b5
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5fda
	.long	0x49b
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5fea
	.long	0x420
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ffa
	.long	0x451
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x600a
	.long	0x462
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x601a
	.long	0x4b8
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x602a
	.long	0x4ba
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x603a
	.long	0xa8
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x604a
	.long	0x1ab
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x605a
	.long	0x1f2
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x606a
	.long	0x607c
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x606a
	.uleb128 0xf
	.long	0x6092
	.long	0x60a1
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6092
	.uleb128 0xf
	.long	0x60b7
	.long	0x5cad
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x60c7
	.long	0x60d9
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60c7
	.uleb128 0xf
	.long	0x60ef
	.long	0x60fa
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x60ef
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x5e7e
	.uleb128 0x4
	.long	0x6185
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF3
	.byte	0xc
	.byte	0x85
	.long	0x5ce3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF24
	.byte	0xc
	.byte	0x86
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.long	.LASF37
	.byte	0xc
	.byte	0x87
	.long	0x6100
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x6198
	.uleb128 0x3
	.byte	0x4
	.long	0x6113
	.uleb128 0xc
	.long	0x6229
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
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"stmts_are_full_exprs_p"
	.byte	0xb
	.value	0x117
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x6274
	.string	"c_language_function"
	.byte	0x14
	.byte	0xb
	.value	0x11f
	.uleb128 0x1c
	.long	.LASF38
	.byte	0xb
	.value	0x122
	.long	0x619e
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
	.long	0x62a8
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xb
	.value	0x169
	.uleb128 0x1d
	.string	"declared_inline"
	.byte	0xb
	.value	0x16a
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LASF39
	.byte	0xa
	.byte	0xe4
	.long	0x62b3
	.uleb128 0x29
	.long	.LASF39
	.byte	0x1
	.uleb128 0x19
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x62b9
	.uleb128 0x11
	.string	"binding_table"
	.byte	0xa
	.value	0x103
	.long	0x62e8
	.uleb128 0x3
	.byte	0x4
	.long	0x62ee
	.uleb128 0x19
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xc
	.long	0x656b
	.string	"saved_scope"
	.byte	0x6c
	.byte	0xa
	.value	0x316
	.uleb128 0xd
	.string	"old_bindings"
	.byte	0xa
	.value	0x317
	.long	0x656b
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
	.uleb128 0x1c
	.long	.LASF40
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
	.long	0x6185
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
	.long	0x451
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"x_processing_specialization"
	.byte	0xa
	.value	0x328
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"x_processing_explicit_instantiation"
	.byte	0xa
	.value	0x329
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"need_pop_function_context"
	.byte	0xa
	.value	0x32a
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF38
	.byte	0xa
	.value	0x32c
	.long	0x619e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"class_bindings"
	.byte	0xa
	.value	0x32e
	.long	0x62cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1c
	.long	.LASF36
	.byte	0xa
	.value	0x32f
	.long	0x62cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"prev"
	.byte	0xa
	.value	0x331
	.long	0x6571
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62a8
	.uleb128 0x3
	.byte	0x4
	.long	0x6300
	.uleb128 0x19
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6577
	.uleb128 0x19
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6594
	.uleb128 0x19
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x65ad
	.uleb128 0x2a
	.long	0x65fd
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
	.long	0x671c
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xa
	.value	0x464
	.uleb128 0x1d
	.string	"is_lang_type_class"
	.byte	0xa
	.value	0x465
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x6cc5
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xa
	.value	0x47e
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x47f
	.long	0x65fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF23
	.byte	0xa
	.value	0x481
	.long	0x3f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1d
	.string	"has_mutable"
	.byte	0xa
	.value	0x483
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF22
	.byte	0xa
	.value	0x487
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF41
	.byte	0xa
	.value	0x490
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF42
	.byte	0xa
	.value	0x491
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF43
	.byte	0xa
	.value	0x49a
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.long	.LASF44
	.byte	0xa
	.value	0x4ab
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF45
	.byte	0xa
	.value	0x4bd
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF46
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
	.uleb128 0x1c
	.long	.LASF47
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
	.long	0x62d2
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
	.uleb128 0x1c
	.long	.LASF48
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
	.uleb128 0x1c
	.long	.LASF49
	.byte	0xa
	.value	0x4ca
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1c
	.long	.LASF50
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
	.long	0x6cff
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xa
	.value	0x4d4
	.uleb128 0xd
	.string	"h"
	.byte	0xa
	.value	0x4d5
	.long	0x65fd
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
	.uleb128 0x1f
	.long	0x6d38
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xa
	.value	0x4dc
	.uleb128 0x9
	.string	"h"
	.byte	0xa
	.value	0x4dd
	.long	0x65fd
	.uleb128 0x9
	.string	"c"
	.byte	0xa
	.value	0x4de
	.long	0x671c
	.uleb128 0x9
	.string	"ptrmem"
	.byte	0xa
	.value	0x4df
	.long	0x6cc5
	.byte	0x0
	.uleb128 0x1f
	.long	0x6d68
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xa
	.value	0x722
	.uleb128 0x8
	.long	.LASF49
	.byte	0xa
	.value	0x725
	.long	0x1e6
	.uleb128 0x9
	.string	"level"
	.byte	0xa
	.value	0x728
	.long	0x62cc
	.byte	0x0
	.uleb128 0x1f
	.long	0x6dad
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xa
	.value	0x72b
	.uleb128 0x8
	.long	.LASF51
	.byte	0xa
	.value	0x72d
	.long	0x1e6
	.uleb128 0x9
	.string	"discriminator"
	.byte	0xa
	.value	0x730
	.long	0x2dc
	.uleb128 0x8
	.long	.LASF52
	.byte	0xa
	.value	0x734
	.long	0x1e6
	.byte	0x0
	.uleb128 0xc
	.long	0x707c
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xa
	.value	0x703
	.uleb128 0x1c
	.long	.LASF35
	.byte	0xa
	.value	0x704
	.long	0x6274
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF29
	.byte	0xa
	.value	0x706
	.long	0x65c3
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF43
	.byte	0xa
	.value	0x712
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.long	.LASF53
	.byte	0xa
	.value	0x71c
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x6d38
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"u2"
	.byte	0xa
	.value	0x735
	.long	0x6d68
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1f
	.long	0x70e5
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
	.long	0x65bd
	.uleb128 0x9
	.string	"saved_language_function"
	.byte	0xa
	.value	0x760
	.long	0x5a3e
	.byte	0x0
	.uleb128 0xc
	.long	0x71be
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xa
	.value	0x73f
	.uleb128 0x1c
	.long	.LASF50
	.byte	0xa
	.value	0x740
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF26
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
	.uleb128 0x1c
	.long	.LASF54
	.byte	0xa
	.value	0x74c
	.long	0x451
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
	.long	0xaab
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.string	"u3sel"
	.byte	0xa
	.value	0x758
	.long	0x3b5
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
	.long	0x3b5
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
	.long	0x707c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1f
	.long	0x71df
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xa
	.value	0x73d
	.uleb128 0x9
	.string	"f"
	.byte	0xa
	.value	0x762
	.long	0x70e5
	.byte	0x0
	.uleb128 0x22
	.long	0x7269
	.long	.LASF55
	.byte	0x4
	.byte	0xa
	.value	0xc71
	.uleb128 0x17
	.string	"tf_none"
	.sleb128 0
	.uleb128 0x17
	.string	"tf_error"
	.sleb128 1
	.uleb128 0x17
	.string	"tf_warning"
	.sleb128 2
	.uleb128 0x17
	.string	"tf_no_attributes"
	.sleb128 4
	.uleb128 0x17
	.string	"tf_ignore_bad_quals"
	.sleb128 8
	.uleb128 0x17
	.string	"tf_keep_type_decl"
	.sleb128 16
	.uleb128 0x17
	.string	"tf_ptrmem_ok"
	.sleb128 32
	.uleb128 0x17
	.string	"tf_parsing"
	.sleb128 64
	.byte	0x0
	.uleb128 0x23
	.long	.LASF55
	.byte	0xa
	.value	0xc7e
	.long	0x71df
	.uleb128 0x2b
	.long	0x72ca
	.long	.LASF56
	.byte	0x10
	.byte	0xa
	.value	0xe26
	.uleb128 0x1c
	.long	.LASF1
	.byte	0xa
	.value	0xe28
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF24
	.byte	0xa
	.value	0xe2a
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"mangled_name"
	.byte	0xa
	.value	0xe2c
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"arity"
	.byte	0xa
	.value	0xe2e
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x23
	.long	.LASF56
	.byte	0xa
	.value	0xe2f
	.long	0x7275
	.uleb128 0x16
	.long	0x7aa5
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
	.uleb128 0x2c
	.long	0x7b7f
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
	.long	0x7aa5
	.uleb128 0x13
	.long	0x7bf1
	.long	.LASF57
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x451
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
	.uleb128 0x18
	.long	.LASF6
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
	.uleb128 0x18
	.long	.LASF23
	.byte	0x4
	.byte	0x67
	.long	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x28
	.long	.LASF57
	.byte	0x4
	.byte	0x68
	.long	0x7b9a
	.uleb128 0x7
	.long	0x7cce
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x27
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x451
	.uleb128 0x27
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2dc
	.uleb128 0x27
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3b5
	.uleb128 0x27
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2c9
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
	.long	0x81e
	.uleb128 0x27
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x7b7f
	.uleb128 0x27
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x7ce2
	.uleb128 0x27
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x607c
	.uleb128 0x27
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e6
	.uleb128 0x27
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x60d9
	.uleb128 0x27
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x7ce8
	.byte	0x0
	.uleb128 0x19
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7cce
	.uleb128 0x3
	.byte	0x4
	.long	0x7bf1
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x7bfc
	.uleb128 0xf
	.long	0x7d0d
	.long	0x7cee
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x7d1d
	.long	0x9d
	.uleb128 0x10
	.long	0x3cc
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x7d65
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x14
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x14
	.byte	0x3b
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x14
	.byte	0x3c
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x14
	.byte	0x3d
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x14
	.byte	0x3e
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x7f9b
	.string	"asm_out"
	.byte	0x70
	.byte	0x14
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x14
	.byte	0x35
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x14
	.byte	0x35
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x14
	.byte	0x38
	.long	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x14
	.byte	0x3f
	.long	0x7d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x14
	.byte	0x3f
	.long	0x7d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x14
	.byte	0x46
	.long	0x7fb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x14
	.byte	0x49
	.long	0x7fd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x14
	.byte	0x4d
	.long	0x7fe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x14
	.byte	0x50
	.long	0x8000
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x14
	.byte	0x53
	.long	0x8012
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x14
	.byte	0x56
	.long	0x8012
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x14
	.byte	0x59
	.long	0x8000
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x14
	.byte	0x5d
	.long	0x8029
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x14
	.byte	0x60
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x14
	.byte	0x63
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x14
	.byte	0x6a
	.long	0x8045
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x14
	.byte	0x6e
	.long	0x8061
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x14
	.byte	0x73
	.long	0x7fe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x14
	.byte	0x76
	.long	0x8078
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x14
	.byte	0x79
	.long	0x8078
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x14
	.byte	0x80
	.long	0x809e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x14
	.byte	0x8b
	.long	0x80c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x24
	.long	0x7fb5
	.byte	0x1
	.long	0x5294
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x3b5
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f9b
	.uleb128 0x26
	.long	0x7fcc
	.byte	0x1
	.uleb128 0x25
	.long	0x7fcc
	.uleb128 0x25
	.long	0x2c9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fbb
	.uleb128 0x26
	.long	0x7fe9
	.byte	0x1
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fd8
	.uleb128 0x26
	.long	0x8000
	.byte	0x1
	.uleb128 0x25
	.long	0x7fcc
	.uleb128 0x25
	.long	0x451
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fef
	.uleb128 0x26
	.long	0x8012
	.byte	0x1
	.uleb128 0x25
	.long	0x7fcc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8006
	.uleb128 0x26
	.long	0x8029
	.byte	0x1
	.uleb128 0x25
	.long	0x2c9
	.uleb128 0x25
	.long	0x3b5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8018
	.uleb128 0x26
	.long	0x8045
	.byte	0x1
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x2dc
	.uleb128 0x25
	.long	0x462
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x802f
	.uleb128 0x26
	.long	0x8061
	.byte	0x1
	.uleb128 0x25
	.long	0x81e
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x462
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x804b
	.uleb128 0x26
	.long	0x8078
	.byte	0x1
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8067
	.uleb128 0x26
	.long	0x809e
	.byte	0x1
	.uleb128 0x25
	.long	0x7fcc
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x451
	.uleb128 0x25
	.long	0x451
	.uleb128 0x25
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x807e
	.uleb128 0x24
	.long	0x80c3
	.byte	0x1
	.long	0x5294
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x451
	.uleb128 0x25
	.long	0x451
	.uleb128 0x25
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80a4
	.uleb128 0x4
	.long	0x8284
	.string	"sched"
	.byte	0x40
	.byte	0x14
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x14
	.byte	0x97
	.long	0x82a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x14
	.byte	0x9b
	.long	0x82be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x14
	.byte	0xa0
	.long	0x82ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x14
	.byte	0xa4
	.long	0x82ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x14
	.byte	0xa7
	.long	0x830b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x14
	.byte	0xaa
	.long	0x8322
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x14
	.byte	0xae
	.long	0x834c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x14
	.byte	0xaf
	.long	0x834c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x14
	.byte	0xb4
	.long	0x82ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x14
	.byte	0xc2
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x14
	.byte	0xc3
	.long	0x8358
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x14
	.byte	0xc4
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x14
	.byte	0xc5
	.long	0x8358
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x14
	.byte	0xcd
	.long	0x82ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x14
	.byte	0xd8
	.long	0x818
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x14
	.byte	0xd9
	.long	0x836e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x24
	.long	0x82a3
	.byte	0x1
	.long	0x2dc
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8284
	.uleb128 0x24
	.long	0x82be
	.byte	0x1
	.long	0x2dc
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82a9
	.uleb128 0x2d
	.byte	0x1
	.long	0x2dc
	.uleb128 0x3
	.byte	0x4
	.long	0x82c4
	.uleb128 0x24
	.long	0x82ef
	.byte	0x1
	.long	0x2dc
	.uleb128 0x25
	.long	0x7fcc
	.uleb128 0x25
	.long	0x2dc
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82d0
	.uleb128 0x26
	.long	0x830b
	.byte	0x1
	.uleb128 0x25
	.long	0x7fcc
	.uleb128 0x25
	.long	0x2dc
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82f5
	.uleb128 0x26
	.long	0x8322
	.byte	0x1
	.uleb128 0x25
	.long	0x7fcc
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8311
	.uleb128 0x24
	.long	0x834c
	.byte	0x1
	.long	0x2dc
	.uleb128 0x25
	.long	0x7fcc
	.uleb128 0x25
	.long	0x2dc
	.uleb128 0x25
	.long	0x5629
	.uleb128 0x25
	.long	0x810
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8328
	.uleb128 0x2d
	.byte	0x1
	.long	0x9d
	.uleb128 0x3
	.byte	0x4
	.long	0x8352
	.uleb128 0x24
	.long	0x836e
	.byte	0x1
	.long	0x9d
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x835e
	.uleb128 0x4
	.long	0x865d
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x14
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x14
	.byte	0x8f
	.long	0x7d65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x14
	.byte	0xda
	.long	0x80c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x14
	.byte	0xdd
	.long	0x8672
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x14
	.byte	0xe0
	.long	0x8672
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x14
	.byte	0xe4
	.long	0x8678
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x14
	.byte	0xe9
	.long	0x8698
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x14
	.byte	0xec
	.long	0x86aa
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x14
	.byte	0xef
	.long	0x86c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x14
	.byte	0xf3
	.long	0x86d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x14
	.byte	0xf7
	.long	0x86d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x14
	.byte	0xfa
	.long	0x818
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x14
	.byte	0xfd
	.long	0x8701
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x14
	.value	0x103
	.long	0x8721
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x14
	.value	0x107
	.long	0x872d
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x14
	.value	0x10a
	.long	0x8743
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x14
	.value	0x10d
	.long	0x86d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x14
	.value	0x111
	.long	0x86d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x14
	.value	0x115
	.long	0x7fe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x14
	.value	0x118
	.long	0x8759
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x14
	.value	0x11d
	.long	0x5294
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x14
	.value	0x121
	.long	0x5294
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x14
	.value	0x124
	.long	0x5294
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x14
	.value	0x127
	.long	0x5294
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x14
	.value	0x12a
	.long	0x5294
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x24
	.long	0x8672
	.byte	0x1
	.long	0x1e6
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x865d
	.uleb128 0x3
	.byte	0x4
	.long	0x867e
	.uleb128 0xa
	.long	0x51cf
	.uleb128 0x24
	.long	0x8698
	.byte	0x1
	.long	0x2dc
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8683
	.uleb128 0x26
	.long	0x86aa
	.byte	0x1
	.uleb128 0x25
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x869e
	.uleb128 0x26
	.long	0x86c1
	.byte	0x1
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x52c1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x86b0
	.uleb128 0x24
	.long	0x86d7
	.byte	0x1
	.long	0x5294
	.uleb128 0x25
	.long	0x1e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x86c7
	.uleb128 0x24
	.long	0x8701
	.byte	0x1
	.long	0x9d
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x9d
	.uleb128 0x25
	.long	0x81e
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x86dd
	.uleb128 0x24
	.long	0x8721
	.byte	0x1
	.long	0x3b5
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x2c9
	.uleb128 0x25
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8707
	.uleb128 0x2d
	.byte	0x1
	.long	0x5294
	.uleb128 0x3
	.byte	0x4
	.long	0x8727
	.uleb128 0x24
	.long	0x8743
	.byte	0x1
	.long	0x5294
	.uleb128 0x25
	.long	0x9d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8733
	.uleb128 0x24
	.long	0x8759
	.byte	0x1
	.long	0x2c9
	.uleb128 0x25
	.long	0x2c9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8749
	.uleb128 0x4
	.long	0x87b1
	.string	"class_stack_node"
	.byte	0x10
	.byte	0x1
	.byte	0x36
	.uleb128 0x18
	.long	.LASF24
	.byte	0x1
	.byte	0x38
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF3
	.byte	0x1
	.byte	0x3b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.byte	0x3f
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.byte	0x42
	.long	0x5c95
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"class_stack_node_t"
	.byte	0x1
	.byte	0x43
	.long	0x87cb
	.uleb128 0x3
	.byte	0x4
	.long	0x875f
	.uleb128 0x4
	.long	0x88a9
	.string	"vtbl_init_data_s"
	.byte	0x2c
	.byte	0x1
	.byte	0x46
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.byte	0x48
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x4a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF60
	.byte	0x1
	.byte	0x4d
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x50
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"last_init"
	.byte	0x1
	.byte	0x52
	.long	0x52c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.byte	0x55
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"fns"
	.byte	0x1
	.byte	0x58
	.long	0x6185
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0x5a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"primary_vtbl_p"
	.byte	0x1
	.byte	0x5d
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.long	.LASF64
	.byte	0x1
	.byte	0x60
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"generate_vcall_entries"
	.byte	0x1
	.byte	0x63
	.long	0x5294
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"vtbl_init_data"
	.byte	0x1
	.byte	0x64
	.long	0x87d1
	.uleb128 0x2
	.string	"subobject_offset_fn"
	.byte	0x1
	.byte	0x67
	.long	0x88da
	.uleb128 0x3
	.byte	0x4
	.long	0x88e0
	.uleb128 0x24
	.long	0x88fa
	.byte	0x1
	.long	0x2dc
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x1e6
	.uleb128 0x25
	.long	0x5c95
	.byte	0x0
	.uleb128 0x2e
	.long	0x8a63
	.byte	0x1
	.string	"build_base_path"
	.byte	0x1
	.value	0x104
	.byte	0x1
	.long	0x1e6
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2f
	.string	"code"
	.byte	0x1
	.value	0x100
	.long	0xaab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"expr"
	.byte	0x1
	.value	0x101
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x102
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF65
	.byte	0x1
	.value	0x103
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"v_binfo"
	.byte	0x1
	.value	0x105
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"d_binfo"
	.byte	0x1
	.value	0x106
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"probe"
	.byte	0x1
	.value	0x107
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF6
	.byte	0x1
	.value	0x108
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF66
	.byte	0x1
	.value	0x109
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"null_test"
	.byte	0x1
	.value	0x10a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"ptr_target_type"
	.byte	0x1
	.value	0x10b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"fixed_type_p"
	.byte	0x1
	.value	0x10c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"want_pointer"
	.byte	0x1
	.value	0x10d
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0x8a52
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x31
	.string	"v_offset"
	.byte	0x1
	.value	0x13c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x32
	.long	.LASF59
	.byte	0x1
	.value	0x142
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15799
	.byte	0x0
	.uleb128 0x2e
	.long	0x8ad6
	.byte	0x1
	.string	"convert_to_base"
	.byte	0x1
	.value	0x18f
	.byte	0x1
	.long	0x1e6
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2f
	.string	"object"
	.byte	0x1
	.value	0x18e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x18e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"check_access"
	.byte	0x1
	.value	0x18e
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x190
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x8b62
	.byte	0x1
	.string	"convert_to_base_statically"
	.byte	0x1
	.value	0x1a2
	.byte	0x1
	.long	0x1e6
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2f
	.string	"expr"
	.byte	0x1
	.value	0x1a1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF35
	.byte	0x1
	.value	0x1a1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"expr_type"
	.byte	0x1
	.value	0x1a3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x31
	.string	"pointer_type"
	.byte	0x1
	.value	0x1a8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8c23
	.string	"build_vtable_entry_ref"
	.byte	0x1
	.value	0x1bc
	.byte	0x1
	.long	0x1e6
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2f
	.string	"array_ref"
	.byte	0x1
	.value	0x1bb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF68
	.byte	0x1
	.value	0x1bb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"idx"
	.byte	0x1
	.value	0x1bb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"i2"
	.byte	0x1
	.value	0x1bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF69
	.byte	0x1
	.value	0x1bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"first_fn"
	.byte	0x1
	.value	0x1bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x1bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16008
	.byte	0x0
	.uleb128 0x36
	.long	0x8cd9
	.string	"build_vtbl_ref_1"
	.byte	0x1
	.value	0x1dc
	.byte	0x1
	.long	0x1e6
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x30
	.long	.LASF68
	.byte	0x1
	.value	0x1db
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"idx"
	.byte	0x1
	.value	0x1db
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"aref"
	.byte	0x1
	.value	0x1dd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"vtbl"
	.byte	0x1
	.value	0x1de
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF71
	.byte	0x1
	.value	0x1e3
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"fixed_type"
	.byte	0x1
	.value	0x1e4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x1e6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x1ec
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x8d31
	.byte	0x1
	.string	"build_vtbl_ref"
	.byte	0x1
	.value	0x202
	.byte	0x1
	.long	0x1e6
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x30
	.long	.LASF68
	.byte	0x1
	.value	0x201
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"idx"
	.byte	0x1
	.value	0x201
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"aref"
	.byte	0x1
	.value	0x203
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x8d88
	.byte	0x1
	.string	"build_vfn_ref"
	.byte	0x1
	.value	0x211
	.byte	0x1
	.long	0x1e6
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x30
	.long	.LASF68
	.byte	0x1
	.value	0x210
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"idx"
	.byte	0x1
	.value	0x210
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"aref"
	.byte	0x1
	.value	0x212
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x8dc1
	.string	"get_vtable_name"
	.byte	0x1
	.value	0x226
	.byte	0x1
	.long	0x1e6
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x225
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2e
	.long	0x8df8
	.byte	0x1
	.string	"get_vtt_name"
	.byte	0x1
	.value	0x230
	.byte	0x1
	.long	0x1e6
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x22f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x8e63
	.string	"build_vtable"
	.byte	0x1
	.value	0x23d
	.byte	0x1
	.long	0x1e6
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.value	0x23a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x23b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"vtable_type"
	.byte	0x1
	.value	0x23c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x23e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x8ec0
	.byte	0x1
	.string	"get_vtable_decl"
	.byte	0x1
	.value	0x25a
	.byte	0x1
	.long	0x1e6
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x258
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"complete"
	.byte	0x1
	.value	0x259
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x25b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	0x8f16
	.string	"copy_virtuals"
	.byte	0x1
	.value	0x277
	.byte	0x1
	.long	0x1e6
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x276
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"copies"
	.byte	0x1
	.value	0x278
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x279
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x8f91
	.string	"build_primary_vtable"
	.byte	0x1
	.value	0x28b
	.byte	0x1
	.long	0x2dc
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x28a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x28a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x28c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x28d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb43
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16164
	.byte	0x0
	.uleb128 0x36
	.long	0x8ff5
	.string	"build_secondary_vtable"
	.byte	0x1
	.value	0x2c2
	.byte	0x1
	.long	0x2dc
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x2c1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"for_type"
	.byte	0x1
	.value	0x2c1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16234
	.byte	0x0
	.uleb128 0x36
	.long	0x903b
	.string	"make_new_vtable"
	.byte	0x1
	.value	0x2de
	.byte	0x1
	.long	0x2dc
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x2dc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x2dd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x90d4
	.string	"modify_vtable_entry"
	.byte	0x1
	.value	0x2fc
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x2f7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x2f8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF73
	.byte	0x1
	.value	0x2f9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF54
	.byte	0x1
	.value	0x2fa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF72
	.byte	0x1
	.value	0x2fb
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"v"
	.byte	0x1
	.value	0x2fd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.value	0x304
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9274
	.byte	0x1
	.string	"add_method"
	.byte	0x1
	.value	0x324
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x321
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF75
	.byte	0x1
	.value	0x322
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"error_p"
	.byte	0x1
	.value	0x323
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"using"
	.byte	0x1
	.value	0x325
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x326
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"slot"
	.byte	0x1
	.value	0x327
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x328
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF53
	.byte	0x1
	.value	0x329
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	0x920e
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x31
	.string	"have_template_convs_p"
	.byte	0x1
	.value	0x343
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	0x91c1
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x31
	.string	"m"
	.byte	0x1
	.value	0x348
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x33
	.long	0x91f5
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x31
	.string	"new_len"
	.byte	0x1
	.value	0x364
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"new_vec"
	.byte	0x1
	.value	0x365
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x34
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x386
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x31
	.string	"fns"
	.byte	0x1
	.value	0x3ac
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x3b3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"parms1"
	.byte	0x1
	.value	0x3b4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"parms2"
	.byte	0x1
	.value	0x3b5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"same"
	.byte	0x1
	.value	0x3b6
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x92e3
	.string	"delete_duplicate_fields_1"
	.byte	0x1
	.value	0x412
	.byte	0x1
	.long	0x1e6
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x30
	.long	.LASF77
	.byte	0x1
	.value	0x411
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF78
	.byte	0x1
	.value	0x411
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x413
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"prev"
	.byte	0x1
	.value	0x414
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0x932d
	.string	"delete_duplicate_fields"
	.byte	0x1
	.value	0x461
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x30
	.long	.LASF78
	.byte	0x1
	.value	0x460
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x462
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x36
	.long	0x93a1
	.string	"alter_access"
	.byte	0x1
	.value	0x46f
	.byte	0x1
	.long	0x2dc
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x46c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"fdecl"
	.byte	0x1
	.value	0x46d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF51
	.byte	0x1
	.value	0x46e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"elem"
	.byte	0x1
	.value	0x470
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16869
	.byte	0x0
	.uleb128 0x37
	.long	0x9461
	.string	"handle_using_decl"
	.byte	0x1
	.value	0x499
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2f
	.string	"using_decl"
	.byte	0x1
	.value	0x497
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x498
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"ctype"
	.byte	0x1
	.value	0x49a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF24
	.byte	0x1
	.value	0x49b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF51
	.byte	0x1
	.value	0x49c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"fdecl"
	.byte	0x1
	.value	0x4a0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x4a0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"flist"
	.byte	0x1
	.value	0x4a1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"old_value"
	.byte	0x1
	.value	0x4a2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x9557
	.string	"check_bases"
	.byte	0x1
	.value	0x501
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x4fd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF79
	.byte	0x1
	.value	0x4fe
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF80
	.byte	0x1
	.value	0x4ff
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0x500
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0x502
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x503
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"seen_non_virtual_nearly_empty_base_p"
	.byte	0x1
	.value	0x504
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF83
	.byte	0x1
	.value	0x505
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x510
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x511
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x51c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x967d
	.string	"force_canonical_binfo_r"
	.byte	0x1
	.value	0x574
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.value	0x570
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"from"
	.byte	0x1
	.value	0x571
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x572
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF85
	.byte	0x1
	.value	0x573
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x575
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0x575
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	0x960e
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x31
	.string	"primary"
	.byte	0x1
	.value	0x581
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"assoc"
	.byte	0x1
	.value	0x582
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x9634
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x31
	.string	"from_primary"
	.byte	0x1
	.value	0x593
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0x966c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x31
	.string	"from_binfo"
	.byte	0x1
	.value	0x59c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"to_binfo"
	.byte	0x1
	.value	0x59d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb14
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17200
	.byte	0x0
	.uleb128 0x37
	.long	0x96f6
	.string	"force_canonical_binfo"
	.byte	0x1
	.value	0x5bc
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.value	0x5b8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"from"
	.byte	0x1
	.value	0x5b9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x5ba
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF85
	.byte	0x1
	.value	0x5bb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"assoc"
	.byte	0x1
	.value	0x5bd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x9760
	.string	"mark_primary_virtual_base"
	.byte	0x1
	.value	0x5ce
	.byte	0x1
	.long	0x1e6
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x30
	.long	.LASF84
	.byte	0x1
	.value	0x5cc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x5cd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"shared_binfo"
	.byte	0x1
	.value	0x5cf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x9823
	.string	"dfs_unshared_virtual_bases"
	.byte	0x1
	.value	0x5ea
	.byte	0x1
	.long	0x1e6
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x5e8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x5e9
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x5eb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0x97f5
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x5f4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"unshared_base"
	.byte	0x1
	.value	0x5f5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x9812
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x60e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb0f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17308
	.byte	0x0
	.uleb128 0x37
	.long	0x9883
	.string	"mark_primary_bases"
	.byte	0x1
	.value	0x61e
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x61d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x61f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x624
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x98d5
	.string	"set_primary_base"
	.byte	0x1
	.value	0x647
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x645
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x646
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x648
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x37
	.long	0x9a3c
	.string	"determine_primary_base"
	.byte	0x1
	.value	0x656
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x655
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x657
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0x657
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x658
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF86
	.byte	0x1
	.value	0x659
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	0x998f
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x663
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x664
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x674
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x99fa
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x31
	.string	"vbase_binfo"
	.byte	0x1
	.value	0x68d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x694
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"v"
	.byte	0x1
	.value	0x695
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x31
	.string	"base_vbase"
	.byte	0x1
	.value	0x69b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x32
	.long	.LASF87
	.byte	0x1
	.value	0x6b4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x6b5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x6bc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9af1
	.string	"finish_struct_bits"
	.byte	0x1
	.value	0x6e5
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x6e4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x6e6
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0x6e6
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF88
	.byte	0x1
	.value	0x6e9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0x9ad7
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x70f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF83
	.byte	0x1
	.value	0x710
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x711
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x32
	.long	.LASF88
	.byte	0x1
	.value	0x721
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9c09
	.string	"maybe_warn_about_overly_private_class"
	.byte	0x1
	.value	0x735
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x734
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"has_member_fn"
	.byte	0x1
	.value	0x736
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"has_nonprivate_method"
	.byte	0x1
	.value	0x737
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x738
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	0x9bab
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x773
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF83
	.byte	0x1
	.value	0x774
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0x9bc9
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x31
	.string	"dtor"
	.byte	0x1
	.value	0x788
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x31
	.string	"nonprivate_ctor"
	.byte	0x1
	.value	0x794
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x31
	.string	"ctor"
	.byte	0x1
	.value	0x7a7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9c4c
	.string	"field_decl_cmp"
	.byte	0x1
	.value	0x7c3
	.byte	0x1
	.long	0x2dc
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x7c2
	.long	0x9c4c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"y"
	.byte	0x1
	.value	0x7c2
	.long	0x9c4c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c52
	.uleb128 0xa
	.long	0x1e6
	.uleb128 0x36
	.long	0x9c9d
	.string	"method_name_cmp"
	.byte	0x1
	.value	0x7d5
	.byte	0x1
	.long	0x2dc
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2f
	.string	"m1"
	.byte	0x1
	.value	0x7d4
	.long	0x9c4c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"m2"
	.byte	0x1
	.value	0x7d4
	.long	0x9c4c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x9d45
	.string	"finish_struct_methods"
	.byte	0x1
	.value	0x7f4
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x7f3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"fn_fields"
	.byte	0x1
	.value	0x7f5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x7f6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"slot"
	.byte	0x1
	.value	0x7f7
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x7f7
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0x9d34
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x820
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb0a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17852
	.byte	0x0
	.uleb128 0x38
	.long	0x9e28
	.byte	0x1
	.string	"duplicate_tag_error"
	.byte	0x1
	.value	0x82f
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x82e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	0x9dd2
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0x83f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x840
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x840
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x31
	.string	"unchain"
	.byte	0x1
	.value	0x843
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x84e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF41
	.byte	0x1
	.value	0x84f
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF42
	.byte	0x1
	.value	0x850
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF49
	.byte	0x1
	.value	0x851
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x852
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9e8d
	.string	"layout_vtable_decl"
	.byte	0x1
	.value	0x87b
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x879
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x87a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"atype"
	.byte	0x1
	.value	0x87c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF69
	.byte	0x1
	.value	0x87d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0x9f08
	.byte	0x1
	.string	"same_signature_p"
	.byte	0x1
	.value	0x898
	.byte	0x1
	.long	0x2dc
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x30
	.long	.LASF73
	.byte	0x1
	.value	0x897
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF74
	.byte	0x1
	.value	0x897
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x31
	.string	"types"
	.byte	0x1
	.value	0x8a7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"base_types"
	.byte	0x1
	.value	0x8a7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9f65
	.string	"dfs_base_derived_from"
	.byte	0x1
	.value	0x8b6
	.byte	0x1
	.long	0x1e6
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x8b5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x8b5
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF35
	.byte	0x1
	.value	0x8b7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x9faf
	.string	"base_derived_from"
	.byte	0x1
	.value	0x8c5
	.byte	0x1
	.long	0x5294
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x30
	.long	.LASF59
	.byte	0x1
	.value	0x8c4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF35
	.byte	0x1
	.value	0x8c4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xc
	.long	0xa030
	.string	"find_final_overrider_data_s"
	.byte	0x10
	.byte	0x1
	.value	0x8c9
	.uleb128 0xd
	.string	"fn"
	.byte	0x1
	.value	0x8cb
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"declaring_base"
	.byte	0x1
	.value	0x8cd
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"most_derived_type"
	.byte	0x1
	.value	0x8cf
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"candidates"
	.byte	0x1
	.value	0x8d1
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x11
	.string	"find_final_overrider_data"
	.byte	0x1
	.value	0x8d2
	.long	0x9faf
	.uleb128 0x36
	.long	0xa0f5
	.string	"dfs_find_final_overrider"
	.byte	0x1
	.value	0x8da
	.byte	0x1
	.long	0x1e6
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x8d8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x8d9
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"ffod"
	.byte	0x1
	.value	0x8db
	.long	0xa0f5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x31
	.string	"path"
	.byte	0x1
	.value	0x8e2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0x8e3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x32
	.long	.LASF87
	.byte	0x1
	.value	0x8fe
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa030
	.uleb128 0x36
	.long	0xa166
	.string	"find_final_overrider"
	.byte	0x1
	.value	0x921
	.byte	0x1
	.long	0x1e6
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x30
	.long	.LASF59
	.byte	0x1
	.value	0x91e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x91f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"fn"
	.byte	0x1
	.value	0x920
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"ffod"
	.byte	0x1
	.value	0x922
	.long	0xa030
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xa1ca
	.string	"get_vcall_index"
	.byte	0x1
	.value	0x950
	.byte	0x1
	.long	0x1e6
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x2f
	.string	"fn"
	.byte	0x1
	.value	0x94f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x94f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"v"
	.byte	0x1
	.value	0x951
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18212
	.byte	0x0
	.uleb128 0x37
	.long	0xa2a3
	.string	"update_vtable_entry_for_fn"
	.byte	0x1
	.value	0x968
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x964
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x965
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"fn"
	.byte	0x1
	.value	0x966
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF72
	.byte	0x1
	.value	0x967
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x969
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"overrider"
	.byte	0x1
	.value	0x96a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x96b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"virtual_base"
	.byte	0x1
	.value	0x96c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"first_defn"
	.byte	0x1
	.value	0x96d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"lost"
	.byte	0x1
	.value	0x96e
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x36
	.long	0xa32c
	.string	"dfs_modify_vtables"
	.byte	0x1
	.value	0x9c3
	.byte	0x1
	.long	0x1e6
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x9c1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x9c2
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x9cc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x9cd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"old_virtuals"
	.byte	0x1
	.value	0x9ce
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa3ac
	.string	"modify_all_vtables"
	.byte	0x1
	.value	0x9f4
	.byte	0x1
	.long	0x1e6
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x9f2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF72
	.byte	0x1
	.value	0x9f3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x9f5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"fnsp"
	.byte	0x1
	.value	0x9f6
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0xa05
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xa466
	.string	"get_basefndecls"
	.byte	0x1
	.value	0xa20
	.byte	0x1
	.long	0x1e6
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0xa1f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xa1f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"methods"
	.byte	0x1
	.value	0xa21
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF89
	.byte	0x1
	.value	0xa22
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0xa23
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xa24
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0xa44c
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0xa2d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0xa39
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xa4af
	.string	"check_for_override"
	.byte	0x1
	.value	0xa48
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x30
	.long	.LASF2
	.byte	0x1
	.value	0xa47
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"ctype"
	.byte	0x1
	.value	0xa47
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x38
	.long	0xa59a
	.byte	0x1
	.string	"warn_hidden"
	.byte	0x1
	.value	0xa66
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xa65
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF76
	.byte	0x1
	.value	0xa67
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"n_methods"
	.byte	0x1
	.value	0xa68
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xa69
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x31
	.string	"fns"
	.byte	0x1
	.value	0xa6e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF24
	.byte	0x1
	.value	0xa6f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF73
	.byte	0x1
	.value	0xa70
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF89
	.byte	0x1
	.value	0xa71
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0xa72
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0xa57e
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0xa7d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x31
	.string	"prev"
	.byte	0x1
	.value	0xa8c
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xa5f8
	.string	"finish_struct_anon"
	.byte	0x1
	.value	0xaac
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xaab
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0xaad
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x31
	.string	"elt"
	.byte	0x1
	.value	0xab9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0xa662
	.byte	0x1
	.string	"maybe_add_class_template_decl_list"
	.byte	0x1
	.value	0xaf0
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0xaed
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xaee
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"friend_p"
	.byte	0x1
	.value	0xaef
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x37
	.long	0xa74e
	.string	"add_implicitly_declared_members"
	.byte	0x1
	.value	0xb09
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xb05
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF90
	.byte	0x1
	.value	0xb06
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"cant_have_const_cctor"
	.byte	0x1
	.value	0xb07
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"cant_have_const_assignment"
	.byte	0x1
	.value	0xb08
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"default_fn"
	.byte	0x1
	.value	0xb0a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"implicit_fns"
	.byte	0x1
	.value	0xb0b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"virtual_dtor"
	.byte	0x1
	.value	0xb0c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0xb0d
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xa7a0
	.string	"count_fields"
	.byte	0x1
	.value	0xb68
	.byte	0x1
	.long	0x2dc
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x30
	.long	.LASF78
	.byte	0x1
	.value	0xb67
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xb69
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF91
	.byte	0x1
	.value	0xb6a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x36
	.long	0xa806
	.string	"add_fields_to_vec"
	.byte	0x1
	.value	0xb7c
	.byte	0x1
	.long	0x2dc
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x30
	.long	.LASF78
	.byte	0x1
	.value	0xb7a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF92
	.byte	0x1
	.value	0xb7a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"idx"
	.byte	0x1
	.value	0xb7b
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xb7d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x37
	.long	0xa85b
	.string	"check_bitfield_decl"
	.byte	0x1
	.value	0xb8f
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x30
	.long	.LASF77
	.byte	0x1
	.value	0xb8e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0xb90
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"w"
	.byte	0x1
	.value	0xb91
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0xa902
	.string	"check_field_decl"
	.byte	0x1
	.value	0xbfb
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x30
	.long	.LASF77
	.byte	0x1
	.value	0xbf5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xbf6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF93
	.byte	0x1
	.value	0xbf7
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF90
	.byte	0x1
	.value	0xbf8
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF94
	.byte	0x1
	.value	0xbf9
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF95
	.byte	0x1
	.value	0xbfa
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0xbfc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x32
	.long	.LASF78
	.byte	0x1
	.value	0xc06
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xa9f8
	.string	"check_field_decls"
	.byte	0x1
	.value	0xc61
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xc5d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF96
	.byte	0x1
	.value	0xc5d
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF79
	.byte	0x1
	.value	0xc5e
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF80
	.byte	0x1
	.value	0xc5f
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0xc60
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0xc62
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"next"
	.byte	0x1
	.value	0xc63
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"has_pointers"
	.byte	0x1
	.value	0xc64
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF95
	.byte	0x1
	.value	0xc65
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xc74
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0xc75
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x32
	.long	.LASF97
	.byte	0x1
	.value	0xc83
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xaa64
	.string	"record_subobject_offset"
	.byte	0x1
	.value	0xd4d
	.byte	0x1
	.long	0x2dc
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0xd4a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0xd4b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xd4c
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0xd4e
	.long	0x5a72
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xaadc
	.string	"check_subobject_offset"
	.byte	0x1
	.value	0xd69
	.byte	0x1
	.long	0x2dc
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0xd66
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0xd67
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xd68
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0xd6a
	.long	0x5a72
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0xd6b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xac95
	.string	"walk_subobject_offsets"
	.byte	0x1
	.value	0xd8f
	.byte	0x1
	.long	0x2dc
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0xd89
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0xd8a
	.long	0x88bf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0xd8b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xd8c
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.string	"max_offset"
	.byte	0x1
	.value	0xd8d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.long	.LASF99
	.byte	0x1
	.value	0xd8e
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0xd90
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.long	.LASF86
	.byte	0x1
	.value	0xd91
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	0xac5a
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0xda1
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0xda2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xda3
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	0xac01
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x31
	.string	"binfo_offset"
	.byte	0x1
	.value	0xdb3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x32
	.long	.LASF100
	.byte	0x1
	.value	0xdc6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xac37
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0xddd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x32
	.long	.LASF59
	.byte	0x1
	.value	0xdfd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x31
	.string	"field_offset"
	.byte	0x1
	.value	0xe13
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x32
	.long	.LASF97
	.byte	0x1
	.value	0xe29
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"domain"
	.byte	0x1
	.value	0xe2a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0xe2b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xad00
	.string	"record_subobject_offsets"
	.byte	0x1
	.value	0xe59
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0xe55
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0xe56
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xe57
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF99
	.byte	0x1
	.value	0xe58
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x36
	.long	0xad7c
	.string	"layout_conflict_p"
	.byte	0x1
	.value	0xe68
	.byte	0x1
	.long	0x2dc
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0xe64
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0xe65
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xe66
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF99
	.byte	0x1
	.value	0xe67
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"max_node"
	.byte	0x1
	.value	0xe69
	.long	0x5a72
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0xae48
	.string	"layout_nonempty_base_or_field"
	.byte	0x1
	.value	0xe83
	.byte	0x1
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x2f
	.string	"rli"
	.byte	0x1
	.value	0xe7f
	.long	0x53fe
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF2
	.byte	0x1
	.value	0xe80
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0xe81
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xe82
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0xe84
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF6
	.byte	0x1
	.value	0xe85
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"field_p"
	.byte	0x1
	.value	0xe86
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0xe87
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x31
	.string	"old_rli"
	.byte	0x1
	.value	0xe9d
	.long	0x52d8
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xaeae
	.string	"empty_base_at_nonzero_offset_p"
	.byte	0x1
	.value	0xedf
	.byte	0x1
	.long	0x2dc
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0xedc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0xedd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xede
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x36
	.long	0xaf59
	.string	"layout_empty_base"
	.byte	0x1
	.value	0xeef
	.byte	0x1
	.long	0x5294
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0xeeb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"eoc"
	.byte	0x1
	.value	0xeec
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xeed
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xeee
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"alignment"
	.byte	0x1
	.value	0xef0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0xef1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"atend"
	.byte	0x1
	.value	0xef2
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x35
	.long	.LASF67
	.long	0xdb00
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19895
	.byte	0x0
	.uleb128 0x36
	.long	0xb023
	.string	"build_base_field"
	.byte	0x1
	.value	0xf26
	.byte	0x1
	.long	0x52c1
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x2f
	.string	"rli"
	.byte	0x1
	.value	0xf24
	.long	0x53fe
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0xf24
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xf25
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF101
	.byte	0x1
	.value	0xf25
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0xf27
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0xf28
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0xaff8
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0xf32
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x31
	.string	"eoc"
	.byte	0x1
	.value	0xf4d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"atend"
	.byte	0x1
	.value	0xf4e
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb0ba
	.string	"build_base_fields"
	.byte	0x1
	.value	0xf8b
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x2f
	.string	"rli"
	.byte	0x1
	.value	0xf89
	.long	0x53fe
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0xf8a
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF101
	.byte	0x1
	.value	0xf8a
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0xf8e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0xf8f
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xf90
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0xf9a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb0f8
	.string	"check_methods"
	.byte	0x1
	.value	0xfb6
	.byte	0x1
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0xfb5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xfb7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	0xb1b7
	.string	"build_clone"
	.byte	0x1
	.value	0xfd8
	.byte	0x1
	.long	0x1e6
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x2f
	.string	"fn"
	.byte	0x1
	.value	0xfd6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0xfd7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"parms"
	.byte	0x1
	.value	0xfd9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"clone"
	.byte	0x1
	.value	0xfda
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	0xb19d
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0xff6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"parmtypes"
	.byte	0x1
	.value	0xff7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF102
	.byte	0x1
	.value	0xff8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x32
	.long	.LASF31
	.byte	0x1
	.value	0x103b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0xb24d
	.byte	0x1
	.string	"clone_function_decl"
	.byte	0x1
	.value	0x1051
	.byte	0x1
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x2f
	.string	"fn"
	.byte	0x1
	.value	0x104f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"update_method_vec_p"
	.byte	0x1
	.value	0x1050
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"clone"
	.byte	0x1
	.value	0x1052
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	0xb23c
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x1064
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdafb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20226
	.byte	0x0
	.uleb128 0x38
	.long	0xb34f
	.byte	0x1
	.string	"adjust_clone_args"
	.byte	0x1
	.value	0x109b
	.byte	0x1
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x30
	.long	.LASF2
	.byte	0x1
	.value	0x109a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"clone"
	.byte	0x1
	.value	0x109c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	0xb33e
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x31
	.string	"orig_clone_parms"
	.byte	0x1
	.value	0x10a1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"orig_decl_parms"
	.byte	0x1
	.value	0x10a2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"decl_parms"
	.byte	0x1
	.value	0x10a3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"clone_parms"
	.byte	0x1
	.value	0x10a3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x32
	.long	.LASF102
	.byte	0x1
	.value	0x10bf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x10c0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x10c1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdaf6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20330
	.byte	0x0
	.uleb128 0x37
	.long	0xb3a4
	.string	"clone_constructors_and_destructors"
	.byte	0x1
	.value	0x10e1
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x10e0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"fns"
	.byte	0x1
	.value	0x10e2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0xb3f7
	.string	"remove_zero_width_bit_fields"
	.byte	0x1
	.value	0x10f4
	.byte	0x1
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x10f3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"fieldsp"
	.byte	0x1
	.value	0x10f5
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x36
	.long	0xb4b2
	.string	"type_requires_array_cookie"
	.byte	0x1
	.value	0x1109
	.byte	0x1
	.long	0x5294
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x1108
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"fns"
	.byte	0x1
	.value	0x110a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"has_two_argument_delete_p"
	.byte	0x1
	.value	0x110b
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x33
	.long	0xb4a1
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x1123
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"second_parm"
	.byte	0x1
	.value	0x1124
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdaf1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20462
	.byte	0x0
	.uleb128 0x37
	.long	0xb529
	.string	"check_bases_and_members"
	.byte	0x1
	.value	0x1140
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x113f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF90
	.byte	0x1
	.value	0x1143
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF93
	.byte	0x1
	.value	0x1146
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF94
	.byte	0x1
	.value	0x1149
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF96
	.byte	0x1
	.value	0x114a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xb5bd
	.string	"create_vtable_ptr"
	.byte	0x1
	.value	0x1199
	.byte	0x1
	.long	0x1e6
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1197
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF103
	.byte	0x1
	.value	0x1198
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x119a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0xb5a3
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x31
	.string	"new_virtual"
	.byte	0x1
	.value	0x11a1
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0x11c3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb610
	.string	"fixup_pending_inline"
	.byte	0x1
	.value	0x11e6
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x2f
	.string	"fn"
	.byte	0x1
	.value	0x11e5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x31
	.string	"args"
	.byte	0x1
	.value	0x11e9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb659
	.string	"fixup_inline_methods"
	.byte	0x1
	.value	0x11f8
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x11f7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0x11f9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x37
	.long	0xb6e7
	.string	"propagate_binfo_offsets"
	.byte	0x1
	.value	0x121b
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1218
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x1219
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x121a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x121c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF104
	.byte	0x1
	.value	0x121d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x122d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb777
	.string	"dfs_set_offset_for_unshared_vbases"
	.byte	0x1
	.value	0x1251
	.byte	0x1
	.long	0x1e6
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x124f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x1250
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x1257
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1258
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF6
	.byte	0x1
	.value	0x1259
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xb834
	.string	"layout_virtual_bases"
	.byte	0x1
	.value	0x126c
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x2f
	.string	"rli"
	.byte	0x1
	.value	0x126b
	.long	0x53fe
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF98
	.byte	0x1
	.value	0x126b
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x126d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x126e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"first_vbase"
	.byte	0x1
	.value	0x126f
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x32
	.long	.LASF101
	.byte	0x1
	.value	0x1270
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1291
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x129a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb879
	.string	"end_of_base"
	.byte	0x1
	.value	0x12c4
	.byte	0x1
	.long	0x1e6
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x12c3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"size"
	.byte	0x1
	.value	0x12c5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xb905
	.string	"end_of_class"
	.byte	0x1
	.value	0x12da
	.byte	0x1
	.long	0x1e6
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x12d8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"include_virtuals_p"
	.byte	0x1
	.value	0x12d9
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF31
	.byte	0x1
	.value	0x12db
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x12dc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF6
	.byte	0x1
	.value	0x12dd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x12de
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0xb96e
	.string	"warn_about_ambiguous_bases"
	.byte	0x1
	.value	0x1309
	.byte	0x1
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1308
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x130a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x130b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x130c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xb9c4
	.string	"splay_tree_compare_integer_csts"
	.byte	0x1
	.value	0x132c
	.byte	0x1
	.long	0x2dc
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x2f
	.string	"k1"
	.byte	0x1
	.value	0x132a
	.long	0x5a44
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"k2"
	.byte	0x1
	.value	0x132b
	.long	0x5a44
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0xba22
	.string	"include_empty_classes"
	.byte	0x1
	.value	0x1335
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x2f
	.string	"rli"
	.byte	0x1
	.value	0x1334
	.long	0x53fe
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"eoc"
	.byte	0x1
	.value	0x1336
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"rli_size"
	.byte	0x1
	.value	0x1337
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0xbbbe
	.string	"layout_class_type"
	.byte	0x1
	.value	0x1357
	.byte	0x1
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1356
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF103
	.byte	0x1
	.value	0x1356
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"non_static_data_members"
	.byte	0x1
	.value	0x1358
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0x1359
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"vptr"
	.byte	0x1
	.value	0x135a
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"rli"
	.byte	0x1
	.value	0x135b
	.long	0x53fe
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"empty_base_offsets"
	.byte	0x1
	.value	0x135e
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"last_field_was_bitfield"
	.byte	0x1
	.value	0x1360
	.long	0x5294
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x32
	.long	.LASF101
	.byte	0x1
	.value	0x1362
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"base_t"
	.byte	0x1
	.value	0x1364
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	0xbba4
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x1386
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"padding"
	.byte	0x1
	.value	0x1387
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	0xbb80
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x31
	.string	"itk"
	.byte	0x1
	.value	0x13a5
	.long	0x51c3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"integer_type"
	.byte	0x1
	.value	0x13a6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x34
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x31
	.string	"padding_field"
	.byte	0x1
	.value	0x1400
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x31
	.string	"eoc"
	.byte	0x1
	.value	0x1438
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xbbfa
	.long	.LASF48
	.byte	0x1
	.value	0x1494
	.byte	0x1
	.long	0x1e6
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x1493
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.value	0x1495
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x38
	.long	0xbd04
	.byte	0x1
	.string	"finish_struct_1"
	.byte	0x1
	.value	0x14ad
	.byte	0x1
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x14ac
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x14ae
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x14b0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF91
	.byte	0x1
	.value	0x14b1
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"vfield"
	.byte	0x1
	.value	0x14b2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0xbc8b
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x31
	.string	"primary"
	.byte	0x1
	.value	0x14e2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	0xbcb9
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x31
	.string	"vindex"
	.byte	0x1
	.value	0x150a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x150b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0xbcd6
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x32
	.long	.LASF92
	.byte	0x1
	.value	0x1534
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0xbcf3
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x153f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdadc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.21382
	.byte	0x0
	.uleb128 0x38
	.long	0xbd73
	.byte	0x1
	.string	"unreverse_member_declarations"
	.byte	0x1
	.value	0x1568
	.byte	0x1
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1567
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"next"
	.byte	0x1
	.value	0x1569
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"prev"
	.byte	0x1
	.value	0x156a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x156b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2e
	.long	0xbdea
	.byte	0x1
	.string	"finish_struct"
	.byte	0x1
	.value	0x1588
	.byte	0x1
	.long	0x1e6
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1587
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF20
	.byte	0x1
	.value	0x1587
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"saved_filename"
	.byte	0x1
	.value	0x1589
	.long	0x2c9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"saved_lineno"
	.byte	0x1
	.value	0x158a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xbe5d
	.string	"fixed_type_or_null"
	.byte	0x1
	.value	0x15bc
	.byte	0x1
	.long	0x1e6
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x30
	.long	.LASF68
	.byte	0x1
	.value	0x15b9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF65
	.byte	0x1
	.value	0x15ba
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF71
	.byte	0x1
	.value	0x15bb
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x1621
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0xbedc
	.byte	0x1
	.string	"resolves_to_fixed_type_p"
	.byte	0x1
	.value	0x1642
	.byte	0x1
	.long	0x2dc
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x30
	.long	.LASF68
	.byte	0x1
	.value	0x1640
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF65
	.byte	0x1
	.value	0x1641
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x1643
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF71
	.byte	0x1
	.value	0x1644
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"fixed"
	.byte	0x1
	.value	0x1646
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"init_class_processing"
	.byte	0x1
	.value	0x1653
	.byte	0x1
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x38
	.long	0xbf87
	.byte	0x1
	.string	"pushclass"
	.byte	0x1
	.value	0x168f
	.byte	0x1
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x168d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"modify"
	.byte	0x1
	.value	0x168e
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x31
	.string	"item"
	.byte	0x1
	.value	0x16c5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.value	0x16cf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x16d0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0xbfc9
	.byte	0x1
	.string	"invalidate_class_lookup_cache"
	.byte	0x1
	.value	0x16e4
	.byte	0x1
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x16e5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"popclass"
	.byte	0x1
	.value	0x16f4
	.byte	0x1
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x2e
	.long	0xc02e
	.byte	0x1
	.string	"currently_open_class"
	.byte	0x1
	.value	0x1707
	.byte	0x1
	.long	0x2dc
	.long	.LFB111
	.long	.LFE111
	.long	.LLST96
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1706
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1708
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2e
	.long	0xc080
	.byte	0x1
	.string	"currently_open_derived_class"
	.byte	0x1
	.value	0x1718
	.byte	0x1
	.long	0x1e6
	.long	.LFB112
	.long	.LFE112
	.long	.LLST97
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1717
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1719
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0xc0d9
	.byte	0x1
	.string	"push_nested_class"
	.byte	0x1
	.value	0x1730
	.byte	0x1
	.long	.LFB113
	.long	.LFE113
	.long	.LLST98
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x172e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"modify"
	.byte	0x1
	.value	0x172f
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1731
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0xc110
	.byte	0x1
	.string	"pop_nested_class"
	.byte	0x1
	.value	0x1747
	.byte	0x1
	.long	.LFB114
	.long	.LFE114
	.long	.LLST99
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1748
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.byte	0x1
	.string	"current_lang_depth"
	.byte	0x1
	.value	0x1753
	.byte	0x1
	.long	0x2dc
	.long	.LFB115
	.long	.LFE115
	.long	.LLST100
	.uleb128 0x38
	.long	0xc171
	.byte	0x1
	.string	"push_lang_context"
	.byte	0x1
	.value	0x175d
	.byte	0x1
	.long	.LFB116
	.long	.LFE116
	.long	.LLST101
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x175c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"pop_lang_context"
	.byte	0x1
	.value	0x1780
	.byte	0x1
	.long	.LFB117
	.long	.LFE117
	.long	.LLST102
	.uleb128 0x36
	.long	0xc422
	.string	"resolve_address_of_overloaded_function"
	.byte	0x1
	.value	0x179c
	.byte	0x1
	.long	0x1e6
	.long	.LFB118
	.long	.LFE118
	.long	.LLST103
	.uleb128 0x30
	.long	.LASF66
	.byte	0x1
	.value	0x1796
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"overload"
	.byte	0x1
	.value	0x1797
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF105
	.byte	0x1
	.value	0x1798
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"ptrmem"
	.byte	0x1
	.value	0x1799
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.string	"template_only"
	.byte	0x1
	.value	0x179a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.string	"explicit_targs"
	.byte	0x1
	.value	0x179b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x31
	.string	"is_ptrmem"
	.byte	0x1
	.value	0x17b7
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"is_reference"
	.byte	0x1
	.value	0x17b8
	.long	0x2dc
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"matches"
	.byte	0x1
	.value	0x17bc
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x17bd
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	0xc2e4
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x31
	.string	"fns"
	.byte	0x1
	.value	0x17e5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x17e9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"fntype"
	.byte	0x1
	.value	0x17ea
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xc3d1
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x31
	.string	"target_fn_type"
	.byte	0x1
	.value	0x1807
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"target_arg_types"
	.byte	0x1
	.value	0x1808
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"target_ret_type"
	.byte	0x1
	.value	0x1809
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"fns"
	.byte	0x1
	.value	0x180a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0xc3b5
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x181a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"instantiation"
	.byte	0x1
	.value	0x181b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"instantiation_type"
	.byte	0x1
	.value	0x181c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"targs"
	.byte	0x1
	.value	0x181d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x31
	.string	"match"
	.byte	0x1
	.value	0x1845
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xc3f0
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x31
	.string	"match"
	.byte	0x1
	.value	0x1867
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x35
	.long	.LASF67
	.long	0xdad7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22290
	.uleb128 0x31
	.string	"explained"
	.byte	0x1
	.value	0x187e
	.long	0x2dc
	.byte	0x5
	.byte	0x3
	.long	explained.22318
	.byte	0x0
	.uleb128 0x2e
	.long	0xc516
	.byte	0x1
	.string	"instantiate_type"
	.byte	0x1
	.value	0x18a7
	.byte	0x1
	.long	0x1e6
	.long	.LFB119
	.long	.LFE119
	.long	.LLST104
	.uleb128 0x2f
	.string	"lhstype"
	.byte	0x1
	.value	0x18a5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"rhs"
	.byte	0x1
	.value	0x18a5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF106
	.byte	0x1
	.value	0x18a6
	.long	0x7269
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF105
	.byte	0x1
	.value	0x18a8
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"strict"
	.byte	0x1
	.value	0x18a9
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"allow_ptrmem"
	.byte	0x1
	.value	0x18ab
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0xc4d8
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x31
	.string	"new_rhs"
	.byte	0x1
	.value	0x18da
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x33
	.long	0xc505
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x31
	.string	"fns"
	.byte	0x1
	.value	0x18fc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"args"
	.byte	0x1
	.value	0x18fd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdac2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22499
	.byte	0x0
	.uleb128 0x36
	.long	0xc56d
	.string	"get_vfield_name"
	.byte	0x1
	.value	0x1999
	.byte	0x1
	.long	0x1e6
	.long	.LFB120
	.long	.LFE120
	.long	.LLST105
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x1998
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF25
	.byte	0x1
	.value	0x199a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"buf"
	.byte	0x1
	.value	0x199b
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"print_class_statistics"
	.byte	0x1
	.value	0x19ac
	.byte	0x1
	.long	.LFB121
	.long	.LFE121
	.long	.LLST106
	.uleb128 0x38
	.long	0xc5f7
	.byte	0x1
	.string	"build_self_reference"
	.byte	0x1
	.value	0x19c4
	.byte	0x1
	.long	.LFB122
	.long	.LFE122
	.long	.LLST107
	.uleb128 0x32
	.long	.LASF24
	.byte	0x1
	.value	0x19c5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"value"
	.byte	0x1
	.value	0x19c6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"saved_cas"
	.byte	0x1
	.value	0x19c7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0xc630
	.byte	0x1
	.string	"is_empty_class"
	.byte	0x1
	.value	0x19dc
	.byte	0x1
	.long	0x2dc
	.long	.LFB123
	.long	.LFE123
	.long	.LLST108
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x19db
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0xc683
	.long	.LASF44
	.byte	0x1
	.value	0x19ef
	.byte	0x1
	.long	0x5294
	.long	.LFB124
	.long	.LFE124
	.long	.LLST109
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x19ee
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x32
	.long	.LASF77
	.byte	0x1
	.value	0x19f4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x19f5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0xc6e1
	.byte	0x1
	.string	"get_enclosing_class"
	.byte	0x1
	.value	0x1a0b
	.byte	0x1
	.long	0x1e6
	.long	.LFB125
	.long	.LFE125
	.long	.LLST110
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x1a0a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"node"
	.byte	0x1
	.value	0x1a0c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF67
	.long	0xdaad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22852
	.byte	0x0
	.uleb128 0x2e
	.long	0xc735
	.byte	0x1
	.string	"is_base_of_enclosing_class"
	.byte	0x1
	.value	0x1a28
	.byte	0x1
	.long	0x2dc
	.long	.LFB126
	.long	.LFE126
	.long	.LLST111
	.uleb128 0x30
	.long	.LASF35
	.byte	0x1
	.value	0x1a27
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF3
	.byte	0x1
	.value	0x1a27
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x38
	.long	0xc797
	.byte	0x1
	.string	"maybe_note_name_used_in_class"
	.byte	0x1
	.value	0x1a3a
	.byte	0x1
	.long	.LFB127
	.long	.LFE127
	.long	.LLST112
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x1a38
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF2
	.byte	0x1
	.value	0x1a39
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF58
	.byte	0x1
	.value	0x1a3b
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x38
	.long	0xc804
	.byte	0x1
	.string	"note_name_declared_in_class"
	.byte	0x1
	.value	0x1a57
	.byte	0x1
	.long	.LFB128
	.long	.LFE128
	.long	.LLST113
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x1a55
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF2
	.byte	0x1
	.value	0x1a56
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF58
	.byte	0x1
	.value	0x1a58
	.long	0x5c95
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x1a59
	.long	0x5a72
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0xc865
	.byte	0x1
	.string	"get_vtbl_decl_for_binfo"
	.byte	0x1
	.value	0x1a77
	.byte	0x1
	.long	0x1e6
	.long	.LFB129
	.long	.LFE129
	.long	.LLST114
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1a76
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x1a78
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF67
	.long	0xdaa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.22953
	.byte	0x0
	.uleb128 0x36
	.long	0xc8d2
	.string	"dfs_get_primary_binfo"
	.byte	0x1
	.value	0x1a8e
	.byte	0x1
	.long	0x1e6
	.long	.LFB130
	.long	.LFE130
	.long	.LLST115
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1a8c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x1a8d
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"cons"
	.byte	0x1
	.value	0x1a8f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x1a90
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2e
	.long	0xc9b6
	.byte	0x1
	.string	"get_primary_binfo"
	.byte	0x1
	.value	0x1aa6
	.byte	0x1
	.long	0x1e6
	.long	.LFB131
	.long	.LFE131
	.long	.LLST116
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1aa5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x1aa7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF31
	.byte	0x1
	.value	0x1aa8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF72
	.byte	0x1
	.value	0x1aa9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0xc96e
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1ab3
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x1ab9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0xc9a5
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x31
	.string	"complete_binfo"
	.byte	0x1
	.value	0x1ad7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF107
	.byte	0x1
	.value	0x1ad8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xdaa3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23004
	.byte	0x0
	.uleb128 0x36
	.long	0xca1e
	.string	"maybe_indent_hierarchy"
	.byte	0x1
	.value	0x1afa
	.byte	0x1
	.long	0x2dc
	.long	.LFB132
	.long	.LFE132
	.long	.LLST117
	.uleb128 0x30
	.long	.LASF108
	.byte	0x1
	.value	0x1af7
	.long	0x7fcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"indent"
	.byte	0x1
	.value	0x1af8
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"indented_p"
	.byte	0x1
	.value	0x1af9
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x37
	.long	0xcae9
	.string	"dump_class_hierarchy_r"
	.byte	0x1
	.value	0x1b0b
	.byte	0x1
	.long	.LFB133
	.long	.LFE133
	.long	.LLST118
	.uleb128 0x30
	.long	.LASF108
	.byte	0x1
	.value	0x1b06
	.long	0x7fcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF106
	.byte	0x1
	.value	0x1b07
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1b08
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1b09
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.string	"indent"
	.byte	0x1
	.value	0x1b0a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1b0c
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF109
	.byte	0x1
	.value	0x1b0d
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0xcacf
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x32
	.long	.LASF107
	.byte	0x1
	.value	0x1b1b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x32
	.long	.LASF109
	.byte	0x1
	.value	0x1b38
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xcb3f
	.string	"dump_class_hierarchy"
	.byte	0x1
	.value	0x1b67
	.byte	0x1
	.long	.LFB134
	.long	.LFE134
	.long	.LLST119
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1b66
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF106
	.byte	0x1
	.value	0x1b68
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF108
	.byte	0x1
	.value	0x1b69
	.long	0x7fcc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0xcbba
	.string	"dump_array"
	.byte	0x1
	.value	0x1b7b
	.byte	0x1
	.long	.LFB135
	.long	.LFE135
	.long	.LLST120
	.uleb128 0x30
	.long	.LASF108
	.byte	0x1
	.value	0x1b79
	.long	0x7fcc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF2
	.byte	0x1
	.value	0x1b7a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0x1b7c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"ix"
	.byte	0x1
	.value	0x1b7d
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"elt"
	.byte	0x1
	.value	0x1b7e
	.long	0x451
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"size"
	.byte	0x1
	.value	0x1b7f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x37
	.long	0xcc3e
	.string	"dump_vtable"
	.byte	0x1
	.value	0x1b94
	.byte	0x1
	.long	.LFB136
	.long	.LFE136
	.long	.LLST121
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1b91
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1b92
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF69
	.byte	0x1
	.value	0x1b93
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LASF106
	.byte	0x1
	.value	0x1b95
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF108
	.byte	0x1
	.value	0x1b96
	.long	0x7fcc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x32
	.long	.LASF64
	.byte	0x1
	.value	0x1b9d
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xcc97
	.string	"dump_vtt"
	.byte	0x1
	.value	0x1bb4
	.byte	0x1
	.long	.LFB137
	.long	.LFE137
	.long	.LLST122
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1bb2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"vtt"
	.byte	0x1
	.value	0x1bb3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF106
	.byte	0x1
	.value	0x1bb5
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF108
	.byte	0x1
	.value	0x1bb6
	.long	0x7fcc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0xcd2f
	.string	"finish_vtbls"
	.byte	0x1
	.value	0x1bcd
	.byte	0x1
	.long	.LFB138
	.long	.LFE138
	.long	.LLST123
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1bcc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"list"
	.byte	0x1
	.value	0x1bce
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1bcf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1bd0
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0xcd15
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x31
	.string	"real_base"
	.byte	0x1
	.value	0x1bdc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x32
	.long	.LASF35
	.byte	0x1
	.value	0x1bed
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xcd84
	.string	"initialize_vtable"
	.byte	0x1
	.value	0x1bff
	.byte	0x1
	.long	.LFB139
	.long	.LFE139
	.long	.LLST124
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1bfd
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF61
	.byte	0x1
	.value	0x1bfe
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x1c00
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0xcdd8
	.string	"initialize_array"
	.byte	0x1
	.value	0x1c0f
	.byte	0x1
	.long	.LFB140
	.long	.LFE140
	.long	.LLST125
	.uleb128 0x30
	.long	.LASF2
	.byte	0x1
	.value	0x1c0d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF61
	.byte	0x1
	.value	0x1c0e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF26
	.byte	0x1
	.value	0x1c10
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0xce41
	.string	"build_vtt"
	.byte	0x1
	.value	0x1c2a
	.byte	0x1
	.long	.LFB141
	.long	.LFE141
	.long	.LLST126
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1c29
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0x1c2b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x1c2c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"vtt"
	.byte	0x1
	.value	0x1c2d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x1c2e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xceb8
	.string	"get_original_base"
	.byte	0x1
	.value	0x1c50
	.byte	0x1
	.long	0x1e6
	.long	.LFB142
	.long	.LFE142
	.long	.LLST127
	.uleb128 0x30
	.long	.LASF84
	.byte	0x1
	.value	0x1c4e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1c4f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF59
	.byte	0x1
	.value	0x1c51
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"ix"
	.byte	0x1
	.value	0x1c52
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF67
	.long	0xda9e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23360
	.byte	0x0
	.uleb128 0x36
	.long	0xcf01
	.string	"binfo_ctor_vtable"
	.byte	0x1
	.value	0x1c6a
	.byte	0x1
	.long	0x1e6
	.long	.LFB143
	.long	.LFE143
	.long	.LLST128
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1c69
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"vt"
	.byte	0x1
	.value	0x1c6b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x36
	.long	0xd003
	.string	"build_vtt_inits"
	.byte	0x1
	.value	0x1c89
	.byte	0x1
	.long	0x52c1
	.long	.LFB144
	.long	.LFE144
	.long	.LLST129
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1c85
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1c86
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF61
	.byte	0x1
	.value	0x1c87
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF63
	.byte	0x1
	.value	0x1c88
	.long	0x52c1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1c8a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x1c8b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"init"
	.byte	0x1
	.value	0x1c8c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"secondary_vptrs"
	.byte	0x1
	.value	0x1c8d
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF110
	.byte	0x1
	.value	0x1c8e
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0xcfd5
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1cd4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0xcff2
	.long	.LBB106
	.long	.LBE106
	.uleb128 0x32
	.long	.LASF37
	.byte	0x1
	.value	0x1cdf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xda89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23417
	.byte	0x0
	.uleb128 0x36
	.long	0xd0b6
	.string	"dfs_build_secondary_vptr_vtt_inits"
	.byte	0x1
	.value	0x1cf6
	.byte	0x1
	.long	0x1e6
	.long	.LFB145
	.long	.LFE145
	.long	.LLST130
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1cf4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x1cf5
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.value	0x1cf7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x1cf8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"init"
	.byte	0x1
	.value	0x1cf9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x1cfa
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF110
	.byte	0x1
	.value	0x1cfb
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF67
	.long	0xda74
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23505
	.byte	0x0
	.uleb128 0x36
	.long	0xd10c
	.string	"dfs_ctor_vtable_bases_queue_p"
	.byte	0x1
	.value	0x1d37
	.byte	0x1
	.long	0x1e6
	.long	.LFB146
	.long	.LFE146
	.long	.LLST131
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1d35
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x1d36
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0xd15a
	.string	"dfs_fixup_binfo_vtbls"
	.byte	0x1
	.value	0x1d4a
	.byte	0x1
	.long	0x1e6
	.long	.LFB147
	.long	.LFE147
	.long	.LLST132
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1d48
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF37
	.byte	0x1
	.value	0x1d49
	.long	0x4b8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0xd23d
	.string	"build_ctor_vtbl_group"
	.byte	0x1
	.value	0x1d63
	.byte	0x1
	.long	.LFB148
	.long	.LFE148
	.long	.LLST133
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1d61
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1d62
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"list"
	.byte	0x1
	.value	0x1d64
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x1d65
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"vtbl"
	.byte	0x1
	.value	0x1d66
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0x1d67
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.value	0x1d68
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1d69
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	0xd22c
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x1d7f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"orig_base"
	.byte	0x1
	.value	0x1d80
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xda5f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23733
	.byte	0x0
	.uleb128 0x37
	.long	0xd2fb
	.string	"accumulate_vtbl_inits"
	.byte	0x1
	.value	0x1da7
	.byte	0x1
	.long	.LFB149
	.long	.LFE149
	.long	.LLST134
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1da2
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF100
	.byte	0x1
	.value	0x1da3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF60
	.byte	0x1
	.value	0x1da4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1da5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF61
	.byte	0x1
	.value	0x1da6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1da8
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF64
	.byte	0x1
	.value	0x1da9
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	0xd2ea
	.long	.LBB108
	.long	.LBE108
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x1dc7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xda5a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23785
	.byte	0x0
	.uleb128 0x36
	.long	0xd402
	.string	"dfs_accumulate_vtbl_inits"
	.byte	0x1
	.value	0x1ddd
	.byte	0x1
	.long	0x1e6
	.long	.LFB150
	.long	.LFE150
	.long	.LLST135
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1dd8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF100
	.byte	0x1
	.value	0x1dd9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF60
	.byte	0x1
	.value	0x1dda
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1ddb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.string	"l"
	.byte	0x1
	.value	0x1ddc
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.value	0x1dde
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"vtbl"
	.byte	0x1
	.value	0x1ddf
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF64
	.byte	0x1
	.value	0x1de0
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0xd3ce
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x1df4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"last"
	.byte	0x1
	.value	0x1df5
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	.LBB110
	.long	.LBE110
	.uleb128 0x32
	.long	.LASF63
	.byte	0x1
	.value	0x1e19
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"non_fn_entries"
	.byte	0x1
	.value	0x1e1a
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xd53d
	.string	"build_vtbl_initializer"
	.byte	0x1
	.value	0x1e5c
	.byte	0x1
	.long	0x1e6
	.long	.LFB151
	.long	.LFE151
	.long	.LLST136
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1e57
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF100
	.byte	0x1
	.value	0x1e58
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1e59
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF60
	.byte	0x1
	.value	0x1e5a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.string	"non_fn_entries_p"
	.byte	0x1
	.value	0x1e5b
	.long	0x810
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.string	"v"
	.byte	0x1
	.value	0x1e5d
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x1e5d
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"vfun_inits"
	.byte	0x1
	.value	0x1e5e
	.long	0x1e6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1e5f
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"vid"
	.byte	0x1
	.value	0x1e60
	.long	0x88a9
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.long	0xd52c
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x1e99
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"vcall_index"
	.byte	0x1
	.value	0x1e9a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x1e9b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"init"
	.byte	0x1
	.value	0x1e9c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xda45
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.23960
	.byte	0x0
	.uleb128 0x37
	.long	0xd5a1
	.string	"build_vcall_and_vbase_vtbl_entries"
	.byte	0x1
	.value	0x1ef8
	.byte	0x1
	.long	.LFB152
	.long	.LFE152
	.long	.LLST137
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1ef6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"vid"
	.byte	0x1
	.value	0x1ef7
	.long	0xd5a1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x1ef9
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x88a9
	.uleb128 0x37
	.long	0xd69b
	.string	"build_vbase_offset_vtbl_entries"
	.byte	0x1
	.value	0x1f10
	.byte	0x1
	.long	.LFB153
	.long	.LFE153
	.long	.LLST138
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1f0e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"vid"
	.byte	0x1
	.value	0x1f0f
	.long	0xd5a1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF62
	.byte	0x1
	.value	0x1f11
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x1f12
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF111
	.byte	0x1
	.value	0x1f13
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0xd640
	.long	.LBB112
	.long	.LBE112
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x1f22
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x33
	.long	0xd68a
	.long	.LBB113
	.long	.LBE113
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x1f39
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.value	0x1f3a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LBB114
	.long	.LBE114
	.uleb128 0x31
	.string	"orig_vbase"
	.byte	0x1
	.value	0x1f53
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xda30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24120
	.byte	0x0
	.uleb128 0x37
	.long	0xd6ef
	.string	"build_vcall_offset_vtbl_entries"
	.byte	0x1
	.value	0x1f7a
	.byte	0x1
	.long	.LFB154
	.long	.LFE154
	.long	.LLST139
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1f78
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"vid"
	.byte	0x1
	.value	0x1f79
	.long	0xd5a1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0xd778
	.string	"add_vcall_offset_vtbl_entries_r"
	.byte	0x1
	.value	0x1fa2
	.byte	0x1
	.long	.LFB155
	.long	.LFE155
	.long	.LLST140
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1fa0
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"vid"
	.byte	0x1
	.value	0x1fa1
	.long	0xd5a1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1fa3
	.long	0x2dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF104
	.byte	0x1
	.value	0x1fa4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x32
	.long	.LASF84
	.byte	0x1
	.value	0x1fb8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xd898
	.string	"add_vcall_offset_vtbl_entries_1"
	.byte	0x1
	.value	0x1fc6
	.byte	0x1
	.long	.LFB156
	.long	.LFE156
	.long	.LLST141
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x1fc4
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"vid"
	.byte	0x1
	.value	0x1fc5
	.long	0xd5a1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	0xd7e8
	.long	.LBB116
	.long	.LBE116
	.uleb128 0x32
	.long	.LASF112
	.byte	0x1
	.value	0x1fca
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x33
	.long	0xd887
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x31
	.string	"derived_virtuals"
	.byte	0x1
	.value	0x1fd6
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"base_virtuals"
	.byte	0x1
	.value	0x1fd7
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"orig_virtuals"
	.byte	0x1
	.value	0x1fd8
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF111
	.byte	0x1
	.value	0x1fdb
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0xd86d
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x1fe3
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x32
	.long	.LASF112
	.byte	0x1
	.value	0x2007
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xda2b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24318
	.byte	0x0
	.uleb128 0x37
	.long	0xd956
	.string	"add_vcall_offset"
	.byte	0x1
	.value	0x201c
	.byte	0x1
	.long	.LFB157
	.long	.LFE157
	.long	.LLST142
	.uleb128 0x30
	.long	.LASF112
	.byte	0x1
	.value	0x201b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x201b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"vid"
	.byte	0x1
	.value	0x201b
	.long	0xd5a1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x201d
	.long	0x3eb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF52
	.byte	0x1
	.value	0x201e
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	0xd92e
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x31
	.string	"derived_entry"
	.byte	0x1
	.value	0x2026
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x32
	.long	.LASF35
	.byte	0x1
	.value	0x2043
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x2044
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0xda26
	.string	"build_rtti_vtbl_entries"
	.byte	0x1
	.value	0x2066
	.byte	0x1
	.long	.LFB158
	.long	.LFE158
	.long	.LLST143
	.uleb128 0x30
	.long	.LASF25
	.byte	0x1
	.value	0x2064
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"vid"
	.byte	0x1
	.value	0x2065
	.long	0xd5a1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x2067
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x2068
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF70
	.byte	0x1
	.value	0x2069
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF6
	.byte	0x1
	.value	0x206a
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF2
	.byte	0x1
	.value	0x206b
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"init"
	.byte	0x1
	.value	0x206c
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	0xda15
	.long	.LBB122
	.long	.LBE122
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x2077
	.long	0x1e6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF67
	.long	0xda26
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.24454
	.byte	0x0
	.uleb128 0xa
	.long	0x7db
	.uleb128 0xa
	.long	0x7eb
	.uleb128 0xa
	.long	0x7eb
	.uleb128 0xf
	.long	0xda45
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x16
	.byte	0x0
	.uleb128 0xa
	.long	0xda35
	.uleb128 0xf
	.long	0xda5a
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x15
	.byte	0x0
	.uleb128 0xa
	.long	0xda4a
	.uleb128 0xa
	.long	0xda4a
	.uleb128 0xf
	.long	0xda74
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x22
	.byte	0x0
	.uleb128 0xa
	.long	0xda64
	.uleb128 0xf
	.long	0xda89
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0xda79
	.uleb128 0xf
	.long	0xda9e
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x11
	.byte	0x0
	.uleb128 0xa
	.long	0xda8e
	.uleb128 0xa
	.long	0xda8e
	.uleb128 0xa
	.long	0x7db
	.uleb128 0xa
	.long	0x7fb
	.uleb128 0xf
	.long	0xdac2
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0xdab2
	.uleb128 0xf
	.long	0xdad7
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x26
	.byte	0x0
	.uleb128 0xa
	.long	0xdac7
	.uleb128 0xa
	.long	0xda79
	.uleb128 0xf
	.long	0xdaf1
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x1a
	.byte	0x0
	.uleb128 0xa
	.long	0xdae1
	.uleb128 0xa
	.long	0xda8e
	.uleb128 0xa
	.long	0x7fb
	.uleb128 0xa
	.long	0xda8e
	.uleb128 0xa
	.long	0xda79
	.uleb128 0xa
	.long	0xda4a
	.uleb128 0xa
	.long	0xdae1
	.uleb128 0xa
	.long	0x7db
	.uleb128 0xf
	.long	0xdb29
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0xc
	.byte	0x0
	.uleb128 0xa
	.long	0xdb19
	.uleb128 0xa
	.long	0xda35
	.uleb128 0xf
	.long	0xdb43
	.long	0x2d4
	.uleb128 0x10
	.long	0x3cc
	.byte	0x14
	.byte	0x0
	.uleb128 0xa
	.long	0xdb33
	.uleb128 0xa
	.long	0xda35
	.uleb128 0xa
	.long	0xda79
	.uleb128 0x3d
	.string	"current_class_stack_size"
	.byte	0x1
	.byte	0x6b
	.long	0x2dc
	.byte	0x5
	.byte	0x3
	.long	current_class_stack_size
	.uleb128 0x3d
	.string	"current_class_stack"
	.byte	0x1
	.byte	0x6c
	.long	0x87b1
	.byte	0x5
	.byte	0x3
	.long	current_class_stack
	.uleb128 0x3e
	.string	"target_flags"
	.byte	0x9
	.byte	0x21
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xdbba
	.long	0x2d4
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x3e
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0xdbd2
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xdbaf
	.uleb128 0xf
	.long	0xdbe7
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x3f
	.byte	0x0
	.uleb128 0x40
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0xdbd7
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xdc0e
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0xa
	.byte	0x0
	.uleb128 0x40
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0xdbfe
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xdc36
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x5
	.byte	0x0
	.uleb128 0x40
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xb10
	.long	0xdc26
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"input_filename"
	.byte	0x3
	.value	0xbf6
	.long	0x2c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"lineno"
	.byte	0x3
	.value	0xbf9
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"cfun"
	.byte	0x8
	.value	0x202
	.long	0x4669
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"ridpointers"
	.byte	0xb
	.byte	0x8a
	.long	0x52c1
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xdccb
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x1e
	.byte	0x0
	.uleb128 0x3e
	.string	"c_global_trees"
	.byte	0xb
	.byte	0xee
	.long	0xdcbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"flag_ms_extensions"
	.byte	0xb
	.value	0x19b
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"flag_rtti"
	.byte	0xb
	.value	0x2bb
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"flag_vtable_gc"
	.byte	0xb
	.value	0x2e3
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"flag_abi_version"
	.byte	0xb
	.value	0x2fe
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"warn_abi"
	.byte	0xb
	.value	0x303
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"warn_ctor_dtor_privacy"
	.byte	0xb
	.value	0x30c
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"warn_overloaded_virtual"
	.byte	0xb
	.value	0x312
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"warn_nonvdtor"
	.byte	0xb
	.value	0x317
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"warn_ecpp"
	.byte	0xb
	.value	0x328
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xddda
	.long	0x1e6
	.uleb128 0x10
	.long	0x3cc
	.byte	0x49
	.byte	0x0
	.uleb128 0x40
	.string	"cp_global_trees"
	.byte	0xa
	.value	0x28f
	.long	0xddca
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"scope_chain"
	.byte	0xa
	.value	0x368
	.long	0x6571
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"global_namespace"
	.byte	0xa
	.value	0x3d4
	.long	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"adding_implicit_members"
	.byte	0xa
	.value	0xc9b
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"current_class_depth"
	.byte	0x1
	.byte	0x30
	.long	0x2dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_class_depth
	.uleb128 0x41
	.string	"local_classes"
	.byte	0x1
	.byte	0x70
	.long	0x6185
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	local_classes
	.uleb128 0x40
	.string	"at_eof"
	.byte	0xa
	.value	0xd4d
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xdea1
	.long	0x72ca
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x40
	.string	"operator_name_info"
	.byte	0xa
	.value	0xe32
	.long	0xde96
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"extra_warnings"
	.byte	0x13
	.byte	0x5f
	.long	0x2dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"targetm"
	.byte	0x14
	.value	0x12d
	.long	0x8374
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x8
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
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x37
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
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x3d4
	.value	0x2
	.long	.Ldebug_info0
	.long	0xdee9
	.long	0x88fa
	.string	"build_base_path"
	.long	0x8a63
	.string	"convert_to_base"
	.long	0x8ad6
	.string	"convert_to_base_statically"
	.long	0x8cd9
	.string	"build_vtbl_ref"
	.long	0x8d31
	.string	"build_vfn_ref"
	.long	0x8dc1
	.string	"get_vtt_name"
	.long	0x8e63
	.string	"get_vtable_decl"
	.long	0x90d4
	.string	"add_method"
	.long	0x9d45
	.string	"duplicate_tag_error"
	.long	0x9e8d
	.string	"same_signature_p"
	.long	0xa4af
	.string	"warn_hidden"
	.long	0xa5f8
	.string	"maybe_add_class_template_decl_list"
	.long	0xb1b7
	.string	"clone_function_decl"
	.long	0xb24d
	.string	"adjust_clone_args"
	.long	0xbbfa
	.string	"finish_struct_1"
	.long	0xbd04
	.string	"unreverse_member_declarations"
	.long	0xbd73
	.string	"finish_struct"
	.long	0xbe5d
	.string	"resolves_to_fixed_type_p"
	.long	0xbedc
	.string	"init_class_processing"
	.long	0xbf04
	.string	"pushclass"
	.long	0xbf87
	.string	"invalidate_class_lookup_cache"
	.long	0xbfc9
	.string	"popclass"
	.long	0xbfe4
	.string	"currently_open_class"
	.long	0xc02e
	.string	"currently_open_derived_class"
	.long	0xc080
	.string	"push_nested_class"
	.long	0xc0d9
	.string	"pop_nested_class"
	.long	0xc110
	.string	"current_lang_depth"
	.long	0xc139
	.string	"push_lang_context"
	.long	0xc171
	.string	"pop_lang_context"
	.long	0xc422
	.string	"instantiate_type"
	.long	0xc56d
	.string	"print_class_statistics"
	.long	0xc596
	.string	"build_self_reference"
	.long	0xc5f7
	.string	"is_empty_class"
	.long	0xc683
	.string	"get_enclosing_class"
	.long	0xc6e1
	.string	"is_base_of_enclosing_class"
	.long	0xc735
	.string	"maybe_note_name_used_in_class"
	.long	0xc797
	.string	"note_name_declared_in_class"
	.long	0xc804
	.string	"get_vtbl_decl_for_binfo"
	.long	0xc8d2
	.string	"get_primary_binfo"
	.long	0xde47
	.string	"current_class_depth"
	.long	0xde69
	.string	"local_classes"
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
.LASF82:
	.string	"n_baseclasses"
.LASF24:
	.string	"name"
.LASF31:
	.string	"result"
.LASF28:
	.string	"cannot_inline"
.LASF84:
	.string	"base_binfo"
.LASF52:
	.string	"vcall_offset"
.LASF8:
	.string	"lang_flag_0"
.LASF10:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_4"
.LASF14:
	.string	"lang_flag_6"
.LASF100:
	.string	"orig_binfo"
.LASF80:
	.string	"cant_have_const_ctor_p"
.LASF33:
	.string	"sequence_stack"
.LASF102:
	.string	"exceptions"
.LASF75:
	.string	"method"
.LASF57:
	.string	"mem_attrs"
.LASF36:
	.string	"bindings"
.LASF65:
	.string	"nonnull"
.LASF42:
	.string	"interface_unknown"
.LASF60:
	.string	"rtti_binfo"
.LASF25:
	.string	"binfo"
.LASF90:
	.string	"cant_have_default_ctor"
.LASF48:
	.string	"key_method"
.LASF51:
	.string	"access"
.LASF101:
	.string	"next_field"
.LASF0:
	.string	"common"
.LASF78:
	.string	"fields"
.LASF27:
	.string	"lang_specific"
.LASF23:
	.string	"align"
.LASF61:
	.string	"inits"
.LASF34:
	.string	"sequence_rtl_expr"
.LASF112:
	.string	"orig_fn"
.LASF58:
	.string	"names_used"
.LASF89:
	.string	"base_fndecls"
.LASF79:
	.string	"cant_have_default_ctor_p"
.LASF39:
	.string	"cxx_saved_binding"
.LASF50:
	.string	"befriending_classes"
.LASF30:
	.string	"function_frequency"
.LASF99:
	.string	"vbases_p"
.LASF9:
	.string	"lang_flag_1"
.LASF11:
	.string	"lang_flag_3"
.LASF15:
	.string	"lang_flag_7"
.LASF70:
	.string	"basetype"
.LASF88:
	.string	"variants"
.LASF62:
	.string	"vbase"
.LASF103:
	.string	"virtuals_p"
.LASF4:
	.string	"unsigned int"
.LASF56:
	.string	"operator_name_info_t"
.LASF18:
	.string	"abstract_origin"
.LASF67:
	.string	"__FUNCTION__"
.LASF21:
	.string	"pointer_depth"
.LASF43:
	.string	"use_template"
.LASF63:
	.string	"index"
.LASF59:
	.string	"derived"
.LASF46:
	.string	"vfields"
.LASF22:
	.string	"user_align"
.LASF86:
	.string	"type_binfo"
.LASF68:
	.string	"instance"
.LASF45:
	.string	"primary_base"
.LASF44:
	.string	"contains_empty_class_p"
.LASF92:
	.string	"field_vec"
.LASF85:
	.string	"mappings"
.LASF105:
	.string	"complain"
.LASF19:
	.string	"size_unit"
.LASF107:
	.string	"canonical"
.LASF108:
	.string	"stream"
.LASF3:
	.string	"type"
.LASF53:
	.string	"template_conv_p"
.LASF81:
	.string	"no_const_asn_ref_p"
.LASF29:
	.string	"language"
.LASF109:
	.string	"indented"
.LASF69:
	.string	"vtable"
.LASF41:
	.string	"interface_only"
.LASF91:
	.string	"n_fields"
.LASF77:
	.string	"field"
.LASF76:
	.string	"method_vec"
.LASF73:
	.string	"fndecl"
.LASF32:
	.string	"integer_type_kind"
.LASF7:
	.string	"built_in_class"
.LASF54:
	.string	"delta"
.LASF97:
	.string	"element_type"
.LASF1:
	.string	"identifier"
.LASF13:
	.string	"lang_flag_5"
.LASF17:
	.string	"abstract_flag"
.LASF66:
	.string	"target_type"
.LASF71:
	.string	"cdtorp"
.LASF38:
	.string	"x_stmt_tree"
.LASF26:
	.string	"context"
.LASF40:
	.string	"class_type"
.LASF47:
	.string	"vbases"
.LASF6:
	.string	"offset"
.LASF37:
	.string	"data"
.LASF87:
	.string	"candidate"
.LASF93:
	.string	"cant_have_const_ctor"
.LASF95:
	.string	"any_default_members"
.LASF104:
	.string	"primary_binfo"
.LASF64:
	.string	"ctor_vtbl_p"
.LASF49:
	.string	"template_info"
.LASF111:
	.string	"non_primary_binfo"
.LASF106:
	.string	"flags"
.LASF35:
	.string	"base"
.LASF83:
	.string	"binfos"
.LASF96:
	.string	"access_decls"
.LASF72:
	.string	"virtuals"
.LASF74:
	.string	"base_fndecl"
.LASF16:
	.string	"ht_identifier"
.LASF98:
	.string	"offsets"
.LASF110:
	.string	"top_level_p"
.LASF94:
	.string	"no_const_asn_ref"
.LASF5:
	.string	"_IO_FILE"
.LASF20:
	.string	"attributes"
.LASF2:
	.string	"decl"
.LASF55:
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
