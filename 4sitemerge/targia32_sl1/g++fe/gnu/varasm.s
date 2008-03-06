	.file	"varasm.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	in_section
	.comm	in_section,4,4
	.section	.rodata
.LC0:
	.string	"\t.sdata"
.LC1:
	.string	"%s\n"
	.text
.globl sdata_section
	.type	sdata_section, @function
sdata_section:
.LFB15:
	.file 1 "../../../kg++fe/gnu/varasm.c"
	.loc 1 234 0
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
	.loc 1 234 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$6, %eax
	je	.L4
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	movl	$6, in_section@GOTOFF(%ebx)
.L4:
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	sdata_section, .-sdata_section
	.section	.rodata
.LC2:
	.string	"\t.section .sbss"
	.text
.globl sbss_section
	.type	sbss_section, @function
sbss_section:
.LFB16:
	.loc 1 234 0
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
	.loc 1 234 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$7, %eax
	je	.L8
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	movl	$7, in_section@GOTOFF(%ebx)
.L8:
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	sbss_section, .-sbss_section
	.section	.rodata
.LC3:
	.string	"\t.text"
	.text
.globl text_section
	.type	text_section, @function
text_section:
.LFB17:
	.loc 1 241 0
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
	.loc 1 242 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	je	.L16
	.loc 1 244 0
	movl	$1, in_section@GOTOFF(%ebx)
	.loc 1 246 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L12
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L12
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L12
	movl	asm_out_text_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L12:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L16:
	.loc 1 251 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	text_section, .-text_section
	.section	.rodata
.LC4:
	.string	"\t.data"
	.text
.globl data_section
	.type	data_section, @function
data_section:
.LFB18:
	.loc 1 257 0
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
	.loc 1 258 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$2, %eax
	je	.L22
	.loc 1 260 0
	movl	$2, in_section@GOTOFF(%ebx)
	.loc 1 261 0
	movl	flag_shared_data@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L20
	.loc 1 266 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	jmp	.L22
.L20:
	.loc 1 270 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L22:
	.loc 1 272 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	data_section, .-data_section
.globl force_data_section
	.type	force_data_section, @function
force_data_section:
.LFB19:
	.loc 1 279 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$4, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 280 0
	movl	$0, in_section@GOTOFF(%ebx)
	.loc 1 281 0
	call	data_section@PLT
	.loc 1 282 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	force_data_section, .-force_data_section
	.section	.rodata
.LC5:
	.string	"\t.rdata"
	.text
.globl readonly_data_section
	.type	readonly_data_section, @function
readonly_data_section:
.LFB20:
	.loc 1 289 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$20, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 294 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$5, %eax
	je	.L28
	.loc 1 296 0
	movl	$5, in_section@GOTOFF(%ebx)
	.loc 1 297 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 298 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L28:
	.loc 1 304 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	readonly_data_section, .-readonly_data_section
.globl in_text_section
	.type	in_text_section, @function
in_text_section:
.LFB21:
	.loc 1 310 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 311 0
	movl	in_section@GOTOFF(%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 312 0
	popl	%ebp
	ret
.LFE21:
	.size	in_text_section, .-in_text_section
.globl in_data_section
	.type	in_data_section, @function
in_data_section:
.LFB22:
	.loc 1 318 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 319 0
	movl	in_section@GOTOFF(%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 320 0
	popl	%ebp
	ret
.LFE22:
	.size	in_data_section, .-in_data_section
	.type	in_named_entry_eq, @function
in_named_entry_eq:
.LFB23:
	.loc 1 328 0
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
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 330 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 332 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 333 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	in_named_entry_eq, .-in_named_entry_eq
	.type	in_named_entry_hash, @function
in_named_entry_hash:
.LFB24:
	.loc 1 338 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$20, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 340 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	htab_hash_string@PLT
	.loc 1 341 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	in_named_entry_hash, .-in_named_entry_hash
.globl get_named_section_flags
	.type	get_named_section_flags, @function
get_named_section_flags:
.LFB25:
	.loc 1 351 0
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
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_hash_string@PLT
	movl	in_named_htab@GOTOFF(%ebx), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -8(%ebp)
	.loc 1 358 0
	cmpl	$0, -8(%ebp)
	je	.L38
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L40
.L38:
	movl	$0, -24(%ebp)
.L40:
	movl	-24(%ebp), %eax
	.loc 1 359 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	get_named_section_flags, .-get_named_section_flags
.globl named_section_first_declaration
	.type	named_section_first_declaration, @function
named_section_first_declaration:
.LFB26:
	.loc 1 368 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$36, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 371 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_hash_string@PLT
	movl	in_named_htab@GOTOFF(%ebx), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -8(%ebp)
	.loc 1 374 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L43
	.loc 1 376 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movb	$1, 8(%eax)
	.loc 1 377 0
	movl	$1, -24(%ebp)
	jmp	.L45
.L43:
	.loc 1 381 0
	movl	$0, -24(%ebp)
.L45:
	movl	-24(%ebp), %eax
	.loc 1 383 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	named_section_first_declaration, .-named_section_first_declaration
.globl set_named_section_flags
	.type	set_named_section_flags, @function
set_named_section_flags:
.LFB27:
	.loc 1 393 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$36, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 396 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_hash_string@PLT
	movl	in_named_htab@GOTOFF(%ebx), %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -12(%ebp)
	.loc 1 399 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 401 0
	cmpl	$0, -8(%ebp)
	jne	.L48
	.loc 1 403 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 404 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 405 0
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 406 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 407 0
	movl	-8(%ebp), %eax
	movb	$0, 8(%eax)
	jmp	.L50
.L48:
	.loc 1 409 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L50
	.loc 1 410 0
	movl	$0, -24(%ebp)
	jmp	.L52
.L50:
	.loc 1 412 0
	movl	$1, -24(%ebp)
.L52:
	movl	-24(%ebp), %eax
	.loc 1 413 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	set_named_section_flags, .-set_named_section_flags
	.section	.rodata
	.type	__FUNCTION__.15676, @object
	.size	__FUNCTION__.15676, 20
__FUNCTION__.15676:
	.string	"named_section_flags"
.LC6:
	.string	"../../../kg++fe/gnu/varasm.c"
	.text
.globl named_section_flags
	.type	named_section_flags, @function
named_section_flags:
.LFB28:
	.loc 1 421 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$20, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 422 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$3, %eax
	jne	.L55
	movl	in_named_name@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L62
.L55:
	.loc 1 424 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_named_section_flags@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L58
	.loc 1 425 0
	leal	__FUNCTION__.15676@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$425, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L58:
	.loc 1 427 0
	movl	targetm@GOT(%ebx), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 429 0
	movl	12(%ebp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L60
	.loc 1 430 0
	movl	$0, in_section@GOTOFF(%ebx)
	jmp	.L62
.L60:
	.loc 1 433 0
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, in_named_name@GOTOFF(%ebx)
	.loc 1 434 0
	movl	$3, in_section@GOTOFF(%ebx)
.L62:
	.loc 1 437 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	named_section_flags, .-named_section_flags
	.section	.rodata
	.type	__FUNCTION__.15699, @object
	.size	__FUNCTION__.15699, 14
__FUNCTION__.15699:
	.string	"named_section"
	.align 4
.LC7:
	.string	"%s causes a section type conflict"
	.text
.globl named_section
	.type	named_section, @function
named_section:
.LFB29:
	.loc 1 449 0
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
	.loc 1 452 0
	cmpl	$0, 8(%ebp)
	je	.L64
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L64
	.loc 1 453 0
	leal	__FUNCTION__.15699@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$453, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L64:
	.loc 1 454 0
	cmpl	$0, 12(%ebp)
	jne	.L67
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
.L67:
	.loc 1 457 0
	movl	targetm@GOT(%ebx), %eax
	movl	216(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -8(%ebp)
	.loc 1 464 0
	cmpl	$0, 8(%ebp)
	je	.L69
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_named_section_flags@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L69
	.loc 1 466 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_named_section_flags@PLT
	movl	%eax, -8(%ebp)
	.loc 1 467 0
	movl	-8(%ebp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L69
	.loc 1 468 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L69:
	.loc 1 471 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 472 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	named_section, .-named_section
.globl resolve_unique_section
	.type	resolve_unique_section, @function
resolve_unique_section:
.LFB30:
	.loc 1 481 0
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
	.loc 1 482 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	jne	.L80
	movl	targetm@GOT(%ebx), %eax
	movzbl	244(%eax), %eax
	testb	%al, %al
	je	.L80
	cmpl	$0, 16(%ebp)
	jne	.L78
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L80
.L78:
	.loc 1 486 0
	movl	targetm@GOT(%ebx), %eax
	movl	92(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L80:
	.loc 1 487 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	resolve_unique_section, .-resolve_unique_section
	.section	.rodata
.LC8:
	.string	"\t.section\t.bss"
	.text
.globl bss_section
	.type	bss_section, @function
bss_section:
.LFB31:
	.loc 1 495 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$20, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 496 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$4, %eax
	je	.L84
	.loc 1 503 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 505 0
	movl	$4, in_section@GOTOFF(%ebx)
.L84:
	.loc 1 507 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	bss_section, .-bss_section
	.section	.rodata
.LC9:
	.string	"\t.align\t%d\n"
.LC10:
	.string	"\t.type\t"
.LC11:
	.string	", "
.LC12:
	.string	"object"
.LC13:
	.string	"@%s"
.LC14:
	.string	"\t.size\t"
.LC15:
	.string	"%lld"
.LC16:
	.string	":\n"
.LC17:
	.string	""
.LC18:
	.string	"\t.space\t%u\n"
	.text
	.type	asm_output_aligned_bss, @function
asm_output_aligned_bss:
.LFB32:
	.loc 1 554 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$52, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 555 0
	call	bss_section@PLT
	.loc 1 556 0
	movl	24(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 558 0
	movl	last_assemble_variable_decl@GOT(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.LBB2:
	.loc 1 559 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	movl	size_directive_output@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	flag_inhibit_size_directive@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L86
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L86
	movl	size_directive_output@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.LBB3:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L86:
.LBE3:
	movl	$0, 16(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_declare_object@PLT
.LBE2:
	.loc 1 561 0
	movl	12(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$-128, %eax
	movb	%al, 38(%edx)
	.loc 1 562 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	gxx_emits_decl@PLT
	.loc 1 568 0
	cmpl	$0, 20(%ebp)
	je	.L89
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L91
.L89:
	movl	$1, -28(%ebp)
.L91:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 569 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	asm_output_aligned_bss, .-asm_output_aligned_bss
.globl function_section
	.type	function_section, @function
function_section:
.LFB33:
	.loc 1 584 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$20, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 585 0
	cmpl	$0, 8(%ebp)
	je	.L94
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L94
	.loc 1 587 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section@PLT
	.loc 1 585 0
	jmp	.L98
.L94:
	.loc 1 589 0
	call	text_section@PLT
.L98:
	.loc 1 590 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	function_section, .-function_section
.globl variable_section
	.type	variable_section, @function
variable_section:
.LFB34:
	.loc 1 599 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$20, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 600 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L100
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L102
.L100:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L102
	.loc 1 601 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section@PLT
	.loc 1 600 0
	jmp	.L105
.L102:
	.loc 1 603 0
	movl	targetm@GOT(%ebx), %eax
	movl	84(%eax), %ecx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
.L105:
	.loc 1 604 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	variable_section, .-variable_section
	.section	.rodata
.LC19:
	.string	".rodata.str%d.%d"
.LC20:
	.string	"\t.subsection\t-1"
	.text
.globl mergeable_string_section
	.type	mergeable_string_section, @function
mergeable_string_section:
.LFB35:
	.loc 1 613 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$132, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -84(%ebp)
	.loc 1 613 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 615 0
	movl	flag_merge_constants@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L107
	movl	-76(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L107
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L107
	cmpl	$0, -84(%ebp)
	ja	.L107
	cmpl	$0, -84(%ebp)
	jb	.L112
	cmpl	$256, -88(%ebp)
	ja	.L107
.L112:
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -116(%ebp)
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-108(%ebp), %ecx
	cmpl	%ecx, -116(%ebp)
	jl	.L107
	movl	-108(%ebp), %eax
	cmpl	%eax, -116(%ebp)
	jg	.L114
	movl	-112(%ebp), %edx
	cmpl	%edx, -120(%ebp)
	jb	.L107
.L114:
.LBB4:
	.loc 1 627 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	.loc 1 628 0
	movl	-72(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -68(%ebp)
	.loc 1 629 0
	cmpl	$7, -68(%ebp)
	jbe	.L107
	cmpl	$256, -68(%ebp)
	ja	.L107
	movl	-68(%ebp), %eax
	subl	$1, %eax
	andl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	.L107
	.loc 1 632 0
	movl	-68(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-100(%ebp), %edx
	cmpl	-84(%ebp), %edx
	jb	.L118
	movl	-100(%ebp), %ecx
	cmpl	-84(%ebp), %ecx
	ja	.L120
	movl	-104(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jbe	.L118
.L120:
	.loc 1 633 0
	movl	-68(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
.L118:
	.loc 1 635 0
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 636 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 637 0
	movl	-72(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 640 0
	movl	$0, -60(%ebp)
	jmp	.L121
.L122:
	.loc 1 642 0
	movl	$0, -56(%ebp)
	jmp	.L123
.L124:
	.loc 1 643 0
	movl	-56(%ebp), %eax
	addl	-60(%ebp), %eax
	addl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L125
	.loc 1 642 0
	addl	$1, -56(%ebp)
.L123:
	movl	-56(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jl	.L124
.L125:
	.loc 1 645 0
	movl	-56(%ebp), %eax
	cmpl	-48(%ebp), %eax
	je	.L127
	.loc 1 640 0
	movl	-48(%ebp), %eax
	addl	%eax, -60(%ebp)
.L121:
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L122
.L127:
	.loc 1 648 0
	movl	-48(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-60(%ebp), %eax
	jne	.L107
	.loc 1 650 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	shrdl	$3, %edx, %eax
	shrl	$3, %edx
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	shrl	$3, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-42(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 652 0
	movl	-68(%ebp), %eax
	shrl	$3, %eax
	orl	20(%ebp), %eax
	orl	$98304, %eax
	movl	%eax, 20(%ebp)
	.loc 1 653 0
	cmpl	$0, -60(%ebp)
	jne	.L130
	movl	-68(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-92(%ebp), %edx
	cmpl	-84(%ebp), %edx
	ja	.L130
	movl	-92(%ebp), %ecx
	cmpl	-84(%ebp), %ecx
	jb	.L133
	movl	-96(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jae	.L130
.L133:
	.loc 1 664 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-42(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 665 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 669 0
	jmp	.L135
.L130:
	.loc 1 672 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-42(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 673 0
	jmp	.L135
.L107:
.LBE4:
	.loc 1 678 0
	call	readonly_data_section@PLT
.L135:
	.loc 1 679 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L136
	call	__stack_chk_fail_local
.L136:
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	mergeable_string_section, .-mergeable_string_section
	.section	.rodata
.LC21:
	.string	".rodata.cst%d"
	.text
.globl mergeable_constant_section
	.type	mergeable_constant_section, @function
mergeable_constant_section:
.LFB36:
	.loc 1 688 0
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
	subl	$76, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 688 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 690 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	.loc 1 692 0
	movl	flag_merge_constants@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L138
	cmpl	$0, 8(%ebp)
	je	.L138
	cmpl	$52, 8(%ebp)
	je	.L138
	movl	-48(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %edx
	cmpl	-52(%ebp), %edx
	ja	.L138
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L143
	movl	-64(%ebp), %edx
	cmpl	-56(%ebp), %edx
	ja	.L138
.L143:
	cmpl	$0, -52(%ebp)
	jb	.L138
	cmpl	$0, -52(%ebp)
	ja	.L145
	cmpl	$7, -56(%ebp)
	jbe	.L138
.L145:
	cmpl	$0, -52(%ebp)
	ja	.L138
	cmpl	$0, -52(%ebp)
	jb	.L147
	cmpl	$256, -56(%ebp)
	ja	.L138
.L147:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, %esi
	andl	-56(%ebp), %esi
	movl	%edx, %edi
	andl	-52(%ebp), %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.L138
.LBB5:
	.loc 1 702 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$3, %edx, %eax
	shrl	$3, %edx
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 703 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$3, %edx, %eax
	shrl	$3, %edx
	orl	20(%ebp), %eax
	orb	$128, %ah
	movl	%eax, 20(%ebp)
	.loc 1 704 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 705 0
	jmp	.L150
.L138:
.LBE5:
	.loc 1 708 0
	call	readonly_data_section@PLT
.L150:
	.loc 1 709 0
	movl	-20(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L151
	call	__stack_chk_fail_local
.L151:
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	mergeable_constant_section, .-mergeable_constant_section
	.type	strip_reg_name, @function
strip_reg_name:
.LFB37:
	.loc 1 716 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	.loc 1 721 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	je	.L153
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L155
.L153:
	.loc 1 722 0
	addl	$1, 8(%ebp)
.L155:
	.loc 1 723 0
	movl	8(%ebp), %eax
	.loc 1 724 0
	popl	%ebp
	ret
.LFE37:
	.size	strip_reg_name, .-strip_reg_name
	.section	.rodata
.LC22:
	.string	"$0"
.LC23:
	.string	"$1"
.LC24:
	.string	"$2"
.LC25:
	.string	"$3"
.LC26:
	.string	"$4"
.LC27:
	.string	"$5"
.LC28:
	.string	"$6"
.LC29:
	.string	"$7"
.LC30:
	.string	"$8"
.LC31:
	.string	"$9"
.LC32:
	.string	"$10"
.LC33:
	.string	"$11"
.LC34:
	.string	"$12"
.LC35:
	.string	"$13"
.LC36:
	.string	"$14"
.LC37:
	.string	"$15"
.LC38:
	.string	"$16"
.LC39:
	.string	"$17"
.LC40:
	.string	"$18"
.LC41:
	.string	"$19"
.LC42:
	.string	"$20"
.LC43:
	.string	"$21"
.LC44:
	.string	"$22"
.LC45:
	.string	"$23"
.LC46:
	.string	"$24"
.LC47:
	.string	"$25"
.LC48:
	.string	"$26"
.LC49:
	.string	"$27"
.LC50:
	.string	"$28"
.LC51:
	.string	"$29"
.LC52:
	.string	"$30"
.LC53:
	.string	"$31"
.LC54:
	.string	"$sp"
.LC55:
	.string	"$fp"
.LC56:
	.string	"at"
.LC57:
	.string	"v0"
.LC58:
	.string	"v1"
.LC59:
	.string	"a0"
.LC60:
	.string	"a1"
.LC61:
	.string	"a2"
.LC62:
	.string	"a3"
.LC63:
	.string	"t0"
.LC64:
	.string	"t1"
.LC65:
	.string	"t2"
.LC66:
	.string	"t3"
.LC67:
	.string	"t4"
.LC68:
	.string	"t5"
.LC69:
	.string	"t6"
.LC70:
	.string	"t7"
.LC71:
	.string	"s0"
.LC72:
	.string	"s1"
.LC73:
	.string	"s2"
.LC74:
	.string	"s3"
.LC75:
	.string	"s4"
.LC76:
	.string	"s5"
.LC77:
	.string	"s6"
.LC78:
	.string	"s7"
.LC79:
	.string	"t8"
.LC80:
	.string	"t9"
.LC81:
	.string	"k0"
.LC82:
	.string	"k1"
.LC83:
	.string	"gp"
.LC84:
	.string	"sp"
.LC85:
	.string	"fp"
.LC86:
	.string	"ra"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	table.15929, @object
	.size	table.15929, 536
table.15929:
	.long	.LC22
	.long	0
	.long	.LC23
	.long	1
	.long	.LC24
	.long	2
	.long	.LC25
	.long	3
	.long	.LC26
	.long	4
	.long	.LC27
	.long	5
	.long	.LC28
	.long	6
	.long	.LC29
	.long	7
	.long	.LC30
	.long	8
	.long	.LC31
	.long	9
	.long	.LC32
	.long	10
	.long	.LC33
	.long	11
	.long	.LC34
	.long	12
	.long	.LC35
	.long	13
	.long	.LC36
	.long	14
	.long	.LC37
	.long	15
	.long	.LC38
	.long	16
	.long	.LC39
	.long	17
	.long	.LC40
	.long	18
	.long	.LC41
	.long	19
	.long	.LC42
	.long	20
	.long	.LC43
	.long	21
	.long	.LC44
	.long	22
	.long	.LC45
	.long	23
	.long	.LC46
	.long	24
	.long	.LC47
	.long	25
	.long	.LC48
	.long	26
	.long	.LC49
	.long	27
	.long	.LC50
	.long	28
	.long	.LC51
	.long	29
	.long	.LC52
	.long	30
	.long	.LC53
	.long	31
	.long	.LC54
	.long	29
	.long	.LC55
	.long	30
	.long	.LC56
	.long	1
	.long	.LC57
	.long	2
	.long	.LC58
	.long	3
	.long	.LC59
	.long	4
	.long	.LC60
	.long	5
	.long	.LC61
	.long	6
	.long	.LC62
	.long	7
	.long	.LC63
	.long	8
	.long	.LC64
	.long	9
	.long	.LC65
	.long	10
	.long	.LC66
	.long	11
	.long	.LC67
	.long	12
	.long	.LC68
	.long	13
	.long	.LC69
	.long	14
	.long	.LC70
	.long	15
	.long	.LC71
	.long	16
	.long	.LC72
	.long	17
	.long	.LC73
	.long	18
	.long	.LC74
	.long	19
	.long	.LC75
	.long	20
	.long	.LC76
	.long	21
	.long	.LC77
	.long	22
	.long	.LC78
	.long	23
	.long	.LC79
	.long	24
	.long	.LC80
	.long	25
	.long	.LC81
	.long	26
	.long	.LC82
	.long	27
	.long	.LC83
	.long	28
	.long	.LC84
	.long	29
	.long	.LC85
	.long	30
	.long	.LC86
	.long	31
	.long	.LC54
	.long	29
	.long	.LC55
	.long	30
	.section	.rodata
.LC87:
	.string	"memory"
.LC88:
	.string	"cc"
	.text
.globl decode_reg_name
	.type	decode_reg_name, @function
decode_reg_name:
.LFB38:
	.loc 1 737 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%edi
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$32, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 738 0
	cmpl	$0, 8(%ebp)
	je	.L158
.LBB6:
	.loc 1 743 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_reg_name
	movl	%eax, 8(%ebp)
	.loc 1 746 0
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
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L160
.L161:
	.loc 1 747 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L162
	.loc 1 746 0
	subl	$1, -12(%ebp)
.L160:
	cmpl	$0, -12(%ebp)
	jns	.L161
.L162:
	.loc 1 749 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L164
	cmpl	$0, -12(%ebp)
	jns	.L164
	.loc 1 751 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -12(%ebp)
	.loc 1 752 0
	cmpl	$175, -12(%ebp)
	jg	.L167
	cmpl	$0, -12(%ebp)
	js	.L167
	.loc 1 753 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L170
.L167:
	.loc 1 755 0
	movl	$-2, -28(%ebp)
	jmp	.L170
.L164:
	.loc 1 758 0
	movl	$0, -12(%ebp)
	jmp	.L171
.L172:
	.loc 1 759 0
	movl	-12(%ebp), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L173
	movl	-12(%ebp), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	strip_reg_name
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L173
	.loc 1 761 0
	movl	-12(%ebp), %edi
	movl	%edi, -28(%ebp)
	jmp	.L170
.L173:
	.loc 1 758 0
	addl	$1, -12(%ebp)
.L171:
	cmpl	$175, -12(%ebp)
	jle	.L172
.LBB7:
	.loc 1 768 0
	movl	$0, -12(%ebp)
	jmp	.L177
.L178:
	.loc 1 769 0
	movl	-12(%ebp), %eax
	movl	table.15929@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L179
	.loc 1 770 0
	movl	-12(%ebp), %eax
	movl	4+table.15929@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -28(%ebp)
	jmp	.L170
.L179:
	.loc 1 768 0
	addl	$1, -12(%ebp)
.L177:
	cmpl	$66, -12(%ebp)
	jle	.L178
.LBE7:
	.loc 1 774 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L182
	.loc 1 775 0
	movl	$-4, -28(%ebp)
	jmp	.L170
.L182:
	.loc 1 777 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L184
	.loc 1 778 0
	movl	$-3, -28(%ebp)
	jmp	.L170
.L184:
	.loc 1 780 0
	movl	$-2, -28(%ebp)
	jmp	.L170
.L158:
.LBE6:
	.loc 1 783 0
	movl	$-1, -28(%ebp)
.L170:
	movl	-28(%ebp), %eax
	.loc 1 784 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	decode_reg_name, .-decode_reg_name
	.section	.rodata
	.type	__FUNCTION__.15989, @object
	.size	__FUNCTION__.15989, 14
__FUNCTION__.15989:
	.string	"make_decl_rtl"
	.align 4
.LC89:
	.string	"register name not specified for `%s'"
	.align 4
.LC90:
	.string	"invalid register name for `%s'"
	.align 4
.LC91:
	.string	"data type of `%s' isn't suitable for a register"
	.align 4
.LC92:
	.string	"register specified for `%s' isn't suitable for data type"
	.align 4
.LC93:
	.string	"global register variable has initial value"
	.align 4
.LC94:
	.string	"volatile register variables don't work as you might wish"
	.align 4
.LC95:
	.string	"register name given for non-register variable `%s'"
.LC96:
	.string	"%s.%d"
	.text
.globl make_decl_rtl
	.type	make_decl_rtl, @function
make_decl_rtl:
.LFB39:
	.loc 1 802 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%edi
.LCFI95:
	pushl	%ebx
.LCFI96:
	addl	$-128, %esp
.LCFI97:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 802 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 803 0
	movl	-60(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 804 0
	movl	$0, -40(%ebp)
	.loc 1 805 0
	movl	$0, -36(%ebp)
	.loc 1 811 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	je	.L188
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$37, %al
	je	.L188
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L191
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L191
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L191
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L191
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L191
.L188:
	.loc 1 818 0
	leal	__FUNCTION__.15989@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$818, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L191:
	.loc 1 820 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L196
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L198
.L196:
	.loc 1 822 0
	leal	__FUNCTION__.15989@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$822, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L198:
	.loc 1 826 0
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L199
	.loc 1 829 0
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L201
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L203
.L201:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -96(%ebp)
.L203:
	movl	-96(%ebp), %edx
	movzbl	2(%edx), %eax
	movl	-60(%ebp), %edx
	movzbl	32(%edx), %edx
	cmpb	%dl, %al
	je	.L204
	.loc 1 830 0
	movl	-60(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L206
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L208
.L206:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -88(%ebp)
.L208:
	movl	$1, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-92(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 104(%eax)
.L204:
	.loc 1 841 0
	movl	targetm@GOT(%ebx), %eax
	movl	236(%eax), %edx
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 842 0
	jmp	.L273
.L199:
	.loc 1 845 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 847 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_reg_name@PLT
	movl	%eax, -32(%ebp)
	.loc 1 849 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L210
	.loc 1 851 0
	cmpl	$-2, -32(%ebp)
	jne	.L210
.LBB8:
	.loc 1 855 0
	movl	-64(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -100(%ebp)
	movl	$0, %eax
	cld
	movl	-100(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	24(%esp), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 856 0
	movl	-24(%ebp), %eax
	movb	$42, (%eax)
	.loc 1 857 0
	movl	-24(%ebp), %edx
	addl	$1, %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 1 858 0
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
.L210:
.LBE8:
	.loc 1 861 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L213
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L213
	.loc 1 864 0
	cmpl	$-1, -32(%ebp)
	jne	.L216
	.loc 1 865 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L213
.L216:
	.loc 1 866 0
	cmpl	$0, -32(%ebp)
	jns	.L218
	.loc 1 867 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L213
.L218:
	.loc 1 868 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L220
	.loc 1 869 0
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L213
.L220:
	.loc 1 871 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	-32(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	jne	.L222
	.loc 1 872 0
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L213
.L222:
.LBB9:
	.loc 1 879 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L224
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L224
	.loc 1 881 0
	movl	-60(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 882 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L224:
	.loc 1 884 0
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L227
	.loc 1 885 0
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L227:
	.loc 1 892 0
	movl	-60(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$71, (%esp)
	call	gen_rtx_fmt_i0@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 104(%eax)
	.loc 1 893 0
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L229
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L231
.L229:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -80(%ebp)
.L231:
	movl	-32(%ebp), %eax
	movl	-80(%ebp), %edi
	movl	%eax, 12(%edi)
	.loc 1 894 0
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L232
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L234
.L232:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-60(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -76(%ebp)
.L234:
	movl	-76(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$8, %eax
	movl	-76(%ebp), %edi
	movb	%al, 3(%edi)
	.loc 1 896 0
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L273
	.loc 1 903 0
	movl	-60(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 904 0
	jmp	.L237
.L238:
	.loc 1 905 0
	subl	$1, -20(%ebp)
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	globalize_reg@PLT
.L237:
	.loc 1 904 0
	cmpl	$0, -20(%ebp)
	jg	.L238
	.loc 1 909 0
	jmp	.L273
.L213:
.LBE9:
	.loc 1 916 0
	cmpl	$0, -32(%ebp)
	jns	.L239
	cmpl	$-3, -32(%ebp)
	jne	.L241
.L239:
	.loc 1 917 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L241:
	.loc 1 922 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L242
	movl	-60(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L242
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L242
	movl	-60(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L242
	.loc 1 926 0
	movl	-60(%ebp), %eax
	movzbl	34(%eax), %edx
	andl	$-65, %edx
	movb	%dl, 34(%eax)
.L242:
	.loc 1 929 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L247
	movl	-60(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L247
	.loc 1 930 0
	movl	-60(%ebp), %eax
	movzbl	34(%eax), %edx
	andl	$-65, %edx
	movb	%dl, 34(%eax)
.L247:
	.loc 1 936 0
	cmpl	$0, -44(%ebp)
	jne	.L250
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L250
	movl	-60(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L253
	movl	-60(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L250
.L253:
	cmpl	$0, -64(%ebp)
	jne	.L250
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L250
.LBB10:
	.loc 1 943 0
	movl	-40(%ebp), %eax
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
	addl	$10, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	24(%esp), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %edx
	movl	%edx, -16(%ebp)
	movl	var_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC96@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 944 0
	movl	var_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	var_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 945 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
.L250:
.LBE10:
	.loc 1 948 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L257
	.loc 1 950 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 92(%eax)
	.loc 1 951 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
.L257:
	.loc 1 956 0
	movl	flag_volatile_global@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L259
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L259
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L262
.L259:
	movl	flag_volatile_static@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L263
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L263
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L262
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L263
.L262:
	.loc 1 960 0
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$1, %edx
	movb	%dl, 9(%eax)
.L263:
	.loc 1 962 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L267
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L267
	movl	$5, -68(%ebp)
	jmp	.L270
.L267:
	movl	$4, -68(%ebp)
.L270:
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -28(%ebp)
	.loc 1 963 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-60(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	sall	$6, %edx
	movzbl	3(%ecx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 964 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L271
	.loc 1 965 0
	movl	$1, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
.L271:
	.loc 1 966 0
	movl	-60(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 104(%edx)
	.loc 1 972 0
	movl	targetm@GOT(%ebx), %eax
	movl	236(%eax), %edx
	movl	$1, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L273:
	.loc 1 973 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L274
	call	__stack_chk_fail_local
.L274:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	make_decl_rtl, .-make_decl_rtl
	.section	.rodata
	.type	__FUNCTION__.16211, @object
	.size	__FUNCTION__.16211, 18
__FUNCTION__.16211:
	.string	"make_var_volatile"
	.text
.globl make_var_volatile
	.type	make_var_volatile, @function
make_var_volatile:
.LFB40:
	.loc 1 981 0
	pushl	%ebp
.LCFI98:
	movl	%esp, %ebp
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$20, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 982 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L276
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L278
.L276:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -12(%ebp)
.L278:
	movl	-12(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	je	.L279
	.loc 1 983 0
	leal	__FUNCTION__.16211@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$983, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L279:
	.loc 1 985 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L281
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L283
.L281:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -8(%ebp)
.L283:
	movl	-8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$8, %eax
	movl	-8(%ebp), %edx
	movb	%al, 3(%edx)
	.loc 1 986 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	make_var_volatile, .-make_var_volatile
.globl assemble_constant_align
	.type	assemble_constant_align, @function
assemble_constant_align:
.LFB41:
	.loc 1 993 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$52, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 997 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 999 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L286
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L288
.L286:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L289
	movl	$64, -28(%ebp)
	jmp	.L291
.L289:
	movl	$32, -28(%ebp)
.L291:
	movl	-28(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jle	.L288
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L293
	movl	$64, -24(%ebp)
	jmp	.L295
.L293:
	movl	$32, -24(%ebp)
.L295:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L296
.L288:
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
.L296:
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1002 0
	cmpl	$8, -8(%ebp)
	jle	.L299
	.loc 1 1004 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L299:
	.loc 1 1006 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	assemble_constant_align, .-assemble_constant_align
	.section	.rodata
.LC97:
	.string	"\t%s\n"
	.text
.globl assemble_asm
	.type	assemble_asm, @function
assemble_asm:
.LFB42:
	.loc 1 1014 0
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
	.loc 1 1015 0
	call	app_enable@PLT
	.loc 1 1017 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L301
	.loc 1 1018 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L301:
	.loc 1 1021 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gxx_emits_asm@PLT
	.loc 1 1023 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1024 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	assemble_asm, .-assemble_asm
	.section	.rodata
.LC98:
	.string	"\t.stabs\t"
.LC99:
	.string	" #.stabs\t"
.LC100:
	.string	"%s\"___DTOR_LIST__\",22,0,0,"
	.text
.globl default_stabs_asm_out_destructor
	.type	default_stabs_asm_out_destructor, @function
default_stabs_asm_out_destructor:
.LFB43:
	.loc 1 1034 0
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
	.loc 1 1038 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L305
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L307
.L305:
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L307:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1039 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 1040 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 1041 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	default_stabs_asm_out_destructor, .-default_stabs_asm_out_destructor
	.section	.rodata
.LC101:
	.string	".dtors"
.LC102:
	.string	".dtors.%.5u"
	.text
.globl default_named_section_asm_out_destructor
	.type	default_named_section_asm_out_destructor, @function
default_named_section_asm_out_destructor:
.LFB44:
	.loc 1 1047 0
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
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1047 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1048 0
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1052 0
	cmpl	$65535, 12(%ebp)
	je	.L310
	.loc 1 1054 0
	movl	$65535, %eax
	subl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1059 0
	leal	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L310:
	.loc 1 1062 0
	movl	$512, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 1063 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L312
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L312
	movl	$64, -52(%ebp)
	jmp	.L315
.L312:
	movl	$32, -52(%ebp)
.L315:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
	.loc 1 1064 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L316
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L316
	movl	$64, -48(%ebp)
	jmp	.L319
.L316:
	movl	$32, -48(%ebp)
.L319:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L320
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L320
	movl	$8, -44(%ebp)
	jmp	.L323
.L320:
	movl	$4, -44(%ebp)
.L323:
	movl	$1, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 1065 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L325
	call	__stack_chk_fail_local
.L325:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	default_named_section_asm_out_destructor, .-default_named_section_asm_out_destructor
	.section	.rodata
.LC103:
	.string	"%s\"___CTOR_LIST__\",22,0,0,"
	.text
.globl default_stabs_asm_out_constructor
	.type	default_stabs_asm_out_constructor, @function
default_stabs_asm_out_constructor:
.LFB45:
	.loc 1 1096 0
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
	.loc 1 1100 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L327
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L329
.L327:
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L329:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1101 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 1102 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 1103 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	default_stabs_asm_out_constructor, .-default_stabs_asm_out_constructor
	.section	.rodata
.LC104:
	.string	".ctors"
.LC105:
	.string	".ctors.%.5u"
	.text
.globl default_named_section_asm_out_constructor
	.type	default_named_section_asm_out_constructor, @function
default_named_section_asm_out_constructor:
.LFB46:
	.loc 1 1109 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$68, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1109 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1110 0
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1114 0
	cmpl	$65535, 12(%ebp)
	je	.L332
	.loc 1 1116 0
	movl	$65535, %eax
	subl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1121 0
	leal	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L332:
	.loc 1 1124 0
	movl	$512, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 1125 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L334
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L334
	movl	$64, -52(%ebp)
	jmp	.L337
.L334:
	movl	$32, -52(%ebp)
.L337:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
	.loc 1 1126 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L338
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L338
	movl	$64, -48(%ebp)
	jmp	.L341
.L338:
	movl	$32, -48(%ebp)
.L341:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L342
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L342
	movl	$8, -44(%ebp)
	jmp	.L345
.L342:
	movl	$4, -44(%ebp)
.L345:
	movl	$1, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 1127 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L347
	call	__stack_chk_fail_local
.L347:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	default_named_section_asm_out_constructor, .-default_named_section_asm_out_constructor
	.section	.rodata
.LC106:
	.string	"\t.ent\t"
.LC107:
	.string	"function"
	.text
.globl assemble_start_function
	.type	assemble_start_function, @function
assemble_start_function:
.LFB47:
	.loc 1 1171 0
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
	.loc 1 1176 0
	call	app_disable@PLT
	.loc 1 1178 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L349
	.loc 1 1179 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_pool@PLT
.L349:
	.loc 1 1181 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_unique_section@PLT
	.loc 1 1182 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_section@PLT
	.loc 1 1185 0
	movl	$4, (%esp)
	movl	$0, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1186 0
	movl	force_align_functions_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jge	.L351
	.loc 1 1187 0
	movl	force_align_functions_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L351:
	.loc 1 1188 0
	cmpl	$0, -16(%ebp)
	jle	.L353
	.loc 1 1190 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L353:
	.loc 1 1196 0
	movl	align_functions_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jle	.L355
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	300(%eax), %eax
	testl	%eax, %eax
	je	.L355
	.loc 1 1203 0
	movl	align_functions_log@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L355:
	.loc 1 1211 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 1215 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L358
	.loc 1 1217 0
	movl	first_global_object_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L360
.LBB11:
	.loc 1 1222 0
	movl	targetm@GOT(%ebx), %eax
	movl	240(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 1223 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1225 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L362
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L362
	.loc 1 1226 0
	movl	first_global_object_name@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1225 0
	jmp	.L360
.L362:
	.loc 1 1228 0
	movl	weak_global_object_name@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L360:
.LBE11:
	.loc 1 1231 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	globalize_decl
	.loc 1 1233 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_assemble_visibility
.L358:
	.loc 1 1238 0
	movl	flag_inhibit_size_directive@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L365
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC106@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L365:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1243 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	assemble_start_function, .-assemble_start_function
	.section	.rodata
.LC108:
	.string	"\t.end\t"
	.text
.globl assemble_end_function
	.type	assemble_end_function, @function
assemble_end_function:
.LFB48:
	.loc 1 1252 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	pushl	%ebx
.LCFI132:
	subl	$20, %esp
.LCFI133:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1254 0
	movl	flag_inhibit_size_directive@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L369
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L369:
	.loc 1 1256 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L371
	.loc 1 1258 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_pool@PLT
	.loc 1 1259 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_section@PLT
.L371:
	.loc 1 1263 0
	call	output_after_function_constants
	.loc 1 1264 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	assemble_end_function, .-assemble_end_function
.globl assemble_zeros
	.type	assemble_zeros, @function
assemble_zeros:
.LFB49:
	.loc 1 1271 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	.loc 1 1293 0
	popl	%ebp
	ret
.LFE49:
	.size	assemble_zeros, .-assemble_zeros
.globl assemble_align
	.type	assemble_align, @function
assemble_align:
.LFB50:
	.loc 1 1300 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$20, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1301 0
	cmpl	$8, 8(%ebp)
	jle	.L379
	.loc 1 1303 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L379:
	.loc 1 1305 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	assemble_align, .-assemble_align
.globl assemble_string
	.type	assemble_string, @function
assemble_string:
.LFB51:
	.loc 1 1313 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$36, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1314 0
	movl	$0, -16(%ebp)
	.loc 1 1315 0
	movl	$2000, -12(%ebp)
	.loc 1 1319 0
	jmp	.L381
.L382:
.LBB12:
	.loc 1 1321 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1322 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	.L383
	.loc 1 1323 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L383:
	.loc 1 1325 0
	movl	-8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	mips_output_ascii@PLT
	.loc 1 1327 0
	movl	-8(%ebp), %eax
	addl	%eax, -16(%ebp)
	.loc 1 1328 0
	movl	-8(%ebp), %eax
	addl	%eax, 8(%ebp)
.L381:
.LBE12:
	.loc 1 1319 0
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L382
	.loc 1 1330 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	assemble_string, .-assemble_string
	.section	.rodata
	.type	__FUNCTION__.16497, @object
	.size	__FUNCTION__.16497, 23
__FUNCTION__.16497:
	.string	"asm_emit_uninitialised"
.LC109:
	.string	"\t.local\t"
.LC110:
	.string	"\t.comm\t"
.LC111:
	.string	",%u,%u\n"
	.text
	.type	asm_emit_uninitialised, @function
asm_emit_uninitialised:
.LFB52:
	.loc 1 1377 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%edi
.LCFI146:
	pushl	%esi
.LCFI147:
	pushl	%ebx
.LCFI148:
	subl	$76, %esp
.LCFI149:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1384 0
	movl	$2, -20(%ebp)
	.loc 1 1388 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L388
	.loc 1 1390 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L390
	.loc 1 1392 0
	movl	$1, -20(%ebp)
	jmp	.L388
.L390:
	.loc 1 1397 0
	movl	$0, -20(%ebp)
.L388:
	.loc 1 1400 0
	cmpl	$1, -20(%ebp)
	jne	.L392
	.loc 1 1401 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	globalize_decl
.L392:
	.loc 1 1402 0
	movl	flag_data_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_unique_section@PLT
	.loc 1 1428 0
	movl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	cmpl	$1, -56(%ebp)
	je	.L398
	cmpl	$1, -56(%ebp)
	jb	.L397
	cmpl	$2, -56(%ebp)
	je	.L399
	jmp	.L396
.L398:
	.loc 1 1432 0
	movl	targetm@GOT(%ebx), %eax
	movl	48(%eax), %ecx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	cmpl	$0, 16(%ebp)
	jle	.L400
	movl	mips_section_threshold@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 16(%ebp)
	jg	.L400
	call	sbss_section@PLT
	jmp	.L403
.L400:
	call	bss_section@PLT
.L403:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	movl	last_assemble_variable_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.LBB13:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	movl	size_directive_output@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	flag_inhibit_size_directive@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L404
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L404
	movl	size_directive_output@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.LBB14:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L404:
.LBE14:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 16(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_declare_object@PLT
.LBE13:
	cmpl	$0, 16(%ebp)
	je	.L407
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L409
.L407:
	movl	$1, -52(%ebp)
.L409:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1433 0
	jmp	.L410
.L397:
	.loc 1 1436 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%esi, 20(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	mips_output_aligned_decl_common@PLT
	.loc 1 1437 0
	jmp	.L410
.L399:
	.loc 1 1439 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1440 0
	jmp	.L410
.L396:
	.loc 1 1442 0
	leal	__FUNCTION__.16497@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1442, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L410:
	.loc 1 1445 0
	movl	$1, %eax
	.loc 1 1446 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	asm_emit_uninitialised, .-asm_emit_uninitialised
	.section	.rodata
	.align 4
.LC112:
	.string	"storage size of `%s' isn't known"
	.align 4
.LC113:
	.string	"size of variable `%s' is too large"
	.align 4
.LC114:
	.string	"thread-local COMMON data not implemented"
	.text
.globl assemble_variable
	.type	assemble_variable, @function
assemble_variable:
.LFB53:
	.loc 1 1464 0
	pushl	%ebp
.LCFI150:
	movl	%esp, %ebp
.LCFI151:
	pushl	%esi
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$80, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1467 0
	movl	$0, -16(%ebp)
	.loc 1 1470 0
	movl	last_assemble_variable_decl@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1476 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L470
	.loc 1 1482 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L470
	.loc 1 1486 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L416
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L418
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L420
.L418:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -52(%ebp)
.L420:
	movl	-52(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$71, %ax
	jne	.L416
	.loc 1 1488 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
	.loc 1 1489 0
	jmp	.L470
.L416:
	.loc 1 1495 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L422
	.loc 1 1496 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_decl@PLT
.L422:
	.loc 1 1501 0
	cmpl	$0, 20(%ebp)
	jne	.L424
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L424
	.loc 1 1503 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %esi
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	%edx, 12(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	error_with_file_and_line@PLT
	.loc 1 1507 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
	.loc 1 1508 0
	jmp	.L470
.L424:
	.loc 1 1516 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L470
	.loc 1 1521 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L428
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L430
.L428:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -48(%ebp)
.L430:
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1523 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
	.loc 1 1526 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L470
	.loc 1 1529 0
	call	app_disable@PLT
	.loc 1 1531 0
	cmpl	$0, 20(%ebp)
	jne	.L432
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	jne	.L432
	.loc 1 1534 0
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 1535 0
	jmp	.L470
.L432:
	.loc 1 1538 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1541 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gxx_emits_decl@PLT
	.loc 1 1600 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L435
	.loc 1 1601 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_assemble_visibility
.L435:
	.loc 1 1604 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L437
	.loc 1 1605 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_pointers_p
	testl	%eax, %eax
	je	.L439
	movl	$3, -44(%ebp)
	jmp	.L441
.L439:
	movl	$0, -44(%ebp)
.L441:
	movl	-44(%ebp), %edx
	movl	%edx, -16(%ebp)
	jmp	.L442
.L437:
	.loc 1 1606 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L442
	.loc 1 1607 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -16(%ebp)
.L442:
	.loc 1 1608 0
	movl	flag_data_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_unique_section@PLT
	.loc 1 1614 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	jne	.L444
	cmpl	$0, 20(%ebp)
	jne	.L444
	.loc 1 1617 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L447
	.loc 1 1619 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L444
	.loc 1 1620 0
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
	jmp	.L444
.L447:
	.loc 1 1622 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L470
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L470
	movl	flag_zero_initialized_in_bss@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L444
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L444
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	initializer_zerop@PLT
	testb	%al, %al
	je	.L444
	.loc 1 1654 0
	jmp	.L470
.L444:
	.loc 1 1662 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L456
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L456
	.loc 1 1663 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	globalize_decl
.L456:
	.loc 1 1666 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	variable_section@PLT
	.loc 1 1669 0
	call	in_text_section@PLT
	testl	%eax, %eax
	je	.L459
	.loc 1 1670 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %edx
	orl	$16, %edx
	movb	%dl, 33(%eax)
.L459:
	.loc 1 1673 0
	cmpl	$8, -20(%ebp)
	jbe	.L461
	.loc 1 1675 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	andl	$16777215, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L461:
	.loc 1 1681 0
	movl	last_assemble_variable_decl@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.LBB15:
	.loc 1 1682 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	movl	size_directive_output@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	flag_inhibit_size_directive@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L463
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L463
	movl	size_directive_output@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.LBB16:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L463:
.LBE16:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 16(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_declare_object@PLT
.LBE15:
	.loc 1 1684 0
	movl	8(%ebp), %edx
	movzbl	38(%edx), %eax
	orl	$-128, %eax
	movb	%al, 38(%edx)
	.loc 1 1685 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gxx_emits_decl@PLT
	.loc 1 1692 0
	cmpl	$0, 20(%ebp)
	jne	.L470
	.loc 1 1694 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L467
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L467
	.loc 1 1696 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	68(%eax), %esi
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, (%esp)
	call	output_constant@PLT
	.loc 1 1694 0
	jmp	.L470
.L467:
	.loc 1 1701 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
.L470:
	.loc 1 1703 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE53:
	.size	assemble_variable, .-assemble_variable
	.type	contains_pointers_p, @function
contains_pointers_p:
.LFB54:
	.loc 1 1710 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$28, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1711 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$14, %eax
	movl	%eax, -28(%ebp)
	cmpl	$9, -28(%ebp)
	ja	.L472
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L476@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L476:
	.long	.L473@GOTOFF
	.long	.L473@GOTOFF
	.long	.L473@GOTOFF
	.long	.L472@GOTOFF
	.long	.L472@GOTOFF
	.long	.L474@GOTOFF
	.long	.L472@GOTOFF
	.long	.L475@GOTOFF
	.long	.L475@GOTOFF
	.long	.L475@GOTOFF
	.text
.L473:
	.loc 1 1718 0
	movl	$1, -24(%ebp)
	jmp	.L477
.L475:
.LBB17:
	.loc 1 1726 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L478
.L479:
	.loc 1 1727 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L480
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_pointers_p
	testl	%eax, %eax
	je	.L480
	.loc 1 1729 0
	movl	$1, -24(%ebp)
	jmp	.L477
.L480:
	.loc 1 1726 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L478:
	cmpl	$0, -8(%ebp)
	jne	.L479
	.loc 1 1730 0
	movl	$0, -24(%ebp)
	jmp	.L477
.L474:
.LBE17:
	.loc 1 1735 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_pointers_p
	movl	%eax, -24(%ebp)
	jmp	.L477
.L472:
	.loc 1 1738 0
	movl	$0, -24(%ebp)
.L477:
	movl	-24(%ebp), %eax
	.loc 1 1740 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	contains_pointers_p, .-contains_pointers_p
.globl assemble_external
	.type	assemble_external, @function
assemble_external:
.LFB55:
	.loc 1 1749 0
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
	.loc 1 1760 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L496
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L496
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L496
.LBB18:
	.loc 1 1762 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L490
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L492
.L490:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -24(%ebp)
.L492:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1764 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L496
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L496
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L496
	.loc 1 1768 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$32, %eax
	movb	%al, 3(%edx)
	.loc 1 1769 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	mips_output_external@PLT
.L496:
.LBE18:
	.loc 1 1773 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	assemble_external, .-assemble_external
.globl assemble_external_libcall
	.type	assemble_external_libcall, @function
assemble_external_libcall:
.LFB56:
	.loc 1 1780 0
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
	.loc 1 1783 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L500
	.loc 1 1785 0
	movl	8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$32, %eax
	movb	%al, 3(%edx)
	.loc 1 1786 0
	movl	targetm@GOT(%ebx), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
.L500:
	.loc 1 1789 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	assemble_external_libcall, .-assemble_external_libcall
.globl assemble_label
	.type	assemble_label, @function
assemble_label:
.LFB57:
	.loc 1 1796 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$20, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1797 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1798 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	assemble_label, .-assemble_label
	.section	.rodata
.LC115:
	.string	"..CURRENT_FUNCTION"
.LC116:
	.string	"%U%s"
	.text
.globl assemble_name
	.type	assemble_name, @function
assemble_name:
.LFB58:
	.loc 1 1810 0
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
	.loc 1 1814 0
	movl	targetm@GOT(%ebx), %eax
	movl	240(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 1816 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_get_identifier@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1817 0
	cmpl	$0, -8(%ebp)
	je	.L504
	.loc 1 1818 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$4, %edx
	movb	%dl, 10(%eax)
.L504:
	.loc 1 1820 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L506
	.loc 1 1821 0
	movl	12(%ebp), %edx
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	jmp	.L514
.L506:
	.loc 1 1823 0
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L509
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L511
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L513
.L511:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	104(%eax), %eax
	movl	%eax, -24(%ebp)
.L513:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_fprintf@PLT
	jmp	.L514
.L509:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_fprintf@PLT
.L514:
	.loc 1 1824 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	assemble_name, .-assemble_name
	.section	.rodata
.LC117:
	.string	"LF"
.LC118:
	.string	"$"
.LC119:
	.string	"*%s%s%ld"
	.text
.globl assemble_static_space
	.type	assemble_static_space, @function
assemble_static_space:
.LFB59:
	.loc 1 1832 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	pushl	%ebx
.LCFI177:
	subl	$68, %esp
.LCFI178:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1832 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1842 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1843 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	const_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1844 0
	movl	$-1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1846 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L516
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L516
	movl	$5, -44(%ebp)
	jmp	.L519
.L516:
	movl	$4, -44(%ebp)
.L519:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1853 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC109@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L520
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L522
.L520:
	movl	$16, -40(%ebp)
	jmp	.L523
.L522:
	movl	$8, -40(%ebp)
.L523:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1867 0
	movl	-24(%ebp), %eax
	.loc 1 1868 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L525
	call	__stack_chk_fail_local
.L525:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	assemble_static_space, .-assemble_static_space
	.section	.rodata
.LC120:
	.string	"LTRAMP"
.LC121:
	.string	"%s%s%d:\n"
	.align 4
.LC122:
	.string	"\t.word\t0x03e00821\t\t# move   $1,$31\n"
	.align 4
.LC123:
	.string	"\t.word\t0x04110001\t\t# bgezal $0,.+8\n"
.LC124:
	.string	"\t.word\t0x00000000\t\t# nop\n"
	.align 4
.LC125:
	.string	"\t.word\t0xdfe30014\t\t# ld     $3,20($31)\n"
	.align 4
.LC126:
	.string	"\t.word\t0xdfe2001c\t\t# ld     $2,28($31)\n"
	.align 4
.LC127:
	.string	"\t.word\t0x8fe30014\t\t# lw     $3,20($31)\n"
	.align 4
.LC128:
	.string	"\t.word\t0x8fe20018\t\t# lw     $2,24($31)\n"
	.align 4
.LC129:
	.string	"\t.word\t0x0060c821\t\t# move   $25,$3 (abicalls)\n"
	.align 4
.LC130:
	.string	"\t.word\t0x00600008\t\t# jr     $3\n"
	.align 4
.LC131:
	.string	"\t.word\t0x0020f821\t\t# move   $31,$1\n"
	.align 4
.LC132:
	.string	"\t.dword\t0x00000000\t\t# <function address>\n"
	.align 4
.LC133:
	.string	"\t.dword\t0x00000000\t\t# <static chain value>\n"
	.align 4
.LC134:
	.string	"\t.word\t0x00000000\t\t# <function address>\n"
	.align 4
.LC135:
	.string	"\t.word\t0x00000000\t\t# <static chain value>\n"
	.text
.globl assemble_trampoline_template
	.type	assemble_trampoline_template, @function
assemble_trampoline_template:
.LFB60:
	.loc 1 1877 0
	pushl	%ebp
.LCFI179:
	movl	%esp, %ebp
.LCFI180:
	pushl	%ebx
.LCFI181:
	subl	$324, %esp
.LCFI182:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1877 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 1887 0
	call	readonly_data_section@PLT
	.loc 1 1891 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L527
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L527
	movl	$8, -296(%ebp)
	movl	$0, -292(%ebp)
	jmp	.L530
.L527:
	movl	$4, -296(%ebp)
	movl	$0, -292(%ebp)
.L530:
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -272(%ebp)
	.loc 1 1892 0
	cmpl	$0, -272(%ebp)
	jle	.L531
	.loc 1 1894 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L531:
	.loc 1 1897 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 16(%esp)
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1898 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L533
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L533
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L536
.L533:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L536:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$46, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$31, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L537
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L537
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$41, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$43, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L540
.L537:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$40, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$42, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L540:
	.loc 1 1901 0
	movl	$0, 16(%esp)
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1902 0
	movl	$-1, 4(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -276(%ebp)
	.loc 1 1903 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L541
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L541
	movl	$5, -284(%ebp)
	jmp	.L544
.L541:
	movl	$4, -284(%ebp)
.L544:
	movl	-276(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-284(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	.loc 1 1904 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L546
	call	__stack_chk_fail_local
.L546:
	addl	$324, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	assemble_trampoline_template, .-assemble_trampoline_template
.globl integer_asm_op
	.type	integer_asm_op, @function
integer_asm_op:
.LFB62:
	.loc 1 1929 0
	pushl	%ebp
.LCFI183:
	movl	%esp, %ebp
.LCFI184:
	subl	$20, %esp
.LCFI185:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1932 0
	cmpl	$0, 12(%ebp)
	je	.L548
	.loc 1 1933 0
	movl	targetm@GOT(%ecx), %eax
	leal	12(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L550
.L548:
	.loc 1 1935 0
	movl	targetm@GOT(%ecx), %eax
	leal	28(%eax), %eax
	movl	%eax, -4(%ebp)
.L550:
	.loc 1 1937 0
	cmpl	$16, 8(%ebp)
	ja	.L551
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	.L557@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L557:
	.long	.L551@GOTOFF
	.long	.L552@GOTOFF
	.long	.L553@GOTOFF
	.long	.L551@GOTOFF
	.long	.L554@GOTOFF
	.long	.L551@GOTOFF
	.long	.L551@GOTOFF
	.long	.L551@GOTOFF
	.long	.L555@GOTOFF
	.long	.L551@GOTOFF
	.long	.L551@GOTOFF
	.long	.L551@GOTOFF
	.long	.L551@GOTOFF
	.long	.L551@GOTOFF
	.long	.L551@GOTOFF
	.long	.L551@GOTOFF
	.long	.L556@GOTOFF
	.text
.L552:
	.loc 1 1940 0
	movl	targetm@GOT(%ecx), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L558
.L553:
	.loc 1 1942 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L558
.L554:
	.loc 1 1944 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L558
.L555:
	.loc 1 1946 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L558
.L556:
	.loc 1 1948 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L558
.L551:
	.loc 1 1950 0
	movl	$0, -20(%ebp)
.L558:
	movl	-20(%ebp), %eax
	.loc 1 1952 0
	leave
	ret
.LFE62:
	.size	integer_asm_op, .-integer_asm_op
.globl assemble_integer_with_op
	.type	assemble_integer_with_op, @function
assemble_integer_with_op:
.LFB63:
	.loc 1 1961 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%ebx
.LCFI188:
	subl	$20, %esp
.LCFI189:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1962 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 1963 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	.loc 1 1964 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 1965 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	assemble_integer_with_op, .-assemble_integer_with_op
.globl default_assemble_integer
	.type	default_assemble_integer, @function
default_assemble_integer:
.LFB64:
	.loc 1 1974 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%ebx
.LCFI192:
	subl	$36, %esp
.LCFI193:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1975 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	integer_asm_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1976 0
	cmpl	$0, -8(%ebp)
	je	.L563
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer_with_op@PLT
	movl	$1, -24(%ebp)
	jmp	.L565
.L563:
	movl	$0, -24(%ebp)
.L565:
	movzbl	-24(%ebp), %eax
	movzbl	%al, %eax
	.loc 1 1977 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	default_assemble_integer, .-default_assemble_integer
.globl assemble_integer
	.type	assemble_integer, @function
assemble_integer:
.LFB65:
	.loc 1 1990 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	pushl	%ebx
.LCFI196:
	subl	$52, %esp
.LCFI197:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1993 0
	movl	12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -36(%ebp)
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L568
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L570
.L568:
	movl	$128, -32(%ebp)
	jmp	.L571
.L570:
	movl	$64, -32(%ebp)
.L571:
	movl	-32(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jae	.L572
	movl	12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -40(%ebp)
	jmp	.L574
.L572:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L575
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L577
.L575:
	movl	$128, -28(%ebp)
	jmp	.L578
.L577:
	movl	$64, -28(%ebp)
.L578:
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
.L574:
	movl	-40(%ebp), %eax
	cmpl	16(%ebp), %eax
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 1996 0
	movl	targetm@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testb	%al, %al
	je	.L579
	.loc 1 1997 0
	movl	$1, -24(%ebp)
	jmp	.L581
.L579:
	.loc 1 2000 0
	movl	$1, -24(%ebp)
.L581:
	movl	-24(%ebp), %eax
	.loc 1 2035 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE65:
	.size	assemble_integer, .-assemble_integer
	.section	.rodata
	.type	__FUNCTION__.17030, @object
	.size	__FUNCTION__.17030, 14
__FUNCTION__.17030:
	.string	"assemble_real"
	.text
.globl assemble_real
	.type	assemble_real, @function
assemble_real:
.LFB66:
	.loc 1 2042 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$68, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2045 0
	movl	$32, 4(%esp)
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	call	min_align
	movl	%eax, -8(%ebp)
	.loc 1 2050 0
	movl	32(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$16, -48(%ebp)
	je	.L586
	cmpl	$16, -48(%ebp)
	ja	.L589
	cmpl	$15, -48(%ebp)
	je	.L585
	jmp	.L584
.L589:
	cmpl	$17, -48(%ebp)
	je	.L587
	cmpl	$18, -48(%ebp)
	je	.L588
	jmp	.L584
.L585:
	.loc 1 2053 0
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$32, (%esp)
	call	mode_for_size@PLT
	movl	%eax, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	real_to_target@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2054 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2055 0
	jmp	.L599
.L586:
	.loc 1 2057 0
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$64, (%esp)
	call	mode_for_size@PLT
	movl	%eax, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_target@PLT
	.loc 1 2058 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2059 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2060 0
	jmp	.L599
.L587:
	.loc 1 2062 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L591
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L593
.L591:
	movl	$128, -44(%ebp)
	jmp	.L594
.L593:
	movl	$64, -44(%ebp)
.L594:
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_target@PLT
	.loc 1 2063 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2064 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2065 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2066 0
	jmp	.L599
.L588:
	.loc 1 2068 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L595
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L597
.L595:
	movl	$128, -40(%ebp)
	jmp	.L598
.L597:
	movl	$64, -40(%ebp)
.L598:
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, 8(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_target@PLT
	.loc 1 2069 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2070 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2071 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2072 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	.loc 1 2073 0
	jmp	.L599
.L584:
	.loc 1 2075 0
	leal	__FUNCTION__.17030@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2075, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L599:
	.loc 1 2116 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	assemble_real, .-assemble_real
	.type	min_align, @function
min_align:
.LFB61:
	.loc 1 1913 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	.loc 1 1914 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	orl	%eax, %edx
	movl	12(%ebp), %eax
	orl	8(%ebp), %eax
	negl	%eax
	andl	%edx, %eax
	.loc 1 1915 0
	popl	%ebp
	ret
.LFE61:
	.size	min_align, .-min_align
	.section	.rodata
	.type	__FUNCTION__.17136, @object
	.size	__FUNCTION__.17136, 18
__FUNCTION__.17136:
	.string	"decode_addr_const"
	.text
	.type	decode_addr_const, @function
decode_addr_const:
.LFB67:
	.loc 1 2133 0
	pushl	%ebp
.LCFI204:
	movl	%esp, %ebp
.LCFI205:
	pushl	%esi
.LCFI206:
	pushl	%ebx
.LCFI207:
	subl	$64, %esp
.LCFI208:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2134 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2135 0
	movl	$0, -16(%ebp)
	jmp	.L626
.L603:
.L626:
	.loc 1 2140 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L604
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	byte_position@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L604
	.loc 1 2144 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	int_byte_position@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2145 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2140 0
	jmp	.L603
.L604:
	.loc 1 2147 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	je	.L608
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$45, %al
	jne	.L610
.L608:
	.loc 1 2150 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	-44(%ebp), %ecx
	imull	%eax, %ecx
	movl	-48(%ebp), %esi
	imull	%edx, %esi
	addl	%esi, %ecx
	mull	-48(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2152 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2156 0
	jmp	.L603
.L610:
	.loc 1 2158 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -52(%ebp)
	cmpl	$21, -52(%ebp)
	ja	.L611
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-52(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -56(%ebp)
	movl	-56(%ebp), %eax
	andl	$2097175, %eax
	testl	%eax, %eax
	jne	.L612
	movl	-56(%ebp), %eax
	andl	$544, %eax
	testl	%eax, %eax
	jne	.L613
	movl	-56(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L614
	jmp	.L611
.L613:
	.loc 1 2162 0
	movl	-20(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L615
	movl	-20(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L617
.L615:
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-20(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -36(%ebp)
.L617:
	movl	-36(%ebp), %ecx
	movl	%ecx, -12(%ebp)
	.loc 1 2163 0
	jmp	.L618
.L614:
	.loc 1 2166 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	label_rtx@PLT
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, -32(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L619
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L619
	movl	$5, -28(%ebp)
	jmp	.L622
.L619:
	movl	$4, -28(%ebp)
.L622:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2169 0
	jmp	.L618
.L612:
	.loc 1 2178 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_def@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2179 0
	jmp	.L618
.L611:
	.loc 1 2182 0
	leal	__FUNCTION__.17136@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2182, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L618:
	.loc 1 2185 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L623
	.loc 1 2186 0
	leal	__FUNCTION__.17136@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2186, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L623:
	.loc 1 2187 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2189 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2190 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	12(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 2191 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE67:
	.size	decode_addr_const, .-decode_addr_const
	.type	const_str_htab_hash, @function
const_str_htab_hash:
.LFB68:
	.loc 1 2268 0
	pushl	%ebp
.LCFI209:
	movl	%esp, %ebp
.LCFI210:
	pushl	%ebx
.LCFI211:
	subl	$4, %esp
.LCFI212:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2269 0
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2270 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	const_str_htab_hash, .-const_str_htab_hash
	.type	const_str_htab_eq, @function
const_str_htab_eq:
.LFB69:
	.loc 1 2280 0
	pushl	%ebp
.LCFI213:
	movl	%esp, %ebp
.LCFI214:
	.loc 1 2281 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	.loc 1 2282 0
	popl	%ebp
	ret
.LFE69:
	.size	const_str_htab_eq, .-const_str_htab_eq
	.type	const_hash, @function
const_hash:
.LFB70:
	.loc 1 2289 0
	pushl	%ebp
.LCFI215:
	movl	%esp, %ebp
.LCFI216:
	subl	$24, %esp
.LCFI217:
	.loc 1 2290 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	const_hash_1
	movl	%eax, -8(%ebp)
	movl	$63849861, -12(%ebp)
	movl	-12(%ebp), %eax
	mull	-8(%ebp)
	movl	%edx, %ecx
	movl	-8(%ebp), %eax
	subl	%ecx, %eax
	shrl	%eax
	leal	(%ecx,%eax), %eax
	movl	%eax, %edx
	shrl	$9, %edx
	movl	%edx, -4(%ebp)
	imull	$1009, -4(%ebp), %eax
	movl	-8(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, -4(%ebp)
	movl	-4(%ebp), %eax
	.loc 1 2291 0
	leave
	ret
.LFE70:
	.size	const_hash, .-const_hash
	.section	.rodata
	.type	__FUNCTION__.17273, @object
	.size	__FUNCTION__.17273, 13
__FUNCTION__.17273:
	.string	"const_hash_1"
	.text
	.type	const_hash_1, @function
const_hash_1:
.LFB71:
	.loc 1 2296 0
	pushl	%ebp
.LCFI218:
	movl	%esp, %ebp
.LCFI219:
	pushl	%esi
.LCFI220:
	pushl	%ebx
.LCFI221:
	subl	$80, %esp
.LCFI222:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2296 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2300 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2305 0
	movl	-24(%ebp), %edx
	subl	$26, %edx
	movl	%edx, -72(%ebp)
	cmpl	$100, -72(%ebp)
	ja	.L634
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	.L643@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L643:
	.long	.L635@GOTOFF
	.long	.L636@GOTOFF
	.long	.L637@GOTOFF
	.long	.L634@GOTOFF
	.long	.L638@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L639@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L640@GOTOFF
	.long	.L640@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L641@GOTOFF
	.long	.L641@GOTOFF
	.long	.L641@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L642@GOTOFF
	.long	.L634@GOTOFF
	.long	.L634@GOTOFF
	.long	.L642@GOTOFF
	.text
.L635:
	.loc 1 2308 0
	movl	-60(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -40(%ebp)
	.loc 1 2309 0
	movl	$16, -32(%ebp)
	.loc 1 2310 0
	jmp	.L644
.L636:
	.loc 1 2313 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	real_hash@PLT
	movl	%eax, -68(%ebp)
	jmp	.L645
.L638:
	.loc 1 2316 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2317 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2318 0
	jmp	.L644
.L637:
	.loc 1 2321 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	const_hash_1
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	leal	(%eax,%edx), %esi
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	const_hash_1
	addl	%eax, %esi
	movl	%esi, -68(%ebp)
	jmp	.L645
.L639:
	.loc 1 2325 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L646
.LBB19:
	.loc 1 2329 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2330 0
	movl	-32(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %edx
	movl	%edx, -20(%ebp)
	.loc 1 2331 0
	movl	-20(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_set_constructor_bytes@PLT
	.loc 1 2332 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2333 0
	jmp	.L644
.L646:
.LBE19:
.LBB20:
	.loc 1 2339 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	addl	$5, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2341 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L648
.L649:
	.loc 1 2342 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L650
	.loc 1 2343 0
	movl	-36(%ebp), %eax
	imull	$603, %eax, %esi
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	const_hash_1
	leal	(%esi,%eax), %eax
	movl	%eax, -36(%ebp)
.L650:
	.loc 1 2341 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L648:
	cmpl	$0, -16(%ebp)
	jne	.L649
	.loc 1 2345 0
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L645
.L642:
.LBE20:
.LBB21:
	.loc 1 2353 0
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_addr_const
	.loc 1 2354 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L653
	.loc 1 2358 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -36(%ebp)
	.loc 1 2359 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2360 0
	movl	$0, -28(%ebp)
	jmp	.L655
.L656:
	.loc 1 2361 0
	movl	-36(%ebp), %eax
	imull	$613, %eax, %edx
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2360 0
	addl	$1, -28(%ebp)
.L655:
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L656
	jmp	.L658
.L653:
	.loc 1 2363 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L659
	.loc 1 2364 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %ecx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L658
.L659:
	.loc 1 2366 0
	leal	__FUNCTION__.17273@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2366, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L658:
.LBE21:
	.loc 1 2368 0
	movl	-36(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L645
.L640:
	.loc 1 2372 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	const_hash_1
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	leal	(%eax,%edx), %esi
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	const_hash_1
	addl	%eax, %esi
	movl	%esi, -68(%ebp)
	jmp	.L645
.L641:
	.loc 1 2378 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	const_hash_1
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	$2, %eax
	movl	%eax, -68(%ebp)
	jmp	.L645
.L634:
	.loc 1 2382 0
	movl	-24(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L645
.L644:
	.loc 1 2386 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2387 0
	movl	$0, -28(%ebp)
	jmp	.L661
.L662:
	.loc 1 2388 0
	movl	-36(%ebp), %eax
	imull	$613, %eax, %edx
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2387 0
	addl	$1, -28(%ebp)
.L661:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L662
	.loc 1 2390 0
	movl	-36(%ebp), %edx
	movl	%edx, -68(%ebp)
.L645:
	movl	-68(%ebp), %eax
	.loc 1 2391 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L665
	call	__stack_chk_fail_local
.L665:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE71:
	.size	const_hash_1, .-const_hash_1
	.section	.rodata
	.type	__FUNCTION__.17388, @object
	.size	__FUNCTION__.17388, 17
__FUNCTION__.17388:
	.string	"compare_constant"
	.text
	.type	compare_constant, @function
compare_constant:
.LFB72:
	.loc 1 2400 0
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	pushl	%edi
.LCFI225:
	pushl	%esi
.LCFI226:
	pushl	%ebx
.LCFI227:
	subl	$172, %esp
.LCFI228:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 2400 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 2403 0
	cmpl	$0, -100(%ebp)
	jne	.L667
	.loc 1 2404 0
	cmpl	$0, -104(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -136(%ebp)
	jmp	.L669
.L667:
	.loc 1 2405 0
	cmpl	$0, -104(%ebp)
	jne	.L670
	.loc 1 2406 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L670:
	.loc 1 2408 0
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L672
	.loc 1 2409 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L672:
	.loc 1 2411 0
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -140(%ebp)
	cmpl	$100, -140(%ebp)
	ja	.L674
	movl	-140(%ebp), %eax
	sall	$2, %eax
	movl	.L683@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L683:
	.long	.L675@GOTOFF
	.long	.L676@GOTOFF
	.long	.L677@GOTOFF
	.long	.L674@GOTOFF
	.long	.L678@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L679@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L680@GOTOFF
	.long	.L680@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L680@GOTOFF
	.long	.L681@GOTOFF
	.long	.L681@GOTOFF
	.long	.L681@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L682@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L682@GOTOFF
	.text
.L675:
	.loc 1 2415 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L684
	.loc 1 2416 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L684:
	.loc 1 2417 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	movl	%eax, -136(%ebp)
	jmp	.L669
.L676:
	.loc 1 2421 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L686
	.loc 1 2422 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L686:
	.loc 1 2424 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	real_identical@PLT
	movzbl	%al, %eax
	movl	%eax, -136(%ebp)
	jmp	.L669
.L678:
	.loc 1 2427 0
	movl	flag_writable_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L688
	.loc 1 2428 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L688:
	.loc 1 2430 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L690
	.loc 1 2431 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L690:
	.loc 1 2433 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %edx
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L692
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %ecx
	movl	-104(%ebp), %eax
	movl	24(%eax), %edx
	movl	-100(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -144(%ebp)
	movl	%edx, -148(%ebp)
	movl	%ecx, -152(%ebp)
	cld
	movl	-152(%ebp), %edx
	cmpl	%edx, -152(%ebp)
	movl	-144(%ebp), %esi
	movl	-148(%ebp), %edi
	movl	-152(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L692
	movl	$1, -132(%ebp)
	jmp	.L695
.L692:
	movl	$0, -132(%ebp)
.L695:
	movl	-132(%ebp), %esi
	movl	%esi, -136(%ebp)
	jmp	.L669
.L677:
	.loc 1 2438 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	je	.L696
	movl	-104(%ebp), %eax
	movl	24(%eax), %edx
	movl	-100(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	je	.L696
	movl	$1, -128(%ebp)
	jmp	.L699
.L696:
	movl	$0, -128(%ebp)
.L699:
	movl	-128(%ebp), %edi
	movl	%edi, -136(%ebp)
	jmp	.L669
.L679:
	.loc 1 2442 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2443 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	-52(%ebp), %eax
	je	.L700
	.loc 1 2444 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L700:
	.loc 1 2446 0
	cmpl	$20, -52(%ebp)
	jne	.L702
.LBB22:
	.loc 1 2448 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2451 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L704
	.loc 1 2452 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L704:
	.loc 1 2454 0
	movl	-48(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %edx
	movl	%edx, -44(%ebp)
	.loc 1 2455 0
	movl	-48(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %ecx
	movl	%ecx, -120(%ebp)
	movl	-120(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %esi
	movl	%esi, -40(%ebp)
	.loc 1 2457 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	get_set_constructor_bytes@PLT
	testl	%eax, %eax
	je	.L706
	.loc 1 2458 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L706:
	.loc 1 2459 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	get_set_constructor_bytes@PLT
	testl	%eax, %eax
	je	.L708
	.loc 1 2460 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L708:
	.loc 1 2462 0
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, -156(%ebp)
	movl	%edx, -160(%ebp)
	movl	%ecx, -164(%ebp)
	cld
	movl	-164(%ebp), %edi
	cmpl	%edi, -164(%ebp)
	movl	-156(%ebp), %esi
	movl	-160(%ebp), %edi
	movl	-164(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -136(%ebp)
	jmp	.L669
.L702:
.LBE22:
.LBB23:
	.loc 1 2468 0
	cmpl	$19, -52(%ebp)
	jne	.L710
.LBB24:
	.loc 1 2470 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 2472 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L712
	movl	-60(%ebp), %eax
	xorl	$-1, %eax
	movl	-64(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L712
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L716
.L712:
	.loc 1 2475 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L710:
.LBE24:
	.loc 1 2481 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L716
	.loc 1 2482 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L716:
	.loc 1 2485 0
	movl	-100(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-104(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2486 0
	jmp	.L718
.L719:
	.loc 1 2490 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	jne	.L720
	.loc 1 2491 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L720:
	.loc 1 2493 0
	cmpl	$19, -52(%ebp)
	jne	.L722
	.loc 1 2495 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	jne	.L726
	.loc 1 2497 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L722:
	.loc 1 2501 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L726
	.loc 1 2502 0
	movl	$0, -136(%ebp)
	jmp	.L669
.L726:
	.loc 1 2487 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L718:
	.loc 1 2486 0
	cmpl	$0, -36(%ebp)
	je	.L728
	cmpl	$0, -32(%ebp)
	jne	.L719
.L728:
	.loc 1 2506 0
	cmpl	$0, -36(%ebp)
	jne	.L730
	cmpl	$0, -32(%ebp)
	jne	.L730
	movl	$1, -116(%ebp)
	jmp	.L733
.L730:
	movl	$0, -116(%ebp)
.L733:
	movl	-116(%ebp), %esi
	movl	%esi, -136(%ebp)
	jmp	.L669
.L682:
.LBE23:
.LBB25:
	.loc 1 2514 0
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_addr_const
	.loc 1 2515 0
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_addr_const
	.loc 1 2516 0
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-84(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L734
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L734
	movl	$1, -112(%ebp)
	jmp	.L737
.L734:
	movl	$0, -112(%ebp)
.L737:
	movl	-112(%ebp), %edi
	movl	%edi, -136(%ebp)
	jmp	.L669
.L680:
.LBE25:
	.loc 1 2523 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	je	.L738
	movl	-104(%ebp), %eax
	movl	24(%eax), %edx
	movl	-100(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	je	.L738
	movl	$1, -108(%ebp)
	jmp	.L741
.L738:
	movl	$0, -108(%ebp)
.L741:
	movl	-108(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L669
.L681:
	.loc 1 2529 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	movl	%eax, -136(%ebp)
	jmp	.L669
.L674:
.LBB26:
	.loc 1 2534 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 2535 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	.loc 1 2536 0
	movl	-28(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jne	.L742
	movl	-24(%ebp), %eax
	cmpl	-104(%ebp), %eax
	je	.L744
.L742:
	.loc 1 2537 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_constant
	movl	%eax, -136(%ebp)
	jmp	.L669
.L744:
	.loc 1 2539 0
	movl	$0, -136(%ebp)
.L669:
	movl	-136(%ebp), %eax
.LBE26:
	.loc 1 2545 0
	movl	-20(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L746
	call	__stack_chk_fail_local
.L746:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE72:
	.size	compare_constant, .-compare_constant
.globl defer_addressed_constants
	.type	defer_addressed_constants, @function
defer_addressed_constants:
.LFB73:
	.loc 1 2572 0
	pushl	%ebp
.LCFI229:
	movl	%esp, %ebp
.LCFI230:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2573 0
	movl	defer_addressed_constants_flag@GOTOFF(%ecx), %eax
	addl	$1, %eax
	movl	%eax, defer_addressed_constants_flag@GOTOFF(%ecx)
	.loc 1 2574 0
	popl	%ebp
	ret
.LFE73:
	.size	defer_addressed_constants, .-defer_addressed_constants
.globl output_deferred_addressed_constants
	.type	output_deferred_addressed_constants, @function
output_deferred_addressed_constants:
.LFB74:
	.loc 1 2581 0
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
	.loc 1 2584 0
	movl	defer_addressed_constants_flag@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, defer_addressed_constants_flag@GOTOFF(%ebx)
	.loc 1 2586 0
	movl	defer_addressed_constants_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jg	.L755
	.loc 1 2589 0
	movl	deferred_constants@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L752
.L753:
	.loc 1 2591 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	output_constant_def_contents
	.loc 1 2592 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2593 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2589 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L752:
	cmpl	$0, -12(%ebp)
	jne	.L753
	.loc 1 2596 0
	movl	$0, deferred_constants@GOTOFF(%ebx)
.L755:
	.loc 1 2597 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	output_deferred_addressed_constants, .-output_deferred_addressed_constants
	.type	output_after_function_constants, @function
output_after_function_constants:
.LFB75:
	.loc 1 2603 0
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
	.loc 1 2606 0
	movl	after_function_constants@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L757
.L758:
	.loc 1 2608 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	output_constant_def_contents
	.loc 1 2609 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2610 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2606 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L757:
	cmpl	$0, -12(%ebp)
	jne	.L758
	.loc 1 2613 0
	movl	$0, after_function_constants@GOTOFF(%ebx)
	.loc 1 2614 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	output_after_function_constants, .-output_after_function_constants
	.section	.rodata
	.type	__FUNCTION__.17616, @object
	.size	__FUNCTION__.17616, 14
__FUNCTION__.17616:
	.string	"copy_constant"
	.text
	.type	copy_constant, @function
copy_constant:
.LFB76:
	.loc 1 2622 0
	pushl	%ebp
.LCFI239:
	movl	%esp, %ebp
.LCFI240:
	pushl	%esi
.LCFI241:
	pushl	%ebx
.LCFI242:
	subl	$48, %esp
.LCFI243:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2623 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -32(%ebp)
	cmpl	$97, -32(%ebp)
	ja	.L762
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L769@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L769:
	.long	.L763@GOTOFF
	.long	.L763@GOTOFF
	.long	.L764@GOTOFF
	.long	.L762@GOTOFF
	.long	.L763@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L765@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L766@GOTOFF
	.long	.L766@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L767@GOTOFF
	.long	.L767@GOTOFF
	.long	.L767@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L762@GOTOFF
	.long	.L768@GOTOFF
	.text
.L768:
	.loc 1 2628 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	jne	.L770
	.loc 1 2629 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, -28(%ebp)
	jmp	.L772
.L770:
	.loc 1 2632 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -28(%ebp)
	jmp	.L772
.L763:
	.loc 1 2637 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -28(%ebp)
	jmp	.L772
.L764:
	.loc 1 2640 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_complex@PLT
	movl	%eax, -28(%ebp)
	jmp	.L772
.L766:
	.loc 1 2646 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	jmp	.L772
.L767:
	.loc 1 2653 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, -28(%ebp)
	jmp	.L772
.L765:
.LBB27:
	.loc 1 2658 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2659 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	copy_list@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2662 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 2663 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L773
.L774:
	.loc 1 2664 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2663 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L773:
	cmpl	$0, -16(%ebp)
	jne	.L774
	.loc 1 2665 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L776
	.loc 1 2666 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L778
.L779:
	.loc 1 2667 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2666 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L778:
	cmpl	$0, -16(%ebp)
	jne	.L779
.L776:
	.loc 1 2669 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L772
.L762:
.LBE27:
.LBB28:
	.loc 1 2675 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 2676 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L780
	.loc 1 2677 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, -28(%ebp)
	jmp	.L772
.L780:
	.loc 1 2679 0
	leal	__FUNCTION__.17616@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2679, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L772:
	movl	-28(%ebp), %eax
.LBE28:
	.loc 1 2682 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE76:
	.size	copy_constant, .-copy_constant
	.section	.rodata
.LC136:
	.string	"LC"
	.text
.globl output_constant_def
	.type	output_constant_def, @function
output_constant_def:
.LFB77:
	.loc 1 2702 0
	pushl	%ebp
.LCFI244:
	movl	%esp, %ebp
.LCFI245:
	pushl	%ebx
.LCFI246:
	subl	$340, %esp
.LCFI247:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -312(%ebp)
	.loc 1 2702 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 2708 0
	movl	$1, -288(%ebp)
	.loc 1 2709 0
	movl	$0, -284(%ebp)
	.loc 1 2710 0
	movl	$-1, -280(%ebp)
	.loc 1 2716 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L784
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L784
	cmpl	$0, 12(%ebp)
	jne	.L787
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L784
.L787:
	.loc 1 2718 0
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -324(%ebp)
	jmp	.L789
.L784:
	.loc 1 2723 0
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -292(%ebp)
	.loc 1 2729 0
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	const_hash
	movl	%eax, -304(%ebp)
	.loc 1 2731 0
	movl	-304(%ebp), %eax
	movl	const_hash_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -300(%ebp)
	jmp	.L790
.L791:
	.loc 1 2732 0
	movl	-300(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	jne	.L792
	.loc 1 2731 0
	movl	-300(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -300(%ebp)
.L790:
	cmpl	$0, -300(%ebp)
	jne	.L791
.L792:
	.loc 1 2735 0
	cmpl	$0, -300(%ebp)
	jne	.L794
	.loc 1 2743 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -280(%ebp)
	leal	1(%eax), %edx
	movl	const_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2744 0
	movl	-280(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2746 0
	movl	$16, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -300(%ebp)
	.loc 1 2747 0
	movl	-304(%ebp), %eax
	movl	const_hash_table@GOTOFF(%ebx,%eax,4), %edx
	movl	-300(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2748 0
	movl	$-1, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, %edx
	movl	-300(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2749 0
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %edx
	movl	-300(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2750 0
	movl	-304(%ebp), %edx
	movl	-300(%ebp), %eax
	movl	%eax, const_hash_table@GOTOFF(%ebx,%edx,4)
	.loc 1 2753 0
	movl	-300(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -320(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L796
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L796
	movl	$5, -316(%ebp)
	jmp	.L799
.L796:
	movl	$4, -316(%ebp)
.L799:
	movl	-320(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, %edx
	movl	-312(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, %edx
	movl	-300(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-300(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -276(%ebp)
	.loc 1 2757 0
	movl	$1, 8(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 2758 0
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 2759 0
	movl	const_alias_set@GOTOFF(%ebx), %eax
	movl	4+const_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 2761 0
	movl	$0, -288(%ebp)
	jmp	.L800
.L794:
	.loc 1 2764 0
	movl	-300(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -276(%ebp)
.L800:
	.loc 1 2766 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L801
	.loc 1 2767 0
	movl	-312(%ebp), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 16(%edx)
.L801:
	.loc 1 2774 0
	cmpl	$0, -288(%ebp)
	jne	.L803
	.loc 1 2778 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L805
	.loc 1 2779 0
	movl	targetm@GOT(%ebx), %eax
	movl	236(%eax), %edx
	movl	$1, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L805:
	.loc 1 2781 0
	movl	-300(%ebp), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2782 0
	movl	-300(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-300(%ebp), %eax
	movl	%edx, 4(%eax)
.L803:
	.loc 1 2791 0
	cmpl	$0, -288(%ebp)
	je	.L807
	movl	-276(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L807
	cmpl	$0, 12(%ebp)
	je	.L810
	movl	defer_addressed_constants_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L810
	cmpl	$0, -284(%ebp)
	je	.L807
.L810:
	.loc 1 2795 0
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-300(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-300(%ebp), %eax
	movl	4(%eax), %eax
	movl	const_str_htab@GOTOFF(%ebx), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -296(%ebp)
	.loc 1 2798 0
	cmpl	$0, -296(%ebp)
	je	.L807
	.loc 1 2802 0
	movl	$0, -288(%ebp)
	.loc 1 2803 0
	movl	-296(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -280(%ebp)
	.loc 1 2804 0
	movl	-276(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	andl	$127, %eax
	movb	%al, 3(%edx)
	.loc 1 2805 0
	movl	-296(%ebp), %eax
	movl	const_str_htab@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_clear_slot@PLT
.L807:
	.loc 1 2811 0
	cmpl	$0, -288(%ebp)
	jne	.L814
	.loc 1 2813 0
	movl	defer_addressed_constants_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L816
	cmpl	$0, -284(%ebp)
	je	.L818
.L816:
.LBB29:
	.loc 1 2817 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	%eax, -272(%ebp)
	.loc 1 2819 0
	movl	-300(%ebp), %eax
	movl	12(%eax), %edx
	movl	-272(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2820 0
	movl	-272(%ebp), %edx
	movl	-292(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2821 0
	movl	-272(%ebp), %edx
	movl	-280(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 2822 0
	cmpl	$0, -284(%ebp)
	je	.L819
	.loc 1 2824 0
	movl	after_function_constants@GOTOFF(%ebx), %eax
	movl	-272(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 2825 0
	movl	-272(%ebp), %eax
	movl	%eax, after_function_constants@GOTOFF(%ebx)
	jmp	.L814
.L819:
	.loc 1 2829 0
	movl	deferred_constants@GOTOFF(%ebx), %eax
	movl	-272(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 2830 0
	movl	-272(%ebp), %eax
	movl	%eax, deferred_constants@GOTOFF(%ebx)
	.loc 1 2813 0
	jmp	.L814
.L818:
.LBE29:
	.loc 1 2836 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L814
	.loc 1 2838 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L823
	cmpl	$0, 12(%ebp)
	je	.L823
	movl	flag_writable_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L823
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-300(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-300(%ebp), %eax
	movl	4(%eax), %eax
	movl	const_str_htab@GOTOFF(%ebx), %ecx
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -296(%ebp)
	cmpl	$0, -296(%ebp)
	jne	.L827
.L823:
	.loc 1 2846 0
	movl	-280(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_def_contents
	.loc 1 2838 0
	jmp	.L814
.L827:
.LBB30:
	.loc 1 2851 0
	movl	$12, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -268(%ebp)
	.loc 1 2854 0
	movl	-300(%ebp), %eax
	movl	12(%eax), %edx
	movl	-268(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2855 0
	movl	-300(%ebp), %eax
	movl	4(%eax), %edx
	movl	-268(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2856 0
	movl	-268(%ebp), %edx
	movl	-280(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2857 0
	movl	-296(%ebp), %edx
	movl	-268(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2858 0
	movl	-276(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$-128, %eax
	movb	%al, 3(%edx)
.L814:
.LBE30:
	.loc 1 2864 0
	movl	-276(%ebp), %edx
	movl	%edx, -324(%ebp)
.L789:
	movl	-324(%ebp), %eax
	.loc 1 2865 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L829
	call	__stack_chk_fail_local
.L829:
	addl	$340, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	output_constant_def, .-output_constant_def
	.type	output_constant_def_contents, @function
output_constant_def_contents:
.LFB78:
	.loc 1 2875 0
	pushl	%ebp
.LCFI248:
	movl	%esp, %ebp
.LCFI249:
	pushl	%edi
.LCFI250:
	pushl	%esi
.LCFI251:
	pushl	%ebx
.LCFI252:
	subl	$76, %esp
.LCFI253:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2880 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2882 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L831
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L833
.L831:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L834
	movl	$64, -40(%ebp)
	jmp	.L836
.L834:
	movl	$32, -40(%ebp)
.L836:
	movl	-40(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L833
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L838
	movl	$64, -36(%ebp)
	jmp	.L840
.L838:
	movl	$32, -36(%ebp)
.L840:
	movl	-36(%ebp), %edx
	movl	%edx, -44(%ebp)
	jmp	.L841
.L833:
	movl	-20(%ebp), %esi
	movl	%esi, -44(%ebp)
.L841:
	movl	-44(%ebp), %edi
	movl	%edi, -20(%ebp)
	.loc 1 2885 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L842
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L844
.L842:
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L844
	.loc 1 2886 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section@PLT
	.loc 1 2885 0
	jmp	.L846
.L844:
	.loc 1 2888 0
	movl	targetm@GOT(%ebx), %eax
	movl	84(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
.L846:
	.loc 1 2890 0
	cmpl	$8, -20(%ebp)
	jle	.L847
	.loc 1 2892 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L847:
	.loc 1 2895 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 2896 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L849
	.loc 1 2897 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-60(%ebp), %edi
	cmpl	%edi, -52(%ebp)
	jg	.L851
	movl	-60(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	jl	.L852
	movl	-64(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	jae	.L851
.L852:
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
.L851:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L849:
	.loc 1 2908 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2912 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant@PLT
	.loc 1 2913 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE78:
	.size	output_constant_def_contents, .-output_constant_def_contents
.globl init_varasm_status
	.type	init_varasm_status, @function
init_varasm_status:
.LFB79:
	.loc 1 2960 0
	pushl	%ebp
.LCFI254:
	movl	%esp, %ebp
.LCFI255:
	pushl	%ebx
.LCFI256:
	subl	$20, %esp
.LCFI257:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2962 0
	movl	$24, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2963 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2964 0
	movl	$244, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2968 0
	movl	$244, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2973 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2974 0
	movl	-8(%ebp), %eax
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	.loc 1 2975 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	init_varasm_status, .-init_varasm_status
	.section	.rodata
	.type	__FUNCTION__.17898, @object
	.size	__FUNCTION__.17898, 17
__FUNCTION__.17898:
	.string	"decode_rtx_const"
	.text
	.type	decode_rtx_const, @function
decode_rtx_const:
.LFB80:
	.loc 1 2987 0
	pushl	%ebp
.LCFI258:
	movl	%esp, %ebp
.LCFI259:
	pushl	%edi
.LCFI260:
	pushl	%esi
.LCFI261:
	pushl	%ebx
.LCFI262:
	subl	$60, %esp
.LCFI263:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2989 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	$260, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 2991 0
	movl	16(%ebp), %eax
	movw	$3, (%eax)
	.loc 1 2992 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movw	%dx, 2(%eax)
	.loc 1 2994 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$64, %eax
	movl	%eax, -60(%ebp)
	cmpl	$14, -60(%ebp)
	ja	.L857
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L863@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L863:
	.long	.L858@GOTOFF
	.long	.L859@GOTOFF
	.long	.L860@GOTOFF
	.long	.L857@GOTOFF
	.long	.L861@GOTOFF
	.long	.L862@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L857@GOTOFF
	.long	.L862@GOTOFF
	.long	.L862@GOTOFF
	.text
.L859:
	.loc 1 2997 0
	movl	16(%ebp), %eax
	movw	$1, (%eax)
	.loc 1 2998 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L864
.LBB31:
	.loc 1 3000 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -36(%ebp)
	.loc 1 3002 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbw	%al, %dx
	movl	16(%ebp), %eax
	movw	%dx, 2(%eax)
	.loc 1 3007 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movl	16(%ebp), %edx
	movl	%eax, %ecx
	andl	$3, %ecx
	movzbl	4(%edx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, 4(%edx)
	.loc 1 3008 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	16(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	4(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 4(%ecx)
	.loc 1 3009 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	cmpl	$1, -56(%ebp)
	je	.L868
	cmpl	$1, -56(%ebp)
	jg	.L870
	cmpl	$0, -56(%ebp)
	je	.L873
	jmp	.L866
.L870:
	cmpl	$2, -56(%ebp)
	je	.L873
	cmpl	$3, -56(%ebp)
	je	.L869
	jmp	.L866
.L868:
	.loc 1 3015 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	16(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	4(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, 4(%edx)
.L869:
	.loc 1 3018 0
	movl	-36(%ebp), %edx
	addl	$4, %edx
	movl	16(%ebp), %ecx
	addl	$8, %ecx
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
	.loc 1 3019 0
	jmp	.L873
.L866:
	.loc 1 3021 0
	leal	__FUNCTION__.17898@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3021, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L864:
.LBE31:
	.loc 1 3026 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 3027 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 3029 0
	jmp	.L873
.L860:
.LBB32:
	.loc 1 3035 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3036 0
	movl	16(%ebp), %eax
	movw	$2, (%eax)
	.loc 1 3037 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movw	%dx, 2(%eax)
	.loc 1 3039 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	jne	.L874
	.loc 1 3041 0
	movl	$0, -28(%ebp)
	jmp	.L876
.L877:
.LBB33:
	.loc 1 3043 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3044 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L878
	.loc 1 3046 0
	movl	-28(%ebp), %edi
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	16(%ebp), %esi
	movl	%edi, %eax
	sall	$4, %eax
	movl	%edx, 12(%eax,%esi)
	movl	%ecx, 16(%eax,%esi)
	.loc 1 3047 0
	movl	-28(%ebp), %eax
	movl	16(%ebp), %edx
	sall	$4, %eax
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	jmp	.L880
.L878:
	.loc 1 3051 0
	movl	-28(%ebp), %edi
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	16(%ebp), %esi
	movl	%edi, %eax
	sall	$4, %eax
	movl	%edx, 12(%eax,%esi)
	movl	%ecx, 16(%eax,%esi)
	.loc 1 3052 0
	movl	-28(%ebp), %edi
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	16(%ebp), %esi
	movl	%edi, %eax
	sall	$4, %eax
	movl	%edx, 4(%eax,%esi)
	movl	%ecx, 8(%eax,%esi)
.L880:
.LBE33:
	.loc 1 3041 0
	addl	$1, -28(%ebp)
.L876:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L877
	jmp	.L873
.L874:
	.loc 1 3056 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L883
	.loc 1 3058 0
	movl	$0, -28(%ebp)
	jmp	.L885
.L886:
.LBB34:
	.loc 1 3061 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3062 0
	movl	16(%ebp), %ecx
	addl	$4, %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3067 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movl	-16(%ebp), %edx
	movl	%eax, %ecx
	andl	$3, %ecx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	.loc 1 3068 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-16(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3069 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	cmpl	$1, -52(%ebp)
	je	.L889
	cmpl	$1, -52(%ebp)
	jg	.L891
	cmpl	$0, -52(%ebp)
	je	.L892
	jmp	.L887
.L891:
	cmpl	$2, -52(%ebp)
	je	.L892
	cmpl	$3, -52(%ebp)
	je	.L890
	jmp	.L887
.L889:
	.loc 1 3075 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	-16(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
.L890:
	.loc 1 3078 0
	movl	-20(%ebp), %edx
	addl	$4, %edx
	movl	-16(%ebp), %ecx
	addl	$4, %ecx
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
	.loc 1 3079 0
	jmp	.L892
.L887:
	.loc 1 3081 0
	leal	__FUNCTION__.17898@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3081, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L892:
.LBE34:
	.loc 1 3058 0
	addl	$1, -28(%ebp)
.L885:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L886
	jmp	.L873
.L883:
	.loc 1 3086 0
	leal	__FUNCTION__.17898@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3086, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L858:
.LBE32:
	.loc 1 3091 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 3092 0
	jmp	.L873
.L862:
	.loc 1 3097 0
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3098 0
	jmp	.L873
.L861:
	.loc 1 3101 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3102 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L894
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L894
	.loc 1 3104 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3105 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 3102 0
	jmp	.L873
.L894:
	.loc 1 3107 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L898
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L898
	.loc 1 3109 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3110 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 3107 0
	jmp	.L873
.L898:
	.loc 1 3114 0
	movl	16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 3115 0
	movl	16(%ebp), %eax
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 3117 0
	jmp	.L873
.L857:
	.loc 1 3120 0
	movl	16(%ebp), %eax
	movw	$0, (%eax)
.L873:
	.loc 1 3124 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	jne	.L901
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L901
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$52, %ax
	jne	.L901
	.loc 1 3134 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L901
	.loc 1 3136 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	16(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 3137 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
.L901:
	.loc 1 3141 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$2, %ax
	jbe	.L911
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L911
	.loc 1 3142 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	cmpl	$77, -48(%ebp)
	je	.L909
	cmpl	$78, -48(%ebp)
	je	.L910
	jmp	.L911
.L910:
	.loc 1 3147 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 3148 0
	movl	16(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 3149 0
	jmp	.L911
.L909:
	.loc 1 3153 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
.L911:
	.loc 1 3158 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE80:
	.size	decode_rtx_const, .-decode_rtx_const
.globl simplify_subtraction
	.type	simplify_subtraction, @function
simplify_subtraction:
.LFB81:
	.loc 1 3166 0
	pushl	%ebp
.LCFI264:
	movl	%esp, %ebp
.LCFI265:
	pushl	%edi
.LCFI266:
	pushl	%esi
.LCFI267:
	pushl	%ebx
.LCFI268:
	subl	$572, %esp
.LCFI269:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3169 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	leal	-276(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	decode_rtx_const
	.loc 1 3170 0
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	leal	-536(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	decode_rtx_const
	.loc 1 3172 0
	movzwl	-276(%ebp), %eax
	cmpw	$2, %ax
	jbe	.L913
	movzwl	-276(%ebp), %edx
	movzwl	-536(%ebp), %eax
	cmpw	%ax, %dx
	jne	.L913
	movl	-272(%ebp), %edx
	movl	-532(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L913
	movl	-268(%ebp), %edx
	movl	-528(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L913
	.loc 1 3176 0
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-524(%ebp), %eax
	movl	-520(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, -548(%ebp)
	jmp	.L918
.L913:
	.loc 1 3178 0
	movl	8(%ebp), %edi
	movl	%edi, -548(%ebp)
.L918:
	movl	-548(%ebp), %eax
	.loc 1 3179 0
	addl	$572, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE81:
	.size	simplify_subtraction, .-simplify_subtraction
	.type	const_hash_rtx, @function
const_hash_rtx:
.LFB82:
	.loc 1 3187 0
	pushl	%ebp
.LCFI270:
	movl	%esp, %ebp
.LCFI271:
	subl	$296, %esp
.LCFI272:
	.loc 1 3196 0
	leal	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_rtx_const
	.loc 1 3199 0
	movl	$0, -8(%ebp)
	.loc 1 3200 0
	movl	$0, -4(%ebp)
	jmp	.L921
.L922:
	.loc 1 3201 0
	movl	-8(%ebp), %eax
	imull	$613, %eax, %edx
	movl	-4(%ebp), %eax
	movl	-268(%ebp,%eax,4), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3200 0
	addl	$1, -4(%ebp)
.L921:
	cmpl	$64, -4(%ebp)
	jbe	.L922
	.loc 1 3203 0
	movl	-8(%ebp), %ecx
	movl	$1126548799, -280(%ebp)
	movl	-280(%ebp), %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, -276(%ebp)
	imull	$61, -276(%ebp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -276(%ebp)
	movl	-276(%ebp), %eax
	.loc 1 3204 0
	leave
	ret
.LFE82:
	.size	const_hash_rtx, .-const_hash_rtx
	.type	compare_constant_rtx, @function
compare_constant_rtx:
.LFB83:
	.loc 1 3214 0
	pushl	%ebp
.LCFI273:
	movl	%esp, %ebp
.LCFI274:
	pushl	%edi
.LCFI275:
	pushl	%esi
.LCFI276:
	subl	$304, %esp
.LCFI277:
	.loc 1 3217 0
	leal	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_rtx_const
	.loc 1 3220 0
	movl	16(%ebp), %edx
	addl	$8, %edx
	leal	-268(%ebp), %eax
	movl	%eax, -284(%ebp)
	movl	%edx, -288(%ebp)
	movl	$260, -292(%ebp)
	cld
	movl	-284(%ebp), %esi
	movl	-288(%ebp), %edi
	movl	-292(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 3221 0
	addl	$304, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE83:
	.size	compare_constant_rtx, .-compare_constant_rtx
	.type	record_constant_rtx, @function
record_constant_rtx:
.LFB84:
	.loc 1 3230 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	pushl	%ebx
.LCFI280:
	subl	$36, %esp
.LCFI281:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3233 0
	movl	$268, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3234 0
	movl	-8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_rtx_const
	.loc 1 3236 0
	movl	-8(%ebp), %eax
	.loc 1 3237 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	record_constant_rtx, .-record_constant_rtx
.globl mem_for_const_double
	.type	mem_for_const_double, @function
mem_for_const_double:
.LFB85:
	.loc 1 3245 0
	pushl	%ebp
.LCFI282:
	movl	%esp, %ebp
.LCFI283:
	pushl	%esi
.LCFI284:
	pushl	%ebx
.LCFI285:
	subl	$32, %esp
.LCFI286:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3246 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3249 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	const_hash_rtx
	sall	$2, %eax
	leal	(%esi,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L930
.L931:
	.loc 1 3251 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_constant_rtx
	testl	%eax, %eax
	je	.L932
	.loc 1 3252 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L934
.L932:
	.loc 1 3250 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L930:
	.loc 1 3249 0
	cmpl	$0, -12(%ebp)
	jne	.L931
	.loc 1 3254 0
	movl	$0, -28(%ebp)
.L934:
	movl	-28(%ebp), %eax
	.loc 1 3255 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE85:
	.size	mem_for_const_double, .-mem_for_const_double
.globl force_const_mem
	.type	force_const_mem, @function
force_const_mem:
.LFB86:
	.loc 1 3264 0
	pushl	%ebp
.LCFI287:
	movl	%esp, %ebp
.LCFI288:
	pushl	%edi
.LCFI289:
	pushl	%esi
.LCFI290:
	pushl	%ebx
.LCFI291:
	subl	$380, %esp
.LCFI292:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -308(%ebp)
	.loc 1 3264 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 3273 0
	movl	targetm@GOT(%ebx), %eax
	movl	224(%eax), %edx
	movl	-308(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testb	%al, %al
	je	.L938
	.loc 1 3274 0
	movl	$0, -356(%ebp)
	jmp	.L940
.L938:
	.loc 1 3278 0
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	const_hash_rtx
	movl	%eax, -296(%ebp)
	.loc 1 3279 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-296(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -292(%ebp)
	jmp	.L941
.L942:
	.loc 1 3280 0
	movl	-292(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_constant_rtx
	testl	%eax, %eax
	je	.L943
	.loc 1 3281 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -356(%ebp)
	jmp	.L940
.L943:
	.loc 1 3279 0
	movl	-292(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -292(%ebp)
.L941:
	cmpl	$0, -292(%ebp)
	jne	.L942
	.loc 1 3286 0
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_constant_rtx
	movl	%eax, -292(%ebp)
	.loc 1 3287 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-296(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-292(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3288 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-296(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-292(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3291 0
	cmpl	$0, 8(%ebp)
	jne	.L946
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -352(%ebp)
	jmp	.L948
.L946:
	movl	8(%ebp), %edx
	movl	%edx, -352(%ebp)
.L948:
	movl	-352(%ebp), %ecx
	movl	%ecx, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -280(%ebp)
	.loc 1 3293 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_tree@PLT
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L949
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_tree@PLT
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L951
.L949:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L952
	movl	$64, -344(%ebp)
	jmp	.L954
.L952:
	movl	$32, -344(%ebp)
.L954:
	movl	-344(%ebp), %esi
	cmpl	-280(%ebp), %esi
	jbe	.L951
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L956
	movl	$64, -340(%ebp)
	jmp	.L958
.L956:
	movl	$32, -340(%ebp)
.L958:
	movl	-340(%ebp), %edi
	movl	%edi, -348(%ebp)
	jmp	.L959
.L951:
	movl	-280(%ebp), %eax
	movl	%eax, -348(%ebp)
.L959:
	movl	-348(%ebp), %edx
	movl	%edx, -280(%ebp)
	.loc 1 3297 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	-280(%ebp), %eax
	shrl	$3, %eax
	subl	$1, %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 3298 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	%esi, -336(%ebp)
	movl	%edi, -332(%ebp)
	movl	-280(%ebp), %eax
	shrl	$3, %eax
	negl	%eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-336(%ebp), %eax
	andl	%esi, %eax
	movl	-332(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 3300 0
	movl	-308(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L960
	.loc 1 3301 0
	movl	-308(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
.L960:
	.loc 1 3304 0
	movl	$40, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -284(%ebp)
	.loc 1 3305 0
	movl	-284(%ebp), %edx
	movl	-292(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3306 0
	movl	-284(%ebp), %edx
	movl	-308(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3307 0
	movl	-284(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3308 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 3309 0
	movl	-284(%ebp), %edx
	movl	-280(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 3310 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	-284(%ebp), %ecx
	movl	%eax, 28(%ecx)
	movl	%edx, 32(%ecx)
	.loc 1 3311 0
	movl	-284(%ebp), %eax
	movl	$1, 36(%eax)
	.loc 1 3312 0
	movl	-284(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 3314 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L962
	.loc 1 3315 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L964
.L962:
	.loc 1 3317 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%eax, 4(%edx)
.L964:
	.loc 1 3319 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3320 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -328(%ebp)
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	8(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-328(%ebp), %edi
	movl	%eax, 16(%edi)
	movl	%edx, 20(%edi)
	.loc 1 3323 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3325 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	const_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3329 0
	movl	-284(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -324(%ebp)
	movl	$-1, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -320(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L965
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L965
	movl	$5, -316(%ebp)
	jmp	.L968
.L965:
	movl	$4, -316(%ebp)
.L968:
	movl	-320(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-316(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -288(%ebp)
	movl	-288(%ebp), %eax
	movl	-324(%ebp), %ecx
	movl	%eax, 4(%ecx)
	.loc 1 3331 0
	movl	const_alias_set@GOTOFF(%ebx), %eax
	movl	4+const_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 3332 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 3333 0
	movl	-288(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$4, %eax
	movb	%al, 3(%edx)
	.loc 1 3336 0
	movl	-288(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	$1126548799, -364(%ebp)
	movl	-364(%ebp), %eax
	mull	%ecx
	movl	%edx, %esi
	shrl	$4, %esi
	movl	%esi, -312(%ebp)
	imull	$61, -312(%ebp), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, -312(%ebp)
	movl	-312(%ebp), %eax
	movl	%eax, -296(%ebp)
	.loc 1 3337 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	-296(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 3338 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	-296(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-284(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3341 0
	movl	-288(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$4, %eax
	movb	%al, 3(%edx)
	.loc 1 3342 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	orl	$32, %eax
	movb	%al, 298(%edx)
	.loc 1 3344 0
	movl	-288(%ebp), %edx
	movl	%edx, -356(%ebp)
.L940:
	movl	-356(%ebp), %eax
	.loc 1 3345 0
	movl	-20(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L970
	call	__stack_chk_fail_local
.L970:
	addl	$380, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE86:
	.size	force_const_mem, .-force_const_mem
	.section	.rodata
	.type	__FUNCTION__.18316, @object
	.size	__FUNCTION__.18316, 19
__FUNCTION__.18316:
	.string	"find_pool_constant"
	.text
	.type	find_pool_constant, @function
find_pool_constant:
.LFB87:
	.loc 1 3354 0
	pushl	%ebp
.LCFI293:
	movl	%esp, %ebp
.LCFI294:
	pushl	%esi
.LCFI295:
	pushl	%ebx
.LCFI296:
	subl	$48, %esp
.LCFI297:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3356 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3358 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %esi
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	movl	$1126548799, -36(%ebp)
	movl	-36(%ebp), %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, -28(%ebp)
	imull	$61, -28(%ebp), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -28(%ebp)
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%esi,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L972
.L973:
	.loc 1 3360 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L974
	.loc 1 3361 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L971
.L974:
	.loc 1 3359 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
.L972:
	.loc 1 3358 0
	cmpl	$0, -16(%ebp)
	jne	.L973
	.loc 1 3363 0
	leal	__FUNCTION__.18316@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3363, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L971:
	.loc 1 3364 0
	movl	-32(%ebp), %eax
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE87:
	.size	find_pool_constant, .-find_pool_constant
.globl get_pool_constant
	.type	get_pool_constant, @function
get_pool_constant:
.LFB88:
	.loc 1 3371 0
	pushl	%ebp
.LCFI298:
	movl	%esp, %ebp
.LCFI299:
	pushl	%ebx
.LCFI300:
	subl	$20, %esp
.LCFI301:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3372 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	12(%eax), %eax
	.loc 1 3373 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE88:
	.size	get_pool_constant, .-get_pool_constant
.globl get_pool_constant_mark
	.type	get_pool_constant_mark, @function
get_pool_constant_mark:
.LFB89:
	.loc 1 3382 0
	pushl	%ebp
.LCFI302:
	movl	%esp, %ebp
.LCFI303:
	pushl	%ebx
.LCFI304:
	subl	$36, %esp
.LCFI305:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3383 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	%eax, -8(%ebp)
	.loc 1 3384 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	setne	%dl
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 3385 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	.loc 1 3386 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE89:
	.size	get_pool_constant_mark, .-get_pool_constant_mark
.globl get_pool_constant_for_function
	.type	get_pool_constant_for_function, @function
get_pool_constant_for_function:
.LFB90:
	.loc 1 3394 0
	pushl	%ebp
.LCFI306:
	movl	%esp, %ebp
.LCFI307:
	subl	$8, %esp
.LCFI308:
	.loc 1 3395 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_pool_constant
	movl	12(%eax), %eax
	.loc 1 3396 0
	leave
	ret
.LFE90:
	.size	get_pool_constant_for_function, .-get_pool_constant_for_function
.globl get_pool_mode
	.type	get_pool_mode, @function
get_pool_mode:
.LFB91:
	.loc 1 3403 0
	pushl	%ebp
.LCFI309:
	movl	%esp, %ebp
.LCFI310:
	pushl	%ebx
.LCFI311:
	subl	$20, %esp
.LCFI312:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3404 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	16(%eax), %eax
	.loc 1 3405 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE91:
	.size	get_pool_mode, .-get_pool_mode
.globl get_pool_mode_for_function
	.type	get_pool_mode_for_function, @function
get_pool_mode_for_function:
.LFB92:
	.loc 1 3411 0
	pushl	%ebp
.LCFI313:
	movl	%esp, %ebp
.LCFI314:
	subl	$8, %esp
.LCFI315:
	.loc 1 3412 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_pool_constant
	movl	16(%eax), %eax
	.loc 1 3413 0
	leave
	ret
.LFE92:
	.size	get_pool_mode_for_function, .-get_pool_mode_for_function
.globl get_pool_offset
	.type	get_pool_offset, @function
get_pool_offset:
.LFB93:
	.loc 1 3420 0
	pushl	%ebp
.LCFI316:
	movl	%esp, %ebp
.LCFI317:
	pushl	%ebx
.LCFI318:
	subl	$20, %esp
.LCFI319:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3421 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	.loc 1 3422 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	get_pool_offset, .-get_pool_offset
.globl get_pool_size
	.type	get_pool_size, @function
get_pool_size:
.LFB94:
	.loc 1 3428 0
	pushl	%ebp
.LCFI320:
	movl	%esp, %ebp
.LCFI321:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 3429 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	.loc 1 3430 0
	popl	%ebp
	ret
.LFE94:
	.size	get_pool_size, .-get_pool_size
	.section	.rodata
	.type	__FUNCTION__.18399, @object
	.size	__FUNCTION__.18399, 21
__FUNCTION__.18399:
	.string	"output_constant_pool"
	.text
.globl output_constant_pool
	.type	output_constant_pool, @function
output_constant_pool:
.LFB95:
	.loc 1 3438 0
	pushl	%ebp
.LCFI322:
	movl	%esp, %ebp
.LCFI323:
	pushl	%edi
.LCFI324:
	pushl	%esi
.LCFI325:
	pushl	%ebx
.LCFI326:
	subl	$108, %esp
.LCFI327:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3446 0
	call	mark_constant_pool
	.loc 1 3452 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L993
.L994:
.LBB35:
	.loc 1 3456 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3458 0
	movl	-48(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L995
	.loc 1 3470 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3471 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -84(%ebp)
	cmpl	$68, -84(%ebp)
	je	.L998
	cmpl	$77, -84(%ebp)
	je	.L999
	jmp	.L997
.L998:
	.loc 1 3474 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L997
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L997
	.loc 1 3477 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L999:
	.loc 1 3481 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3482 0
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1002
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L997
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	jne	.L997
.L1002:
	.loc 1 3486 0
	leal	__FUNCTION__.18399@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3486, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L997:
	.loc 1 3496 0
	movl	targetm@GOT(%ebx), %eax
	movl	88(%eax), %edi
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	$0, %ecx
	movl	-48(%ebp), %eax
	movl	16(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.loc 1 3503 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
	.loc 1 3506 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 16(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3509 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -80(%ebp)
	cmpl	$8, -80(%ebp)
	ja	.L1005
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	.L1010@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1010:
	.long	.L1005@GOTOFF
	.long	.L1006@GOTOFF
	.long	.L1007@GOTOFF
	.long	.L1006@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1005@GOTOFF
	.long	.L1008@GOTOFF
	.long	.L1009@GOTOFF
	.text
.L1007:
	.loc 1 3512 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L1011
	.loc 1 3513 0
	leal	__FUNCTION__.18399@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3513, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1011:
	.loc 1 3515 0
	movl	-44(%ebp), %edx
	addl	$4, %edx
	leal	-72(%ebp), %ecx
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
	.loc 1 3516 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %edx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	call	assemble_real@PLT
	.loc 1 3517 0
	jmp	.L1013
.L1006:
	.loc 1 3521 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	$1, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 3522 0
	jmp	.L1013
.L1009:
.LBB36:
	.loc 1 3529 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1014
	.loc 1 3530 0
	leal	__FUNCTION__.18399@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3530, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1014:
	.loc 1 3532 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3534 0
	movl	$0, -36(%ebp)
	jmp	.L1016
.L1017:
	.loc 1 3536 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3537 0
	movl	-28(%ebp), %edx
	addl	$4, %edx
	leal	-72(%ebp), %ecx
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
	.loc 1 3538 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	call	assemble_real@PLT
	.loc 1 3534 0
	addl	$1, -36(%ebp)
.L1016:
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L1017
	.loc 1 3541 0
	jmp	.L1013
.L1008:
.LBE36:
.LBB37:
	.loc 1 3548 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L1019
	.loc 1 3549 0
	leal	__FUNCTION__.18399@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3549, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1019:
	.loc 1 3551 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3553 0
	movl	$0, -24(%ebp)
	jmp	.L1021
.L1022:
	.loc 1 3555 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3556 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	$1, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 3553 0
	addl	$1, -24(%ebp)
.L1021:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L1022
	.loc 1 3560 0
	jmp	.L1013
.L1005:
.LBE37:
	.loc 1 3563 0
	leal	__FUNCTION__.18399@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3563, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1013:
	.loc 1 3568 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %ecx
	jbe	.L995
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$3, %eax
	jne	.L995
	movl	in_named_name@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_named_section_flags@PLT
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L995
	.loc 1 3571 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
.L995:
.LBE35:
	.loc 1 3452 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L993:
	cmpl	$0, -48(%ebp)
	jne	.L994
	.loc 1 3579 0
	movl	mips_string_length@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3583 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	$0, 12(%eax)
	movl	12(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 3584 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE95:
	.size	output_constant_pool, .-output_constant_pool
	.type	mark_constant_pool, @function
mark_constant_pool:
.LFB96:
	.loc 1 3592 0
	pushl	%ebp
.LCFI328:
	movl	%esp, %ebp
.LCFI329:
	pushl	%ebx
.LCFI330:
	subl	$20, %esp
.LCFI331:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3597 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1030
	movl	const_str_htab@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	htab_elements@PLT
	testl	%eax, %eax
	je	.L1045
.L1030:
	.loc 1 3600 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1033
.L1034:
	.loc 1 3601 0
	movl	-8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 3600 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L1033:
	cmpl	$0, -8(%ebp)
	jne	.L1034
	.loc 1 3603 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	jmp	.L1036
.L1037:
	.loc 1 3604 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1038
	.loc 1 3605 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	mark_constants
.L1038:
	.loc 1 3603 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L1036:
	cmpl	$0, -16(%ebp)
	jne	.L1037
	.loc 1 3607 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3608 0
	jmp	.L1041
.L1042:
	.loc 1 3611 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3613 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1043
	.loc 1 3614 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	mark_constants
.L1043:
	.loc 1 3609 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L1041:
	.loc 1 3608 0
	cmpl	$0, -12(%ebp)
	jne	.L1042
.L1045:
	.loc 1 3616 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE96:
	.size	mark_constant_pool, .-mark_constant_pool
	.section	.rodata
	.type	__FUNCTION__.18573, @object
	.size	__FUNCTION__.18573, 15
__FUNCTION__.18573:
	.string	"mark_constants"
	.text
	.type	mark_constants, @function
mark_constants:
.LFB97:
	.loc 1 3626 0
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
	.loc 1 3630 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L1065
	.loc 1 3633 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1049
	.loc 1 3635 0
	movl	$0, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_constant
	.loc 1 3636 0
	jmp	.L1065
.L1049:
	.loc 1 3642 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1051
	.loc 1 3644 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	mark_constants
	.loc 1 3645 0
	jmp	.L1065
.L1051:
	.loc 1 3648 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3650 0
	movl	$0, -16(%ebp)
	jmp	.L1053
.L1054:
	.loc 1 3652 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -12(%ebp)
	subl	$48, %eax
	movl	%eax, -24(%ebp)
	cmpl	$71, -24(%ebp)
	ja	.L1055
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L1059@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1059:
	.long	.L1060@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1057@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1058@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1060@GOTOFF
	.long	.L1055@GOTOFF
	.long	.L1060@GOTOFF
	.text
.L1058:
	.loc 1 3655 0
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	mark_constants
	.loc 1 3656 0
	jmp	.L1060
.L1057:
	.loc 1 3659 0
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	4(%eax,%edx,8), %eax
	testl	%eax, %eax
	je	.L1060
.LBB38:
	.loc 1 3663 0
	movl	$0, -8(%ebp)
	jmp	.L1063
.L1064:
	.loc 1 3664 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	mark_constants
	.loc 1 3663 0
	addl	$1, -8(%ebp)
.L1063:
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L1064
	.loc 1 3666 0
	jmp	.L1060
.L1055:
.LBE38:
	.loc 1 3684 0
	leal	__FUNCTION__.18573@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3684, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1060:
	.loc 1 3650 0
	addl	$1, -16(%ebp)
.L1053:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-16(%ebp), %eax
	jg	.L1054
.L1065:
	.loc 1 3687 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	mark_constants, .-mark_constants
	.type	mark_constant, @function
mark_constant:
.LFB98:
	.loc 1 3697 0
	pushl	%ebp
.LCFI336:
	movl	%esp, %ebp
.LCFI337:
	pushl	%ebx
.LCFI338:
	subl	$36, %esp
.LCFI339:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3698 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3700 0
	cmpl	$0, -20(%ebp)
	jne	.L1067
	.loc 1 3701 0
	movl	$0, -24(%ebp)
	jmp	.L1069
.L1067:
	.loc 1 3703 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1070
	.loc 1 3705 0
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1072
.LBB39:
	.loc 1 3707 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	%eax, -16(%ebp)
	.loc 1 3708 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L1074
	.loc 1 3710 0
	movl	-16(%ebp), %eax
	movl	$1, 36(%eax)
	.loc 1 3711 0
	movl	-16(%ebp), %edx
	addl	$12, %edx
	movl	$0, 8(%esp)
	leal	mark_constant@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	jmp	.L1070
.L1074:
	.loc 1 3714 0
	movl	$-1, -24(%ebp)
	jmp	.L1069
.L1072:
.LBE39:
	.loc 1 3716 0
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L1070
.LBB40:
	.loc 1 3720 0
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	const_str_htab@GOTOFF(%ebx), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -12(%ebp)
	.loc 1 3723 0
	cmpl	$0, -12(%ebp)
	je	.L1070
.LBB41:
	.loc 1 3725 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3727 0
	movl	-20(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$127, %eax
	movb	%al, 3(%edx)
	.loc 1 3728 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	output_constant_def_contents
	.loc 1 3729 0
	movl	-12(%ebp), %eax
	movl	const_str_htab@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_clear_slot@PLT
.L1070:
.LBE41:
.LBE40:
	.loc 1 3733 0
	movl	$0, -24(%ebp)
.L1069:
	movl	-24(%ebp), %eax
	.loc 1 3734 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE98:
	.size	mark_constant, .-mark_constant
	.type	output_addressed_constants, @function
output_addressed_constants:
.LFB99:
	.loc 1 3743 0
	pushl	%ebp
.LCFI340:
	movl	%esp, %ebp
.LCFI341:
	pushl	%ebx
.LCFI342:
	subl	$36, %esp
.LCFI343:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3744 0
	movl	$0, -16(%ebp)
	.loc 1 3749 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 8(%ebp)
	.loc 1 3751 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$118, -24(%ebp)
	ja	.L1086
	cmpl	$116, -24(%ebp)
	jae	.L1084
	cmpl	$60, -24(%ebp)
	je	.L1082
	cmpl	$61, -24(%ebp)
	je	.L1083
	cmpl	$47, -24(%ebp)
	je	.L1081
	jmp	.L1080
.L1086:
	cmpl	$123, -24(%ebp)
	je	.L1085
	cmpl	$126, -24(%ebp)
	je	.L1085
	jmp	.L1080
.L1085:
	.loc 1 3758 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1087
.L1088:
	.loc 1 3759 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L1087:
	.loc 1 3758 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	handled_component_p@PLT
	testl	%eax, %eax
	jne	.L1088
	.loc 1 3762 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	je	.L1090
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1092
.L1090:
	.loc 1 3764 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_def@PLT
.L1092:
	.loc 1 3766 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1093
	.loc 1 3767 0
	orl	$2, -16(%ebp)
	jmp	.L1080
.L1093:
	.loc 1 3769 0
	orl	$1, -16(%ebp)
	.loc 1 3770 0
	jmp	.L1080
.L1082:
	.loc 1 3773 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -16(%ebp)
	.loc 1 3774 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	orl	%eax, -16(%ebp)
	.loc 1 3775 0
	jmp	.L1080
.L1083:
	.loc 1 3778 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -16(%ebp)
	.loc 1 3779 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -12(%ebp)
	.loc 1 3781 0
	cmpl	$1, -16(%ebp)
	jne	.L1096
	cmpl	$1, -12(%ebp)
	jne	.L1096
	.loc 1 3782 0
	movl	$0, -16(%ebp)
	.loc 1 3781 0
	jmp	.L1080
.L1096:
	.loc 1 3784 0
	movl	-12(%ebp), %eax
	orl	%eax, -16(%ebp)
	.loc 1 3785 0
	jmp	.L1080
.L1084:
	.loc 1 3790 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -16(%ebp)
	.loc 1 3791 0
	jmp	.L1080
.L1081:
	.loc 1 3794 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1100
.L1101:
	.loc 1 3795 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L1102
	.loc 1 3796 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	orl	%eax, -16(%ebp)
.L1102:
	.loc 1 3794 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1100:
	cmpl	$0, -8(%ebp)
	jne	.L1101
.L1080:
	.loc 1 3803 0
	movl	-16(%ebp), %eax
	.loc 1 3804 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE99:
	.size	output_addressed_constants, .-output_addressed_constants
.globl initializer_constant_valid_p
	.type	initializer_constant_valid_p, @function
initializer_constant_valid_p:
.LFB100:
	.loc 1 3820 0
	pushl	%ebp
.LCFI344:
	movl	%esp, %ebp
.LCFI345:
	pushl	%ebx
.LCFI346:
	subl	$100, %esp
.LCFI347:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3823 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 8(%ebp)
	.loc 1 3825 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -88(%ebp)
	cmpl	$100, -88(%ebp)
	ja	.L1106
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	.L1114@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1114:
	.long	.L1107@GOTOFF
	.long	.L1107@GOTOFF
	.long	.L1107@GOTOFF
	.long	.L1107@GOTOFF
	.long	.L1107@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1108@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1109@GOTOFF
	.long	.L1110@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1111@GOTOFF
	.long	.L1111@GOTOFF
	.long	.L1112@GOTOFF
	.long	.L1112@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1113@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1106@GOTOFF
	.long	.L1113@GOTOFF
	.text
.L1108:
	.loc 1 3828 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1115
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1117
.L1115:
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1117
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1117
.LBB42:
	.loc 1 3834 0
	movb	$1, -5(%ebp)
	.loc 1 3836 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1120
.L1121:
.LBB43:
	.loc 1 3839 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3840 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3841 0
	cmpl	$0, -48(%ebp)
	jne	.L1122
	.loc 1 3842 0
	movl	$0, -84(%ebp)
	jmp	.L1124
.L1122:
	.loc 1 3843 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L1125
	.loc 1 3844 0
	movb	$0, -5(%ebp)
.L1125:
.LBE43:
	.loc 1 3836 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L1120:
	cmpl	$0, -52(%ebp)
	jne	.L1121
	.loc 1 3849 0
	cmpb	$0, -5(%ebp)
	je	.L1128
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1130
.L1128:
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
.L1130:
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1117:
.LBE42:
	.loc 1 3852 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1131
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1133
.L1131:
	movl	$0, -76(%ebp)
.L1133:
	movl	-76(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1107:
	.loc 1 3859 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1113:
	.loc 1 3863 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	staticp@PLT
	testl	%eax, %eax
	je	.L1134
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1136
.L1134:
	movl	$0, -72(%ebp)
.L1136:
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1112:
	.loc 1 3867 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1111:
	.loc 1 3872 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1137
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1139
.L1137:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1140
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1139
.L1140:
	.loc 1 3874 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1139:
	.loc 1 3877 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1142
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1144
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L1144
.L1142:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1146
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1144
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L1144
.L1146:
	.loc 1 3879 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1144:
	.loc 1 3882 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1149
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1149
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1149
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1153
.L1149:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1154
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1154
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1154
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1153
.L1154:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L1153
	.loc 1 3886 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1153:
	.loc 1 3890 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1159
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1159
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1159
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1163
.L1159:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1164
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1164
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1164
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1163
.L1164:
.LBB44:
	.loc 1 3894 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3895 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L1106
	.loc 1 3896 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1163:
.LBE44:
	.loc 1 3901 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1170
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1170
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1170
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1174
.L1170:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1175
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1174
.L1175:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jl	.L1174
	.loc 1 3905 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1174:
	.loc 1 3910 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1178
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1180
.L1178:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1181
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1181
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1181
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1180
.L1181:
	.loc 1 3913 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1185
	.loc 1 3914 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1185:
	.loc 1 3915 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L1180
	.loc 1 3917 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1180:
	.loc 1 3922 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L1106
	.loc 1 3923 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1109:
	.loc 1 3928 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1190
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1190
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1190
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1194
.L1190:
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1195
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1195
	movl	$64, -64(%ebp)
	jmp	.L1198
.L1195:
	movl	$32, -64(%ebp)
.L1198:
	movl	-64(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jl	.L1106
.L1194:
.LBB45:
	.loc 1 3932 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3934 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3936 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1200
	.loc 1 3937 0
	movl	-36(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1200:
	.loc 1 3938 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L1106
	.loc 1 3939 0
	movl	-40(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1110:
.LBE45:
	.loc 1 3944 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1203
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1203
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1203
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1207
.L1203:
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -60(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1208
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1208
	movl	$64, -56(%ebp)
	jmp	.L1211
.L1208:
	movl	$32, -56(%ebp)
.L1211:
	movl	-56(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jl	.L1212
.L1207:
.LBB46:
	.loc 1 3948 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3950 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3952 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1213
	.loc 1 3953 0
	movl	-32(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1213:
	.loc 1 3956 0
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1215
	cmpl	$0, -32(%ebp)
	je	.L1215
	.loc 1 3957 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1215:
	.loc 1 3962 0
	cmpl	$0, -32(%ebp)
	je	.L1212
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1212
	cmpl	$0, -28(%ebp)
	je	.L1212
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1212
	movl	-32(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1212
	.loc 1 3965 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1212:
.LBE46:
	.loc 1 3969 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1223
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1223
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1223
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1106
.L1223:
.LBB47:
	.loc 1 3972 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3973 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3980 0
	jmp	.L1227
.L1228:
.LBB48:
	.loc 1 3984 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3985 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L1238
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L1231
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$3, %eax
	je	.L1231
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$5, %eax
	je	.L1231
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	jne	.L1238
.L1231:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L1238
	.loc 1 3990 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1227:
.LBE48:
	.loc 1 3980 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1228
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1228
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L1228
	.loc 1 3993 0
	jmp	.L1238
.L1239:
.LBB49:
	.loc 1 3997 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3998 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L1240
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L1242
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$3, %eax
	je	.L1242
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$5, %eax
	je	.L1242
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	jne	.L1240
.L1242:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	ja	.L1240
	.loc 1 4003 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1238:
.LBE49:
	.loc 1 3993 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1239
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1239
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L1239
.L1240:
	.loc 1 4006 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1106
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L1106
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1106
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L1106
	.loc 1 4010 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1124
.L1106:
.LBE47:
	.loc 1 4018 0
	movl	$0, -84(%ebp)
.L1124:
	movl	-84(%ebp), %eax
	.loc 1 4019 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	initializer_constant_valid_p, .-initializer_constant_valid_p
	.section	.rodata
	.type	__FUNCTION__.19182, @object
	.size	__FUNCTION__.19182, 16
__FUNCTION__.19182:
	.string	"output_constant"
	.align 4
.LC137:
	.string	"initializer for integer value is too complicated"
	.align 4
.LC138:
	.string	"initializer for floating value is not a floating constant"
.LC139:
	.string	"unknown set constructor type"
	.text
.globl output_constant
	.type	output_constant, @function
output_constant:
.LFB101:
	.loc 1 4046 0
	pushl	%ebp
.LCFI348:
	movl	%esp, %ebp
.LCFI349:
	pushl	%esi
.LCFI350:
	pushl	%ebx
.LCFI351:
	subl	$96, %esp
.LCFI352:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4046 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 4053 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -60(%ebp)
	.loc 1 4055 0
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L1306
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1259
	.loc 1 4056 0
	jmp	.L1306
.L1260:
	.loc 1 4063 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
.L1259:
	.loc 1 4060 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1260
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1260
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L1260
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$119, %al
	je	.L1260
	.loc 1 4065 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 4066 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 4070 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1265
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1265
	.loc 1 4072 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	.loc 1 4073 0
	jmp	.L1306
.L1265:
	.loc 1 4076 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$126, %al
	jne	.L1268
	.loc 1 4083 0
	leal	__FUNCTION__.19182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4083, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1268:
	.loc 1 4090 0
	cmpl	$22, -36(%ebp)
	ja	.L1270
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L1278@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1278:
	.long	.L1306@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1272@GOTOFF
	.long	.L1273@GOTOFF
	.long	.L1281@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1272@GOTOFF
	.long	.L1272@GOTOFF
	.long	.L1272@GOTOFF
	.long	.L1272@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1272@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1270@GOTOFF
	.long	.L1275@GOTOFF
	.long	.L1276@GOTOFF
	.long	.L1277@GOTOFF
	.long	.L1277@GOTOFF
	.text
.L1272:
	.loc 1 4098 0
	movl	-72(%ebp), %esi
	movl	$5, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1281
	.loc 1 4101 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4102 0
	jmp	.L1281
.L1273:
	.loc 1 4105 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	je	.L1281
	.loc 1 4106 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4113 0
	jmp	.L1281
.L1275:
	.loc 1 4125 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1284
	.loc 1 4127 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constructor
	.loc 1 4128 0
	jmp	.L1306
.L1284:
	.loc 1 4130 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L1281
	.loc 1 4137 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$29, %al
	jne	.L1288
.LBB50:
	.loc 1 4144 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4145 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	cmpl	20(%ebp), %eax
	ja	.L1290
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -80(%ebp)
	jmp	.L1292
.L1290:
	movl	20(%ebp), %eax
	movl	%eax, -80(%ebp)
.L1292:
	movl	-80(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4147 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 4149 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4150 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-28(%ebp), %eax
	movl	20(%eax), %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, (%esp)
	call	output_constant@PLT
	.loc 1 4151 0
	jmp	.L1293
.L1294:
	.loc 1 4152 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-28(%ebp), %eax
	movl	20(%eax), %esi
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, (%esp)
	call	output_constant@PLT
.L1293:
	.loc 1 4151 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L1294
	jmp	.L1281
.L1288:
.LBE50:
	.loc 1 4155 0
	leal	__FUNCTION__.19182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4155, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1277:
	.loc 1 4160 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1296
	.loc 1 4161 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constructor
	.loc 1 4164 0
	jmp	.L1306
.L1296:
	.loc 1 4163 0
	leal	__FUNCTION__.19182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4163, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1276:
	.loc 1 4167 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1306
	.loc 1 4175 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1300
.LBB51:
	.loc 1 4177 0
	movl	-48(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4178 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_set_constructor_bytes@PLT
	testl	%eax, %eax
	je	.L1306
	.loc 1 4179 0
	leal	__FUNCTION__.19182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4179, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1300:
.LBE51:
	.loc 1 4185 0
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4186 0
	jmp	.L1306
.L1270:
	.loc 1 4192 0
	leal	__FUNCTION__.19182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4192, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1281:
	.loc 1 4195 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	subl	%eax, -72(%ebp)
	sbbl	%edx, -68(%ebp)
	.loc 1 4196 0
	cmpl	$0, -68(%ebp)
	js	.L1306
	cmpl	$0, -68(%ebp)
	jg	.L1305
	cmpl	$0, -72(%ebp)
	jbe	.L1306
.L1305:
	.loc 1 4197 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
.L1306:
	.loc 1 4198 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1307
	call	__stack_chk_fail_local
.L1307:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE101:
	.size	output_constant, .-output_constant
	.type	array_size_for_constructor, @function
array_size_for_constructor:
.LFB102:
	.loc 1 4208 0
	pushl	%ebp
.LCFI353:
	movl	%esp, %ebp
.LCFI354:
	pushl	%esi
.LCFI355:
	pushl	%ebx
.LCFI356:
	subl	$48, %esp
.LCFI357:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4214 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1309
	.loc 1 4215 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -28(%ebp)
	jmp	.L1311
.L1309:
	.loc 1 4217 0
	movl	$0, -20(%ebp)
	.loc 1 4218 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1312
.L1313:
.LBB52:
	.loc 1 4220 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4222 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$115, %al
	jne	.L1314
	.loc 1 4223 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
.L1314:
	.loc 1 4224 0
	cmpl	$0, -20(%ebp)
	je	.L1316
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L1318
.L1316:
	.loc 1 4225 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1318:
.LBE52:
	.loc 1 4218 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1312:
	cmpl	$0, -16(%ebp)
	jne	.L1313
	.loc 1 4228 0
	cmpl	$0, -20(%ebp)
	jne	.L1320
	.loc 1 4229 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L1311
.L1320:
	.loc 1 4232 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4235 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	size_binop@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4238 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4240 0
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L1311:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	.loc 1 4241 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE102:
	.size	array_size_for_constructor, .-array_size_for_constructor
	.section	.rodata
	.type	__FUNCTION__.19345, @object
	.size	__FUNCTION__.19345, 19
__FUNCTION__.19345:
	.string	"output_constructor"
	.align 4
.LC140:
	.string	"invalid initial value for member `%s'"
	.text
	.type	output_constructor, @function
output_constructor:
.LFB103:
	.loc 1 4251 0
	pushl	%ebp
.LCFI358:
	movl	%esp, %ebp
.LCFI359:
	pushl	%edi
.LCFI360:
	pushl	%esi
.LCFI361:
	pushl	%ebx
.LCFI362:
	subl	$332, %esp
.LCFI363:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -164(%ebp)
	.loc 1 4252 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4253 0
	movl	$0, -56(%ebp)
	.loc 1 4254 0
	movl	$0, -52(%ebp)
	.loc 1 4257 0
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	.loc 1 4259 0
	movl	$0, -48(%ebp)
	.loc 1 4260 0
	movl	$0, -44(%ebp)
	.loc 1 4265 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1324
	.loc 1 4266 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
.L1324:
	.loc 1 4268 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1326
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1326
	.loc 1 4270 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -52(%ebp)
.L1326:
	.loc 1 4281 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4282 0
	jmp	.L1329
.L1330:
.LBB53:
	.loc 1 4286 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4287 0
	movl	$0, -36(%ebp)
	.loc 1 4291 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1331
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1331
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L1334
.L1331:
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1334
	.loc 1 4294 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4291 0
	jmp	.L1336
.L1334:
	.loc 1 4296 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1336
	.loc 1 4297 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
.L1336:
	.loc 1 4300 0
	cmpl	$0, -40(%ebp)
	je	.L1338
	.loc 1 4301 0
	jmp	.L1340
.L1341:
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L1340:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1342
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1342
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1338
.L1342:
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1338
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1341
.L1338:
	.loc 1 4303 0
	cmpl	$0, -36(%ebp)
	je	.L1346
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$115, %al
	jne	.L1346
.LBB54:
	.loc 1 4306 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 4307 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 4308 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	.loc 1 4310 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	min_align
	movl	%eax, -32(%ebp)
	.loc 1 4312 0
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	jmp	.L1349
.L1350:
	.loc 1 4315 0
	cmpl	$0, -40(%ebp)
	jne	.L1351
	.loc 1 4316 0
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	jmp	.L1353
.L1351:
	.loc 1 4318 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant@PLT
.L1353:
	.loc 1 4321 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	addl	-152(%ebp), %eax
	adcl	-148(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 4312 0
	addl	$1, -128(%ebp)
	adcl	$0, -124(%ebp)
.L1349:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
	movl	-236(%ebp), %edx
	cmpl	-132(%ebp), %edx
	jl	.L1350
	movl	-236(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	jg	.L1356
	movl	-240(%ebp), %esi
	cmpl	-136(%ebp), %esi
	jbe	.L1350
	.loc 1 4303 0
	jmp	.L1356
.L1346:
.LBE54:
	.loc 1 4324 0
	cmpl	$0, -56(%ebp)
	je	.L1357
	movl	-56(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1359
.L1357:
.LBB55:
	.loc 1 4331 0
	cmpl	$0, -56(%ebp)
	je	.L1360
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	int_byte_position@PLT
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	jmp	.L1362
.L1360:
	movl	$0, -232(%ebp)
	movl	$0, -228(%ebp)
.L1362:
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 4334 0
	cmpl	$0, -36(%ebp)
	je	.L1363
	.loc 1 4335 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -312(%ebp)
	movl	%edx, -308(%ebp)
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	-312(%ebp), %esi
	movl	-308(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-220(%ebp), %ecx
	imull	%eax, %ecx
	movl	-224(%ebp), %esi
	imull	%edx, %esi
	addl	%esi, %ecx
	mull	-224(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
.L1363:
	.loc 1 4339 0
	cmpl	$0, -48(%ebp)
	je	.L1365
	.loc 1 4341 0
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$1, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 4342 0
	addl	$1, -160(%ebp)
	adcl	$0, -156(%ebp)
	.loc 1 4343 0
	movl	$0, -48(%ebp)
.L1365:
	.loc 1 4349 0
	cmpl	$0, -56(%ebp)
	jne	.L1367
	cmpl	$0, -36(%ebp)
	je	.L1369
.L1367:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%edx, %ecx
	xorl	-156(%ebp), %ecx
	xorl	-160(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1369
	.loc 1 4351 0
	movl	-112(%ebp), %edx
	movl	-160(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	.loc 1 4352 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
.L1369:
	.loc 1 4356 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	min_align
	movl	%eax, -28(%ebp)
	.loc 1 4359 0
	cmpl	$0, -56(%ebp)
	je	.L1371
	.loc 1 4361 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	.loc 1 4368 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1373
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1373
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	jne	.L1373
	.loc 1 4372 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	array_size_for_constructor
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	.loc 1 4375 0
	movl	-120(%ebp), %eax
	orl	-116(%ebp), %eax
	testl	%eax, %eax
	je	.L1383
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1383
	.loc 1 4376 0
	leal	__FUNCTION__.19345@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4376, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1373:
	.loc 1 4378 0
	movl	-56(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L1383
	.loc 1 4382 0
	movl	-56(%ebp), %eax
	movl	48(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L1383
	.loc 1 4383 0
	movl	-56(%ebp), %eax
	movl	48(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	jmp	.L1383
.L1371:
	.loc 1 4387 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L1383:
	.loc 1 4390 0
	cmpl	$0, -40(%ebp)
	jne	.L1384
	.loc 1 4391 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	jmp	.L1386
.L1384:
	.loc 1 4393 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant@PLT
.L1386:
	.loc 1 4396 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	addl	-120(%ebp), %eax
	adcl	-116(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 4324 0
	jmp	.L1356
.L1359:
.LBE55:
	.loc 1 4398 0
	cmpl	$0, -40(%ebp)
	je	.L1387
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1387
	.loc 1 4399 0
	movl	-56(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC140@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4398 0
	jmp	.L1356
.L1387:
.LBB56:
	.loc 1 4405 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	int_bit_position@PLT
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 4407 0
	movl	-56(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	-104(%ebp), %eax
	adcl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 4409 0
	cmpl	$0, -40(%ebp)
	jne	.L1390
	.loc 1 4410 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
.L1390:
	.loc 1 4414 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	movl	-244(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-320(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-248(%ebp), %eax
	adcl	-244(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%edx, %ecx
	xorl	-156(%ebp), %ecx
	xorl	-160(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1392
	.loc 1 4417 0
	cmpl	$0, -48(%ebp)
	je	.L1394
	.loc 1 4419 0
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$1, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 4420 0
	addl	$1, -160(%ebp)
	adcl	$0, -156(%ebp)
	.loc 1 4421 0
	movl	$0, -48(%ebp)
.L1394:
	.loc 1 4425 0
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	%edx, -256(%ebp)
	movl	%ecx, -252(%ebp)
	movl	-252(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-320(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-256(%ebp), %eax
	adcl	-252(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%edx, %ecx
	xorl	-156(%ebp), %ecx
	xorl	-160(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1392
	.loc 1 4427 0
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	%edx, -264(%ebp)
	movl	%ecx, -260(%ebp)
	movl	-260(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-320(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-264(%ebp), %eax
	adcl	-260(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%eax, %edx
	movl	-160(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	.loc 1 4428 0
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	%esi, -272(%ebp)
	movl	%edi, -268(%ebp)
	movl	-268(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-320(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-272(%ebp), %eax
	adcl	-268(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
.L1392:
	.loc 1 4432 0
	cmpl	$0, -48(%ebp)
	jne	.L1399
	.loc 1 4433 0
	movl	$0, -44(%ebp)
	.loc 1 4443 0
	jmp	.L1399
.L1400:
.LBB57:
	.loc 1 4448 0
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	%edx, -280(%ebp)
	movl	%ecx, -276(%ebp)
	movl	-276(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-320(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	%edi, %edi
	sarl	$31, %edi
	movl	%edi, %esi
	movl	%esi, %eax
	andl	$7, %eax
	movl	%edi, %edx
	andl	$0, %edx
	addl	-280(%ebp), %eax
	adcl	-276(%ebp), %edx
	shrdl	$3, %edx, %eax
	sarl	$3, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 4449 0
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	%edi, -320(%ebp)
	movl	%edi, %edx
	sarl	$31, %edx
	movl	%edx, -316(%ebp)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%edx, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	movl	%eax, -288(%ebp)
	movl	%edx, -284(%ebp)
	movl	-288(%ebp), %eax
	xorl	%esi, %eax
	movl	-284(%ebp), %edx
	xorl	%edi, %edx
	subl	-288(%ebp), %eax
	sbbl	-284(%ebp), %edx
	movl	%eax, %esi
	andl	$7, %esi
	movl	%edx, %edi
	andl	$0, %edi
	movl	-288(%ebp), %eax
	xorl	%esi, %eax
	movl	-284(%ebp), %edx
	xorl	%edi, %edx
	subl	-288(%ebp), %eax
	sbbl	-284(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 4453 0
	jmp	.L1401
.L1402:
	.loc 1 4455 0
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$1, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 4456 0
	addl	$1, -160(%ebp)
	adcl	$0, -156(%ebp)
	.loc 1 4457 0
	movl	$0, -44(%ebp)
.L1401:
	.loc 1 4453 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %ecx
	xorl	-156(%ebp), %ecx
	xorl	-160(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1402
	.loc 1 4462 0
	movl	$8, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-72(%ebp), %esi
	sbbl	-68(%ebp), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-320(%ebp), %edx
	movl	-316(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -208(%ebp)
	movl	%ecx, -204(%ebp)
	movl	-216(%ebp), %esi
	movl	-212(%ebp), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	-204(%ebp), %edi
	cmpl	%edi, -196(%ebp)
	jl	.L1404
	movl	-204(%ebp), %eax
	cmpl	%eax, -196(%ebp)
	jg	.L1405
	movl	-208(%ebp), %edx
	cmpl	%edx, -200(%ebp)
	jbe	.L1404
.L1405:
	movl	-208(%ebp), %esi
	movl	-204(%ebp), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
.L1404:
	movl	-200(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 1 4464 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1406
	.loc 1 4469 0
	movl	-96(%ebp), %edx
	movl	-104(%ebp), %eax
	subl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4475 0
	cmpl	$63, -20(%ebp)
	jg	.L1408
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	cmpl	$64, %eax
	jle	.L1408
	.loc 1 4478 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -24(%ebp)
	.loc 1 4479 0
	movl	$64, -20(%ebp)
.L1408:
	.loc 1 4483 0
	cmpl	$63, -20(%ebp)
	jg	.L1411
	.loc 1 4484 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	jmp	.L1413
.L1411:
	.loc 1 4485 0
	cmpl	$127, -20(%ebp)
	jg	.L1414
	.loc 1 4487 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 4488 0
	subl	$64, -20(%ebp)
	jmp	.L1413
.L1414:
	.loc 1 4491 0
	leal	__FUNCTION__.19345@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4491, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1413:
	.loc 1 4495 0
	movl	-20(%ebp), %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	sarl	%cl, %edi
	testb	$32, %cl
	je	.L1439
	movl	%edi, %esi
	sarl	$31, %edi
.L1439:
	movl	%esi, -192(%ebp)
	movl	%edi, -188(%ebp)
	movl	-24(%ebp), %ecx
	subl	$1, %ecx
	movl	$2, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1440
	movl	%eax, %edx
	xorl	%eax, %eax
.L1440:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-192(%ebp), %eax
	andl	%esi, %eax
	movl	-188(%ebp), %edx
	andl	%edi, %edx
	movl	-24(%ebp), %ecx
	negl	%ecx
	movl	%ecx, %esi
	movl	-72(%ebp), %ecx
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	addl	$8, %ecx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1441
	movl	%eax, %edx
	xorl	%eax, %eax
.L1441:
	orl	%eax, -44(%ebp)
	jmp	.L1416
.L1406:
	.loc 1 4505 0
	movl	-104(%ebp), %esi
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	int_bit_position@PLT
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4511 0
	cmpl	$63, -20(%ebp)
	jg	.L1417
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	cmpl	$64, %eax
	jle	.L1417
	.loc 1 4513 0
	movl	$64, %eax
	subl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1417:
	.loc 1 4516 0
	cmpl	$63, -20(%ebp)
	jg	.L1420
	.loc 1 4517 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	jmp	.L1422
.L1420:
	.loc 1 4518 0
	cmpl	$127, -20(%ebp)
	jg	.L1423
	.loc 1 4520 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 4521 0
	subl	$64, -20(%ebp)
	jmp	.L1422
.L1423:
	.loc 1 4524 0
	leal	__FUNCTION__.19345@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4524, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1422:
	.loc 1 4528 0
	movl	-20(%ebp), %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	sarl	%cl, %edi
	testb	$32, %cl
	je	.L1436
	movl	%edi, %esi
	sarl	$31, %edi
.L1436:
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-24(%ebp), %ecx
	subl	$1, %ecx
	movl	$2, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1437
	movl	%eax, %edx
	xorl	%eax, %eax
.L1437:
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-184(%ebp), %eax
	andl	%esi, %eax
	movl	-180(%ebp), %edx
	andl	%edi, %edx
	movl	-72(%ebp), %ecx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1438
	movl	%eax, %edx
	xorl	%eax, %eax
.L1438:
	orl	%eax, -44(%ebp)
.L1416:
	.loc 1 4533 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%eax, -104(%ebp)
	adcl	%edx, -100(%ebp)
	.loc 1 4534 0
	movl	$1, -48(%ebp)
.L1399:
.LBE57:
	.loc 1 4443 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -296(%ebp)
	movl	%edx, -292(%ebp)
	movl	-292(%ebp), %edx
	cmpl	-92(%ebp), %edx
	jl	.L1400
	movl	-292(%ebp), %ecx
	cmpl	-92(%ebp), %ecx
	jg	.L1356
	movl	-296(%ebp), %esi
	cmpl	-96(%ebp), %esi
	jb	.L1400
.L1356:
.LBE56:
.LBE53:
	.loc 1 4284 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L1426
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -172(%ebp)
	jmp	.L1428
.L1426:
	movl	$0, -172(%ebp)
.L1428:
	movl	-172(%ebp), %edi
	movl	%edi, -56(%ebp)
.L1329:
	.loc 1 4282 0
	cmpl	$0, -60(%ebp)
	jne	.L1330
	.loc 1 4539 0
	cmpl	$0, -48(%ebp)
	je	.L1430
	.loc 1 4541 0
	movl	-44(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	$1, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 4542 0
	addl	$1, -160(%ebp)
	adcl	$0, -156(%ebp)
.L1430:
	.loc 1 4545 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, -304(%ebp)
	movl	%edx, -300(%ebp)
	movl	-300(%ebp), %edx
	cmpl	-164(%ebp), %edx
	jg	.L1435
	movl	-300(%ebp), %ecx
	cmpl	-164(%ebp), %ecx
	jl	.L1434
	movl	-304(%ebp), %esi
	cmpl	-168(%ebp), %esi
	jae	.L1435
.L1434:
	.loc 1 4546 0
	movl	-168(%ebp), %edx
	movl	-160(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
.L1435:
	.loc 1 4547 0
	addl	$332, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE103:
	.size	output_constructor, .-output_constructor
	.type	mark_weak, @function
mark_weak:
.LFB104:
	.loc 1 4561 0
	pushl	%ebp
.LCFI364:
	movl	%esp, %ebp
.LCFI365:
	pushl	%ebx
.LCFI366:
	subl	$36, %esp
.LCFI367:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4562 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$16, %eax
	movb	%al, 35(%edx)
	.loc 1 4564 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1460
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1445
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1447
.L1445:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -20(%ebp)
.L1447:
	movl	-20(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L1460
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1449
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1451
.L1449:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -16(%ebp)
.L1451:
	movl	-16(%ebp), %edx
	movl	4(%edx), %eax
	testl	%eax, %eax
	je	.L1460
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1453
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1455
.L1453:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -12(%ebp)
.L1455:
	movl	-12(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1460
	.loc 1 4568 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1457
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1459
.L1457:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -8(%ebp)
.L1459:
	movl	-8(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	3(%eax), %edx
	orl	$64, %edx
	movb	%dl, 3(%eax)
.L1460:
	.loc 1 4569 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	mark_weak, .-mark_weak
	.section	.rodata
	.align 4
.LC141:
	.string	"weak declaration of `%s' must precede definition"
	.align 4
.LC142:
	.string	"weak declaration of `%s' after first use results in unspecified behavior"
	.text
.globl merge_weak
	.type	merge_weak, @function
merge_weak:
.LFB105:
	.loc 1 4577 0
	pushl	%ebp
.LCFI368:
	movl	%esp, %ebp
.LCFI369:
	pushl	%ebx
.LCFI370:
	subl	$36, %esp
.LCFI371:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4578 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	movl	%eax, %edx
	shrb	$4, %dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movzbl	35(%eax), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L1476
	.loc 1 4581 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1464
.LBB58:
	.loc 1 4591 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1466
	.loc 1 4592 0
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L1468
.L1466:
	.loc 1 4598 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1468
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1468
	.loc 1 4600 0
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L1468:
	.loc 1 4606 0
	movl	weak_decls@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1471
.L1472:
	.loc 1 4607 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1473
	.loc 1 4609 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 4610 0
	jmp	.L1475
.L1473:
	.loc 1 4606 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1471:
	cmpl	$0, -8(%ebp)
	jne	.L1472
.L1475:
	.loc 1 4619 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_weak
	jmp	.L1476
.L1464:
.LBE58:
	.loc 1 4624 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_weak
.L1476:
	.loc 1 4625 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE105:
	.size	merge_weak, .-merge_weak
	.section	.rodata
	.align 4
.LC143:
	.string	"weak declaration of `%s' must be public"
	.text
.globl declare_weak
	.type	declare_weak, @function
declare_weak:
.LFB106:
	.loc 1 4634 0
	pushl	%ebp
.LCFI372:
	movl	%esp, %ebp
.LCFI373:
	pushl	%ebx
.LCFI374:
	subl	$20, %esp
.LCFI375:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4635 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1478
	.loc 1 4636 0
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L1480
.L1478:
	.loc 1 4637 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1481
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1481
	.loc 1 4638 0
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 4637 0
	jmp	.L1480
.L1481:
	.loc 1 4641 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1480
	.loc 1 4642 0
	movl	weak_decls@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	weak_decls@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1480:
	.loc 1 4648 0
	call	WFE_Add_Weak@PLT
	.loc 1 4651 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_weak
	.loc 1 4652 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE106:
	.size	declare_weak, .-declare_weak
.globl weak_finish
	.type	weak_finish, @function
weak_finish:
.LFB107:
	.loc 1 4658 0
	pushl	%ebp
.LCFI376:
	movl	%esp, %ebp
.LCFI377:
	pushl	%ebx
.LCFI378:
	subl	$4, %esp
.LCFI379:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4661 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L1490
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	jne	.L1490
	.loc 1 4663 0
	call	WFE_Weak_Finish@PLT
.L1490:
	.loc 1 4689 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE107:
	.size	weak_finish, .-weak_finish
	.section	.rodata
.LC144:
	.string	"\t.weak\t"
	.text
	.type	globalize_decl, @function
globalize_decl:
.LFB108:
	.loc 1 4696 0
	pushl	%ebp
.LCFI380:
	movl	%esp, %ebp
.LCFI381:
	pushl	%esi
.LCFI382:
	pushl	%ebx
.LCFI383:
	subl	$48, %esp
.LCFI384:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4697 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L1492
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1494
.L1492:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -28(%ebp)
.L1494:
	movl	-28(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4700 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1495
.LBB59:
	.loc 1 4707 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 4712 0
	movl	weak_decls@GOT(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1504
.L1498:
	.loc 1 4714 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	cmpl	%eax, %esi
	jne	.L1499
	.loc 1 4715 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L1497
.L1499:
	.loc 1 4717 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L1497:
.L1504:
	.loc 1 4712 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L1498
	.loc 1 4719 0
	jmp	.L1503
.L1495:
.LBE59:
	.loc 1 4723 0
	movl	targetm@GOT(%ebx), %eax
	movl	48(%eax), %ecx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
.L1503:
	.loc 1 4724 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE108:
	.size	globalize_decl, .-globalize_decl
	.section	.rodata
.LC145:
	.string	" = "
	.text
.globl assemble_alias
	.type	assemble_alias, @function
assemble_alias:
.LFB109:
	.loc 1 4732 0
	pushl	%ebp
.LCFI385:
	movl	%esp, %ebp
.LCFI386:
	pushl	%ebx
.LCFI387:
	subl	$36, %esp
.LCFI388:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4736 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 4741 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	.loc 1 4743 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4748 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L1506
	.loc 1 4750 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	globalize_decl
	.loc 1 4751 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_assemble_visibility
.L1506:
	.loc 1 4757 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	fputc_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 4774 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 4775 0
	movl	8(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
	.loc 1 4776 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
	.loc 1 4777 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE109:
	.size	assemble_alias, .-assemble_alias
	.section	.rodata
.LC146:
	.string	"internal"
.LC147:
	.string	"hidden"
.LC148:
	.string	"protected"
	.section	.data.rel.ro.local
	.align 4
	.type	visibility_types.19784, @object
	.size	visibility_types.19784, 16
visibility_types.19784:
	.long	0
	.long	.LC146
	.long	.LC147
	.long	.LC148
	.section	.rodata
.LC149:
	.string	"\t.%s\t"
	.text
.globl default_assemble_visibility
	.type	default_assemble_visibility, @function
default_assemble_visibility:
.LFB110:
	.loc 1 4786 0
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
	.loc 1 4793 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4794 0
	movl	12(%ebp), %eax
	movl	visibility_types.19784@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4797 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4798 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 4799 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 4803 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE110:
	.size	default_assemble_visibility, .-default_assemble_visibility
	.type	maybe_assemble_visibility, @function
maybe_assemble_visibility:
.LFB111:
	.loc 1 4810 0
	pushl	%ebp
.LCFI393:
	movl	%esp, %ebp
.LCFI394:
	pushl	%ebx
.LCFI395:
	subl	$36, %esp
.LCFI396:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4811 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_visibility@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4813 0
	cmpl	$0, -8(%ebp)
	je	.L1514
	.loc 1 4814 0
	movl	targetm@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L1514:
	.loc 1 4815 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE111:
	.size	maybe_assemble_visibility, .-maybe_assemble_visibility
.globl supports_one_only
	.type	supports_one_only, @function
supports_one_only:
.LFB112:
	.loc 1 4824 0
	pushl	%ebp
.LCFI397:
	movl	%esp, %ebp
.LCFI398:
	.loc 1 4826 0
	movl	$1, %eax
	.loc 1 4828 0
	popl	%ebp
	ret
.LFE112:
	.size	supports_one_only, .-supports_one_only
	.section	.rodata
	.type	__FUNCTION__.19809, @object
	.size	__FUNCTION__.19809, 19
__FUNCTION__.19809:
	.string	"make_decl_one_only"
	.text
.globl make_decl_one_only
	.type	make_decl_one_only, @function
make_decl_one_only:
.LFB113:
	.loc 1 4836 0
	pushl	%ebp
.LCFI399:
	movl	%esp, %ebp
.LCFI400:
	pushl	%ebx
.LCFI401:
	subl	$20, %esp
.LCFI402:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4837 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L1518
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1518
	.loc 1 4838 0
	leal	__FUNCTION__.19809@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4838, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1518:
	.loc 1 4840 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 4842 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1521
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1523
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1521
.L1523:
	.loc 1 4844 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$64, %edx
	movb	%dl, 34(%eax)
	.loc 1 4842 0
	jmp	.L1526
.L1521:
	.loc 1 4848 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$16, %eax
	movb	%al, 35(%edx)
	.loc 1 4850 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$1, %eax
	movb	%al, 35(%edx)
.L1526:
	.loc 1 4856 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE113:
	.size	make_decl_one_only, .-make_decl_one_only
.globl init_varasm_once
	.type	init_varasm_once, @function
init_varasm_once:
.LFB114:
	.loc 1 4860 0
	pushl	%ebp
.LCFI403:
	movl	%esp, %ebp
.LCFI404:
	pushl	%ebx
.LCFI405:
	subl	$36, %esp
.LCFI406:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4861 0
	movl	$0, 20(%esp)
	movl	ggc_calloc@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	leal	const_str_htab_eq@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	const_str_htab_hash@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	htab_create_alloc@PLT
	movl	%eax, const_str_htab@GOTOFF(%ebx)
	.loc 1 4863 0
	movl	$0, 12(%esp)
	leal	in_named_entry_eq@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	in_named_entry_hash@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	htab_create@PLT
	movl	%eax, in_named_htab@GOTOFF(%ebx)
	.loc 1 4866 0
	call	new_alias_set@PLT
	movl	%eax, const_alias_set@GOTOFF(%ebx)
	movl	%edx, 4+const_alias_set@GOTOFF(%ebx)
	.loc 1 4867 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE114:
	.size	init_varasm_once, .-init_varasm_once
	.section	.rodata
	.type	__FUNCTION__.19836, @object
	.size	__FUNCTION__.19836, 15
__FUNCTION__.19836:
	.string	"decl_tls_model"
.LC150:
	.string	"tls_model"
.LC151:
	.string	"local-exec"
.LC152:
	.string	"initial-exec"
.LC153:
	.string	"local-dynamic"
.LC154:
	.string	"global-dynamic"
	.text
.globl decl_tls_model
	.type	decl_tls_model, @function
decl_tls_model:
.LFB115:
	.loc 1 4872 0
	pushl	%ebp
.LCFI407:
	movl	%esp, %ebp
.LCFI408:
	pushl	%ebx
.LCFI409:
	subl	$36, %esp
.LCFI410:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4874 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4877 0
	cmpl	$0, -12(%ebp)
	je	.L1530
	.loc 1 4879 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4880 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L1532
	.loc 1 4881 0
	leal	__FUNCTION__.19836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4881, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1532:
	.loc 1 4882 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1534
	.loc 1 4883 0
	movl	$4, -16(%ebp)
	jmp	.L1536
.L1534:
	.loc 1 4884 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1537
	.loc 1 4885 0
	movl	$3, -16(%ebp)
	jmp	.L1536
.L1537:
	.loc 1 4886 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC153@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1539
	.loc 1 4887 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1541
	movl	$2, -28(%ebp)
	jmp	.L1543
.L1541:
	movl	$1, -28(%ebp)
.L1543:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1536
.L1539:
	.loc 1 4888 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1544
	.loc 1 4889 0
	movl	$1, -16(%ebp)
	jmp	.L1536
.L1544:
	.loc 1 4891 0
	leal	__FUNCTION__.19836@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4891, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1536:
	.loc 1 4892 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1546
.L1530:
	.loc 1 4895 0
	movl	targetm@GOT(%ebx), %eax
	movl	232(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movb	%al, -5(%ebp)
	.loc 1 4896 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1547
	.loc 1 4898 0
	cmpb	$0, -5(%ebp)
	je	.L1549
	.loc 1 4899 0
	movl	$4, -16(%ebp)
	jmp	.L1552
.L1549:
	.loc 1 4901 0
	movl	$3, -16(%ebp)
	jmp	.L1552
.L1547:
	.loc 1 4905 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1553
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1553
	.loc 1 4906 0
	movl	$2, -16(%ebp)
	.loc 1 4905 0
	jmp	.L1552
.L1553:
	.loc 1 4908 0
	movl	$1, -16(%ebp)
.L1552:
	.loc 1 4909 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jae	.L1556
	.loc 1 4910 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1556:
	.loc 1 4912 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1546:
	movl	-24(%ebp), %eax
	.loc 1 4913 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE115:
	.size	decl_tls_model, .-decl_tls_model
	.section	.rodata
	.type	__FUNCTION__.19895, @object
	.size	__FUNCTION__.19895, 16
__FUNCTION__.19895:
	.string	"decl_visibility"
.LC155:
	.string	"visibility"
.LC156:
	.string	"default"
	.text
.globl decl_visibility
	.type	decl_visibility, @function
decl_visibility:
.LFB116:
	.loc 1 4918 0
	pushl	%ebp
.LCFI411:
	movl	%esp, %ebp
.LCFI412:
	pushl	%ebx
.LCFI413:
	subl	$36, %esp
.LCFI414:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4919 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4921 0
	cmpl	$0, -12(%ebp)
	je	.L1560
.LBB60:
	.loc 1 4923 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4925 0
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1562
	.loc 1 4926 0
	movl	$0, -24(%ebp)
	jmp	.L1564
.L1562:
	.loc 1 4927 0
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1565
	.loc 1 4928 0
	movl	$1, -24(%ebp)
	jmp	.L1564
.L1565:
	.loc 1 4929 0
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1567
	.loc 1 4930 0
	movl	$2, -24(%ebp)
	jmp	.L1564
.L1567:
	.loc 1 4931 0
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1569
	.loc 1 4932 0
	movl	$3, -24(%ebp)
	jmp	.L1564
.L1569:
	.loc 1 4934 0
	leal	__FUNCTION__.19895@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4934, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1560:
.LBE60:
	.loc 1 4937 0
	movl	$0, -24(%ebp)
.L1564:
	movl	-24(%ebp), %eax
	.loc 1 4938 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE116:
	.size	decl_visibility, .-decl_visibility
.globl default_section_type_flags
	.type	default_section_type_flags, @function
default_section_type_flags:
.LFB117:
	.loc 1 4952 0
	pushl	%ebp
.LCFI415:
	movl	%esp, %ebp
.LCFI416:
	pushl	%ebx
.LCFI417:
	subl	$20, %esp
.LCFI418:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4953 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_section_type_flags_1@PLT
	.loc 1 4954 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE117:
	.size	default_section_type_flags, .-default_section_type_flags
	.section	.rodata
.LC157:
	.string	".bss"
.LC158:
	.string	".bss."
.LC159:
	.string	".gnu.linkonce.b."
.LC160:
	.string	".sbss"
.LC161:
	.string	".sbss."
.LC162:
	.string	".gnu.linkonce.sb."
.LC163:
	.string	".tbss"
.LC164:
	.string	".gnu.linkonce.tb."
.LC165:
	.string	".tdata"
.LC166:
	.string	".gnu.linkonce.td."
.LC167:
	.string	".init_array"
.LC168:
	.string	".fini_array"
.LC169:
	.string	".preinit_array"
	.text
.globl default_section_type_flags_1
	.type	default_section_type_flags_1, @function
default_section_type_flags_1:
.LFB118:
	.loc 1 4962 0
	pushl	%ebp
.LCFI419:
	movl	%esp, %ebp
.LCFI420:
	pushl	%edi
.LCFI421:
	pushl	%esi
.LCFI422:
	pushl	%ebx
.LCFI423:
	subl	$124, %esp
.LCFI424:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4965 0
	cmpl	$0, 8(%ebp)
	je	.L1575
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1575
	.loc 1 4966 0
	movl	$256, -16(%ebp)
	.loc 1 4965 0
	jmp	.L1578
.L1575:
	.loc 1 4967 0
	cmpl	$0, 8(%ebp)
	je	.L1579
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_readonly_section_1@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1579
	.loc 1 4968 0
	movl	$0, -16(%ebp)
	.loc 1 4967 0
	jmp	.L1578
.L1579:
	.loc 1 4970 0
	movl	$512, -16(%ebp)
.L1578:
	.loc 1 4972 0
	cmpl	$0, 8(%ebp)
	je	.L1582
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1582
	.loc 1 4973 0
	orl	$2048, -16(%ebp)
.L1582:
	.loc 1 4975 0
	cmpl	$0, 8(%ebp)
	je	.L1585
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1585
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1585
	.loc 1 4976 0
	orl	$262656, -16(%ebp)
.L1585:
	.loc 1 4978 0
	leal	.LC157@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1589
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	$5, -40(%ebp)
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
	je	.L1589
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC159@GOTOFF(%ebx), %esi
	movl	%esi, -48(%ebp)
	movl	$16, -52(%ebp)
	cld
	movl	-44(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	-52(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L1589
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1589
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	.LC161@GOTOFF(%ebx), %esi
	movl	%esi, -60(%ebp)
	movl	$6, -64(%ebp)
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
	je	.L1589
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	leal	.LC162@GOTOFF(%ebx), %esi
	movl	%esi, -72(%ebp)
	movl	$17, -76(%ebp)
	cld
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %edi
	movl	-76(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L1589
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1589
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	leal	.LC164@GOTOFF(%ebx), %esi
	movl	%esi, -84(%ebp)
	movl	$17, -88(%ebp)
	cld
	movl	-80(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-88(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1597
.L1589:
	.loc 1 4986 0
	orl	$8192, -16(%ebp)
.L1597:
	.loc 1 4988 0
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1598
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1598
	movl	12(%ebp), %eax
	movl	%eax, -92(%ebp)
	leal	.LC166@GOTOFF(%ebx), %esi
	movl	%esi, -96(%ebp)
	movl	$17, -100(%ebp)
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
	je	.L1598
	movl	12(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	.LC164@GOTOFF(%ebx), %esi
	movl	%esi, -108(%ebp)
	movl	$17, -112(%ebp)
	cld
	movl	-104(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L1602
.L1598:
	.loc 1 4992 0
	orl	$262144, -16(%ebp)
.L1602:
	.loc 1 4999 0
	movl	-16(%ebp), %eax
	andl	$270592, %eax
	testl	%eax, %eax
	jne	.L1603
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1605
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1605
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1603
.L1605:
	.loc 1 5003 0
	orl	$524288, -16(%ebp)
.L1603:
	.loc 1 5005 0
	movl	-16(%ebp), %eax
	.loc 1 5006 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE118:
	.size	default_section_type_flags_1, .-default_section_type_flags_1
	.section	.rodata
	.type	__FUNCTION__.20000, @object
	.size	__FUNCTION__.20000, 25
__FUNCTION__.20000:
	.string	"default_no_named_section"
	.text
.globl default_no_named_section
	.type	default_no_named_section, @function
default_no_named_section:
.LFB119:
	.loc 1 5015 0
	pushl	%ebp
.LCFI425:
	movl	%esp, %ebp
.LCFI426:
	pushl	%ebx
.LCFI427:
	subl	$20, %esp
.LCFI428:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5018 0
	leal	__FUNCTION__.20000@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5018, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.LFE119:
	.size	default_no_named_section, .-default_no_named_section
	.section	.rodata
.LC170:
	.string	"\t.section\t%s\n"
.LC171:
	.string	"\t.section\t%s,\"%s\""
.LC172:
	.string	"nobits"
.LC173:
	.string	"progbits"
.LC174:
	.string	",@%s"
.LC175:
	.string	",%d"
	.text
.globl default_elf_asm_named_section
	.type	default_elf_asm_named_section, @function
default_elf_asm_named_section:
.LFB120:
	.loc 1 5025 0
	pushl	%ebp
.LCFI429:
	movl	%esp, %ebp
.LCFI430:
	pushl	%ebx
.LCFI431:
	subl	$52, %esp
.LCFI432:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5025 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 5026 0
	leal	-18(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5028 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_first_declaration@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1612
	.loc 1 5030 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 5031 0
	jmp	.L1635
.L1612:
	.loc 1 5034 0
	movl	12(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L1615
	.loc 1 5035 0
	movl	-28(%ebp), %eax
	movb	$97, (%eax)
	addl	$1, -28(%ebp)
.L1615:
	.loc 1 5036 0
	movl	12(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L1617
	.loc 1 5037 0
	movl	-28(%ebp), %eax
	movb	$119, (%eax)
	addl	$1, -28(%ebp)
.L1617:
	.loc 1 5038 0
	movl	12(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1619
	.loc 1 5039 0
	movl	-28(%ebp), %eax
	movb	$120, (%eax)
	addl	$1, -28(%ebp)
.L1619:
	.loc 1 5040 0
	movl	12(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1621
	.loc 1 5041 0
	movl	-28(%ebp), %eax
	movb	$115, (%eax)
	addl	$1, -28(%ebp)
.L1621:
	.loc 1 5042 0
	movl	12(%ebp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L1623
	.loc 1 5043 0
	movl	-28(%ebp), %eax
	movb	$77, (%eax)
	addl	$1, -28(%ebp)
.L1623:
	.loc 1 5044 0
	movl	12(%ebp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1625
	.loc 1 5045 0
	movl	-28(%ebp), %eax
	movb	$83, (%eax)
	addl	$1, -28(%ebp)
.L1625:
	.loc 1 5046 0
	movl	12(%ebp), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	je	.L1627
	.loc 1 5047 0
	movl	-28(%ebp), %eax
	movb	$84, (%eax)
	addl	$1, -28(%ebp)
.L1627:
	.loc 1 5048 0
	movl	-28(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 5050 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-18(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 5052 0
	movl	12(%ebp), %eax
	andl	$524288, %eax
	testl	%eax, %eax
	jne	.L1629
.LBB61:
	.loc 1 5056 0
	movl	12(%ebp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1631
	.loc 1 5057 0
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1633
.L1631:
	.loc 1 5059 0
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L1633:
	.loc 1 5061 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 5063 0
	movzbl	12(%ebp),%eax
	testl	%eax, %eax
	je	.L1629
	.loc 1 5064 0
	movzbl	12(%ebp),%edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L1629:
.LBE61:
	.loc 1 5067 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L1635:
	.loc 1 5068 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1636
	call	__stack_chk_fail_local
.L1636:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE120:
	.size	default_elf_asm_named_section, .-default_elf_asm_named_section
	.section	.rodata
.LC176:
	.string	"\t.section\t%s,\"%s\"\n"
	.text
.globl default_coff_asm_named_section
	.type	default_coff_asm_named_section, @function
default_coff_asm_named_section:
.LFB121:
	.loc 1 5074 0
	pushl	%ebp
.LCFI433:
	movl	%esp, %ebp
.LCFI434:
	pushl	%ebx
.LCFI435:
	subl	$36, %esp
.LCFI436:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5074 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 5075 0
	leal	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5077 0
	movl	12(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L1638
	.loc 1 5078 0
	movl	-20(%ebp), %eax
	movb	$119, (%eax)
	addl	$1, -20(%ebp)
.L1638:
	.loc 1 5079 0
	movl	12(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1640
	.loc 1 5080 0
	movl	-20(%ebp), %eax
	movb	$120, (%eax)
	addl	$1, -20(%ebp)
.L1640:
	.loc 1 5081 0
	movl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 5083 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 5084 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1643
	call	__stack_chk_fail_local
.L1643:
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE121:
	.size	default_coff_asm_named_section, .-default_coff_asm_named_section
	.section	.rodata
.LC177:
	.string	"discard"
.LC178:
	.string	"same_size"
.LC179:
	.string	"\t.linkonce %s\n"
	.text
.globl default_pe_asm_named_section
	.type	default_pe_asm_named_section, @function
default_pe_asm_named_section:
.LFB122:
	.loc 1 5090 0
	pushl	%ebp
.LCFI437:
	movl	%esp, %ebp
.LCFI438:
	pushl	%ebx
.LCFI439:
	subl	$20, %esp
.LCFI440:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5091 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_coff_asm_named_section@PLT
	.loc 1 5093 0
	movl	12(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1650
	.loc 1 5098 0
	movl	12(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1647
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1649
.L1647:
	leal	.LC178@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L1649:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1650:
	.loc 1 5101 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE122:
	.size	default_pe_asm_named_section, .-default_pe_asm_named_section
	.section	.rodata
.LC180:
	.string	"\t.vtable_entry "
	.text
.globl assemble_vtable_entry
	.type	assemble_vtable_entry, @function
assemble_vtable_entry:
.LFB123:
	.loc 1 5110 0
	pushl	%ebp
.LCFI441:
	movl	%esp, %ebp
.LCFI442:
	pushl	%ebx
.LCFI443:
	subl	$36, %esp
.LCFI444:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5111 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5112 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	.loc 1 5113 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5114 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 5115 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 5116 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE123:
	.size	assemble_vtable_entry, .-assemble_vtable_entry
	.section	.rodata
.LC181:
	.string	"\t.vtable_inherit "
	.text
.globl assemble_vtable_inherit
	.type	assemble_vtable_inherit, @function
assemble_vtable_inherit:
.LFB124:
	.loc 1 5124 0
	pushl	%ebp
.LCFI445:
	movl	%esp, %ebp
.LCFI446:
	pushl	%ebx
.LCFI447:
	subl	$20, %esp
.LCFI448:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5125 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC181@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5126 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	.loc 1 5127 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5128 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	.loc 1 5129 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 5130 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE124:
	.size	assemble_vtable_inherit, .-assemble_vtable_inherit
.globl default_select_section
	.type	default_select_section, @function
default_select_section:
.LFB125:
	.loc 1 5139 0
	pushl	%ebp
.LCFI449:
	movl	%esp, %ebp
.LCFI450:
	pushl	%ebx
.LCFI451:
	subl	$36, %esp
.LCFI452:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5140 0
	movb	$0, -9(%ebp)
	.loc 1 5142 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L1656
	.loc 1 5144 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_readonly_section@PLT
	testb	%al, %al
	je	.L1660
	.loc 1 5145 0
	movb	$1, -9(%ebp)
	jmp	.L1660
.L1656:
	.loc 1 5147 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1661
	.loc 1 5149 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1663
	cmpl	$0, 12(%ebp)
	jne	.L1660
.L1663:
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1660
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1660
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1660
	.loc 1 5153 0
	movb	$1, -9(%ebp)
	jmp	.L1660
.L1661:
	.loc 1 5155 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1669
	.loc 1 5156 0
	movl	flag_writable_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movb	%al, -9(%ebp)
	jmp	.L1660
.L1669:
	.loc 1 5157 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1671
	cmpl	$0, 12(%ebp)
	jne	.L1660
.L1671:
	.loc 1 5158 0
	movb	$1, -9(%ebp)
.L1660:
	.loc 1 5160 0
	cmpb	$0, -9(%ebp)
	je	.L1673
	.loc 1 5161 0
	call	readonly_data_section@PLT
	jmp	.L1676
.L1673:
	.loc 1 5163 0
	call	data_section@PLT
.L1676:
	.loc 1 5164 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE125:
	.size	default_select_section, .-default_select_section
	.type	categorize_decl_for_section, @function
categorize_decl_for_section:
.LFB126:
	.loc 1 5211 0
	pushl	%ebp
.LCFI453:
	movl	%esp, %ebp
.LCFI454:
	pushl	%ebx
.LCFI455:
	subl	$36, %esp
.LCFI456:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5214 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1678
	.loc 1 5215 0
	movl	$0, -24(%ebp)
	jmp	.L1680
.L1678:
	.loc 1 5216 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1681
	.loc 1 5218 0
	movl	flag_writable_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1683
	.loc 1 5219 0
	movl	$6, -24(%ebp)
	jmp	.L1680
.L1683:
	.loc 1 5221 0
	movl	$2, -24(%ebp)
	jmp	.L1680
.L1681:
	.loc 1 5223 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1685
	.loc 1 5225 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1687
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1689
.L1687:
	.loc 1 5227 0
	movl	$13, -8(%ebp)
	.loc 1 5225 0
	jmp	.L1713
.L1689:
	.loc 1 5228 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1691
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1691
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1694
.L1691:
	.loc 1 5232 0
	cmpl	$0, 16(%ebp)
	je	.L1695
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1695
	.loc 1 5233 0
	movl	$7, -8(%ebp)
	.loc 1 5232 0
	jmp	.L1713
.L1695:
	.loc 1 5234 0
	cmpl	$0, 16(%ebp)
	je	.L1699
	cmpl	$0, 12(%ebp)
	je	.L1699
	.loc 1 5235 0
	movl	$8, -8(%ebp)
	.loc 1 5234 0
	jmp	.L1713
.L1699:
	.loc 1 5237 0
	movl	$6, -8(%ebp)
	.loc 1 5228 0
	jmp	.L1713
.L1694:
	.loc 1 5239 0
	cmpl	$0, 16(%ebp)
	je	.L1702
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1702
	.loc 1 5240 0
	movl	$9, -8(%ebp)
	.loc 1 5239 0
	jmp	.L1713
.L1702:
	.loc 1 5241 0
	cmpl	$0, 16(%ebp)
	je	.L1705
	cmpl	$0, 12(%ebp)
	je	.L1705
	.loc 1 5242 0
	movl	$10, -8(%ebp)
	.loc 1 5241 0
	jmp	.L1713
.L1705:
	.loc 1 5243 0
	cmpl	$0, 12(%ebp)
	jne	.L1708
	movl	flag_merge_constants@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1710
.L1708:
	.loc 1 5247 0
	movl	$1, -8(%ebp)
	.loc 1 5243 0
	jmp	.L1713
.L1710:
	.loc 1 5248 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1711
	.loc 1 5249 0
	movl	$3, -8(%ebp)
	jmp	.L1713
.L1711:
	.loc 1 5251 0
	movl	$4, -8(%ebp)
	jmp	.L1713
.L1685:
	.loc 1 5253 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1714
	.loc 1 5255 0
	cmpl	$0, 16(%ebp)
	je	.L1716
	cmpl	$0, 12(%ebp)
	jne	.L1718
.L1716:
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1718
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1720
.L1718:
	.loc 1 5258 0
	movl	$6, -8(%ebp)
	.loc 1 5255 0
	jmp	.L1713
.L1720:
	.loc 1 5260 0
	movl	$1, -8(%ebp)
	jmp	.L1713
.L1714:
	.loc 1 5263 0
	movl	$1, -8(%ebp)
.L1713:
	.loc 1 5266 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1722
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1722
	.loc 1 5268 0
	cmpl	$13, -8(%ebp)
	jne	.L1725
	.loc 1 5269 0
	movl	$15, -8(%ebp)
	jmp	.L1728
.L1725:
	.loc 1 5271 0
	movl	$12, -8(%ebp)
	.loc 1 5266 0
	jmp	.L1728
.L1722:
	.loc 1 5275 0
	movl	targetm@GOT(%ebx), %eax
	movl	228(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testb	%al, %al
	je	.L1728
	.loc 1 5277 0
	cmpl	$13, -8(%ebp)
	jne	.L1730
	.loc 1 5278 0
	movl	$14, -8(%ebp)
	jmp	.L1728
.L1730:
	.loc 1 5279 0
	movl	targetm@GOT(%ebx), %eax
	movzbl	247(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1732
	cmpl	$1, -8(%ebp)
	jne	.L1732
	.loc 1 5280 0
	movl	$5, -8(%ebp)
	.loc 1 5279 0
	jmp	.L1728
.L1732:
	.loc 1 5282 0
	movl	$11, -8(%ebp)
.L1728:
	.loc 1 5285 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1680:
	movl	-24(%ebp), %eax
	.loc 1 5286 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE126:
	.size	categorize_decl_for_section, .-categorize_decl_for_section
.globl decl_readonly_section
	.type	decl_readonly_section, @function
decl_readonly_section:
.LFB127:
	.loc 1 5292 0
	pushl	%ebp
.LCFI457:
	movl	%esp, %ebp
.LCFI458:
	pushl	%ebx
.LCFI459:
	subl	$20, %esp
.LCFI460:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5293 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_readonly_section_1@PLT
	movzbl	%al, %eax
	.loc 1 5294 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE127:
	.size	decl_readonly_section, .-decl_readonly_section
.globl decl_readonly_section_1
	.type	decl_readonly_section_1, @function
decl_readonly_section_1:
.LFB128:
	.loc 1 5301 0
	pushl	%ebp
.LCFI461:
	movl	%esp, %ebp
.LCFI462:
	subl	$24, %esp
.LCFI463:
	.loc 1 5302 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	categorize_decl_for_section
	subl	$1, %eax
	cmpl	$4, %eax
	ja	.L1739
	.loc 1 5309 0
	movl	$1, -4(%ebp)
	jmp	.L1741
.L1739:
	.loc 1 5312 0
	movl	$0, -4(%ebp)
.L1741:
	movl	-4(%ebp), %eax
	.loc 1 5315 0
	leave
	ret
.LFE128:
	.size	decl_readonly_section_1, .-decl_readonly_section_1
.globl default_elf_select_section
	.type	default_elf_select_section, @function
default_elf_select_section:
.LFB129:
	.loc 1 5324 0
	pushl	%ebp
.LCFI464:
	movl	%esp, %ebp
.LCFI465:
	pushl	%ebx
.LCFI466:
	subl	$36, %esp
.LCFI467:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5325 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_elf_select_section_1@PLT
	.loc 1 5326 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE129:
	.size	default_elf_select_section, .-default_elf_select_section
	.section	.rodata
	.type	__FUNCTION__.20304, @object
	.size	__FUNCTION__.20304, 29
__FUNCTION__.20304:
	.string	"default_elf_select_section_1"
.LC182:
	.string	".sdata2"
.LC183:
	.string	".data.rel"
.LC184:
	.string	".data.rel.local"
.LC185:
	.string	".data.rel.ro"
.LC186:
	.string	".data.rel.ro.local"
.LC187:
	.string	".sdata"
	.text
.globl default_elf_select_section_1
	.type	default_elf_select_section_1, @function
default_elf_select_section_1:
.LFB130:
	.loc 1 5334 0
	pushl	%ebp
.LCFI468:
	movl	%esp, %ebp
.LCFI469:
	pushl	%ebx
.LCFI470:
	subl	$36, %esp
.LCFI471:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5335 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	categorize_decl_for_section
	movl	%eax, -20(%ebp)
	cmpl	$15, -20(%ebp)
	ja	.L1746
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	.L1763@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1763:
	.long	.L1747@GOTOFF
	.long	.L1748@GOTOFF
	.long	.L1749@GOTOFF
	.long	.L1750@GOTOFF
	.long	.L1751@GOTOFF
	.long	.L1752@GOTOFF
	.long	.L1753@GOTOFF
	.long	.L1754@GOTOFF
	.long	.L1755@GOTOFF
	.long	.L1756@GOTOFF
	.long	.L1757@GOTOFF
	.long	.L1758@GOTOFF
	.long	.L1759@GOTOFF
	.long	.L1760@GOTOFF
	.long	.L1761@GOTOFF
	.long	.L1762@GOTOFF
	.text
.L1747:
	.loc 1 5339 0
	leal	__FUNCTION__.20304@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5339, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1748:
	.loc 1 5341 0
	call	readonly_data_section@PLT
	.loc 1 5342 0
	jmp	.L1765
.L1749:
	.loc 1 5344 0
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mergeable_string_section@PLT
	.loc 1 5345 0
	jmp	.L1765
.L1750:
	.loc 1 5347 0
	movl	8(%ebp), %eax
	movl	68(%eax), %ecx
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	mergeable_string_section@PLT
	.loc 1 5348 0
	jmp	.L1765
.L1751:
	.loc 1 5350 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %ecx
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	mergeable_constant_section@PLT
	.loc 1 5351 0
	jmp	.L1765
.L1752:
	.loc 1 5353 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC182@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5354 0
	jmp	.L1765
.L1753:
	.loc 1 5356 0
	call	data_section@PLT
	.loc 1 5357 0
	jmp	.L1765
.L1754:
	.loc 1 5359 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5360 0
	jmp	.L1765
.L1755:
	.loc 1 5362 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5363 0
	jmp	.L1765
.L1756:
	.loc 1 5365 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5366 0
	jmp	.L1765
.L1757:
	.loc 1 5368 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5369 0
	jmp	.L1765
.L1758:
	.loc 1 5371 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5372 0
	jmp	.L1765
.L1759:
	.loc 1 5374 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5375 0
	jmp	.L1765
.L1760:
	.loc 1 5378 0
	call	bss_section@PLT
	.loc 1 5382 0
	jmp	.L1765
.L1761:
	.loc 1 5384 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5385 0
	jmp	.L1765
.L1762:
	.loc 1 5387 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5388 0
	jmp	.L1765
.L1746:
	.loc 1 5390 0
	leal	__FUNCTION__.20304@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5390, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1765:
	.loc 1 5392 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE130:
	.size	default_elf_select_section_1, .-default_elf_select_section_1
.globl default_unique_section
	.type	default_unique_section, @function
default_unique_section:
.LFB131:
	.loc 1 5401 0
	pushl	%ebp
.LCFI472:
	movl	%esp, %ebp
.LCFI473:
	pushl	%ebx
.LCFI474:
	subl	$20, %esp
.LCFI475:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5402 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_unique_section_1@PLT
	.loc 1 5403 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE131:
	.size	default_unique_section, .-default_unique_section
	.section	.rodata
	.type	__FUNCTION__.20360, @object
	.size	__FUNCTION__.20360, 25
__FUNCTION__.20360:
	.string	"default_unique_section_1"
.LC188:
	.string	".gnu.linkonce.t."
.LC189:
	.string	".text."
.LC190:
	.string	".gnu.linkonce.r."
.LC191:
	.string	".rodata."
.LC192:
	.string	".gnu.linkonce.s2."
.LC193:
	.string	".sdata2."
.LC194:
	.string	".gnu.linkonce.d."
.LC195:
	.string	".data."
.LC196:
	.string	".gnu.linkonce.s."
.LC197:
	.string	".sdata."
.LC198:
	.string	".tdata."
.LC199:
	.string	".tbss."
	.text
.globl default_unique_section_1
	.type	default_unique_section_1, @function
default_unique_section_1:
.LFB132:
	.loc 1 5410 0
	pushl	%ebp
.LCFI476:
	movl	%esp, %ebp
.LCFI477:
	pushl	%edi
.LCFI478:
	pushl	%esi
.LCFI479:
	pushl	%ebx
.LCFI480:
	subl	$108, %esp
.LCFI481:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5410 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 5411 0
	movl	-48(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -17(%ebp)
	.loc 1 5416 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	categorize_decl_for_section
	movl	%eax, -92(%ebp)
	cmpl	$15, -92(%ebp)
	ja	.L1769
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	.L1779@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1779:
	.long	.L1770@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1771@GOTOFF
	.long	.L1772@GOTOFF
	.long	.L1773@GOTOFF
	.long	.L1773@GOTOFF
	.long	.L1773@GOTOFF
	.long	.L1773@GOTOFF
	.long	.L1773@GOTOFF
	.long	.L1774@GOTOFF
	.long	.L1775@GOTOFF
	.long	.L1776@GOTOFF
	.long	.L1777@GOTOFF
	.long	.L1778@GOTOFF
	.text
.L1770:
	.loc 1 5419 0
	cmpb	$0, -17(%ebp)
	je	.L1780
	leal	.LC188@GOTOFF(%ebx), %edi
	movl	%edi, -88(%ebp)
	jmp	.L1782
.L1780:
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
.L1782:
	movl	-88(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5420 0
	jmp	.L1783
.L1771:
	.loc 1 5425 0
	cmpb	$0, -17(%ebp)
	je	.L1784
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1786
.L1784:
	leal	.LC191@GOTOFF(%ebx), %edi
	movl	%edi, -84(%ebp)
.L1786:
	movl	-84(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5426 0
	jmp	.L1783
.L1772:
	.loc 1 5428 0
	cmpb	$0, -17(%ebp)
	je	.L1787
	leal	.LC192@GOTOFF(%ebx), %edi
	movl	%edi, -80(%ebp)
	jmp	.L1789
.L1787:
	leal	.LC193@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
.L1789:
	movl	-80(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5429 0
	jmp	.L1783
.L1773:
	.loc 1 5435 0
	cmpb	$0, -17(%ebp)
	je	.L1790
	leal	.LC194@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1792
.L1790:
	leal	.LC195@GOTOFF(%ebx), %edi
	movl	%edi, -76(%ebp)
.L1792:
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5436 0
	jmp	.L1783
.L1774:
	.loc 1 5438 0
	cmpb	$0, -17(%ebp)
	je	.L1793
	leal	.LC196@GOTOFF(%ebx), %edi
	movl	%edi, -72(%ebp)
	jmp	.L1795
.L1793:
	leal	.LC197@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
.L1795:
	movl	-72(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5439 0
	jmp	.L1783
.L1776:
	.loc 1 5441 0
	cmpb	$0, -17(%ebp)
	je	.L1796
	leal	.LC159@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1798
.L1796:
	leal	.LC158@GOTOFF(%ebx), %edi
	movl	%edi, -68(%ebp)
.L1798:
	movl	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5442 0
	jmp	.L1783
.L1777:
	.loc 1 5444 0
	cmpb	$0, -17(%ebp)
	je	.L1799
	leal	.LC162@GOTOFF(%ebx), %edi
	movl	%edi, -64(%ebp)
	jmp	.L1801
.L1799:
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
.L1801:
	movl	-64(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5445 0
	jmp	.L1783
.L1775:
	.loc 1 5447 0
	cmpb	$0, -17(%ebp)
	je	.L1802
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1804
.L1802:
	leal	.LC198@GOTOFF(%ebx), %edi
	movl	%edi, -60(%ebp)
.L1804:
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5448 0
	jmp	.L1783
.L1778:
	.loc 1 5450 0
	cmpb	$0, -17(%ebp)
	je	.L1805
	leal	.LC164@GOTOFF(%ebx), %edi
	movl	%edi, -56(%ebp)
	jmp	.L1807
.L1805:
	leal	.LC199@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
.L1807:
	movl	-56(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5451 0
	jmp	.L1783
.L1769:
	.loc 1 5453 0
	leal	__FUNCTION__.20360@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5453, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1783:
	.loc 1 5455 0
	movl	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -96(%ebp)
	movl	$0, %eax
	cld
	movl	-96(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 5457 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 5458 0
	movl	targetm@GOT(%ebx), %eax
	movl	240(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -36(%ebp)
	.loc 1 5459 0
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -100(%ebp)
	movl	$0, %eax
	cld
	movl	-100(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 5461 0
	movl	-28(%ebp), %eax
	addl	-32(%ebp), %eax
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 1 5462 0
	movl	-24(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 5463 0
	movl	-32(%ebp), %ecx
	addl	$1, %ecx
	movl	-28(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 5465 0
	movl	-28(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_string@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 96(%eax)
	.loc 1 5466 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1809
	call	__stack_chk_fail_local
.L1809:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE132:
	.size	default_unique_section_1, .-default_unique_section_1
.globl default_select_rtx_section
	.type	default_select_rtx_section, @function
default_select_rtx_section:
.LFB133:
	.loc 1 5473 0
	pushl	%ebp
.LCFI482:
	movl	%esp, %ebp
.LCFI483:
	pushl	%ebx
.LCFI484:
	subl	$20, %esp
.LCFI485:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5474 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1811
	.loc 1 5475 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$68, %eax
	movl	%eax, -20(%ebp)
	cmpl	$10, -20(%ebp)
	ja	.L1811
	movl	$1, %eax
	movzbl	-20(%ebp), %ecx
	sall	%cl, %eax
	andl	$1537, %eax
	testl	%eax, %eax
	jne	.L1813
	jmp	.L1811
.L1813:
	.loc 1 5480 0
	call	data_section@PLT
	.loc 1 5481 0
	jmp	.L1815
.L1811:
	.loc 1 5487 0
	call	readonly_data_section@PLT
.L1815:
	.loc 1 5488 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE133:
	.size	default_select_rtx_section, .-default_select_rtx_section
.globl default_elf_select_rtx_section
	.type	default_elf_select_rtx_section, @function
default_elf_select_rtx_section:
.LFB134:
	.loc 1 5495 0
	pushl	%ebp
.LCFI486:
	movl	%esp, %ebp
.LCFI487:
	pushl	%ebx
.LCFI488:
	subl	$36, %esp
.LCFI489:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5498 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1817
	.loc 1 5499 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	cmpl	$77, -20(%ebp)
	je	.L1820
	cmpl	$78, -20(%ebp)
	je	.L1819
	cmpl	$68, -20(%ebp)
	je	.L1819
	jmp	.L1817
.L1819:
	.loc 1 5503 0
	movl	$3, 8(%esp)
	leal	.LC185@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5504 0
	jmp	.L1822
.L1820:
	.loc 1 5507 0
	movl	$1, 8(%esp)
	leal	.LC186@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5508 0
	jmp	.L1822
.L1817:
	.loc 1 5514 0
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mergeable_constant_section@PLT
.L1822:
	.loc 1 5515 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE134:
	.size	default_elf_select_rtx_section, .-default_elf_select_rtx_section
.globl default_strip_name_encoding
	.type	default_strip_name_encoding, @function
default_strip_name_encoding:
.LFB135:
	.loc 1 5523 0
	pushl	%ebp
.LCFI490:
	movl	%esp, %ebp
.LCFI491:
	subl	$4, %esp
.LCFI492:
	.loc 1 5524 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L1824
	movl	$1, -4(%ebp)
	jmp	.L1826
.L1824:
	movl	$0, -4(%ebp)
.L1826:
	movl	-4(%ebp), %eax
	addl	8(%ebp), %eax
	.loc 1 5525 0
	leave
	ret
.LFE135:
	.size	default_strip_name_encoding, .-default_strip_name_encoding
.globl default_binds_local_p
	.type	default_binds_local_p, @function
default_binds_local_p:
.LFB136:
	.loc 1 5533 0
	pushl	%ebp
.LCFI493:
	movl	%esp, %ebp
.LCFI494:
	pushl	%ebx
.LCFI495:
	subl	$20, %esp
.LCFI496:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5534 0
	movl	flag_shlib@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_binds_local_p_1@PLT
	movzbl	%al, %eax
	.loc 1 5535 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE136:
	.size	default_binds_local_p, .-default_binds_local_p
.globl default_binds_local_p_1
	.type	default_binds_local_p_1, @function
default_binds_local_p_1:
.LFB137:
	.loc 1 5541 0
	pushl	%ebp
.LCFI497:
	movl	%esp, %ebp
.LCFI498:
	pushl	%ebx
.LCFI499:
	subl	$20, %esp
.LCFI500:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5545 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L1831
	.loc 1 5546 0
	movb	$1, -5(%ebp)
	jmp	.L1833
.L1831:
	.loc 1 5548 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1834
	.loc 1 5549 0
	movb	$1, -5(%ebp)
	jmp	.L1833
.L1834:
	.loc 1 5551 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_visibility@PLT
	testl	%eax, %eax
	je	.L1836
	.loc 1 5552 0
	movb	$1, -5(%ebp)
	jmp	.L1833
.L1836:
	.loc 1 5554 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1838
	.loc 1 5555 0
	movb	$0, -5(%ebp)
	jmp	.L1833
.L1838:
	.loc 1 5557 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1840
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1842
.L1840:
	.loc 1 5558 0
	movb	$0, -5(%ebp)
	.loc 1 5557 0
	jmp	.L1833
.L1842:
	.loc 1 5561 0
	cmpl	$0, 12(%ebp)
	je	.L1843
	.loc 1 5562 0
	movb	$0, -5(%ebp)
	jmp	.L1833
.L1843:
	.loc 1 5565 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1845
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1847
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1845
.L1847:
	.loc 1 5568 0
	movb	$0, -5(%ebp)
	.loc 1 5565 0
	jmp	.L1833
.L1845:
	.loc 1 5572 0
	movb	$1, -5(%ebp)
.L1833:
	.loc 1 5574 0
	movzbl	-5(%ebp), %eax
	.loc 1 5575 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE137:
	.size	default_binds_local_p_1, .-default_binds_local_p_1
	.section	.rodata
.LC200:
	.string	"\t.globl\t"
	.text
.globl default_globalize_label
	.type	default_globalize_label, @function
default_globalize_label:
.LFB138:
	.loc 1 5585 0
	pushl	%ebp
.LCFI501:
	movl	%esp, %ebp
.LCFI502:
	pushl	%ebx
.LCFI503:
	subl	$20, %esp
.LCFI504:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5586 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC200@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5587 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 5588 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 5589 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE138:
	.size	default_globalize_label, .-default_globalize_label
.globl gt_ggc_mx_deferred_string
	.type	gt_ggc_mx_deferred_string, @function
gt_ggc_mx_deferred_string:
.LFB139:
	.file 2 "../../../kg++fe/gnu/MIPS/gt-varasm.h"
	.loc 2 26 0
	pushl	%ebp
.LCFI505:
	movl	%esp, %ebp
.LCFI506:
	pushl	%ebx
.LCFI507:
	subl	$20, %esp
.LCFI508:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 27 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 28 0
	cmpl	$0, -8(%ebp)
	je	.L1858
	cmpl	$1, -8(%ebp)
	je	.L1858
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1858
	.loc 2 30 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1858
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L1858:
	.loc 2 32 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE139:
	.size	gt_ggc_mx_deferred_string, .-gt_ggc_mx_deferred_string
.globl gt_ggc_mx_constant_descriptor_tree
	.type	gt_ggc_mx_constant_descriptor_tree, @function
gt_ggc_mx_constant_descriptor_tree:
.LFB140:
	.loc 2 37 0
	pushl	%ebp
.LCFI509:
	movl	%esp, %ebp
.LCFI510:
	pushl	%ebx
.LCFI511:
	subl	$20, %esp
.LCFI512:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 38 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 39 0
	cmpl	$0, -8(%ebp)
	je	.L1869
	cmpl	$1, -8(%ebp)
	je	.L1869
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1869
	.loc 2 41 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1864
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_constant_descriptor_tree@PLT
.L1864:
	.loc 2 42 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1866
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1866:
	.loc 2 43 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1869
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L1869:
	.loc 2 45 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE140:
	.size	gt_ggc_mx_constant_descriptor_tree, .-gt_ggc_mx_constant_descriptor_tree
.globl gt_ggc_mx_pool_constant
	.type	gt_ggc_mx_pool_constant, @function
gt_ggc_mx_pool_constant:
.LFB141:
	.loc 2 50 0
	pushl	%ebp
.LCFI513:
	movl	%esp, %ebp
.LCFI514:
	pushl	%ebx
.LCFI515:
	subl	$20, %esp
.LCFI516:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 51 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 52 0
	cmpl	$0, -8(%ebp)
	je	.L1882
	cmpl	$1, -8(%ebp)
	je	.L1882
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1882
	.loc 2 54 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1875
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_constant_descriptor_rtx@PLT
.L1875:
	.loc 2 55 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1877
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1877:
	.loc 2 56 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1879
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1879:
	.loc 2 57 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1882
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1882:
	.loc 2 59 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE141:
	.size	gt_ggc_mx_pool_constant, .-gt_ggc_mx_pool_constant
.globl gt_ggc_mx_constant_descriptor_rtx
	.type	gt_ggc_mx_constant_descriptor_rtx, @function
gt_ggc_mx_constant_descriptor_rtx:
.LFB142:
	.loc 2 64 0
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
	.loc 2 65 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 66 0
	cmpl	$0, -16(%ebp)
	je	.L1899
	cmpl	$1, -16(%ebp)
	je	.L1899
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1899
	.loc 2 68 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1888
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_constant_descriptor_rtx@PLT
.L1888:
	.loc 2 69 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1890
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1890:
	.loc 2 70 0
	movl	-16(%ebp), %eax
	movzwl	8(%eax), %eax
	cmpw	$2, %ax
	seta	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1893
	cmpl	$2, -24(%ebp)
	je	.L1894
	jmp	.L1899
.L1893:
	.loc 2 73 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1899
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
	.loc 2 74 0
	jmp	.L1899
.L1894:
.LBB62:
	.loc 2 80 0
	movl	$16, -8(%ebp)
	.loc 2 81 0
	movl	$0, -12(%ebp)
	jmp	.L1897
.L1898:
	addl	$1, -12(%ebp)
.L1897:
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L1898
.L1899:
.LBE62:
	.loc 2 89 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE142:
	.size	gt_ggc_mx_constant_descriptor_rtx, .-gt_ggc_mx_constant_descriptor_rtx
.globl gt_ggc_mx_varasm_status
	.type	gt_ggc_mx_varasm_status, @function
gt_ggc_mx_varasm_status:
.LFB143:
	.loc 2 94 0
	pushl	%ebp
.LCFI521:
	movl	%esp, %ebp
.LCFI522:
	pushl	%ebx
.LCFI523:
	subl	$20, %esp
.LCFI524:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 95 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 96 0
	cmpl	$0, -16(%ebp)
	je	.L1920
	cmpl	$1, -16(%ebp)
	je	.L1920
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1920
	.loc 2 98 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1905
.LBB63:
	.loc 2 100 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	.loc 2 101 0
	movl	$0, -12(%ebp)
	jmp	.L1907
.L1908:
	.loc 2 102 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1909
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_constant_descriptor_rtx@PLT
.L1909:
	.loc 2 101 0
	addl	$1, -12(%ebp)
.L1907:
	cmpl	$60, -12(%ebp)
	jbe	.L1908
.L1905:
.LBE63:
	.loc 2 105 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1911
.LBB64:
	.loc 2 107 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	.loc 2 108 0
	movl	$0, -8(%ebp)
	jmp	.L1913
.L1914:
	.loc 2 109 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1915
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1915:
	.loc 2 108 0
	addl	$1, -8(%ebp)
.L1913:
	cmpl	$60, -8(%ebp)
	jbe	.L1914
.L1911:
.LBE64:
	.loc 2 112 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1917
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1917:
	.loc 2 113 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1920
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1920:
	.loc 2 115 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE143:
	.size	gt_ggc_mx_varasm_status, .-gt_ggc_mx_varasm_status
.globl gt_ggc_m_P15deferred_string4htab
	.type	gt_ggc_m_P15deferred_string4htab, @function
gt_ggc_m_P15deferred_string4htab:
.LFB144:
	.loc 2 120 0
	pushl	%ebp
.LCFI525:
	movl	%esp, %ebp
.LCFI526:
	pushl	%ebx
.LCFI527:
	subl	$20, %esp
.LCFI528:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 121 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 122 0
	cmpl	$0, -12(%ebp)
	je	.L1931
	cmpl	$1, -12(%ebp)
	je	.L1931
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1931
	.loc 2 124 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1931
.LBB65:
	.loc 2 126 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	.loc 2 127 0
	movl	$0, -8(%ebp)
	jmp	.L1927
.L1928:
	.loc 2 128 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1929
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_deferred_string@PLT
.L1929:
	.loc 2 127 0
	addl	$1, -8(%ebp)
.L1927:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L1928
.L1931:
.LBE65:
	.loc 2 132 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE144:
	.size	gt_ggc_m_P15deferred_string4htab, .-gt_ggc_m_P15deferred_string4htab
.globl gt_ggc_r_gt_varasm_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_varasm_h, @object
	.size	gt_ggc_r_gt_varasm_h, 64
gt_ggc_r_gt_varasm_h:
	.long	weak_decls
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	const_str_htab
	.long	1
	.long	4
	.long	gt_ggc_m_P15deferred_string4htab
	.long	const_hash_table
	.long	1009
	.long	4
	.long	gt_ggc_mx_constant_descriptor_tree
	.long	0
	.long	0
	.long	0
	.long	0
	.local	const_alias_set
	.comm	const_alias_set,8,8
	.local	in_named_name
	.comm	in_named_name,4,4
	.local	in_named_htab
	.comm	in_named_htab,4,4
	.local	const_hash_table
	.comm	const_hash_table,4036,32
	.local	const_str_htab
	.comm	const_str_htab,4,4
	.local	deferred_constants
	.comm	deferred_constants,4,4
	.local	after_function_constants
	.comm	after_function_constants,4,4
	.local	defer_addressed_constants_flag
	.comm	defer_addressed_constants_flag,4,4
	.comm	first_global_object_name,4,4
	.comm	weak_global_object_name,4,4
	.comm	weak_decls,4,4
	.comm	const_labelno,4,4
	.comm	var_labelno,4,4
	.comm	size_directive_output,4,4
	.comm	last_assemble_variable_decl,4,4
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
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI26-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
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
	.long	.LCFI28-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI32-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI36-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI40-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI41
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
	.long	.LCFI44-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI45
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
	.long	.LCFI48-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI52-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI56-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI60-.LFB31
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI64-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI68-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI72-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI76-.LFB35
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
	.long	.LCFI85-.LCFI81
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
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI86-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI88-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI89
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI97-.LCFI94
	.byte	0x83
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
	.long	.LCFI98-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI99-.LCFI98
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI101-.LCFI99
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
	.long	.LCFI102-.LFB41
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI106-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI110-.LFB43
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
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI114-.LFB44
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
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI118-.LFB45
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI122-.LFB46
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
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI126-.LFB47
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
	.byte	0x4
	.long	.LCFI133-.LCFI131
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
	.long	.LCFI134-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI136-.LFB50
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI140-.LFB51
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
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI144-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI149-.LCFI145
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI154-.LCFI151
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI155-.LFB54
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
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI159-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI163-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI167-.LFB57
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
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI171-.LFB58
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
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI175-.LFB59
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
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI179-.LFB60
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
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI183-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI184-.LCFI183
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI186-.LFB63
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
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI190-.LFB64
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
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI194-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI197-.LCFI195
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI198-.LFB66
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
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI202-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI203-.LCFI202
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
	.long	.LCFI204-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI205-.LCFI204
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI208-.LCFI205
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
	.long	.LCFI212-.LCFI210
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
	.long	.LCFI213-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI214-.LCFI213
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI215-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI216-.LCFI215
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI218-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI222-.LCFI219
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI223-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI224-.LCFI223
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI228-.LCFI224
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
	.long	.LCFI229-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI231-.LFB74
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
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI235-.LFB75
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
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI239-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI240-.LCFI239
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI243-.LCFI240
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
	.long	.LCFI244-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI245-.LCFI244
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI247-.LCFI245
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
	.long	.LCFI248-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI249-.LCFI248
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI253-.LCFI249
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
	.long	.LCFI254-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI255-.LCFI254
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI257-.LCFI255
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
	.long	.LCFI258-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI259-.LCFI258
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI263-.LCFI259
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI264-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI265-.LCFI264
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI269-.LCFI265
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI270-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI271-.LCFI270
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
	.long	.LCFI273-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI274-.LCFI273
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI274
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.byte	0x4
	.long	.LCFI281-.LCFI279
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
	.long	.LCFI282-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI286-.LCFI283
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
	.long	.LCFI287-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI288-.LCFI287
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI292-.LCFI288
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI293-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI294-.LCFI293
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI297-.LCFI294
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI298-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI299-.LCFI298
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI301-.LCFI299
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
	.long	.LCFI302-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI303-.LCFI302
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI305-.LCFI303
	.byte	0x83
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
	.long	.LCFI306-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI307-.LCFI306
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
	.long	.LCFI309-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI310-.LCFI309
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI312-.LCFI310
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
	.long	.LCFI313-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI314-.LCFI313
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI316-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI317-.LCFI316
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI319-.LCFI317
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
	.long	.LCFI320-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI321-.LCFI320
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI322-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI323-.LCFI322
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI327-.LCFI323
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI328-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI329-.LCFI328
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI331-.LCFI329
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
	.long	.LCFI332-.LFB97
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
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI336-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI337-.LCFI336
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI339-.LCFI337
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
	.long	.LCFI340-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI341-.LCFI340
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI343-.LCFI341
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
	.long	.LCFI344-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI345-.LCFI344
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI347-.LCFI345
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
	.long	.LCFI348-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI349-.LCFI348
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI352-.LCFI349
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI353-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI354-.LCFI353
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI357-.LCFI354
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
	.long	.LCFI358-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI359-.LCFI358
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI363-.LCFI359
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI364-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI365-.LCFI364
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI367-.LCFI365
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
	.long	.LCFI368-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI369-.LCFI368
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI371-.LCFI369
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
	.long	.LCFI372-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI373-.LCFI372
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI375-.LCFI373
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
	.long	.LCFI376-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI377-.LCFI376
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI379-.LCFI377
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
	.long	.LCFI380-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI381-.LCFI380
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI384-.LCFI381
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
.LSFDE192:
	.long	.LEFDE192-.LASFDE192
.LASFDE192:
	.long	.Lframe0
	.long	.LFB111
	.long	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI393-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI394-.LCFI393
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI396-.LCFI394
	.byte	0x83
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
	.long	.LCFI397-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI398-.LCFI397
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE194:
.LSFDE196:
	.long	.LEFDE196-.LASFDE196
.LASFDE196:
	.long	.Lframe0
	.long	.LFB113
	.long	.LFE113-.LFB113
	.byte	0x4
	.long	.LCFI399-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI400-.LCFI399
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI402-.LCFI400
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
	.long	.LCFI403-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI404-.LCFI403
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI406-.LCFI404
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
	.long	.LCFI407-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI408-.LCFI407
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI410-.LCFI408
	.byte	0x83
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
	.long	.LCFI411-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI412-.LCFI411
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI414-.LCFI412
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
	.long	.LCFI415-.LFB117
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI416-.LCFI415
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI418-.LCFI416
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
	.long	.LCFI419-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI420-.LCFI419
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI424-.LCFI420
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI425-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI426-.LCFI425
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI428-.LCFI426
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
	.long	.LCFI429-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI430-.LCFI429
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI432-.LCFI430
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
	.long	.LCFI433-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI434-.LCFI433
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI436-.LCFI434
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE212:
.LSFDE214:
	.long	.LEFDE214-.LASFDE214
.LASFDE214:
	.long	.Lframe0
	.long	.LFB122
	.long	.LFE122-.LFB122
	.byte	0x4
	.long	.LCFI437-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI438-.LCFI437
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI440-.LCFI438
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
	.long	.LCFI441-.LFB123
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI442-.LCFI441
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI444-.LCFI442
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
	.long	.LCFI445-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI446-.LCFI445
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI448-.LCFI446
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
	.long	.LCFI449-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI450-.LCFI449
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI452-.LCFI450
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
	.long	.LCFI453-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI454-.LCFI453
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI456-.LCFI454
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
	.long	.LCFI457-.LFB127
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
.LEFDE224:
.LSFDE226:
	.long	.LEFDE226-.LASFDE226
.LASFDE226:
	.long	.Lframe0
	.long	.LFB128
	.long	.LFE128-.LFB128
	.byte	0x4
	.long	.LCFI461-.LFB128
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI462-.LCFI461
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE226:
.LSFDE228:
	.long	.LEFDE228-.LASFDE228
.LASFDE228:
	.long	.Lframe0
	.long	.LFB129
	.long	.LFE129-.LFB129
	.byte	0x4
	.long	.LCFI464-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI465-.LCFI464
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI467-.LCFI465
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
	.long	.LCFI468-.LFB130
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI469-.LCFI468
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI471-.LCFI469
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
	.long	.LCFI472-.LFB131
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI473-.LCFI472
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI475-.LCFI473
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
	.long	.LCFI476-.LFB132
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI477-.LCFI476
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI481-.LCFI477
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI482-.LFB133
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI483-.LCFI482
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI485-.LCFI483
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
	.long	.LCFI486-.LFB134
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI487-.LCFI486
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI489-.LCFI487
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
	.long	.LCFI490-.LFB135
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI491-.LCFI490
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
	.long	.LCFI493-.LFB136
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI494-.LCFI493
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI496-.LCFI494
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
	.long	.LCFI497-.LFB137
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI498-.LCFI497
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI500-.LCFI498
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
	.long	.LCFI501-.LFB138
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI502-.LCFI501
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI504-.LCFI502
	.byte	0x83
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
	.long	.LCFI505-.LFB139
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI506-.LCFI505
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI508-.LCFI506
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
	.long	.LCFI509-.LFB140
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI510-.LCFI509
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI512-.LCFI510
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
	.long	.LCFI513-.LFB141
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI514-.LCFI513
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI516-.LCFI514
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
	.long	.LCFI517-.LFB142
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
.LEFDE254:
.LSFDE256:
	.long	.LEFDE256-.LASFDE256
.LASFDE256:
	.long	.Lframe0
	.long	.LFB143
	.long	.LFE143-.LFB143
	.byte	0x4
	.long	.LCFI521-.LFB143
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
.LEFDE256:
.LSFDE258:
	.long	.LEFDE258-.LASFDE258
.LASFDE258:
	.long	.Lframe0
	.long	.LFB144
	.long	.LFE144-.LFB144
	.byte	0x4
	.long	.LCFI525-.LFB144
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
.LEFDE258:
	.file 3 "../../../include/gnu/hashtab.h"
	.file 4 "../../../kg++fe/gnu/MIPS/config.h"
	.file 5 "../../../kg++fe/gnu/tree.h"
	.file 6 "../../../kg++fe/gnu/rtl.h"
	.file 7 "../../../kg++fe/gnu/machmode.h"
	.file 8 "../../../kg++fe/gnu/bitmap.h"
	.file 9 "../../../kg++fe/gnu/basic-block.h"
	.file 10 "../../../kg++fe/gnu/sbitmap.h"
	.file 11 "../../../kg++fe/gnu/real.h"
	.file 12 "../../../kg++fe/gnu/hashtable.h"
	.file 13 "../../../kg++fe/gnu/location.h"
	.file 14 "../../../kg++fe/gnu/function.h"
	.file 15 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 16 "../../../kg++fe/gnu/c-tree.h"
	.file 17 "../../../kg++fe/gnu/c-common.h"
	.file 18 "../../../kg++fe/omp_types.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/libio.h"
	.file 21 "/usr/include/bits/types.h"
	.file 22 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 23 "../../../kg++fe/gnu/target.h"
	.file 24 "../../../include/gnu/safe-ctype.h"
	.file 25 "../../../kg++fe/gnu/flags.h"
	.file 26 "../../../kg++fe/gnu/regs.h"
	.file 27 "../../../kg++fe/gnu/output.h"
	.file 28 "../../../kg++fe/gnu/langhooks.h"
	.file 29 "../../../kg++fe/gnu/diagnostic.h"
	.file 30 "../../../include/gnu/obstack.h"
	.file 31 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 32 "../../../kg++fe/gnu/debug.h"
	.file 33 "../../../kg++fe/gnu/ggc.h"
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI98-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI99-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
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
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
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
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
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
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB63-.Ltext0
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
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB64-.Ltext0
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
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
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
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
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
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
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
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB78-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI248-.Ltext0
	.long	.LCFI249-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI249-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB79-.Ltext0
	.long	.LCFI254-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI254-.Ltext0
	.long	.LCFI255-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI255-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB80-.Ltext0
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
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB81-.Ltext0
	.long	.LCFI264-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI264-.Ltext0
	.long	.LCFI265-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI265-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB82-.Ltext0
	.long	.LCFI270-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI270-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI271-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB83-.Ltext0
	.long	.LCFI273-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI273-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI274-.Ltext0
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
	.long	.LCFI282-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI282-.Ltext0
	.long	.LCFI283-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI283-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB86-.Ltext0
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
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB87-.Ltext0
	.long	.LCFI293-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI293-.Ltext0
	.long	.LCFI294-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI294-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB88-.Ltext0
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
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB89-.Ltext0
	.long	.LCFI302-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI302-.Ltext0
	.long	.LCFI303-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI303-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB90-.Ltext0
	.long	.LCFI306-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI306-.Ltext0
	.long	.LCFI307-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI307-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB91-.Ltext0
	.long	.LCFI309-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI309-.Ltext0
	.long	.LCFI310-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI310-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB92-.Ltext0
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
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB93-.Ltext0
	.long	.LCFI316-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI316-.Ltext0
	.long	.LCFI317-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI317-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB94-.Ltext0
	.long	.LCFI320-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI320-.Ltext0
	.long	.LCFI321-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI321-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB95-.Ltext0
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
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB96-.Ltext0
	.long	.LCFI328-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI328-.Ltext0
	.long	.LCFI329-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI329-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB97-.Ltext0
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
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB98-.Ltext0
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
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB99-.Ltext0
	.long	.LCFI340-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI340-.Ltext0
	.long	.LCFI341-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI341-.Ltext0
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB100-.Ltext0
	.long	.LCFI344-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI344-.Ltext0
	.long	.LCFI345-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI345-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB101-.Ltext0
	.long	.LCFI348-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI348-.Ltext0
	.long	.LCFI349-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI349-.Ltext0
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
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
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
	.long	.LCFI358-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI358-.Ltext0
	.long	.LCFI359-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI359-.Ltext0
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
	.long	.LCFI364-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI364-.Ltext0
	.long	.LCFI365-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI365-.Ltext0
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
	.long	.LCFI368-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI368-.Ltext0
	.long	.LCFI369-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI369-.Ltext0
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
	.long	.LCFI372-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI372-.Ltext0
	.long	.LCFI373-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI373-.Ltext0
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
	.long	.LCFI376-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI376-.Ltext0
	.long	.LCFI377-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI377-.Ltext0
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
	.long	.LCFI380-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI380-.Ltext0
	.long	.LCFI381-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI381-.Ltext0
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
.LLST96:
	.long	.LFB111-.Ltext0
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
	.long	.LFE111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LFB112-.Ltext0
	.long	.LCFI397-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI397-.Ltext0
	.long	.LCFI398-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI398-.Ltext0
	.long	.LFE112-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LFB113-.Ltext0
	.long	.LCFI399-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI399-.Ltext0
	.long	.LCFI400-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI400-.Ltext0
	.long	.LFE113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LFB114-.Ltext0
	.long	.LCFI403-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI403-.Ltext0
	.long	.LCFI404-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI404-.Ltext0
	.long	.LFE114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LFB115-.Ltext0
	.long	.LCFI407-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI407-.Ltext0
	.long	.LCFI408-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI408-.Ltext0
	.long	.LFE115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LFB116-.Ltext0
	.long	.LCFI411-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI411-.Ltext0
	.long	.LCFI412-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI412-.Ltext0
	.long	.LFE116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LFB117-.Ltext0
	.long	.LCFI415-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI415-.Ltext0
	.long	.LCFI416-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI416-.Ltext0
	.long	.LFE117-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LFB118-.Ltext0
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
	.long	.LFE118-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LFB119-.Ltext0
	.long	.LCFI425-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI425-.Ltext0
	.long	.LCFI426-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI426-.Ltext0
	.long	.LFE119-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LFB120-.Ltext0
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
	.long	.LFE120-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LFB121-.Ltext0
	.long	.LCFI433-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI433-.Ltext0
	.long	.LCFI434-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI434-.Ltext0
	.long	.LFE121-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LFB122-.Ltext0
	.long	.LCFI437-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI437-.Ltext0
	.long	.LCFI438-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI438-.Ltext0
	.long	.LFE122-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LFB123-.Ltext0
	.long	.LCFI441-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI441-.Ltext0
	.long	.LCFI442-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI442-.Ltext0
	.long	.LFE123-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LFB124-.Ltext0
	.long	.LCFI445-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI445-.Ltext0
	.long	.LCFI446-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI446-.Ltext0
	.long	.LFE124-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LFB125-.Ltext0
	.long	.LCFI449-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI449-.Ltext0
	.long	.LCFI450-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI450-.Ltext0
	.long	.LFE125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LFB126-.Ltext0
	.long	.LCFI453-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI453-.Ltext0
	.long	.LCFI454-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI454-.Ltext0
	.long	.LFE126-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LFB127-.Ltext0
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
	.long	.LFE127-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LFB128-.Ltext0
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
	.long	.LFE128-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LFB129-.Ltext0
	.long	.LCFI464-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI464-.Ltext0
	.long	.LCFI465-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI465-.Ltext0
	.long	.LFE129-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LFB130-.Ltext0
	.long	.LCFI468-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI468-.Ltext0
	.long	.LCFI469-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI469-.Ltext0
	.long	.LFE130-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LFB131-.Ltext0
	.long	.LCFI472-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI472-.Ltext0
	.long	.LCFI473-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI473-.Ltext0
	.long	.LFE131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LFB132-.Ltext0
	.long	.LCFI476-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI476-.Ltext0
	.long	.LCFI477-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI477-.Ltext0
	.long	.LFE132-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LFB133-.Ltext0
	.long	.LCFI482-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI482-.Ltext0
	.long	.LCFI483-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI483-.Ltext0
	.long	.LFE133-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LFB134-.Ltext0
	.long	.LCFI486-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI486-.Ltext0
	.long	.LCFI487-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI487-.Ltext0
	.long	.LFE134-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LFB135-.Ltext0
	.long	.LCFI490-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI490-.Ltext0
	.long	.LCFI491-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI491-.Ltext0
	.long	.LFE135-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LFB136-.Ltext0
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
	.long	.LFE136-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LFB137-.Ltext0
	.long	.LCFI497-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI497-.Ltext0
	.long	.LCFI498-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI498-.Ltext0
	.long	.LFE137-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LFB138-.Ltext0
	.long	.LCFI501-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI501-.Ltext0
	.long	.LCFI502-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI502-.Ltext0
	.long	.LFE138-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LFB139-.Ltext0
	.long	.LCFI505-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI505-.Ltext0
	.long	.LCFI506-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI506-.Ltext0
	.long	.LFE139-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LFB140-.Ltext0
	.long	.LCFI509-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI509-.Ltext0
	.long	.LCFI510-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI510-.Ltext0
	.long	.LFE140-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LFB141-.Ltext0
	.long	.LCFI513-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI513-.Ltext0
	.long	.LCFI514-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI514-.Ltext0
	.long	.LFE141-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST127:
	.long	.LFB142-.Ltext0
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
	.long	.LFE142-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST128:
	.long	.LFB143-.Ltext0
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
	.long	.LFE143-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST129:
	.long	.LFB144-.Ltext0
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
	.long	.LFE144-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xd242
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/varasm.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19b
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x6
	.byte	0x84
	.long	0xb9e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x6
	.byte	0x87
	.long	0x8a6
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x6
	.byte	0x8e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x6
	.byte	0x91
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x6
	.byte	0x99
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x6
	.byte	0xa2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x6
	.byte	0xb4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x6
	.byte	0xbb
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x6
	.byte	0xc0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x6
	.byte	0xc9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x6
	.byte	0xce
	.long	0x17ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1a8
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae
	.uleb128 0x4
	.long	0x1e3
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x6
	.byte	0xf2
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x6
	.byte	0xf3
	.long	0x17bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5
	.uleb128 0x8
	.long	0x2ca
	.string	"tree_node"
	.byte	0xa0
	.byte	0x4
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x5
	.value	0x887
	.long	0x3e8f
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x5
	.value	0x888
	.long	0x41ad
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x5
	.value	0x889
	.long	0x41f5
	.uleb128 0xa
	.string	"vector"
	.byte	0x5
	.value	0x88a
	.long	0x4364
	.uleb128 0x9
	.long	.LASF2
	.byte	0x5
	.value	0x88b
	.long	0x42a2
	.uleb128 0xa
	.string	"complex"
	.byte	0x5
	.value	0x88c
	.long	0x430f
	.uleb128 0xa
	.string	"identifier"
	.byte	0x5
	.value	0x88d
	.long	0x4599
	.uleb128 0x9
	.long	.LASF3
	.byte	0x5
	.value	0x88e
	.long	0x5623
	.uleb128 0x9
	.long	.LASF4
	.byte	0x5
	.value	0x88f
	.long	0x47fc
	.uleb128 0xa
	.string	"list"
	.byte	0x5
	.value	0x890
	.long	0x45d0
	.uleb128 0xa
	.string	"vec"
	.byte	0x5
	.value	0x891
	.long	0x4615
	.uleb128 0xa
	.string	"exp"
	.byte	0x5
	.value	0x892
	.long	0x4666
	.uleb128 0xa
	.string	"block"
	.byte	0x5
	.value	0x893
	.long	0x46b2
	.uleb128 0xa
	.string	"omp"
	.byte	0x5
	.value	0x895
	.long	0x6029
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d0
	.uleb128 0xb
	.long	0x2d5
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3b6
	.string	"mips_args"
	.byte	0x40
	.byte	0xf
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xf
	.value	0xaad
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xf
	.value	0xab0
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xf
	.value	0xab5
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xf
	.value	0xab8
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xf
	.value	0xabb
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xf
	.value	0xac8
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xf
	.value	0xacb
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xf
	.value	0xad3
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xf
	.value	0xad4
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF5
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3cd
	.long	0x9b
	.uleb128 0x11
	.long	0x3cd
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF5
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xf
	.value	0xad5
	.long	0x2e4
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x1f
	.byte	0x2b
	.long	0x402
	.uleb128 0x3
	.byte	0x4
	.long	0x2d5
	.uleb128 0x2
	.string	"va_list"
	.byte	0x1f
	.byte	0x69
	.long	0x3ec
	.uleb128 0x2
	.string	"size_t"
	.byte	0x16
	.byte	0xd6
	.long	0x3b6
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
	.byte	0x15
	.byte	0x3b
	.long	0x47d
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x15
	.byte	0x90
	.long	0x4c7
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x15
	.byte	0x91
	.long	0x4a8
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d5
	.uleb128 0x2
	.string	"FILE"
	.byte	0x13
	.byte	0x2e
	.long	0x4f8
	.uleb128 0x14
	.long	0x773
	.long	.LASF6
	.byte	0x94
	.byte	0x13
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x14
	.value	0x10c
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x14
	.value	0x111
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x14
	.value	0x112
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x14
	.value	0x113
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x14
	.value	0x114
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x14
	.value	0x115
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x14
	.value	0x116
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x14
	.value	0x117
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x14
	.value	0x118
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x14
	.value	0x11a
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x14
	.value	0x11b
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x14
	.value	0x11c
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x14
	.value	0x11e
	.long	0x7fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x14
	.value	0x120
	.long	0x803
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x14
	.value	0x122
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x14
	.value	0x126
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x14
	.value	0x128
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x14
	.value	0x12c
	.long	0x436
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x14
	.value	0x12d
	.long	0x461
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x14
	.value	0x12e
	.long	0x809
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x14
	.value	0x132
	.long	0x819
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x14
	.value	0x13b
	.long	0x4d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x14
	.value	0x144
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x14
	.value	0x145
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x14
	.value	0x146
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x14
	.value	0x147
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x14
	.value	0x148
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x14
	.value	0x14a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x14
	.value	0x14c
	.long	0x81f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.long	0x783
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x789
	.uleb128 0xb
	.long	0x425
	.uleb128 0x3
	.byte	0x4
	.long	0x425
	.uleb128 0x3
	.byte	0x4
	.long	0x4e4
	.uleb128 0x3
	.byte	0x4
	.long	0x7a0
	.uleb128 0x15
	.long	0x7ac
	.byte	0x1
	.uleb128 0x16
	.long	0x4e4
	.byte	0x0
	.uleb128 0x17
	.string	"_IO_lock_t"
	.byte	0x14
	.byte	0xb0
	.uleb128 0x4
	.long	0x7fd
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x14
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x14
	.byte	0xb7
	.long	0x7fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x14
	.byte	0xb8
	.long	0x803
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x14
	.byte	0xbc
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ba
	.uleb128 0x3
	.byte	0x4
	.long	0x4f8
	.uleb128 0x10
	.long	0x819
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ac
	.uleb128 0x10
	.long	0x82f
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x83f
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x17
	.byte	0x0
	.uleb128 0x10
	.long	0x84f
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	0x85f
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x13
	.byte	0x0
	.uleb128 0xb
	.long	0x2dd
	.uleb128 0x3
	.byte	0x4
	.long	0x2dd
	.uleb128 0x3
	.byte	0x4
	.long	0x870
	.uleb128 0x18
	.long	0x885
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x885
	.uleb128 0x16
	.long	0x885
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x88b
	.uleb128 0x19
	.uleb128 0x3
	.byte	0x4
	.long	0x892
	.uleb128 0x15
	.long	0x89e
	.byte	0x1
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x89e
	.uleb128 0x1b
	.long	0xaef
	.string	"machine_mode"
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.uleb128 0x1c
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x1c
	.string	"BImode"
	.sleb128 1
	.uleb128 0x1c
	.string	"QImode"
	.sleb128 2
	.uleb128 0x1c
	.string	"HImode"
	.sleb128 3
	.uleb128 0x1c
	.string	"SImode"
	.sleb128 4
	.uleb128 0x1c
	.string	"DImode"
	.sleb128 5
	.uleb128 0x1c
	.string	"TImode"
	.sleb128 6
	.uleb128 0x1c
	.string	"OImode"
	.sleb128 7
	.uleb128 0x1c
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x1c
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x1c
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x1c
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x1c
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x1c
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x1c
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x1c
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x1c
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x1c
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x1c
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x1c
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x1c
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x1c
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x1c
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x1c
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x1c
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x1c
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x1c
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x1c
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x1c
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x1c
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x1c
	.string	"COImode"
	.sleb128 30
	.uleb128 0x1c
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x1c
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x1c
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x1c
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x1c
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x1c
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x1c
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x1c
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x1c
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x1c
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x1c
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x1c
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x1c
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x1c
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x1c
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x1c
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x1c
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x1c
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x1c
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x1c
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x1c
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x1c
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x1c
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x1c
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x1d
	.long	0xb9e
	.long	.LASF7
	.byte	0x4
	.byte	0x7
	.byte	0x2c
	.uleb128 0x1c
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x1c
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x1c
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x1c
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x1c
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x1c
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x1c
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x1c
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x1c
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x1c
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x1b
	.long	0x136d
	.string	"rtx_code"
	.byte	0x4
	.byte	0x6
	.byte	0x29
	.uleb128 0x1c
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x1c
	.string	"NIL"
	.sleb128 1
	.uleb128 0x1c
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x1c
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x1c
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x1c
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x1c
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x1c
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x1c
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x1c
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x1c
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x1c
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x1c
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x1c
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x1c
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x1c
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x1c
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x1c
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x1c
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x1c
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x1c
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x1c
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x1c
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x1c
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x1c
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x1c
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x1c
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x1c
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x1c
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x1c
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x1c
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x1c
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x1c
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x1c
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x1c
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x1c
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x1c
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x1c
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x1c
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x1c
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x1c
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x1c
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x1c
	.string	"INSN"
	.sleb128 42
	.uleb128 0x1c
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x1c
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x1c
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x1c
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x1c
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x1c
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x1c
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x1c
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x1c
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x1c
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x1c
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x1c
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x1c
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x1c
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x1c
	.string	"SET"
	.sleb128 57
	.uleb128 0x1c
	.string	"USE"
	.sleb128 58
	.uleb128 0x1c
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x1c
	.string	"CALL"
	.sleb128 60
	.uleb128 0x1c
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x1c
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x1c
	.string	"RESX"
	.sleb128 63
	.uleb128 0x1c
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x1c
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x1c
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x1c
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x1c
	.string	"CONST"
	.sleb128 68
	.uleb128 0x1c
	.string	"PC"
	.sleb128 69
	.uleb128 0x1c
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x1c
	.string	"REG"
	.sleb128 71
	.uleb128 0x1c
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x1c
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x1c
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x1c
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x1c
	.string	"MEM"
	.sleb128 76
	.uleb128 0x1c
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x1c
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x1c
	.string	"CC0"
	.sleb128 79
	.uleb128 0x1c
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x1c
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x1c
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x1c
	.string	"COND"
	.sleb128 83
	.uleb128 0x1c
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x1c
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x1c
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x1c
	.string	"NEG"
	.sleb128 87
	.uleb128 0x1c
	.string	"MULT"
	.sleb128 88
	.uleb128 0x1c
	.string	"DIV"
	.sleb128 89
	.uleb128 0x1c
	.string	"MOD"
	.sleb128 90
	.uleb128 0x1c
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x1c
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x1c
	.string	"AND"
	.sleb128 93
	.uleb128 0x1c
	.string	"IOR"
	.sleb128 94
	.uleb128 0x1c
	.string	"XOR"
	.sleb128 95
	.uleb128 0x1c
	.string	"NOT"
	.sleb128 96
	.uleb128 0x1c
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x1c
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x1c
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x1c
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x1c
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x1c
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x1c
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x1c
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x1c
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x1c
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x1c
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x1c
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x1c
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x1c
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x1c
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x1c
	.string	"NE"
	.sleb128 112
	.uleb128 0x1c
	.string	"EQ"
	.sleb128 113
	.uleb128 0x1c
	.string	"GE"
	.sleb128 114
	.uleb128 0x1c
	.string	"GT"
	.sleb128 115
	.uleb128 0x1c
	.string	"LE"
	.sleb128 116
	.uleb128 0x1c
	.string	"LT"
	.sleb128 117
	.uleb128 0x1c
	.string	"GEU"
	.sleb128 118
	.uleb128 0x1c
	.string	"GTU"
	.sleb128 119
	.uleb128 0x1c
	.string	"LEU"
	.sleb128 120
	.uleb128 0x1c
	.string	"LTU"
	.sleb128 121
	.uleb128 0x1c
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x1c
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x1c
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x1c
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x1c
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x1c
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x1c
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x1c
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x1c
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x1c
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x1c
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x1c
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x1c
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x1c
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x1c
	.string	"FIX"
	.sleb128 136
	.uleb128 0x1c
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x1c
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x1c
	.string	"ABS"
	.sleb128 139
	.uleb128 0x1c
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x1c
	.string	"FFS"
	.sleb128 141
	.uleb128 0x1c
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x1c
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x1c
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x1c
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x1c
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x1c
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x1c
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x1c
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x1c
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x1c
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x1c
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x1c
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x1c
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x1c
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x1c
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x1c
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x1c
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x1c
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x1c
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x1c
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x1c
	.string	"PHI"
	.sleb128 162
	.uleb128 0x1c
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1e
	.long	0x1441
	.byte	0x4
	.byte	0x6
	.byte	0x47
	.uleb128 0x6
	.long	.LASF8
	.byte	0x6
	.byte	0x49
	.long	0x3b6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x6
	.byte	0x4b
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x6
	.byte	0x4c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x6
	.byte	0x4e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x6
	.byte	0x50
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x6
	.byte	0x52
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x6
	.byte	0x55
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x6
	.byte	0x57
	.long	0x3b6
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x6
	.byte	0x58
	.long	0x136d
	.uleb128 0x14
	.long	0x14b2
	.long	.LASF9
	.byte	0x18
	.byte	0x6
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x6
	.byte	0x63
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x6
	.byte	0x64
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x6
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x6
	.byte	0x66
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x6
	.byte	0x67
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	.LASF9
	.byte	0x6
	.byte	0x68
	.long	0x145c
	.uleb128 0x8
	.long	0x158f
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x6
	.byte	0x6d
	.uleb128 0x21
	.string	"rtwint"
	.byte	0x6
	.byte	0x6e
	.long	0x47d
	.uleb128 0x21
	.string	"rtint"
	.byte	0x6
	.byte	0x6f
	.long	0x2dd
	.uleb128 0x21
	.string	"rtuint"
	.byte	0x6
	.byte	0x70
	.long	0x3b6
	.uleb128 0x21
	.string	"rtstr"
	.byte	0x6
	.byte	0x71
	.long	0x2ca
	.uleb128 0x21
	.string	"rtx"
	.byte	0x6
	.byte	0x72
	.long	0x9b
	.uleb128 0x21
	.string	"rtvec"
	.byte	0x6
	.byte	0x73
	.long	0x19b
	.uleb128 0x21
	.string	"rttype"
	.byte	0x6
	.byte	0x74
	.long	0x8a6
	.uleb128 0x21
	.string	"rt_addr_diff_vec_flags"
	.byte	0x6
	.byte	0x75
	.long	0x1441
	.uleb128 0x21
	.string	"rt_cselib"
	.byte	0x6
	.byte	0x76
	.long	0x15a3
	.uleb128 0x21
	.string	"rtbit"
	.byte	0x6
	.byte	0x77
	.long	0x160b
	.uleb128 0x21
	.string	"rttree"
	.byte	0x6
	.byte	0x78
	.long	0x1e3
	.uleb128 0x21
	.string	"bb"
	.byte	0x6
	.byte	0x79
	.long	0x1792
	.uleb128 0x21
	.string	"rtmem"
	.byte	0x6
	.byte	0x7a
	.long	0x1798
	.byte	0x0
	.uleb128 0x22
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x158f
	.uleb128 0x4
	.long	0x160b
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x6
	.byte	0x77
	.uleb128 0x7
	.string	"first"
	.byte	0x8
	.byte	0x3d
	.long	0x67a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x8
	.byte	0x3e
	.long	0x67a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x8
	.byte	0x3f
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x8
	.byte	0x40
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15a9
	.uleb128 0x4
	.long	0x1792
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x6
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0x9
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x9
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x9
	.byte	0xb8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x9
	.byte	0xb9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x9
	.byte	0xbc
	.long	0x68f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x9
	.byte	0xbc
	.long	0x68f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x9
	.byte	0xc1
	.long	0x6822
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x9
	.byte	0xc5
	.long	0x6822
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x9
	.byte	0xcb
	.long	0x6822
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x9
	.byte	0xcd
	.long	0x6822
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x9
	.byte	0xd0
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x9
	.byte	0xd3
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x9
	.byte	0xd6
	.long	0x1792
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x9
	.byte	0xd6
	.long	0x1792
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x9
	.byte	0xd9
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x9
	.byte	0xdc
	.long	0x6b69
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x9
	.byte	0xdf
	.long	0x6830
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x9
	.byte	0xe2
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1f
	.long	.LASF14
	.byte	0x9
	.byte	0xe5
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1611
	.uleb128 0x3
	.byte	0x4
	.long	0x14b2
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x6
	.byte	0x7c
	.long	0x14bd
	.uleb128 0x10
	.long	0x17bd
	.long	0x179e
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x17cd
	.long	0x9b
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x4
	.long	0x1805
	.string	"location_s"
	.byte	0x8
	.byte	0xd
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0xd
	.byte	0x1e
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0xd
	.byte	0x21
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xd
	.byte	0x23
	.long	0x17d3
	.uleb128 0x1b
	.long	0x2139
	.string	"tree_code"
	.byte	0x4
	.byte	0x5
	.byte	0x25
	.uleb128 0x1c
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x1c
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x1c
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x1c
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x1c
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x1c
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x1c
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x1c
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x1c
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x1c
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x1c
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x1c
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x1c
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x1c
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x1c
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x1c
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x1c
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x1c
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x1c
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x1c
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x1c
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x1c
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x1c
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x1c
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x1c
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x1c
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x1c
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x1c
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x1c
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x1c
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x1c
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x1c
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x1c
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x1c
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x1c
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x1c
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x1c
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x1c
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x1c
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x1c
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x1c
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x1c
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x1c
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x1c
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x1c
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x1c
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x1c
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x1c
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x1c
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x1c
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x1c
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x1c
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x1c
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x1c
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x1c
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x1c
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x1c
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x1c
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x1c
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x1c
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x1c
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x1c
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x1c
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x1c
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x1c
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x1c
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x1c
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x1c
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x1c
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x1c
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x1c
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x1c
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x1c
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x1c
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x1c
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x1c
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x1c
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x1c
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x1c
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x1c
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x1c
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x1c
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x1c
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x1c
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x1c
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x1c
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x1c
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x1c
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x1c
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x1c
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x1c
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x1c
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x1c
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x1c
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x1c
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x1c
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x1c
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x1c
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x1c
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x1c
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x1c
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x1c
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x1c
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x1c
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x1c
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x1c
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x1c
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x1c
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x1c
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x1c
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x1c
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x1c
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x1c
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x1c
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x1c
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x1c
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x1c
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x1c
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x1c
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x1c
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x1c
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x1c
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x1c
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x1c
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x1c
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x1c
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x1c
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x1c
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x1c
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x1c
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x1c
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x1c
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x1c
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x1c
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x1c
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x1c
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x1c
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x1c
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x1c
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x1c
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x1c
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x1c
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x1c
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x1c
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x1c
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x1c
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x1c
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x1c
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x1c
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x1c
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x1c
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x1c
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x5
	.byte	0x2f
	.long	0x3b6
	.uleb128 0x4
	.long	0x2186
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x5
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x5
	.byte	0x30
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x5
	.byte	0x30
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x5
	.byte	0x34
	.long	0x2190
	.uleb128 0x22
	.string	"st"
	.byte	0x1
	.uleb128 0x1d
	.long	0x21e5
	.long	.LASF15
	.byte	0x4
	.byte	0x5
	.byte	0x58
	.uleb128 0x1c
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x1c
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x1c
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x1c
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x1b
	.long	0x3e8f
	.string	"built_in_function"
	.byte	0x4
	.byte	0x5
	.byte	0x67
	.uleb128 0x1c
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x1c
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x1c
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x1c
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x1c
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x1c
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x1c
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x1c
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x1c
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x1c
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x1c
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x1c
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x1c
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x1c
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x1c
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x1c
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x1c
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x1c
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x1c
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x1c
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x1c
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x1c
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x1c
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x1c
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x1c
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x1c
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x1c
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x1c
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x1c
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x1c
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x1c
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x1c
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x1c
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x1c
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x1c
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x1c
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x1c
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x1c
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x1c
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x1c
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x1c
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x1c
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x1c
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x1c
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x1c
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x1c
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x1c
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x1c
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x1c
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x1c
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x1c
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x1c
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x1c
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x1c
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x1c
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x1c
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x1c
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x1c
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x1c
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x1c
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x1c
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x1c
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x1c
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x1c
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x1c
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x1c
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x1c
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x1c
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x1c
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x1c
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x1c
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x1c
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x1c
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x1c
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x1c
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x1c
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x1c
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x1c
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x1c
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x1c
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x1c
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x1c
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x1c
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x1c
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x1c
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x1c
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x1c
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x1c
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x1c
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x1c
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x1c
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x1c
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x1c
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x1c
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x1c
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x1c
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x1c
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x1c
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x1c
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x1c
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x1c
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x1c
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x1c
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x1c
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x1c
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x1c
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x1c
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x1c
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x1c
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x1c
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x1c
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x1c
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x1c
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x1c
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x1c
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x1c
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x1c
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x1c
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x1c
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x1c
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x1c
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x1c
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x1c
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x1c
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x1c
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x1c
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x1c
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x1c
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x1c
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x1c
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x1c
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x1c
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x1c
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x1c
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x1c
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x1c
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x1c
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x1c
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x1c
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x1c
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x1c
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x1c
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x1c
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x1c
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x1c
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x1c
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x1c
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x1c
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x1c
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x1c
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x1c
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x1c
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x1c
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x1c
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x1c
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x1c
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x1c
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x1c
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x1c
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x1c
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x1c
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x1c
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x1c
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x1c
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x1c
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x1c
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x1c
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x1c
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x1c
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x1c
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x1c
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x1c
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x1c
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x1c
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x1c
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x1c
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x1c
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x1c
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x1c
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x1c
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x1c
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x1c
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x1c
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x1c
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x1c
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x1c
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x1c
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x1c
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x1c
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x1c
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x1c
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x1c
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x1c
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x1c
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x1c
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x1c
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x1c
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x1c
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x1c
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x1c
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x1c
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x1c
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x1c
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x1c
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x1c
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x1c
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x1c
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x1c
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x1c
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x1c
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x1c
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x1c
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x1c
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x1c
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x1c
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x1c
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x1c
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x1c
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x1c
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x1c
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x1c
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x1c
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x1c
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x4171
	.string	"tree_common"
	.byte	0x10
	.byte	0x5
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x5
	.byte	0x8d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x5
	.byte	0x8e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x5
	.byte	0x90
	.long	0x1817
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x5
	.byte	0x92
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x5
	.byte	0x93
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x5
	.byte	0x94
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x5
	.byte	0x95
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x5
	.byte	0x96
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x5
	.byte	0x97
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x5
	.byte	0x98
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x5
	.byte	0x9a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x5
	.byte	0x9f
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x5
	.byte	0xa0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x5
	.byte	0xa1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x5
	.byte	0xa2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x5
	.byte	0xa3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x5
	.byte	0xa4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x5
	.byte	0xa5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x5
	.byte	0xa6
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0xa8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF17
	.byte	0x5
	.byte	0xa9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF18
	.byte	0x5
	.byte	0xaa
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF19
	.byte	0x5
	.byte	0xab
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF20
	.byte	0x5
	.byte	0xac
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x5
	.byte	0xad
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF22
	.byte	0x5
	.byte	0xae
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF23
	.byte	0x5
	.byte	0xb0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x5
	.byte	0xb5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x5
	.byte	0xb6
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x5
	.byte	0xb7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x5
	.byte	0xb8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x5
	.byte	0xb9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x41ad
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x5
	.value	0x30a
	.uleb128 0xe
	.string	"low"
	.byte	0x5
	.value	0x30b
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x5
	.value	0x30c
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x41f5
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x5
	.value	0x303
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x304
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x305
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x5
	.value	0x30d
	.long	0x4171
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4243
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x5
	.value	0x31f
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x320
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x5
	.value	0x322
	.long	0x429c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x429c
	.string	"real_value"
	.byte	0x18
	.byte	0x5
	.value	0x319
	.uleb128 0x5
	.string	"class"
	.byte	0xb
	.byte	0x35
	.long	0x6b8e
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"sign"
	.byte	0xb
	.byte	0x37
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"exp"
	.byte	0xb
	.byte	0x38
	.long	0x2dd
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sig"
	.byte	0xb
	.byte	0x39
	.long	0x6bd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4243
	.uleb128 0xd
	.long	0x4309
	.string	"tree_string"
	.byte	0x20
	.byte	0x5
	.value	0x333
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x334
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x335
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"length"
	.byte	0x5
	.value	0x336
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x5
	.value	0x337
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x5
	.value	0x339
	.long	0x4309
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2186
	.uleb128 0xd
	.long	0x4364
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x5
	.value	0x342
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x343
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x344
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x5
	.value	0x345
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x5
	.value	0x346
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x43ac
	.string	"tree_vector"
	.byte	0x18
	.byte	0x5
	.value	0x355
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x356
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x357
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x5
	.value	0x358
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x43f6
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x1e
	.byte	0xa2
	.uleb128 0x7
	.string	"limit"
	.byte	0x1e
	.byte	0xa3
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x1e
	.byte	0xa4
	.long	0x43f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"contents"
	.byte	0x1e
	.byte	0xa5
	.long	0x773
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x43ac
	.uleb128 0xd
	.long	0x4529
	.string	"obstack"
	.byte	0x2c
	.byte	0x13
	.value	0x31b
	.uleb128 0x7
	.string	"chunk_size"
	.byte	0x1e
	.byte	0xaa
	.long	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"chunk"
	.byte	0x1e
	.byte	0xab
	.long	0x43f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"object_base"
	.byte	0x1e
	.byte	0xac
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"next_free"
	.byte	0x1e
	.byte	0xad
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"chunk_limit"
	.byte	0x1e
	.byte	0xae
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"temp"
	.byte	0x1e
	.byte	0xaf
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"alignment_mask"
	.byte	0x1e
	.byte	0xb0
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"chunkfun"
	.byte	0x1e
	.byte	0xb5
	.long	0x453e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"freefun"
	.byte	0x1e
	.byte	0xb6
	.long	0x4555
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"extra_arg"
	.byte	0x1e
	.byte	0xb7
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x1e
	.byte	0xbd
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x1e
	.byte	0xbe
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x1e
	.byte	0xc2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x18
	.long	0x453e
	.byte	0x1
	.long	0x43f6
	.uleb128 0x16
	.long	0x4e4
	.uleb128 0x16
	.long	0x4c7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4529
	.uleb128 0x15
	.long	0x4555
	.byte	0x1
	.uleb128 0x16
	.long	0x4e4
	.uleb128 0x16
	.long	0x43f6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4544
	.uleb128 0x14
	.long	0x4599
	.long	.LASF24
	.byte	0xc
	.byte	0xc
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0xc
	.byte	0x1c
	.long	0x783
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0xc
	.byte	0x1d
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0xc
	.byte	0x1e
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x45d0
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x5
	.value	0x376
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x377
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x5
	.value	0x378
	.long	0x455b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x4615
	.string	"tree_list"
	.byte	0x18
	.byte	0x5
	.value	0x380
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x381
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x5
	.value	0x382
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF25
	.byte	0x5
	.value	0x383
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4656
	.string	"tree_vec"
	.byte	0x18
	.byte	0x5
	.value	0x38e
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x38f
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x5
	.value	0x390
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x5
	.value	0x391
	.long	0x4656
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x4666
	.long	0x1e3
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x46b2
	.string	"tree_exp"
	.byte	0x18
	.byte	0x5
	.value	0x3d4
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x3d5
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x5
	.value	0x3d6
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x5
	.value	0x3d9
	.long	0x4656
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x47a2
	.string	"tree_block"
	.byte	0x2c
	.byte	0x5
	.value	0x40a
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x40b
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x24
	.string	"handler_block_flag"
	.byte	0x5
	.value	0x40d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x25
	.long	.LASF26
	.byte	0x5
	.value	0x40e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.string	"block_num"
	.byte	0x5
	.value	0x40f
	.long	0x3b6
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vars"
	.byte	0x5
	.value	0x411
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x5
	.value	0x412
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x5
	.value	0x413
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.long	.LASF27
	.byte	0x5
	.value	0x414
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x5
	.value	0x415
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x5
	.value	0x416
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x26
	.long	0x47e9
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x5
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x5
	.value	0x571
	.long	0x2dd
	.uleb128 0xa
	.string	"pointer"
	.byte	0x5
	.value	0x572
	.long	0x4e6
	.uleb128 0xa
	.string	"die"
	.byte	0x5
	.value	0x573
	.long	0x47f6
	.byte	0x0
	.uleb128 0x22
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x47e9
	.uleb128 0xd
	.long	0x4b45
	.string	"tree_type"
	.byte	0x74
	.byte	0x5
	.value	0x551
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x552
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x5
	.value	0x553
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF11
	.byte	0x5
	.value	0x554
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x23
	.long	.LASF28
	.byte	0x5
	.value	0x555
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF29
	.byte	0x5
	.value	0x556
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x5
	.value	0x557
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"precision"
	.byte	0x5
	.value	0x559
	.long	0x3b6
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF0
	.byte	0x5
	.value	0x55a
	.long	0x8a6
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"string_flag"
	.byte	0x5
	.value	0x55c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"no_force_blk_flag"
	.byte	0x5
	.value	0x55d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"needs_constructing_flag"
	.byte	0x5
	.value	0x55e
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"transparent_union_flag"
	.byte	0x5
	.value	0x55f
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"packed_flag"
	.byte	0x5
	.value	0x560
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"restrict_flag"
	.byte	0x5
	.value	0x561
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF30
	.byte	0x5
	.value	0x562
	.long	0x3b6
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF16
	.byte	0x5
	.value	0x564
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF17
	.byte	0x5
	.value	0x565
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF18
	.byte	0x5
	.value	0x566
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF19
	.byte	0x5
	.value	0x567
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF20
	.byte	0x5
	.value	0x568
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF21
	.byte	0x5
	.value	0x569
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF22
	.byte	0x5
	.value	0x56a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF31
	.byte	0x5
	.value	0x56b
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x5
	.value	0x56d
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x5
	.value	0x56e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x5
	.value	0x56f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"symtab"
	.byte	0x5
	.value	0x574
	.long	0x47a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x23
	.long	.LASF32
	.byte	0x5
	.value	0x576
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"minval"
	.byte	0x5
	.value	0x577
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"maxval"
	.byte	0x5
	.value	0x578
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x5
	.value	0x579
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x5
	.value	0x57a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"binfo"
	.byte	0x5
	.value	0x57b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"context"
	.byte	0x5
	.value	0x57c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x5
	.value	0x57d
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x23
	.long	.LASF33
	.byte	0x5
	.value	0x57f
	.long	0x4b76
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x5
	.value	0x581
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x5
	.value	0x582
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x5
	.value	0x583
	.long	0x214a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"extra_methods"
	.byte	0x5
	.value	0x58a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xd
	.long	0x4b76
	.string	"lang_type"
	.byte	0x8
	.byte	0x5
	.value	0x57f
	.uleb128 0x7
	.string	"len"
	.byte	0x10
	.byte	0x80
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elts"
	.byte	0x10
	.byte	0x81
	.long	0x4656
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b45
	.uleb128 0xd
	.long	0x4bbf
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x5
	.value	0x817
	.uleb128 0x25
	.long	.LASF12
	.byte	0x5
	.value	0x818
	.long	0x3b6
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x24
	.string	"off_align"
	.byte	0x5
	.value	0x819
	.long	0x3b6
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4bf4
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x5
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x5
	.value	0x811
	.long	0x21e5
	.uleb128 0xa
	.string	"i"
	.byte	0x5
	.value	0x814
	.long	0x47d
	.uleb128 0xa
	.string	"a"
	.byte	0x5
	.value	0x81a
	.long	0x4b7c
	.byte	0x0
	.uleb128 0x26
	.long	0x4c33
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x5
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x5
	.value	0x838
	.long	0x55e5
	.uleb128 0xa
	.string	"r"
	.byte	0x5
	.value	0x839
	.long	0x9b
	.uleb128 0xa
	.string	"t"
	.byte	0x5
	.value	0x83a
	.long	0x1e3
	.uleb128 0xa
	.string	"i"
	.byte	0x5
	.value	0x83b
	.long	0x2dd
	.byte	0x0
	.uleb128 0x27
	.long	0x55e5
	.long	.LASF34
	.value	0x134
	.byte	0x6
	.byte	0x19
	.uleb128 0x7
	.string	"eh"
	.byte	0xe
	.byte	0xb5
	.long	0x65ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xe
	.byte	0xb6
	.long	0x65de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xe
	.byte	0xb7
	.long	0x65e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xe
	.byte	0xb8
	.long	0x65ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xe
	.byte	0xb9
	.long	0x6692
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF32
	.byte	0xe
	.byte	0xbe
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF3
	.byte	0xe
	.byte	0xc1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"outer"
	.byte	0xe
	.byte	0xc4
	.long	0x55e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xe
	.byte	0xc9
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF35
	.byte	0xe
	.byte	0xce
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xe
	.byte	0xd3
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xe
	.byte	0xd7
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"arg_offset_rtx"
	.byte	0xe
	.byte	0xdb
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"args_info"
	.byte	0xe
	.byte	0xdf
	.long	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"return_rtx"
	.byte	0xe
	.byte	0xe5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"internal_arg_pointer"
	.byte	0xe
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"cannot_inline"
	.byte	0xe
	.byte	0xec
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xe
	.byte	0xf0
	.long	0x66af
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xe
	.byte	0xf3
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"x_nonlocal_labels"
	.byte	0xe
	.byte	0xf8
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xe
	.byte	0xfe
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xe
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xe
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0xe
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0xe
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0xe
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0xe
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0xe
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0xe
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0xe
	.value	0x121
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0xe
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0xe
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0xe
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0xe
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0xe
	.value	0x138
	.long	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0xe
	.value	0x13d
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0xe
	.value	0x146
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0xe
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0xe
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0xe
	.value	0x151
	.long	0x3b6
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0xe
	.value	0x157
	.long	0x17cd
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0xe
	.value	0x15a
	.long	0x66c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0xe
	.value	0x15d
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0xe
	.value	0x160
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0xe
	.value	0x166
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0xe
	.value	0x16a
	.long	0x62d1
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0xe
	.value	0x16d
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0xe
	.value	0x16e
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0xe
	.value	0x16f
	.long	0x19b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0xe
	.value	0x170
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0xe
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0xe
	.value	0x175
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0xe
	.value	0x178
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0xe
	.value	0x17d
	.long	0x66da
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0xe
	.value	0x17f
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0xe
	.value	0x181
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0xe
	.value	0x184
	.long	0x66f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0xe
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x24
	.string	"returns_struct"
	.byte	0xe
	.value	0x190
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pcc_struct"
	.byte	0xe
	.value	0x194
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"returns_pointer"
	.byte	0xe
	.value	0x197
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"needs_context"
	.byte	0xe
	.value	0x19a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_setjmp"
	.byte	0xe
	.value	0x19d
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_longjmp"
	.byte	0xe
	.value	0x1a0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_alloca"
	.byte	0xe
	.value	0x1a4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"calls_eh_return"
	.byte	0xe
	.value	0x1a7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_label"
	.byte	0xe
	.value	0x1ab
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_nonlocal_goto"
	.byte	0xe
	.value	0x1af
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"contains_functions"
	.byte	0xe
	.value	0x1b2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"has_computed_jump"
	.byte	0xe
	.value	0x1b5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"is_thunk"
	.byte	0xe
	.value	0x1ba
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"all_throwers_are_sibcalls"
	.byte	0xe
	.value	0x1c1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"instrument_entry_exit"
	.byte	0xe
	.value	0x1c5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arc_profile"
	.byte	0xe
	.value	0x1c8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"profile"
	.byte	0xe
	.value	0x1cb
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"limit_stack"
	.byte	0xe
	.value	0x1cf
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"stdarg"
	.byte	0xe
	.value	0x1d2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_whole_function_mode_p"
	.byte	0xe
	.value	0x1d8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xe
	.value	0x1e1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_const_pool"
	.byte	0xe
	.value	0x1e4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_pic_offset_table"
	.byte	0xe
	.value	0x1e7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"uses_eh_lsda"
	.byte	0xe
	.value	0x1ea
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x24
	.string	"arg_pointer_save_area_init"
	.byte	0xe
	.value	0x1ed
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.long	.LASF36
	.byte	0xe
	.value	0x1fa
	.long	0x6554
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0xe
	.value	0x1fe
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c33
	.uleb128 0x28
	.long	0x5623
	.byte	0x4
	.byte	0x5
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x5
	.value	0x84f
	.long	0x4309
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x5
	.value	0x850
	.long	0x2139
	.uleb128 0xa
	.string	"field_id"
	.byte	0x5
	.value	0x851
	.long	0x3b6
	.byte	0x0
	.uleb128 0xd
	.long	0x5d6a
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x5
	.value	0x7c5
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x7c6
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x5
	.value	0x7c7
	.long	0x1805
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x5
	.value	0x7c8
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF11
	.byte	0x5
	.value	0x7c9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x25
	.long	.LASF0
	.byte	0x5
	.value	0x7ca
	.long	0x8a6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"external_flag"
	.byte	0x5
	.value	0x7cc
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"nonlocal_flag"
	.byte	0x5
	.value	0x7cd
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"regdecl_flag"
	.byte	0x5
	.value	0x7ce
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"inline_flag"
	.byte	0x5
	.value	0x7cf
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"bit_field_flag"
	.byte	0x5
	.value	0x7d0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"virtual_flag"
	.byte	0x5
	.value	0x7d1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"ignored_flag"
	.byte	0x5
	.value	0x7d2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x25
	.long	.LASF26
	.byte	0x5
	.value	0x7d3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"sbuf_flag"
	.byte	0x5
	.value	0x7d7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"sdram_flag"
	.byte	0x5
	.value	0x7d8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v1buf_flag"
	.byte	0x5
	.value	0x7d9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v2buf_flag"
	.byte	0x5
	.value	0x7da
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v4buf_flag"
	.byte	0x5
	.value	0x7db
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"in_system_header_flag"
	.byte	0x5
	.value	0x7df
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"common_flag"
	.byte	0x5
	.value	0x7e0
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"defer_output"
	.byte	0x5
	.value	0x7e1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"transparent_union"
	.byte	0x5
	.value	0x7e2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"static_ctor_flag"
	.byte	0x5
	.value	0x7e3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"static_dtor_flag"
	.byte	0x5
	.value	0x7e4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"artificial_flag"
	.byte	0x5
	.value	0x7e5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"weak_flag"
	.byte	0x5
	.value	0x7e6
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"non_addr_const_p"
	.byte	0x5
	.value	0x7e8
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"no_instrument_function_entry_exit"
	.byte	0x5
	.value	0x7e9
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"comdat_flag"
	.byte	0x5
	.value	0x7ea
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"malloc_flag"
	.byte	0x5
	.value	0x7eb
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"no_limit_stack"
	.byte	0x5
	.value	0x7ec
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF15
	.byte	0x5
	.value	0x7ed
	.long	0x2195
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"pure_flag"
	.byte	0x5
	.value	0x7ee
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF30
	.byte	0x5
	.value	0x7f0
	.long	0x3b6
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"non_addressable"
	.byte	0x5
	.value	0x7f1
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF31
	.byte	0x5
	.value	0x7f2
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"uninlinable"
	.byte	0x5
	.value	0x7f3
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"thread_local_flag"
	.byte	0x5
	.value	0x7f4
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"inlined_function_flag"
	.byte	0x5
	.value	0x7f5
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"threadprivate_flag"
	.byte	0x5
	.value	0x7f7
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF16
	.byte	0x5
	.value	0x7fa
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF17
	.byte	0x5
	.value	0x7fb
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF18
	.byte	0x5
	.value	0x7fc
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF19
	.byte	0x5
	.value	0x7fd
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF20
	.byte	0x5
	.value	0x7fe
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF21
	.byte	0x5
	.value	0x7ff
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF22
	.byte	0x5
	.value	0x800
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF23
	.byte	0x5
	.value	0x801
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"syscall_linkage_flag"
	.byte	0x5
	.value	0x804
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"widen_retval_flag"
	.byte	0x5
	.value	0x805
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"emitted_by_gxx"
	.byte	0x5
	.value	0x808
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x5
	.value	0x81b
	.long	0x4bbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x23
	.long	.LASF28
	.byte	0x5
	.value	0x81d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x23
	.long	.LASF32
	.byte	0x5
	.value	0x81e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x5
	.value	0x81f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x5
	.value	0x820
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x5
	.value	0x821
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x5
	.value	0x822
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"initial_2"
	.byte	0x5
	.value	0x824
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"alias_target"
	.byte	0x5
	.value	0x825
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"thunk_delta"
	.byte	0x5
	.value	0x829
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x23
	.long	.LASF27
	.byte	0x5
	.value	0x82b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x5
	.value	0x82c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x5
	.value	0x82d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x23
	.long	.LASF29
	.byte	0x5
	.value	0x82e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x82f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x5
	.value	0x830
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"u2"
	.byte	0x5
	.value	0x83c
	.long	0x4bf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x5
	.value	0x83f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x5
	.value	0x843
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"vindex"
	.byte	0x5
	.value	0x845
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x5
	.value	0x846
	.long	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x23
	.long	.LASF33
	.byte	0x5
	.value	0x848
	.long	0x5da5
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x24
	.string	"symtab_idx"
	.byte	0x5
	.value	0x84b
	.long	0x3b6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x24
	.string	"label_defined"
	.byte	0x5
	.value	0x84c
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x5
	.value	0x852
	.long	0x55eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x5
	.value	0x858
	.long	0x214a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x5
	.value	0x85c
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xd
	.long	0x5da5
	.string	"lang_decl"
	.byte	0x8
	.byte	0x5
	.value	0x848
	.uleb128 0x7
	.string	"base"
	.byte	0x10
	.byte	0x40
	.long	0x6d6a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"pending_sizes"
	.byte	0x10
	.byte	0x44
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5d6a
	.uleb128 0x1b
	.long	0x6029
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x12
	.byte	0x1d
	.uleb128 0x1c
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x1c
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x1c
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x1c
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x1c
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x1c
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x1c
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x1c
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x1c
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x1c
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x1c
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x1c
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x1c
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x1c
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x1c
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x1c
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x1c
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x1c
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x1c
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x1c
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x1c
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x1c
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x1c
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x1c
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x1c
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x1c
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x1c
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x1c
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x1c
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x1c
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x1c
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x1c
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x1c
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x1c
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x1c
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xd
	.long	0x6078
	.string	"tree_omp"
	.byte	0x18
	.byte	0x5
	.value	0x864
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x865
	.long	0x3e8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x5
	.value	0x866
	.long	0x5dab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x5
	.value	0x867
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x29
	.long	0x60f1
	.string	"tls_model"
	.byte	0x4
	.byte	0x5
	.value	0x96f
	.uleb128 0x1c
	.string	"TLS_MODEL_GLOBAL_DYNAMIC"
	.sleb128 1
	.uleb128 0x1c
	.string	"TLS_MODEL_LOCAL_DYNAMIC"
	.sleb128 2
	.uleb128 0x1c
	.string	"TLS_MODEL_INITIAL_EXEC"
	.sleb128 3
	.uleb128 0x1c
	.string	"TLS_MODEL_LOCAL_EXEC"
	.sleb128 4
	.byte	0x0
	.uleb128 0x29
	.long	0x6163
	.string	"symbol_visibility"
	.byte	0x4
	.byte	0x5
	.value	0x97b
	.uleb128 0x1c
	.string	"VISIBILITY_DEFAULT"
	.sleb128 0
	.uleb128 0x1c
	.string	"VISIBILITY_INTERNAL"
	.sleb128 1
	.uleb128 0x1c
	.string	"VISIBILITY_HIDDEN"
	.sleb128 2
	.uleb128 0x1c
	.string	"VISIBILITY_PROTECTED"
	.sleb128 3
	.byte	0x0
	.uleb128 0xd
	.long	0x621e
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x5
	.value	0xa1d
	.uleb128 0x23
	.long	.LASF32
	.byte	0x5
	.value	0xa20
	.long	0x621e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x5
	.value	0xa22
	.long	0x85f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x5
	.value	0xa25
	.long	0x85f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x5
	.value	0xa2d
	.long	0x6223
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x5
	.value	0xa30
	.long	0x6223
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x5
	.value	0xa35
	.long	0x6223
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x5
	.value	0xa44
	.long	0x6261
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2ca
	.uleb128 0xb
	.long	0x6228
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x18
	.long	0x6255
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x6255
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x625b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x4
	.long	0x6228
	.uleb128 0xb
	.long	0x6266
	.uleb128 0x3
	.byte	0x4
	.long	0x6231
	.uleb128 0x4
	.long	0x62d1
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xe
	.byte	0x17
	.uleb128 0x7
	.string	"modified"
	.byte	0xe
	.byte	0x18
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"promoted_mode"
	.byte	0xe
	.byte	0x19
	.long	0x8a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0xe
	.byte	0x1a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF37
	.byte	0xe
	.byte	0x1b
	.long	0x62d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x626c
	.uleb128 0x14
	.long	0x631f
	.long	.LASF38
	.byte	0x10
	.byte	0xe
	.byte	0x24
	.uleb128 0x7
	.string	"first"
	.byte	0xe
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last"
	.byte	0xe
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF39
	.byte	0xe
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF37
	.byte	0xe
	.byte	0x29
	.long	0x631f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62d7
	.uleb128 0x4
	.long	0x6474
	.string	"emit_status"
	.byte	0x34
	.byte	0xe
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xe
	.byte	0x3a
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xe
	.byte	0x3d
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_insn"
	.byte	0xe
	.byte	0x44
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_insn"
	.byte	0xe
	.byte	0x45
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF39
	.byte	0xe
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF38
	.byte	0xe
	.byte	0x50
	.long	0x631f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xe
	.byte	0x54
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xe
	.byte	0x58
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xe
	.byte	0x59
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xe
	.byte	0x5f
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xe
	.byte	0x65
	.long	0x78e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xe
	.byte	0x69
	.long	0x6255
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xe
	.byte	0x70
	.long	0x17cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x6554
	.string	"expr_status"
	.byte	0x1c
	.byte	0xe
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xe
	.byte	0x80
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xe
	.byte	0x91
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xe
	.byte	0x97
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_saveregs_value"
	.byte	0xe
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_apply_args_value"
	.byte	0xe
	.byte	0x9f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x_forced_labels"
	.byte	0xe
	.byte	0xa2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_pending_chain"
	.byte	0xe
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2a
	.long	0x65be
	.long	.LASF36
	.byte	0x4
	.byte	0xe
	.value	0x1f1
	.uleb128 0x1c
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x1c
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x1c
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x22
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x65be
	.uleb128 0x22
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x65d0
	.uleb128 0x3
	.byte	0x4
	.long	0x6474
	.uleb128 0x3
	.byte	0x4
	.long	0x6325
	.uleb128 0x4
	.long	0x6692
	.string	"varasm_status"
	.byte	0x18
	.byte	0xe
	.byte	0xb9
	.uleb128 0x7
	.string	"x_const_rtx_hash_table"
	.byte	0x1
	.byte	0x64
	.long	0x8b15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_const_rtx_sym_hash_table"
	.byte	0x1
	.byte	0x66
	.long	0x8bcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_pool"
	.byte	0x1
	.byte	0x69
	.long	0x8bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_pool"
	.byte	0x1
	.byte	0x6a
	.long	0x8bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_pool_offset"
	.byte	0x1
	.byte	0x6e
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65f0
	.uleb128 0x22
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6698
	.uleb128 0x22
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x66b5
	.uleb128 0x22
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x66c7
	.uleb128 0x22
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x66e0
	.uleb128 0x10
	.long	0x670a
	.long	0x48e
	.uleb128 0x11
	.long	0x3cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x8
	.byte	0x1d
	.long	0x44c
	.uleb128 0x4
	.long	0x6774
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF37
	.byte	0x8
	.byte	0x35
	.long	0x6774
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x8
	.byte	0x36
	.long	0x6774
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x8
	.byte	0x37
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x8
	.byte	0x38
	.long	0x677a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x671d
	.uleb128 0x10
	.long	0x678a
	.long	0x670a
	.uleb128 0x11
	.long	0x3cd
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x8
	.byte	0x39
	.long	0x671d
	.uleb128 0x3
	.byte	0x4
	.long	0x678a
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x8
	.byte	0x43
	.long	0x160b
	.uleb128 0x4
	.long	0x680d
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xa
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0xa
	.byte	0x21
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF11
	.byte	0xa
	.byte	0x22
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0xa
	.byte	0x23
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0xa
	.byte	0x24
	.long	0x66fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xa
	.byte	0x25
	.long	0x681c
	.uleb128 0x3
	.byte	0x4
	.long	0x67b4
	.uleb128 0x2
	.string	"regset"
	.byte	0x9
	.byte	0x22
	.long	0x67a6
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x9
	.byte	0x75
	.long	0x47d
	.uleb128 0x4
	.long	0x68ea
	.string	"edge_def"
	.byte	0x28
	.byte	0x9
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x9
	.byte	0x7a
	.long	0x68ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x9
	.byte	0x7a
	.long	0x68ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x9
	.byte	0x7d
	.long	0x1792
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x9
	.byte	0x7d
	.long	0x1792
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x9
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x9
	.byte	0x83
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF14
	.byte	0x9
	.byte	0x85
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x9
	.byte	0x86
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x9
	.byte	0x87
	.long	0x6830
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6841
	.uleb128 0x2
	.string	"edge"
	.byte	0x9
	.byte	0x89
	.long	0x68ea
	.uleb128 0x4
	.long	0x6b69
	.string	"loop"
	.byte	0x80
	.byte	0x9
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x9
	.value	0x176
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x9
	.value	0x179
	.long	0x6b6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x9
	.value	0x17c
	.long	0x6b6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x9
	.value	0x17f
	.long	0x6b6f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x9
	.value	0x184
	.long	0x6b82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x9
	.value	0x187
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0x9
	.value	0x18b
	.long	0x6b6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x9
	.value	0x18f
	.long	0x6b6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x9
	.value	0x192
	.long	0x680d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x9
	.value	0x195
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x9
	.value	0x198
	.long	0x6b82
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x9
	.value	0x19b
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x9
	.value	0x19e
	.long	0x6b82
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x9
	.value	0x1a1
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x9
	.value	0x1a4
	.long	0x680d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x9
	.value	0x1a7
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x9
	.value	0x1aa
	.long	0x6b88
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x9
	.value	0x1ae
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x9
	.value	0x1b1
	.long	0x6b69
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x23
	.long	.LASF40
	.byte	0x9
	.value	0x1b4
	.long	0x6b69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x23
	.long	.LASF37
	.byte	0x9
	.value	0x1b7
	.long	0x6b69
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x9
	.value	0x1ba
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x9
	.value	0x1bd
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0x9
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0x9
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0x9
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0x9
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0x9
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0x9
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0x9
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0x9
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0x9
	.value	0x1e6
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68fc
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x9
	.byte	0xe6
	.long	0x1792
	.uleb128 0x3
	.byte	0x4
	.long	0x68f0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b69
	.uleb128 0x1b
	.long	0x6bd4
	.string	"real_value_class"
	.byte	0x4
	.byte	0xb
	.byte	0x22
	.uleb128 0x1c
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x1c
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x1c
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x1c
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0x10
	.long	0x6be4
	.long	0x44c
	.uleb128 0x11
	.long	0x3cd
	.byte	0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6bea
	.uleb128 0xb
	.long	0x4243
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0x3
	.byte	0x32
	.long	0x3b6
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0x3
	.byte	0x37
	.long	0x6c11
	.uleb128 0x3
	.byte	0x4
	.long	0x6c17
	.uleb128 0x18
	.long	0x6c27
	.byte	0x1
	.long	0x6bef
	.uleb128 0x16
	.long	0x885
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0x3
	.byte	0x3e
	.long	0x86a
	.uleb128 0x2
	.string	"htab_del"
	.byte	0x3
	.byte	0x42
	.long	0x79a
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0x3
	.byte	0x4e
	.long	0x6c58
	.uleb128 0x3
	.byte	0x4
	.long	0x6c5e
	.uleb128 0x18
	.long	0x6c73
	.byte	0x1
	.long	0x4e4
	.uleb128 0x16
	.long	0x417
	.uleb128 0x16
	.long	0x417
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0x3
	.byte	0x51
	.long	0x79a
	.uleb128 0x4
	.long	0x6d56
	.string	"htab"
	.byte	0x2c
	.byte	0x3
	.byte	0x59
	.uleb128 0x7
	.string	"hash_f"
	.byte	0x3
	.byte	0x5b
	.long	0x6c00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"eq_f"
	.byte	0x3
	.byte	0x5e
	.long	0x6c27
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"del_f"
	.byte	0x3
	.byte	0x61
	.long	0x6c36
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"entries"
	.byte	0x3
	.byte	0x64
	.long	0x794
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x3
	.byte	0x67
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_elements"
	.byte	0x3
	.byte	0x6a
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"n_deleted"
	.byte	0x3
	.byte	0x6d
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"searches"
	.byte	0x3
	.byte	0x71
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"collisions"
	.byte	0x3
	.byte	0x75
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"alloc_f"
	.byte	0x3
	.byte	0x78
	.long	0x6c46
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"free_f"
	.byte	0x3
	.byte	0x79
	.long	0x6c73
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0x3
	.byte	0x7c
	.long	0x6d64
	.uleb128 0x3
	.byte	0x4
	.long	0x6c84
	.uleb128 0xd
	.long	0x6d9e
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0x11
	.value	0x169
	.uleb128 0x24
	.string	"declared_inline"
	.byte	0x11
	.value	0x16a
	.long	0x3b6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x6df0
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x21
	.byte	0x32
	.uleb128 0x7
	.string	"base"
	.byte	0x21
	.byte	0x33
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x21
	.byte	0x34
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x21
	.byte	0x35
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x21
	.byte	0x36
	.long	0x79a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x1c
	.byte	0x1d
	.long	0x6e0c
	.uleb128 0x3
	.byte	0x4
	.long	0x6e12
	.uleb128 0x15
	.long	0x6e28
	.byte	0x1
	.uleb128 0x16
	.long	0x6e28
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ec
	.uleb128 0x4
	.long	0x6fb4
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x1c
	.byte	0x24
	.long	0x6ffe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x1c
	.byte	0x29
	.long	0x7014
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x1c
	.byte	0x2a
	.long	0x702a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x1c
	.byte	0x2b
	.long	0x7045
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x1c
	.byte	0x2d
	.long	0x702a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x1c
	.byte	0x2e
	.long	0x7060
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x1c
	.byte	0x2f
	.long	0x708f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x1c
	.byte	0x34
	.long	0x702a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x1c
	.byte	0x35
	.long	0x70a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x1c
	.byte	0x36
	.long	0x702a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x1c
	.byte	0x37
	.long	0x70b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x1c
	.byte	0x38
	.long	0x70d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x18
	.long	0x6fd8
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x6fd8
	.uleb128 0x16
	.long	0x864
	.uleb128 0x16
	.long	0x6fde
	.uleb128 0x16
	.long	0x4e4
	.uleb128 0x16
	.long	0x4e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x6fe4
	.uleb128 0x18
	.long	0x6ffe
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x6fd8
	.uleb128 0x16
	.long	0x864
	.uleb128 0x16
	.long	0x4e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6fb4
	.uleb128 0x18
	.long	0x7014
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x6fd8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7004
	.uleb128 0x18
	.long	0x702a
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x701a
	.uleb128 0x18
	.long	0x7045
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x4e4
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7030
	.uleb128 0x18
	.long	0x7060
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x704b
	.uleb128 0x18
	.long	0x708f
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x4e4
	.uleb128 0x16
	.long	0x864
	.uleb128 0x16
	.long	0x4e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7066
	.uleb128 0x18
	.long	0x70a5
	.byte	0x1
	.long	0x6228
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7095
	.uleb128 0x15
	.long	0x70b7
	.byte	0x1
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70ab
	.uleb128 0x18
	.long	0x70d7
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x70bd
	.uleb128 0x4
	.long	0x714c
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x1c
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x1c
	.byte	0x42
	.long	0x7158
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x1c
	.byte	0x45
	.long	0x7158
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x1c
	.byte	0x48
	.long	0x7158
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x1c
	.byte	0x4b
	.long	0x7158
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x7158
	.byte	0x1
	.uleb128 0x16
	.long	0x55e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x714c
	.uleb128 0x4
	.long	0x71a9
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x1c
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x1c
	.byte	0x54
	.long	0x71be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x1c
	.byte	0x57
	.long	0x71d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x18
	.long	0x71be
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x4e4
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71a9
	.uleb128 0x18
	.long	0x71d4
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71c4
	.uleb128 0x4
	.long	0x72c7
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x1c
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x1c
	.byte	0x60
	.long	0x72d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x1c
	.byte	0x64
	.long	0x72f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x1c
	.byte	0x68
	.long	0x730d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x1c
	.byte	0x6c
	.long	0x7323
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x1c
	.byte	0x70
	.long	0x7323
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x1c
	.byte	0x74
	.long	0x733e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x1c
	.byte	0x7a
	.long	0x7323
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x1c
	.byte	0x80
	.long	0x7355
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x72d7
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x1817
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72c7
	.uleb128 0x18
	.long	0x72f2
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x8a6
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72dd
	.uleb128 0x18
	.long	0x730d
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x3b6
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72f8
	.uleb128 0x18
	.long	0x7323
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7313
	.uleb128 0x18
	.long	0x733e
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7329
	.uleb128 0x15
	.long	0x7355
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7344
	.uleb128 0x4
	.long	0x7461
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x1c
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0x1c
	.byte	0x89
	.long	0x88c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0x1c
	.byte	0x90
	.long	0x747b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x1c
	.byte	0x94
	.long	0x7487
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x1c
	.byte	0x99
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x1c
	.byte	0x9c
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x1c
	.byte	0xa2
	.long	0x7323
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x1c
	.byte	0xa5
	.long	0x74a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x1c
	.byte	0xa9
	.long	0x74bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0x1c
	.byte	0xad
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0x1c
	.byte	0xb0
	.long	0x74bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x18
	.long	0x747b
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7461
	.uleb128 0x2b
	.byte	0x1
	.long	0x2dd
	.uleb128 0x3
	.byte	0x4
	.long	0x7481
	.uleb128 0x15
	.long	0x7499
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x748d
	.uleb128 0x2b
	.byte	0x1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x4
	.long	0x749f
	.uleb128 0x18
	.long	0x74bb
	.byte	0x1
	.long	0x6228
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74ab
	.uleb128 0x27
	.long	0x78e6
	.long	.LASF41
	.value	0x120
	.byte	0x1c
	.byte	0xb6
	.uleb128 0x1f
	.long	.LASF32
	.byte	0x1c
	.byte	0xb8
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0x1c
	.byte	0xbc
	.long	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0x1c
	.byte	0xc0
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0x1c
	.byte	0xca
	.long	0x7901
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x1c
	.byte	0xd6
	.long	0x790d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x1c
	.byte	0xde
	.long	0x7923
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0x1c
	.byte	0xe1
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0x1c
	.byte	0xe5
	.long	0x88c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0x1c
	.byte	0xe8
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0x1c
	.byte	0xec
	.long	0x7939
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x1c
	.byte	0xf1
	.long	0x7323
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x1c
	.byte	0xf5
	.long	0x795e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x1c
	.value	0x102
	.long	0x7323
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x1c
	.value	0x106
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x1c
	.value	0x10f
	.long	0x7979
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x1c
	.value	0x113
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x1c
	.value	0x118
	.long	0x71d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x1c
	.value	0x11d
	.long	0x74bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x1c
	.value	0x120
	.long	0x71d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x1c
	.value	0x124
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x1c
	.value	0x129
	.long	0x7323
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x1c
	.value	0x12d
	.long	0x7323
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x1c
	.value	0x134
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x1c
	.value	0x138
	.long	0x790d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"honor_readonly"
	.byte	0x1c
	.value	0x13b
	.long	0x6228
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"print_statistics"
	.byte	0x1c
	.value	0x13f
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"print_xnode"
	.byte	0x1c
	.value	0x143
	.long	0x6df0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x1c
	.value	0x147
	.long	0x6df0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x1c
	.value	0x148
	.long	0x6df0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x1c
	.value	0x149
	.long	0x6df0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x1c
	.value	0x151
	.long	0x7994
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x1c
	.value	0x154
	.long	0x7ab5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x1c
	.value	0x15b
	.long	0x7323
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x23
	.long	.LASF42
	.byte	0x1c
	.value	0x162
	.long	0x7abb
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x1c
	.value	0x163
	.long	0x7abb
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x1c
	.value	0x164
	.long	0x7abb
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x23
	.long	.LASF34
	.byte	0x1c
	.value	0x167
	.long	0x70dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x1c
	.value	0x169
	.long	0x6e2e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x1c
	.value	0x16b
	.long	0x715e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x1c
	.value	0x16d
	.long	0x735b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x1c
	.value	0x16f
	.long	0x71da
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x18
	.long	0x78fb
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x78fb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4e6
	.uleb128 0x3
	.byte	0x4
	.long	0x78e6
	.uleb128 0x2b
	.byte	0x1
	.long	0x6228
	.uleb128 0x3
	.byte	0x4
	.long	0x7907
	.uleb128 0x18
	.long	0x7923
	.byte	0x1
	.long	0x2ca
	.uleb128 0x16
	.long	0x2ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7913
	.uleb128 0x18
	.long	0x7939
	.byte	0x1
	.long	0x47d
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7929
	.uleb128 0x18
	.long	0x795e
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x8a6
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x793f
	.uleb128 0x18
	.long	0x7979
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7964
	.uleb128 0x18
	.long	0x7994
	.byte	0x1
	.long	0x2ca
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x797f
	.uleb128 0x15
	.long	0x79ab
	.byte	0x1
	.uleb128 0x16
	.long	0x79ab
	.uleb128 0x16
	.long	0x2ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x79b1
	.uleb128 0x27
	.long	0x7ab5
	.long	.LASF43
	.value	0x110
	.byte	0x1c
	.byte	0x1a
	.uleb128 0x7
	.string	"buffer"
	.byte	0x1d
	.byte	0xb8
	.long	0x895a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"diagnostic_count"
	.byte	0x1d
	.byte	0xbb
	.long	0x8a9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"warnings_are_errors_message"
	.byte	0x1d
	.byte	0xbf
	.long	0x6228
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x7
	.string	"begin_diagnostic"
	.byte	0x1d
	.byte	0xc8
	.long	0x8a40
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x7
	.string	"end_diagnostic"
	.byte	0x1d
	.byte	0xcb
	.long	0x8a80
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x7
	.string	"internal_error"
	.byte	0x1d
	.byte	0xce
	.long	0x8ac0
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x7
	.string	"last_function"
	.byte	0x1d
	.byte	0xd3
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x7
	.string	"last_module"
	.byte	0x1d
	.byte	0xd6
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x7
	.string	"lock"
	.byte	0x1d
	.byte	0xd8
	.long	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x7
	.string	"x_data"
	.byte	0x1d
	.byte	0xdb
	.long	0x4e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x799a
	.uleb128 0x3
	.byte	0x4
	.long	0x7ac1
	.uleb128 0xb
	.long	0x6163
	.uleb128 0x4
	.long	0x7ca7
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x20
	.byte	0x19
	.uleb128 0x7
	.string	"init"
	.byte	0x20
	.byte	0x1c
	.long	0x7cb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"finish"
	.byte	0x20
	.byte	0x1f
	.long	0x7cb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"define"
	.byte	0x20
	.byte	0x22
	.long	0x7cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"undef"
	.byte	0x20
	.byte	0x25
	.long	0x7cca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"start_source_file"
	.byte	0x20
	.byte	0x29
	.long	0x7cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"end_source_file"
	.byte	0x20
	.byte	0x2d
	.long	0x7cdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"begin_block"
	.byte	0x20
	.byte	0x31
	.long	0x7cf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"end_block"
	.byte	0x20
	.byte	0x34
	.long	0x7cf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"ignore_block"
	.byte	0x20
	.byte	0x3b
	.long	0x74bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"source_line"
	.byte	0x20
	.byte	0x3e
	.long	0x7cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"begin_prologue"
	.byte	0x20
	.byte	0x43
	.long	0x7cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"end_prologue"
	.byte	0x20
	.byte	0x47
	.long	0x7cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"end_epilogue"
	.byte	0x20
	.byte	0x4a
	.long	0x7cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"begin_function"
	.byte	0x20
	.byte	0x4d
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"end_function"
	.byte	0x20
	.byte	0x50
	.long	0x7cdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_decl"
	.byte	0x20
	.byte	0x56
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"global_decl"
	.byte	0x20
	.byte	0x5a
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"deferred_inline_function"
	.byte	0x20
	.byte	0x5e
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"outlining_inline_function"
	.byte	0x20
	.byte	0x63
	.long	0x7499
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1f
	.long	.LASF44
	.byte	0x20
	.byte	0x67
	.long	0x7d05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x15
	.long	0x7cb3
	.byte	0x1
	.uleb128 0x16
	.long	0x2ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ca7
	.uleb128 0x15
	.long	0x7cca
	.byte	0x1
	.uleb128 0x16
	.long	0x3b6
	.uleb128 0x16
	.long	0x2ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cb9
	.uleb128 0x15
	.long	0x7cdc
	.byte	0x1
	.uleb128 0x16
	.long	0x3b6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cd0
	.uleb128 0x15
	.long	0x7cf3
	.byte	0x1
	.uleb128 0x16
	.long	0x3b6
	.uleb128 0x16
	.long	0x3b6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ce2
	.uleb128 0x15
	.long	0x7d05
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cf9
	.uleb128 0x4
	.long	0x7d53
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x17
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0x17
	.byte	0x3b
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0x17
	.byte	0x3c
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0x17
	.byte	0x3d
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0x17
	.byte	0x3e
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x7f7f
	.string	"asm_out"
	.byte	0x70
	.byte	0x17
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0x17
	.byte	0x35
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0x17
	.byte	0x35
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0x17
	.byte	0x38
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0x17
	.byte	0x3f
	.long	0x7d0b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x17
	.byte	0x3f
	.long	0x7d0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x17
	.byte	0x46
	.long	0x7f99
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x17
	.byte	0x49
	.long	0x7fb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x17
	.byte	0x4d
	.long	0x7fc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x17
	.byte	0x50
	.long	0x7fde
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x17
	.byte	0x53
	.long	0x7ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x17
	.byte	0x56
	.long	0x7ff0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x17
	.byte	0x59
	.long	0x7fde
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1f
	.long	.LASF45
	.byte	0x17
	.byte	0x5d
	.long	0x8007
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0x17
	.byte	0x60
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0x17
	.byte	0x63
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0x17
	.byte	0x6a
	.long	0x8023
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x17
	.byte	0x6e
	.long	0x803f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x17
	.byte	0x73
	.long	0x7fc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x17
	.byte	0x76
	.long	0x8056
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x17
	.byte	0x79
	.long	0x8056
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x17
	.byte	0x80
	.long	0x807c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x17
	.byte	0x8b
	.long	0x80a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x18
	.long	0x7f99
	.byte	0x1
	.long	0x6228
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x3b6
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f7f
	.uleb128 0x15
	.long	0x7fb0
	.byte	0x1
	.uleb128 0x16
	.long	0x6e28
	.uleb128 0x16
	.long	0x2ca
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f9f
	.uleb128 0x15
	.long	0x7fc7
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fb6
	.uleb128 0x15
	.long	0x7fde
	.byte	0x1
	.uleb128 0x16
	.long	0x6e28
	.uleb128 0x16
	.long	0x47d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fcd
	.uleb128 0x15
	.long	0x7ff0
	.byte	0x1
	.uleb128 0x16
	.long	0x6e28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fe4
	.uleb128 0x15
	.long	0x8007
	.byte	0x1
	.uleb128 0x16
	.long	0x2ca
	.uleb128 0x16
	.long	0x3b6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ff6
	.uleb128 0x15
	.long	0x8023
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x48e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x800d
	.uleb128 0x15
	.long	0x803f
	.byte	0x1
	.uleb128 0x16
	.long	0x8a6
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x48e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8029
	.uleb128 0x15
	.long	0x8056
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8045
	.uleb128 0x15
	.long	0x807c
	.byte	0x1
	.uleb128 0x16
	.long	0x6e28
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x47d
	.uleb128 0x16
	.long	0x47d
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x805c
	.uleb128 0x18
	.long	0x80a1
	.byte	0x1
	.long	0x6228
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x47d
	.uleb128 0x16
	.long	0x47d
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8082
	.uleb128 0x4
	.long	0x8262
	.string	"sched"
	.byte	0x40
	.byte	0x17
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x17
	.byte	0x97
	.long	0x8281
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x17
	.byte	0x9b
	.long	0x829c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x17
	.byte	0xa0
	.long	0x7487
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x17
	.byte	0xa4
	.long	0x82c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x17
	.byte	0xa7
	.long	0x82dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x17
	.byte	0xaa
	.long	0x82f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x17
	.byte	0xae
	.long	0x831e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x17
	.byte	0xaf
	.long	0x831e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x17
	.byte	0xb4
	.long	0x7487
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x17
	.byte	0xc2
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0x17
	.byte	0xc3
	.long	0x832a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0x17
	.byte	0xc4
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0x17
	.byte	0xc5
	.long	0x832a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x17
	.byte	0xcd
	.long	0x7487
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0x17
	.byte	0xd8
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0x17
	.byte	0xd9
	.long	0x8340
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x18
	.long	0x8281
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8262
	.uleb128 0x18
	.long	0x829c
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8287
	.uleb128 0x18
	.long	0x82c1
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x6e28
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82a2
	.uleb128 0x15
	.long	0x82dd
	.byte	0x1
	.uleb128 0x16
	.long	0x6e28
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82c7
	.uleb128 0x15
	.long	0x82f4
	.byte	0x1
	.uleb128 0x16
	.long	0x6e28
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82e3
	.uleb128 0x18
	.long	0x831e
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x6e28
	.uleb128 0x16
	.long	0x2dd
	.uleb128 0x16
	.long	0x17cd
	.uleb128 0x16
	.long	0x864
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82fa
	.uleb128 0x2b
	.byte	0x1
	.long	0x9b
	.uleb128 0x3
	.byte	0x4
	.long	0x8324
	.uleb128 0x18
	.long	0x8340
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8330
	.uleb128 0x4
	.long	0x8623
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x17
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x17
	.byte	0x8f
	.long	0x7d53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x17
	.byte	0xda
	.long	0x80a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x17
	.byte	0xdd
	.long	0x8638
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x17
	.byte	0xe0
	.long	0x8638
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1f
	.long	.LASF42
	.byte	0x17
	.byte	0xe4
	.long	0x7abb
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x17
	.byte	0xe9
	.long	0x8653
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x17
	.byte	0xec
	.long	0x7499
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x17
	.byte	0xef
	.long	0x866a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0x17
	.byte	0xf3
	.long	0x74bb
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x17
	.byte	0xf7
	.long	0x74bb
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0x17
	.byte	0xfa
	.long	0x8a0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"expand_builtin"
	.byte	0x17
	.byte	0xfd
	.long	0x8694
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x17
	.value	0x103
	.long	0x86b4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x17
	.value	0x107
	.long	0x790d
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x17
	.value	0x10a
	.long	0x86ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x17
	.value	0x10d
	.long	0x74bb
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x17
	.value	0x111
	.long	0x74bb
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x17
	.value	0x115
	.long	0x7fc7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x17
	.value	0x118
	.long	0x7923
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x17
	.value	0x11d
	.long	0x6228
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x17
	.value	0x121
	.long	0x6228
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x17
	.value	0x124
	.long	0x6228
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x17
	.value	0x127
	.long	0x6228
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x17
	.value	0x12a
	.long	0x6228
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x18
	.long	0x8638
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8623
	.uleb128 0x18
	.long	0x8653
	.byte	0x1
	.long	0x2dd
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x863e
	.uleb128 0x15
	.long	0x866a
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x6255
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8659
	.uleb128 0x18
	.long	0x8694
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x8a6
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8670
	.uleb128 0x18
	.long	0x86b4
	.byte	0x1
	.long	0x3b6
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2ca
	.uleb128 0x16
	.long	0x2dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x869a
	.uleb128 0x18
	.long	0x86ca
	.byte	0x1
	.long	0x6228
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x86ba
	.uleb128 0x1e
	.long	0x8702
	.byte	0x8
	.byte	0x1d
	.byte	0x1f
	.uleb128 0x7
	.string	"format_spec"
	.byte	0x1d
	.byte	0x20
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"args_ptr"
	.byte	0x1d
	.byte	0x21
	.long	0x8702
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x408
	.uleb128 0x2
	.string	"text_info"
	.byte	0x1d
	.byte	0x22
	.long	0x86d0
	.uleb128 0x2c
	.long	0x8799
	.byte	0x4
	.byte	0x1d
	.byte	0x26
	.uleb128 0x1c
	.string	"DK_FATAL"
	.sleb128 0
	.uleb128 0x1c
	.string	"DK_ICE"
	.sleb128 1
	.uleb128 0x1c
	.string	"DK_SORRY"
	.sleb128 2
	.uleb128 0x1c
	.string	"DK_ERROR"
	.sleb128 3
	.uleb128 0x1c
	.string	"DK_WARNING"
	.sleb128 4
	.uleb128 0x1c
	.string	"DK_ANACHRONISM"
	.sleb128 5
	.uleb128 0x1c
	.string	"DK_NOTE"
	.sleb128 6
	.uleb128 0x1c
	.string	"DK_DEBUG"
	.sleb128 7
	.uleb128 0x1c
	.string	"DK_LAST_DIAGNOSTIC_KIND"
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_t"
	.byte	0x1d
	.byte	0x2b
	.long	0x8719
	.uleb128 0x1e
	.long	0x87ea
	.byte	0x14
	.byte	0x1d
	.byte	0x31
	.uleb128 0x7
	.string	"message"
	.byte	0x1d
	.byte	0x32
	.long	0x8708
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"location"
	.byte	0x1d
	.byte	0x33
	.long	0x1805
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"kind"
	.byte	0x1d
	.byte	0x35
	.long	0x8799
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x1d
	.byte	0x36
	.long	0x87ad
	.uleb128 0x2c
	.long	0x886e
	.byte	0x4
	.byte	0x1d
	.byte	0x40
	.uleb128 0x1c
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
	.sleb128 0
	.uleb128 0x1c
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
	.sleb128 1
	.uleb128 0x1c
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_prefixing_rule_t"
	.byte	0x1d
	.byte	0x44
	.long	0x8801
	.uleb128 0x1e
	.long	0x8946
	.byte	0x18
	.byte	0x1d
	.byte	0x48
	.uleb128 0x7
	.string	"prefix"
	.byte	0x1d
	.byte	0x4a
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"maximum_length"
	.byte	0x1d
	.byte	0x4e
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"ideal_maximum_length"
	.byte	0x1d
	.byte	0x52
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"indent_skip"
	.byte	0x1d
	.byte	0x55
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"emitted_prefix_p"
	.byte	0x1d
	.byte	0x58
	.long	0x6228
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"need_newline_p"
	.byte	0x1d
	.byte	0x5b
	.long	0x6228
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x7
	.string	"prefixing_rule"
	.byte	0x1d
	.byte	0x5e
	.long	0x886e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x1d
	.byte	0x5f
	.long	0x8891
	.uleb128 0x20
	.long	.LASF46
	.byte	0x1d
	.byte	0x64
	.long	0x8965
	.uleb128 0x14
	.long	0x89ec
	.long	.LASF46
	.byte	0xd0
	.byte	0x1d
	.byte	0x64
	.uleb128 0x7
	.string	"state"
	.byte	0x1d
	.byte	0x6c
	.long	0x8946
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stream"
	.byte	0x1d
	.byte	0x6f
	.long	0x6e28
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"obstack"
	.byte	0x1d
	.byte	0x72
	.long	0x43fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"line_length"
	.byte	0x1d
	.byte	0x75
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"digit_buffer"
	.byte	0x1d
	.byte	0x79
	.long	0x8a25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"format_decoder"
	.byte	0x1d
	.byte	0x83
	.long	0x89ec
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x1d
	.byte	0x65
	.long	0x89fe
	.uleb128 0x3
	.byte	0x4
	.long	0x8a04
	.uleb128 0x18
	.long	0x8a19
	.byte	0x1
	.long	0x6228
	.uleb128 0x16
	.long	0x8a19
	.uleb128 0x16
	.long	0x8a1f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x895a
	.uleb128 0x3
	.byte	0x4
	.long	0x8708
	.uleb128 0x10
	.long	0x8a35
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x7f
	.byte	0x0
	.uleb128 0x20
	.long	.LASF43
	.byte	0x1d
	.byte	0xac
	.long	0x79b1
	.uleb128 0x2
	.string	"diagnostic_starter_fn"
	.byte	0x1d
	.byte	0xad
	.long	0x8a5d
	.uleb128 0x3
	.byte	0x4
	.long	0x8a63
	.uleb128 0x15
	.long	0x8a74
	.byte	0x1
	.uleb128 0x16
	.long	0x8a74
	.uleb128 0x16
	.long	0x8a7a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8a35
	.uleb128 0x3
	.byte	0x4
	.long	0x87ea
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x1d
	.byte	0xaf
	.long	0x8a40
	.uleb128 0x10
	.long	0x8aaf
	.long	0x2dd
	.uleb128 0x11
	.long	0x3cd
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.long	0x8ac0
	.byte	0x1
	.uleb128 0x16
	.long	0x2ca
	.uleb128 0x16
	.long	0x8702
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8aaf
	.uleb128 0x2d
	.long	0x8b15
	.string	"constant_descriptor_rtx"
	.value	0x10c
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.long	.LASF37
	.byte	0x1
	.value	0xb6b
	.long	0x8b1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x1
	.value	0xb6e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF25
	.byte	0x1
	.value	0xb71
	.long	0xa2a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8b1b
	.uleb128 0x3
	.byte	0x4
	.long	0x8ac6
	.uleb128 0x4
	.long	0x8bcb
	.string	"pool_constant"
	.byte	0x28
	.byte	0x1
	.byte	0x55
	.uleb128 0xe
	.string	"desc"
	.byte	0x1
	.value	0xb7b
	.long	0x8b1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF37
	.byte	0x1
	.value	0xb7c
	.long	0x8bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"next_sym"
	.byte	0x1
	.value	0xb7d
	.long	0x8bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"constant"
	.byte	0x1
	.value	0xb7e
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x23
	.long	.LASF0
	.byte	0x1
	.value	0xb7f
	.long	0x8a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF47
	.byte	0x1
	.value	0xb80
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x23
	.long	.LASF12
	.byte	0x1
	.value	0xb81
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF10
	.byte	0x1
	.value	0xb82
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"mark"
	.byte	0x1
	.value	0xb83
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8bd1
	.uleb128 0x3
	.byte	0x4
	.long	0x8b21
	.uleb128 0x1d
	.long	0x8c41
	.long	.LASF48
	.byte	0x4
	.byte	0x1
	.byte	0xc1
	.uleb128 0x1c
	.string	"no_section"
	.sleb128 0
	.uleb128 0x1c
	.string	"in_text"
	.sleb128 1
	.uleb128 0x1c
	.string	"in_data"
	.sleb128 2
	.uleb128 0x1c
	.string	"in_named"
	.sleb128 3
	.uleb128 0x1c
	.string	"in_bss"
	.sleb128 4
	.uleb128 0x1c
	.string	"in_readonly_data"
	.sleb128 5
	.uleb128 0x1c
	.string	"in_sdata"
	.sleb128 6
	.uleb128 0x1c
	.string	"in_sbss"
	.sleb128 7
	.byte	0x0
	.uleb128 0x4
	.long	0x8c88
	.string	"in_named_entry"
	.byte	0xc
	.byte	0x1
	.byte	0xe0
	.uleb128 0x1f
	.long	.LASF32
	.byte	0x1
	.byte	0xe1
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF14
	.byte	0x1
	.byte	0xe2
	.long	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"declared"
	.byte	0x1
	.byte	0xe3
	.long	0x6228
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.string	"sdata_section"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2e
	.byte	0x1
	.string	"sbss_section"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2e
	.byte	0x1
	.string	"text_section"
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2f
	.byte	0x1
	.string	"data_section"
	.byte	0x1
	.value	0x101
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2f
	.byte	0x1
	.string	"force_data_section"
	.byte	0x1
	.value	0x117
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2f
	.byte	0x1
	.string	"readonly_data_section"
	.byte	0x1
	.value	0x121
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x30
	.byte	0x1
	.string	"in_text_section"
	.byte	0x1
	.value	0x136
	.byte	0x1
	.long	0x2dd
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x30
	.byte	0x1
	.string	"in_data_section"
	.byte	0x1
	.value	0x13e
	.byte	0x1
	.long	0x2dd
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x31
	.long	0x8e01
	.string	"in_named_entry_eq"
	.byte	0x1
	.value	0x148
	.byte	0x1
	.long	0x2dd
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x32
	.string	"p1"
	.byte	0x1
	.value	0x146
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"p2"
	.byte	0x1
	.value	0x147
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"old"
	.byte	0x1
	.value	0x149
	.long	0x8e01
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"new"
	.byte	0x1
	.value	0x14a
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8e07
	.uleb128 0xb
	.long	0x8c41
	.uleb128 0x31
	.long	0x8e56
	.string	"in_named_entry_hash"
	.byte	0x1
	.value	0x152
	.byte	0x1
	.long	0x6bef
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x151
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"old"
	.byte	0x1
	.value	0x153
	.long	0x8e01
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x8ea8
	.byte	0x1
	.string	"get_named_section_flags"
	.byte	0x1
	.value	0x15f
	.byte	0x1
	.long	0x3b6
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.value	0x15e
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"slot"
	.byte	0x1
	.value	0x160
	.long	0x8ea8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8eae
	.uleb128 0x3
	.byte	0x4
	.long	0x8c41
	.uleb128 0x34
	.long	0x8f0e
	.byte	0x1
	.string	"named_section_first_declaration"
	.byte	0x1
	.value	0x170
	.byte	0x1
	.long	0x6228
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x16f
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"slot"
	.byte	0x1
	.value	0x171
	.long	0x8ea8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x8f80
	.byte	0x1
	.string	"set_named_section_flags"
	.byte	0x1
	.value	0x189
	.byte	0x1
	.long	0x6228
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x35
	.long	.LASF49
	.byte	0x1
	.value	0x187
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x188
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"slot"
	.byte	0x1
	.value	0x18a
	.long	0x8ea8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"entry"
	.byte	0x1
	.value	0x18a
	.long	0x8eae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x8fd9
	.byte	0x1
	.string	"named_section_flags"
	.byte	0x1
	.value	0x1a5
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x1a3
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x1a4
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF50
	.long	0xca7b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15676
	.byte	0x0
	.uleb128 0x38
	.long	0x9040
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.value	0x1c1
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1be
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x1bf
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1c0
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF14
	.byte	0x1
	.value	0x1c2
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x37
	.long	.LASF50
	.long	0xca76
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15699
	.byte	0x0
	.uleb128 0x36
	.long	0x90b6
	.byte	0x1
	.string	"resolve_unique_section"
	.byte	0x1
	.value	0x1e1
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1de
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1df
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"flag_function_or_data_sections"
	.byte	0x1
	.value	0x1e0
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"bss_section"
	.byte	0x1
	.value	0x1ef
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x3a
	.long	0x9181
	.string	"asm_output_aligned_bss"
	.byte	0x1
	.value	0x22a
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x32
	.string	"file"
	.byte	0x1
	.value	0x226
	.long	0x6e28
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x227
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x228
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x229
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x229
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x39
	.long	.LASF11
	.byte	0x1
	.value	0x22f
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x33
	.string	"size_"
	.byte	0x1
	.value	0x22f
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x91b8
	.byte	0x1
	.string	"function_section"
	.byte	0x1
	.value	0x248
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x247
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x91fe
	.byte	0x1
	.string	"variable_section"
	.byte	0x1
	.value	0x257
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x255
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x256
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0x92e0
	.byte	0x1
	.string	"mergeable_string_section"
	.byte	0x1
	.value	0x265
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x262
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x263
	.long	0x48e
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x264
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0x26d
	.long	0x8a6
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x39
	.long	.LASF52
	.byte	0x1
	.value	0x26e
	.long	0x3b6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"str"
	.byte	0x1
	.value	0x26f
	.long	0x2ca
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x270
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x270
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x270
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"unit"
	.byte	0x1
	.value	0x270
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x271
	.long	0x92e0
	.byte	0x2
	.byte	0x91
	.sleb128 -50
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x92f0
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x1d
	.byte	0x0
	.uleb128 0x36
	.long	0x9377
	.byte	0x1
	.string	"mergeable_constant_section"
	.byte	0x1
	.value	0x2b0
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x2ad
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x2ae
	.long	0x48e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x2af
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x39
	.long	.LASF52
	.byte	0x1
	.value	0x2b2
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x2bc
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x93af
	.string	"strip_reg_name"
	.byte	0x1
	.value	0x2cc
	.byte	0x1
	.long	0x2ca
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x2cb
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x944d
	.byte	0x1
	.string	"decode_reg_name"
	.byte	0x1
	.value	0x2e1
	.byte	0x1
	.long	0x2dd
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x32
	.string	"asmspec"
	.byte	0x1
	.value	0x2e0
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	0x9438
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x2e4
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x3d
	.byte	0x8
	.byte	0x1
	.value	0x2fd
	.uleb128 0x23
	.long	.LASF32
	.byte	0x1
	.value	0x2fd
	.long	0x621e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"number"
	.byte	0x1
	.value	0x2fd
	.long	0x85f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.string	"table"
	.byte	0x1
	.value	0x2fd
	.long	0xca71
	.byte	0x5
	.byte	0x3
	.long	table.15929
	.byte	0x0
	.uleb128 0x36
	.long	0x9558
	.byte	0x1
	.string	"make_decl_rtl"
	.byte	0x1
	.value	0x322
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x320
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"asmspec"
	.byte	0x1
	.value	0x321
	.long	0x2ca
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.long	.LASF53
	.byte	0x1
	.value	0x323
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x324
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"new_name"
	.byte	0x1
	.value	0x325
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"reg_number"
	.byte	0x1
	.value	0x326
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x327
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.long	0x950b
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"starred"
	.byte	0x1
	.value	0x357
	.long	0x4e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3c
	.long	0x952a
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.string	"nregs"
	.byte	0x1
	.value	0x36d
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3c
	.long	0x9547
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0x3ad
	.long	0x4e6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xca5c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15989
	.byte	0x0
	.uleb128 0x36
	.long	0x95a0
	.byte	0x1
	.string	"make_var_volatile"
	.byte	0x1
	.value	0x3d5
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x3d4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF50
	.long	0xca57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16211
	.byte	0x0
	.uleb128 0x36
	.long	0x95ed
	.byte	0x1
	.string	"assemble_constant_align"
	.byte	0x1
	.value	0x3e1
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x3e0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF12
	.byte	0x1
	.value	0x3e2
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x9620
	.byte	0x1
	.string	"assemble_asm"
	.byte	0x1
	.value	0x3f6
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x35
	.long	.LASF2
	.byte	0x1
	.value	0x3f5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x9676
	.byte	0x1
	.string	"default_stabs_asm_out_destructor"
	.byte	0x1
	.value	0x40a
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x35
	.long	.LASF54
	.byte	0x1
	.value	0x408
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x409
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0x96f2
	.byte	0x1
	.string	"default_named_section_asm_out_destructor"
	.byte	0x1
	.value	0x417
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x35
	.long	.LASF54
	.byte	0x1
	.value	0x415
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x416
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF49
	.byte	0x1
	.value	0x418
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x419
	.long	0x96f2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x10
	.long	0x9702
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xf
	.byte	0x0
	.uleb128 0x36
	.long	0x9759
	.byte	0x1
	.string	"default_stabs_asm_out_constructor"
	.byte	0x1
	.value	0x448
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x35
	.long	.LASF54
	.byte	0x1
	.value	0x446
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x447
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0x97d6
	.byte	0x1
	.string	"default_named_section_asm_out_constructor"
	.byte	0x1
	.value	0x455
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x35
	.long	.LASF54
	.byte	0x1
	.value	0x453
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF55
	.byte	0x1
	.value	0x454
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF49
	.byte	0x1
	.value	0x456
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x457
	.long	0x96f2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x36
	.long	0x9858
	.byte	0x1
	.string	"assemble_start_function"
	.byte	0x1
	.value	0x493
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x491
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x492
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF12
	.byte	0x1
	.value	0x494
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x4c3
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x4c4
	.long	0x4e6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x98a3
	.byte	0x1
	.string	"assemble_end_function"
	.byte	0x1
	.value	0x4e4
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x4e2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0x4e3
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0x98d8
	.byte	0x1
	.string	"assemble_zeros"
	.byte	0x1
	.value	0x4f7
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x4f6
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x990d
	.byte	0x1
	.string	"assemble_align"
	.byte	0x1
	.value	0x514
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x513
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x998b
	.byte	0x1
	.string	"assemble_string"
	.byte	0x1
	.value	0x521
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x51f
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x520
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"pos"
	.byte	0x1
	.value	0x522
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"maximum"
	.byte	0x1
	.value	0x523
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x39
	.long	.LASF57
	.byte	0x1
	.value	0x529
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x9a97
	.string	"asm_emit_uninitialised"
	.byte	0x1
	.value	0x561
	.byte	0x1
	.long	0x6228
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x55d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x55e
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x55f
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"rounded"
	.byte	0x1
	.value	0x560
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3e
	.long	0x9a37
	.byte	0x4
	.byte	0x1
	.value	0x563
	.uleb128 0x1c
	.string	"asm_dest_common"
	.sleb128 0
	.uleb128 0x1c
	.string	"asm_dest_bss"
	.sleb128 1
	.uleb128 0x1c
	.string	"asm_dest_local"
	.sleb128 2
	.byte	0x0
	.uleb128 0x33
	.string	"destination"
	.byte	0x1
	.value	0x568
	.long	0x99fb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.long	0x9a86
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x39
	.long	.LASF11
	.byte	0x1
	.value	0x598
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x33
	.string	"size_"
	.byte	0x1
	.value	0x598
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xca52
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16497
	.byte	0x0
	.uleb128 0x36
	.long	0x9b81
	.byte	0x1
	.string	"assemble_variable"
	.byte	0x1
	.value	0x5b8
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x5b4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF53
	.byte	0x1
	.value	0x5b5
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"at_end"
	.byte	0x1
	.value	0x5b6
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"dont_output_data"
	.byte	0x1
	.value	0x5b7
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x5b9
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF12
	.byte	0x1
	.value	0x5ba
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF51
	.byte	0x1
	.value	0x5bb
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"decl_rtl"
	.byte	0x1
	.value	0x5bc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x39
	.long	.LASF11
	.byte	0x1
	.value	0x692
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x33
	.string	"size_"
	.byte	0x1
	.value	0x692
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x9bda
	.string	"contains_pointers_p"
	.byte	0x1
	.value	0x6ae
	.byte	0x1
	.long	0x2dd
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0x6ad
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x33
	.string	"fields"
	.byte	0x1
	.value	0x6bc
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9c2b
	.byte	0x1
	.string	"assemble_external"
	.byte	0x1
	.value	0x6d5
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x6d4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.string	"rtl"
	.byte	0x1
	.value	0x6e2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x9c6b
	.byte	0x1
	.string	"assemble_external_libcall"
	.byte	0x1
	.value	0x6f4
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x32
	.string	"fun"
	.byte	0x1
	.value	0x6f3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x9ca0
	.byte	0x1
	.string	"assemble_label"
	.byte	0x1
	.value	0x704
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x703
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x9d07
	.byte	0x1
	.string	"assemble_name"
	.byte	0x1
	.value	0x712
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x32
	.string	"file"
	.byte	0x1
	.value	0x710
	.long	0x6e28
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x711
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"real_name"
	.byte	0x1
	.value	0x713
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x714
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x9d79
	.byte	0x1
	.string	"assemble_static_space"
	.byte	0x1
	.value	0x728
	.byte	0x1
	.long	0x9b
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x727
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x729
	.long	0x9d79
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"namestring"
	.byte	0x1
	.value	0x72a
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x72b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x10
	.long	0x9d89
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xb
	.byte	0x0
	.uleb128 0x34
	.long	0x9df1
	.byte	0x1
	.string	"assemble_trampoline_template"
	.byte	0x1
	.value	0x755
	.byte	0x1
	.long	0x9b
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0x756
	.long	0x9df1
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x757
	.long	0x2ca
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x39
	.long	.LASF12
	.byte	0x1
	.value	0x758
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.uleb128 0x10
	.long	0x9e01
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xff
	.byte	0x0
	.uleb128 0x34
	.long	0x9e58
	.byte	0x1
	.string	"integer_asm_op"
	.byte	0x1
	.value	0x789
	.byte	0x1
	.long	0x2ca
	.long	.LFB62
	.long	.LFE62
	.long	.LLST46
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x787
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF58
	.byte	0x1
	.value	0x788
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ops"
	.byte	0x1
	.value	0x78a
	.long	0x9e58
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d0b
	.uleb128 0x36
	.long	0x9ea9
	.byte	0x1
	.string	"assemble_integer_with_op"
	.byte	0x1
	.value	0x7a9
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST47
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x7a7
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x7a8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0x9f16
	.byte	0x1
	.string	"default_assemble_integer"
	.byte	0x1
	.value	0x7b6
	.byte	0x1
	.long	0x6228
	.long	.LFB64
	.long	.LFE64
	.long	.LLST48
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x7b3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x7b4
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF58
	.byte	0x1
	.value	0x7b5
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0x7b7
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x9f8d
	.byte	0x1
	.string	"assemble_integer"
	.byte	0x1
	.value	0x7c6
	.byte	0x1
	.long	0x6228
	.long	.LFB65
	.long	.LFE65
	.long	.LLST49
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x7c2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x7c3
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x7c4
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"force"
	.byte	0x1
	.value	0x7c5
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x39
	.long	.LASF58
	.byte	0x1
	.value	0x7c7
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xa01c
	.byte	0x1
	.string	"assemble_real"
	.byte	0x1
	.value	0x7fa
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST50
	.uleb128 0x32
	.string	"d"
	.byte	0x1
	.value	0x7f7
	.long	0x4243
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x7f8
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x7f9
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x33
	.string	"data"
	.byte	0x1
	.value	0x7fb
	.long	0xa01c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"l"
	.byte	0x1
	.value	0x7fc
	.long	0x4c7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"nalign"
	.byte	0x1
	.value	0x7fd
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x37
	.long	.LASF50
	.long	0xca3d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17030
	.byte	0x0
	.uleb128 0x10
	.long	0xa02c
	.long	0x4c7
	.uleb128 0x11
	.long	0x3cd
	.byte	0x3
	.byte	0x0
	.uleb128 0x3f
	.long	0xa064
	.long	.LASF8
	.byte	0x1
	.value	0x779
	.byte	0x1
	.long	0x3b6
	.long	.LFB61
	.long	.LFE61
	.long	.LLST51
	.uleb128 0x32
	.string	"a"
	.byte	0x1
	.value	0x778
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x778
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x4
	.long	0xa097
	.string	"addr_const"
	.byte	0xc
	.byte	0x1
	.byte	0x52
	.uleb128 0xe
	.string	"base"
	.byte	0x1
	.value	0x84d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF10
	.byte	0x1
	.value	0x84e
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3a
	.long	0xa11b
	.string	"decode_addr_const"
	.byte	0x1
	.value	0x855
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x853
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x854
	.long	0xa11b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"target"
	.byte	0x1
	.value	0x856
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF10
	.byte	0x1
	.value	0x857
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x858
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF50
	.long	0xca38
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17136
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa064
	.uleb128 0x29
	.long	0xa16f
	.string	"kind"
	.byte	0x4
	.byte	0x1
	.value	0x892
	.uleb128 0x1c
	.string	"RTX_UNKNOWN"
	.sleb128 0
	.uleb128 0x1c
	.string	"RTX_DOUBLE"
	.sleb128 1
	.uleb128 0x1c
	.string	"RTX_VECTOR"
	.sleb128 2
	.uleb128 0x1c
	.string	"RTX_INT"
	.sleb128 3
	.uleb128 0x1c
	.string	"RTX_UNSPEC"
	.sleb128 4
	.byte	0x0
	.uleb128 0xd
	.long	0xa1b8
	.string	"rtx_const_u_addr"
	.byte	0x10
	.byte	0x1
	.value	0x899
	.uleb128 0xe
	.string	"base"
	.byte	0x1
	.value	0x89a
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF54
	.byte	0x1
	.value	0x89b
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF10
	.byte	0x1
	.value	0x89c
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0xa1f0
	.string	"rtx_const_u_di"
	.byte	0x10
	.byte	0x1
	.value	0x89e
	.uleb128 0xe
	.string	"high"
	.byte	0x1
	.value	0x89f
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"low"
	.byte	0x1
	.value	0x8a0
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0xa22b
	.string	"rtx_const_int_vec"
	.byte	0x10
	.byte	0x1
	.value	0x8a5
	.uleb128 0xe
	.string	"high"
	.byte	0x1
	.value	0x8a6
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"low"
	.byte	0x1
	.value	0x8a7
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x40
	.long	0xa284
	.string	"rtx_const_un"
	.value	0x100
	.byte	0x1
	.value	0x897
	.uleb128 0xa
	.string	"du"
	.byte	0x1
	.value	0x898
	.long	0x4243
	.uleb128 0x9
	.long	.LASF59
	.byte	0x1
	.value	0x89d
	.long	0xa16f
	.uleb128 0xa
	.string	"di"
	.byte	0x1
	.value	0x8a1
	.long	0xa1b8
	.uleb128 0xa
	.string	"int_vec"
	.byte	0x1
	.value	0x8a8
	.long	0xa284
	.uleb128 0xa
	.string	"fp_vec"
	.byte	0x1
	.value	0x8aa
	.long	0xa294
	.byte	0x0
	.uleb128 0x10
	.long	0xa294
	.long	0xa1f0
	.uleb128 0x11
	.long	0x3cd
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.long	0xa2a4
	.long	0x4243
	.uleb128 0x11
	.long	0x3cd
	.byte	0x7
	.byte	0x0
	.uleb128 0x2d
	.long	0xa2eb
	.string	"rtx_const"
	.value	0x104
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.string	"kind"
	.byte	0x1
	.value	0x895
	.long	0xa121
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x25
	.long	.LASF0
	.byte	0x1
	.value	0x896
	.long	0x8a6
	.byte	0x4
	.byte	0x10
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"un"
	.byte	0x1
	.value	0x8ac
	.long	0xa22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	0xa34a
	.string	"constant_descriptor_tree"
	.byte	0x10
	.byte	0x1
	.value	0x8b4
	.uleb128 0x23
	.long	.LASF37
	.byte	0x1
	.value	0x8b6
	.long	0xa34a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF44
	.byte	0x1
	.value	0x8b9
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"rtl"
	.byte	0x1
	.value	0x8bc
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x23
	.long	.LASF25
	.byte	0x1
	.value	0x8bf
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa2eb
	.uleb128 0xd
	.long	0xa397
	.string	"deferred_string"
	.byte	0xc
	.byte	0x1
	.value	0x8ce
	.uleb128 0x23
	.long	.LASF44
	.byte	0x1
	.value	0x8cf
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x1
	.value	0x8d0
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF47
	.byte	0x1
	.value	0x8d1
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x31
	.long	0xa3d2
	.string	"const_str_htab_hash"
	.byte	0x1
	.value	0x8dc
	.byte	0x1
	.long	0x6bef
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x8db
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xa418
	.string	"const_str_htab_eq"
	.byte	0x1
	.value	0x8e8
	.byte	0x1
	.long	0x2dd
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x8e6
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.value	0x8e7
	.long	0x885
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.long	0xa44c
	.string	"const_hash"
	.byte	0x1
	.value	0x8f1
	.byte	0x1
	.long	0x3b6
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x8f0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0xa532
	.string	"const_hash_1"
	.byte	0x1
	.value	0x8f8
	.byte	0x1
	.long	0x3b6
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x8f7
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x8f9
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"hi"
	.byte	0x1
	.value	0x8fa
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x8fb
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x8fb
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x8fc
	.long	0x1817
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3c
	.long	0xa4e6
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0x917
	.long	0x4e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3c
	.long	0xa504
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.string	"link"
	.byte	0x1
	.value	0x921
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3c
	.long	0xa521
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x39
	.long	.LASF25
	.byte	0x1
	.value	0x92f
	.long	0xa064
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xca23
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17273
	.byte	0x0
	.uleb128 0x31
	.long	0xa683
	.string	"compare_constant"
	.byte	0x1
	.value	0x960
	.byte	0x1
	.long	0x2dd
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x32
	.string	"t1"
	.byte	0x1
	.value	0x95e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x32
	.string	"t2"
	.byte	0x1
	.value	0x95f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"typecode"
	.byte	0x1
	.value	0x961
	.long	0x1817
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3c
	.long	0xa5cb
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x990
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"tmp1"
	.byte	0x1
	.value	0x991
	.long	0x78e
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"tmp2"
	.byte	0x1
	.value	0x991
	.long	0x78e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x3c
	.long	0xa612
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x33
	.string	"l1"
	.byte	0x1
	.value	0x9a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"l2"
	.byte	0x1
	.value	0x9a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.string	"size_1"
	.byte	0x1
	.value	0x9a6
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0xa646
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.string	"value1"
	.byte	0x1
	.value	0x9d0
	.long	0xa064
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"value2"
	.byte	0x1
	.value	0x9d0
	.long	0xa064
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x3c
	.long	0xa672
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x33
	.string	"nt1"
	.byte	0x1
	.value	0x9e5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"nt2"
	.byte	0x1
	.value	0x9e5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xca0e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17388
	.byte	0x0
	.uleb128 0xd
	.long	0xa6db
	.string	"deferred_constant"
	.byte	0x10
	.byte	0x1
	.value	0x9f7
	.uleb128 0x23
	.long	.LASF37
	.byte	0x1
	.value	0x9f8
	.long	0xa6db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x1
	.value	0x9f9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF51
	.byte	0x1
	.value	0x9fa
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x23
	.long	.LASF47
	.byte	0x1
	.value	0x9fb
	.long	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa683
	.uleb128 0x2f
	.byte	0x1
	.string	"defer_addressed_constants"
	.byte	0x1
	.value	0xa0c
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x36
	.long	0xa764
	.byte	0x1
	.string	"output_deferred_addressed_constants"
	.byte	0x1
	.value	0xa15
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xa16
	.long	0xa6db
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0xa16
	.long	0xa6db
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0xa7b6
	.string	"output_after_function_constants"
	.byte	0x1
	.value	0xa2b
	.byte	0x1
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xa2c
	.long	0xa6db
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0xa2c
	.long	0xa6db
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0xa856
	.string	"copy_constant"
	.byte	0x1
	.value	0xa3e
	.byte	0x1
	.long	0x1e3
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa3d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	0xa82a
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"copy"
	.byte	0x1
	.value	0xa62
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"list"
	.byte	0x1
	.value	0xa63
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"tail"
	.byte	0x1
	.value	0xa64
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3c
	.long	0xa845
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0xa72
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xca09
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17616
	.byte	0x0
	.uleb128 0x34
	.long	0xa97c
	.byte	0x1
	.string	"output_constant_def"
	.byte	0x1
	.value	0xa8e
	.byte	0x1
	.long	0x9b
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa8c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x32
	.string	"defer"
	.byte	0x1
	.value	0xa8d
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"hash"
	.byte	0x1
	.value	0xa8f
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x33
	.string	"desc"
	.byte	0x1
	.value	0xa90
	.long	0xa34a
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x33
	.string	"defstr"
	.byte	0x1
	.value	0xa91
	.long	0xa97c
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0xa92
	.long	0x9df1
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x39
	.long	.LASF51
	.byte	0x1
	.value	0xa93
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x33
	.string	"found"
	.byte	0x1
	.value	0xa94
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x33
	.string	"after_function"
	.byte	0x1
	.value	0xa95
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x39
	.long	.LASF47
	.byte	0x1
	.value	0xa96
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x33
	.string	"rtl"
	.byte	0x1
	.value	0xa97
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x3c
	.long	0xa963
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xaff
	.long	0xa6db
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xb21
	.long	0xa982
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa982
	.uleb128 0x3
	.byte	0x4
	.long	0xa350
	.uleb128 0x3a
	.long	0xaa06
	.string	"output_constant_def_contents"
	.byte	0x1
	.value	0xb3b
	.byte	0x1
	.long	.LFB78
	.long	.LFE78
	.long	.LLST63
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xb38
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0xb39
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF47
	.byte	0x1
	.value	0xb3a
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF12
	.byte	0x1
	.value	0xb3c
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF11
	.byte	0x1
	.value	0xb3d
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x36
	.long	0xaa4a
	.byte	0x1
	.string	"init_varasm_status"
	.byte	0x1
	.value	0xb90
	.byte	0x1
	.long	.LFB79
	.long	.LFE79
	.long	.LLST64
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xb8f
	.long	0x55e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xb91
	.long	0x6692
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0xab34
	.string	"decode_rtx_const"
	.byte	0x1
	.value	0xbab
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST65
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xba8
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xba9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0xbaa
	.long	0xab34
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3c
	.long	0xaab6
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0xbb8
	.long	0x6be4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3c
	.long	0xab23
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x33
	.string	"units"
	.byte	0x1
	.value	0xbd9
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xbd9
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.long	0xaafe
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0xbe3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0xbf4
	.long	0x6be4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"d"
	.byte	0x1
	.value	0xbf6
	.long	0x429c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xc9f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17898
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa2a4
	.uleb128 0x34
	.long	0xab99
	.byte	0x1
	.string	"simplify_subtraction"
	.byte	0x1
	.value	0xc5e
	.byte	0x1
	.long	0x9b
	.long	.LFB81
	.long	.LFE81
	.long	.LLST66
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xc5d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"val0"
	.byte	0x1
	.value	0xc5f
	.long	0xa2a4
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x33
	.string	"val1"
	.byte	0x1
	.value	0xc5f
	.long	0xa2a4
	.byte	0x3
	.byte	0x91
	.sleb128 -544
	.byte	0x0
	.uleb128 0x31
	.long	0xac2b
	.string	"const_hash_rtx"
	.byte	0x1
	.value	0xc73
	.byte	0x1
	.long	0x3b6
	.long	.LFB82
	.long	.LFE82
	.long	.LLST67
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xc71
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xc72
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x41
	.long	0xac01
	.value	0x104
	.byte	0x1
	.value	0xc74
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.value	0xc75
	.long	0xa2a4
	.uleb128 0xa
	.string	"data"
	.byte	0x1
	.value	0xc76
	.long	0xac2b
	.byte	0x0
	.uleb128 0x33
	.string	"u"
	.byte	0x1
	.value	0xc77
	.long	0xabdd
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x33
	.string	"hi"
	.byte	0x1
	.value	0xc79
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xc7a
	.long	0x417
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x10
	.long	0xac3b
	.long	0x3b6
	.uleb128 0x11
	.long	0x3cd
	.byte	0x40
	.byte	0x0
	.uleb128 0x31
	.long	0xaca6
	.string	"compare_constant_rtx"
	.byte	0x1
	.value	0xc8e
	.byte	0x1
	.long	0x2dd
	.long	.LFB83
	.long	.LFE83
	.long	.LLST68
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xc8b
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xc8c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"desc"
	.byte	0x1
	.value	0xc8d
	.long	0x8b1b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF25
	.byte	0x1
	.value	0xc8f
	.long	0xa2a4
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.byte	0x0
	.uleb128 0x31
	.long	0xacff
	.string	"record_constant_rtx"
	.byte	0x1
	.value	0xc9e
	.byte	0x1
	.long	0x8b1b
	.long	.LFB84
	.long	.LFE84
	.long	.LLST69
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xc9c
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xc9d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ptr"
	.byte	0x1
	.value	0xc9f
	.long	0x8b1b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0xad5b
	.byte	0x1
	.string	"mem_for_const_double"
	.byte	0x1
	.value	0xcad
	.byte	0x1
	.long	0x9b
	.long	.LFB85
	.long	.LFE85
	.long	.LLST70
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xcac
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF0
	.byte	0x1
	.value	0xcae
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"desc"
	.byte	0x1
	.value	0xcaf
	.long	0x8b1b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	0xae05
	.byte	0x1
	.string	"force_const_mem"
	.byte	0x1
	.value	0xcc0
	.byte	0x1
	.long	0x9b
	.long	.LFB86
	.long	.LFE86
	.long	.LLST71
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0xcbe
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xcbf
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x33
	.string	"hash"
	.byte	0x1
	.value	0xcc1
	.long	0x2dd
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x33
	.string	"desc"
	.byte	0x1
	.value	0xcc2
	.long	0x8b1b
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0xcc3
	.long	0x9df1
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x33
	.string	"def"
	.byte	0x1
	.value	0xcc4
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xcc5
	.long	0x8bd1
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x39
	.long	.LASF12
	.byte	0x1
	.value	0xcc6
	.long	0x3b6
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.byte	0x0
	.uleb128 0x31
	.long	0xae7c
	.string	"find_pool_constant"
	.byte	0x1
	.value	0xd1a
	.byte	0x1
	.long	0x8bd1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST72
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xd18
	.long	0x55e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xd19
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xd1b
	.long	0x8bd1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0xd1c
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF50
	.long	0xc9df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18316
	.byte	0x0
	.uleb128 0x34
	.long	0xaeb8
	.byte	0x1
	.string	"get_pool_constant"
	.byte	0x1
	.value	0xd2b
	.byte	0x1
	.long	0x9b
	.long	.LFB88
	.long	.LFE88
	.long	.LLST73
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xd2a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0xaf1b
	.byte	0x1
	.string	"get_pool_constant_mark"
	.byte	0x1
	.value	0xd36
	.byte	0x1
	.long	0x9b
	.long	.LFB89
	.long	.LFE89
	.long	.LLST74
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xd34
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"pmarked"
	.byte	0x1
	.value	0xd35
	.long	0x625b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xd37
	.long	0x8bd1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0xaf71
	.byte	0x1
	.string	"get_pool_constant_for_function"
	.byte	0x1
	.value	0xd42
	.byte	0x1
	.long	0x9b
	.long	.LFB90
	.long	.LFE90
	.long	.LLST75
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xd40
	.long	0x55e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xd41
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0xafa9
	.byte	0x1
	.string	"get_pool_mode"
	.byte	0x1
	.value	0xd4b
	.byte	0x1
	.long	0x8a6
	.long	.LFB91
	.long	.LFE91
	.long	.LLST76
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xd4a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0xaffb
	.byte	0x1
	.string	"get_pool_mode_for_function"
	.byte	0x1
	.value	0xd53
	.byte	0x1
	.long	0x8a6
	.long	.LFB92
	.long	.LFE92
	.long	.LLST77
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xd51
	.long	0x55e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xd52
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0xb035
	.byte	0x1
	.string	"get_pool_offset"
	.byte	0x1
	.value	0xd5c
	.byte	0x1
	.long	0x2dd
	.long	.LFB93
	.long	.LFE93
	.long	.LLST78
	.uleb128 0x35
	.long	.LASF59
	.byte	0x1
	.value	0xd5b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.string	"get_pool_size"
	.byte	0x1
	.value	0xd64
	.byte	0x1
	.long	0x2dd
	.long	.LFB94
	.long	.LFE94
	.long	.LLST79
	.uleb128 0x36
	.long	0xb16f
	.byte	0x1
	.string	"output_constant_pool"
	.byte	0x1
	.value	0xd6e
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST80
	.uleb128 0x35
	.long	.LASF56
	.byte	0x1
	.value	0xd6c
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"fndecl"
	.byte	0x1
	.value	0xd6d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xd6f
	.long	0x8bd1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xd70
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0xd71
	.long	0x4243
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3c
	.long	0xb15e
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0xd7e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.long	0xb126
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xdc6
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"units"
	.byte	0x1
	.value	0xdc6
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0xdc7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xdd9
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"units"
	.byte	0x1
	.value	0xdd9
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0xdda
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xc9da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18399
	.byte	0x0
	.uleb128 0x3a
	.long	0xb1c7
	.string	"mark_constant_pool"
	.byte	0x1
	.value	0xe08
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.long	.LLST81
	.uleb128 0x33
	.string	"insn"
	.byte	0x1
	.value	0xe09
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"link"
	.byte	0x1
	.value	0xe0a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xe0b
	.long	0x8bd1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3a
	.long	0xb247
	.string	"mark_constants"
	.byte	0x1
	.value	0xe2a
	.byte	0x1
	.long	.LFB97
	.long	.LFE97
	.long	.LLST82
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xe29
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xe2b
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"format_ptr"
	.byte	0x1
	.value	0xe2c
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.long	0xb236
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0xe4d
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xc9c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18573
	.byte	0x0
	.uleb128 0x31
	.long	0xb2f3
	.string	"mark_constant"
	.byte	0x1
	.value	0xe71
	.byte	0x1
	.long	0x2dd
	.long	.LFB98
	.long	.LFE98
	.long	.LLST83
	.uleb128 0x32
	.string	"current_rtx"
	.byte	0x1
	.value	0xe6f
	.long	0x17cd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"data"
	.byte	0x1
	.value	0xe70
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xe72
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.long	0xb2bf
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x39
	.long	.LASF60
	.byte	0x1
	.value	0xe7b
	.long	0x8bd1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x33
	.string	"defstr"
	.byte	0x1
	.value	0xe86
	.long	0xa97c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xe8d
	.long	0xa982
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0xb367
	.string	"output_addressed_constants"
	.byte	0x1
	.value	0xe9f
	.byte	0x1
	.long	0x2dd
	.long	.LFB99
	.long	.LFE99
	.long	.LLST84
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xe9e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF51
	.byte	0x1
	.value	0xea0
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"reloc2"
	.byte	0x1
	.value	0xea0
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xea1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0xb4ea
	.byte	0x1
	.string	"initializer_constant_valid_p"
	.byte	0x1
	.value	0xeec
	.byte	0x1
	.long	0x1e3
	.long	.LFB100
	.long	.LFE100
	.long	.LLST85
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0xeea
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"endtype"
	.byte	0x1
	.value	0xeeb
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	0xb40a
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0xef9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"absolute"
	.byte	0x1
	.value	0xefa
	.long	0x6228
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x3b
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x39
	.long	.LASF51
	.byte	0x1
	.value	0xefe
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0xb427
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xf35
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x3c
	.long	0xb459
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x33
	.string	"valid0"
	.byte	0x1
	.value	0xf5b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"valid1"
	.byte	0x1
	.value	0xf5d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3c
	.long	0xb48b
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x33
	.string	"valid0"
	.byte	0x1
	.value	0xf6b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"valid1"
	.byte	0x1
	.value	0xf6d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0xf83
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0xf83
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3c
	.long	0xb4cf
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xf90
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xf9d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb5e2
	.byte	0x1
	.string	"output_constant"
	.byte	0x1
	.value	0xfce
	.byte	0x1
	.long	.LFB101
	.long	.LFE101
	.long	.LLST86
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xfcb
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0xfcc
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0xfcd
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0xfcf
	.long	0x1817
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LASF57
	.byte	0x1
	.value	0xfd0
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.long	0xb5b1
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x33
	.string	"elt_size"
	.byte	0x1
	.value	0x102b
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"link"
	.byte	0x1
	.value	0x102c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"nalign"
	.byte	0x1
	.value	0x102d
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0x102e
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3c
	.long	0xb5d1
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x33
	.string	"buffer"
	.byte	0x1
	.value	0x1051
	.long	0x78e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xc9c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19182
	.byte	0x0
	.uleb128 0x31
	.long	0xb661
	.string	"array_size_for_constructor"
	.byte	0x1
	.value	0x1070
	.byte	0x1
	.long	0x48e
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x106f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"max_index"
	.byte	0x1
	.value	0x1071
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1071
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x39
	.long	.LASF13
	.byte	0x1
	.value	0x107c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	0xb8cf
	.string	"output_constructor"
	.byte	0x1
	.value	0x109b
	.byte	0x1
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x1098
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF11
	.byte	0x1
	.value	0x1099
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x109a
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x109c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"link"
	.byte	0x1
	.value	0x109d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"field"
	.byte	0x1
	.value	0x109d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"min_index"
	.byte	0x1
	.value	0x109e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"total_bytes"
	.byte	0x1
	.value	0x10a1
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x33
	.string	"byte_buffer_in_use"
	.byte	0x1
	.value	0x10a3
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"byte"
	.byte	0x1
	.value	0x10a4
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3c
	.long	0xb8be
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x10be
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF13
	.byte	0x1
	.value	0x10bf
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3c
	.long	0xb7d9
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x39
	.long	.LASF61
	.byte	0x1
	.value	0x10d1
	.long	0x48e
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"lo_index"
	.byte	0x1
	.value	0x10d3
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.string	"hi_index"
	.byte	0x1
	.value	0x10d4
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x39
	.long	.LASF13
	.byte	0x1
	.value	0x10d5
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.string	"align2"
	.byte	0x1
	.value	0x10d6
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x3c
	.long	0xb819
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x39
	.long	.LASF61
	.byte	0x1
	.value	0x10e8
	.long	0x48e
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"pos"
	.byte	0x1
	.value	0x10eb
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"align2"
	.byte	0x1
	.value	0x10ec
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x33
	.string	"next_offset"
	.byte	0x1
	.value	0x1135
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"end_offset"
	.byte	0x1
	.value	0x1136
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3b
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x33
	.string	"this_time"
	.byte	0x1
	.value	0x115d
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"shift"
	.byte	0x1
	.value	0x115e
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF25
	.byte	0x1
	.value	0x115f
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"next_byte"
	.byte	0x1
	.value	0x1160
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"next_bit"
	.byte	0x1
	.value	0x1161
	.long	0x47d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xc9bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19345
	.byte	0x0
	.uleb128 0x3a
	.long	0xb8fe
	.string	"mark_weak"
	.byte	0x1
	.value	0x11d1
	.byte	0x1
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x11d0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0xb95e
	.byte	0x1
	.string	"merge_weak"
	.byte	0x1
	.value	0x11e1
	.byte	0x1
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x32
	.string	"newdecl"
	.byte	0x1
	.value	0x11df
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"olddecl"
	.byte	0x1
	.value	0x11e0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x33
	.string	"wd"
	.byte	0x1
	.value	0x11e7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xb991
	.byte	0x1
	.string	"declare_weak"
	.byte	0x1
	.value	0x121a
	.byte	0x1
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1219
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"weak_finish"
	.byte	0x1
	.value	0x1232
	.byte	0x1
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x3a
	.long	0xba16
	.string	"globalize_decl"
	.byte	0x1
	.value	0x1258
	.byte	0x1
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1257
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x1259
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x125e
	.long	0x6255
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x125e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0xba6c
	.byte	0x1
	.string	"assemble_alias"
	.byte	0x1
	.value	0x127c
	.byte	0x1
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x127b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"target"
	.byte	0x1
	.value	0x127b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x127d
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0xbafa
	.byte	0x1
	.string	"default_assemble_visibility"
	.byte	0x1
	.value	0x12b2
	.byte	0x1
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x12b0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"vis"
	.byte	0x1
	.value	0x12b1
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x12b7
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x12b7
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"visibility_types"
	.byte	0x1
	.value	0x12b3
	.long	0xc9b6
	.byte	0x5
	.byte	0x3
	.long	visibility_types.19784
	.byte	0x0
	.uleb128 0x3a
	.long	0xbb48
	.string	"maybe_assemble_visibility"
	.byte	0x1
	.value	0x12ca
	.byte	0x1
	.long	.LFB111
	.long	.LFE111
	.long	.LLST96
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x12c9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"vis"
	.byte	0x1
	.value	0x12cb
	.long	0x60f1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.string	"supports_one_only"
	.byte	0x1
	.value	0x12d8
	.byte	0x1
	.long	0x2dd
	.long	.LFB112
	.long	.LFE112
	.long	.LLST97
	.uleb128 0x36
	.long	0xbbb9
	.byte	0x1
	.string	"make_decl_one_only"
	.byte	0x1
	.value	0x12e4
	.byte	0x1
	.long	.LFB113
	.long	.LFE113
	.long	.LLST98
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x12e3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF50
	.long	0xc9a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19809
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"init_varasm_once"
	.byte	0x1
	.value	0x12fc
	.byte	0x1
	.long	.LFB114
	.long	.LFE114
	.long	.LLST99
	.uleb128 0x34
	.long	0xbc59
	.byte	0x1
	.string	"decl_tls_model"
	.byte	0x1
	.value	0x1308
	.byte	0x1
	.long	0x6078
	.long	.LFB115
	.long	.LFE115
	.long	.LLST100
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1307
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"kind"
	.byte	0x1
	.value	0x1309
	.long	0x6078
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"attr"
	.byte	0x1
	.value	0x130a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"is_local"
	.byte	0x1
	.value	0x130b
	.long	0x6228
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x37
	.long	.LASF50
	.long	0xc98c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19836
	.byte	0x0
	.uleb128 0x34
	.long	0xbcd2
	.byte	0x1
	.string	"decl_visibility"
	.byte	0x1
	.value	0x1336
	.byte	0x1
	.long	0x60f1
	.long	.LFB116
	.long	.LFE116
	.long	.LLST101
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1335
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"attr"
	.byte	0x1
	.value	0x1337
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.long	0xbcc1
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x33
	.string	"which"
	.byte	0x1
	.value	0x133b
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	.LASF50
	.long	0xc977
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19895
	.byte	0x0
	.uleb128 0x34
	.long	0xbd35
	.byte	0x1
	.string	"default_section_type_flags"
	.byte	0x1
	.value	0x1358
	.byte	0x1
	.long	0x3b6
	.long	.LFB117
	.long	.LFE117
	.long	.LLST102
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1355
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x1356
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1357
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x34
	.long	0xbdb8
	.byte	0x1
	.string	"default_section_type_flags_1"
	.byte	0x1
	.value	0x1362
	.byte	0x1
	.long	0x3b6
	.long	.LFB118
	.long	.LFE118
	.long	.LLST103
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x135e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x135f
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1360
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x1361
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x39
	.long	.LASF14
	.byte	0x1
	.value	0x1363
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0xbe16
	.byte	0x1
	.string	"default_no_named_section"
	.byte	0x1
	.value	0x1397
	.byte	0x1
	.long	.LFB119
	.long	.LFE119
	.long	.LLST104
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x1395
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x1396
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF50
	.long	0xc972
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20000
	.byte	0x0
	.uleb128 0x36
	.long	0xbe9e
	.byte	0x1
	.string	"default_elf_asm_named_section"
	.byte	0x1
	.value	0x13a1
	.byte	0x1
	.long	.LFB120
	.long	.LFE120
	.long	.LLST105
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x139f
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x13a0
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF63
	.byte	0x1
	.value	0x13a2
	.long	0xbe9e
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x33
	.string	"f"
	.byte	0x1
	.value	0x13a2
	.long	0x4e6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x39
	.long	.LASF4
	.byte	0x1
	.value	0x13be
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0xbeae
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x9
	.byte	0x0
	.uleb128 0x36
	.long	0xbf1e
	.byte	0x1
	.string	"default_coff_asm_named_section"
	.byte	0x1
	.value	0x13d2
	.byte	0x1
	.long	.LFB121
	.long	.LFE121
	.long	.LLST106
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x13d0
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x13d1
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF63
	.byte	0x1
	.value	0x13d3
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"f"
	.byte	0x1
	.value	0x13d3
	.long	0x4e6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0xbf70
	.byte	0x1
	.string	"default_pe_asm_named_section"
	.byte	0x1
	.value	0x13e2
	.byte	0x1
	.long	.LFB122
	.long	.LFE122
	.long	.LLST107
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x13e0
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF14
	.byte	0x1
	.value	0x13e1
	.long	0x3b6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0xbfbb
	.byte	0x1
	.string	"assemble_vtable_entry"
	.byte	0x1
	.value	0x13f6
	.byte	0x1
	.long	.LFB123
	.long	.LFE123
	.long	.LLST108
	.uleb128 0x35
	.long	.LASF54
	.byte	0x1
	.value	0x13f4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF10
	.byte	0x1
	.value	0x13f5
	.long	0x47d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0xc00d
	.byte	0x1
	.string	"assemble_vtable_inherit"
	.byte	0x1
	.value	0x1404
	.byte	0x1
	.long	.LFB124
	.long	.LFE124
	.long	.LLST109
	.uleb128 0x32
	.string	"child"
	.byte	0x1
	.value	0x1403
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"parent"
	.byte	0x1
	.value	0x1403
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0xc07c
	.byte	0x1
	.string	"default_select_section"
	.byte	0x1
	.value	0x1413
	.byte	0x1
	.long	.LFB125
	.long	.LFE125
	.long	.LLST110
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1410
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1411
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x1412
	.long	0x48e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"readonly"
	.byte	0x1
	.value	0x1414
	.long	0x6228
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x29
	.long	0xc1ca
	.string	"section_category"
	.byte	0x4
	.byte	0x1
	.value	0x1432
	.uleb128 0x1c
	.string	"SECCAT_TEXT"
	.sleb128 0
	.uleb128 0x1c
	.string	"SECCAT_RODATA"
	.sleb128 1
	.uleb128 0x1c
	.string	"SECCAT_RODATA_MERGE_STR"
	.sleb128 2
	.uleb128 0x1c
	.string	"SECCAT_RODATA_MERGE_STR_INIT"
	.sleb128 3
	.uleb128 0x1c
	.string	"SECCAT_RODATA_MERGE_CONST"
	.sleb128 4
	.uleb128 0x1c
	.string	"SECCAT_SRODATA"
	.sleb128 5
	.uleb128 0x1c
	.string	"SECCAT_DATA"
	.sleb128 6
	.uleb128 0x1c
	.string	"SECCAT_DATA_REL"
	.sleb128 7
	.uleb128 0x1c
	.string	"SECCAT_DATA_REL_LOCAL"
	.sleb128 8
	.uleb128 0x1c
	.string	"SECCAT_DATA_REL_RO"
	.sleb128 9
	.uleb128 0x1c
	.string	"SECCAT_DATA_REL_RO_LOCAL"
	.sleb128 10
	.uleb128 0x1c
	.string	"SECCAT_SDATA"
	.sleb128 11
	.uleb128 0x1c
	.string	"SECCAT_TDATA"
	.sleb128 12
	.uleb128 0x1c
	.string	"SECCAT_BSS"
	.sleb128 13
	.uleb128 0x1c
	.string	"SECCAT_SBSS"
	.sleb128 14
	.uleb128 0x1c
	.string	"SECCAT_TBSS"
	.sleb128 15
	.byte	0x0
	.uleb128 0x31
	.long	0xc23c
	.string	"categorize_decl_for_section"
	.byte	0x1
	.value	0x145b
	.byte	0x1
	.long	0xc07c
	.long	.LFB126
	.long	.LFE126
	.long	.LLST111
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1458
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1459
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x145a
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.value	0x145c
	.long	0xc07c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0xc28b
	.byte	0x1
	.string	"decl_readonly_section"
	.byte	0x1
	.value	0x14ac
	.byte	0x1
	.long	0x6228
	.long	.LFB127
	.long	.LFE127
	.long	.LLST112
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x14aa
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x14ab
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x34
	.long	0xc2eb
	.byte	0x1
	.string	"decl_readonly_section_1"
	.byte	0x1
	.value	0x14b5
	.byte	0x1
	.long	0x6228
	.long	.LFB128
	.long	.LFE128
	.long	.LLST113
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x14b2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x14b3
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x14b4
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x36
	.long	0xc34a
	.byte	0x1
	.string	"default_elf_select_section"
	.byte	0x1
	.value	0x14cc
	.byte	0x1
	.long	.LFB129
	.long	.LFE129
	.long	.LLST114
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x14c9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x14ca
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x14cb
	.long	0x48e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0xc3ca
	.byte	0x1
	.string	"default_elf_select_section_1"
	.byte	0x1
	.value	0x14d6
	.byte	0x1
	.long	.LFB130
	.long	.LFE130
	.long	.LLST115
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x14d2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x14d3
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x14d4
	.long	0x48e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x14d5
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x37
	.long	.LASF50
	.long	0xc96d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20304
	.byte	0x0
	.uleb128 0x36
	.long	0xc416
	.byte	0x1
	.string	"default_unique_section"
	.byte	0x1
	.value	0x1519
	.byte	0x1
	.long	.LFB131
	.long	.LFE131
	.long	.LLST116
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x1517
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1518
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x36
	.long	0xc4e7
	.byte	0x1
	.string	"default_unique_section_1"
	.byte	0x1
	.value	0x1522
	.byte	0x1
	.long	.LFB132
	.long	.LFE132
	.long	.LLST117
	.uleb128 0x35
	.long	.LASF3
	.byte	0x1
	.value	0x151f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF51
	.byte	0x1
	.value	0x1520
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x1521
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"one_only"
	.byte	0x1
	.value	0x1523
	.long	0x6228
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x33
	.string	"prefix"
	.byte	0x1
	.value	0x1524
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF32
	.byte	0x1
	.value	0x1524
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"nlen"
	.byte	0x1
	.value	0x1525
	.long	0x417
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"plen"
	.byte	0x1
	.value	0x1525
	.long	0x417
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF2
	.byte	0x1
	.value	0x1526
	.long	0x4e6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF50
	.long	0xc958
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.20360
	.byte	0x0
	.uleb128 0x36
	.long	0xc544
	.byte	0x1
	.string	"default_select_rtx_section"
	.byte	0x1
	.value	0x1561
	.byte	0x1
	.long	.LFB133
	.long	.LFE133
	.long	.LLST118
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x155e
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x155f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x1560
	.long	0x48e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0xc5a5
	.byte	0x1
	.string	"default_elf_select_rtx_section"
	.byte	0x1
	.value	0x1577
	.byte	0x1
	.long	.LFB134
	.long	.LFE134
	.long	.LLST119
	.uleb128 0x35
	.long	.LASF0
	.byte	0x1
	.value	0x1574
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x1575
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x1576
	.long	0x48e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x34
	.long	0xc5eb
	.byte	0x1
	.string	"default_strip_name_encoding"
	.byte	0x1
	.value	0x1593
	.byte	0x1
	.long	0x2ca
	.long	.LFB135
	.long	.LFE135
	.long	.LLST120
	.uleb128 0x32
	.string	"str"
	.byte	0x1
	.value	0x1592
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0xc62b
	.byte	0x1
	.string	"default_binds_local_p"
	.byte	0x1
	.value	0x159d
	.byte	0x1
	.long	0x6228
	.long	.LFB136
	.long	.LFE136
	.long	.LLST121
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x159c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0xc68f
	.byte	0x1
	.string	"default_binds_local_p_1"
	.byte	0x1
	.value	0x15a5
	.byte	0x1
	.long	0x6228
	.long	.LFB137
	.long	.LFE137
	.long	.LLST122
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x15a3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF62
	.byte	0x1
	.value	0x15a4
	.long	0x2dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"local_p"
	.byte	0x1
	.value	0x15a6
	.long	0x6228
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x36
	.long	0xc6df
	.byte	0x1
	.string	"default_globalize_label"
	.byte	0x1
	.value	0x15d1
	.byte	0x1
	.long	.LFB138
	.long	.LFE138
	.long	.LLST123
	.uleb128 0x32
	.string	"stream"
	.byte	0x1
	.value	0x15cf
	.long	0x6e28
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x15d0
	.long	0x2ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x42
	.long	0xc729
	.byte	0x1
	.string	"gt_ggc_mx_deferred_string"
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	.LFB139
	.long	.LFE139
	.long	.LLST124
	.uleb128 0x43
	.string	"x_p"
	.byte	0x2
	.byte	0x19
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.string	"x"
	.byte	0x2
	.byte	0x1b
	.long	0xc729
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0xa982
	.uleb128 0x42
	.long	0xc781
	.byte	0x1
	.string	"gt_ggc_mx_constant_descriptor_tree"
	.byte	0x2
	.byte	0x25
	.byte	0x1
	.long	.LFB140
	.long	.LFE140
	.long	.LLST125
	.uleb128 0x43
	.string	"x_p"
	.byte	0x2
	.byte	0x24
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.string	"x"
	.byte	0x2
	.byte	0x26
	.long	0xc781
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0xa34a
	.uleb128 0x42
	.long	0xc7ce
	.byte	0x1
	.string	"gt_ggc_mx_pool_constant"
	.byte	0x2
	.byte	0x32
	.byte	0x1
	.long	.LFB141
	.long	.LFE141
	.long	.LLST126
	.uleb128 0x43
	.string	"x_p"
	.byte	0x2
	.byte	0x31
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.string	"x"
	.byte	0x2
	.byte	0x33
	.long	0xc7ce
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x8bd1
	.uleb128 0x42
	.long	0xc852
	.byte	0x1
	.string	"gt_ggc_mx_constant_descriptor_rtx"
	.byte	0x2
	.byte	0x40
	.byte	0x1
	.long	.LFB142
	.long	.LFE142
	.long	.LLST127
	.uleb128 0x43
	.string	"x_p"
	.byte	0x2
	.byte	0x3f
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.string	"x"
	.byte	0x2
	.byte	0x41
	.long	0xc852
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x44
	.string	"i1_0"
	.byte	0x2
	.byte	0x4f
	.long	0x417
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x44
	.string	"ilimit1_0"
	.byte	0x2
	.byte	0x50
	.long	0xc857
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x8b1b
	.uleb128 0xb
	.long	0x417
	.uleb128 0x42
	.long	0xc8d6
	.byte	0x1
	.string	"gt_ggc_mx_varasm_status"
	.byte	0x2
	.byte	0x5e
	.byte	0x1
	.long	.LFB143
	.long	.LFE143
	.long	.LLST128
	.uleb128 0x43
	.string	"x_p"
	.byte	0x2
	.byte	0x5d
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.string	"x"
	.byte	0x2
	.byte	0x5f
	.long	0xc8d6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.long	0xc8be
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x44
	.string	"i1"
	.byte	0x2
	.byte	0x63
	.long	0x417
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x44
	.string	"i2"
	.byte	0x2
	.byte	0x6a
	.long	0x417
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x6692
	.uleb128 0x42
	.long	0xc943
	.byte	0x1
	.string	"gt_ggc_m_P15deferred_string4htab"
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	.LFB144
	.long	.LFE144
	.long	.LLST129
	.uleb128 0x43
	.string	"x_p"
	.byte	0x2
	.byte	0x77
	.long	0x4e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.string	"x"
	.byte	0x2
	.byte	0x79
	.long	0xc943
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x44
	.string	"i1"
	.byte	0x2
	.byte	0x7d
	.long	0x417
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x6d64
	.uleb128 0x10
	.long	0xc958
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x18
	.byte	0x0
	.uleb128 0xb
	.long	0xc948
	.uleb128 0x10
	.long	0xc96d
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x1c
	.byte	0x0
	.uleb128 0xb
	.long	0xc95d
	.uleb128 0xb
	.long	0xc948
	.uleb128 0xb
	.long	0x96f2
	.uleb128 0x10
	.long	0xc98c
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0xc97c
	.uleb128 0x10
	.long	0xc9a1
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x12
	.byte	0x0
	.uleb128 0xb
	.long	0xc991
	.uleb128 0x10
	.long	0xc9b6
	.long	0x2ca
	.uleb128 0x11
	.long	0x3cd
	.byte	0x3
	.byte	0x0
	.uleb128 0xb
	.long	0xc9a6
	.uleb128 0xb
	.long	0xc991
	.uleb128 0xb
	.long	0x96f2
	.uleb128 0xb
	.long	0xc97c
	.uleb128 0x10
	.long	0xc9da
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0xc9ca
	.uleb128 0xb
	.long	0xc991
	.uleb128 0x10
	.long	0xc9f4
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x10
	.byte	0x0
	.uleb128 0xb
	.long	0xc9e4
	.uleb128 0x10
	.long	0xca09
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xd
	.byte	0x0
	.uleb128 0xb
	.long	0xc9f9
	.uleb128 0xb
	.long	0xc9e4
	.uleb128 0x10
	.long	0xca23
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xc
	.byte	0x0
	.uleb128 0xb
	.long	0xca13
	.uleb128 0x10
	.long	0xca38
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x11
	.byte	0x0
	.uleb128 0xb
	.long	0xca28
	.uleb128 0xb
	.long	0xc9f9
	.uleb128 0x10
	.long	0xca52
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0xca42
	.uleb128 0xb
	.long	0xca28
	.uleb128 0xb
	.long	0xc9f9
	.uleb128 0x10
	.long	0xca71
	.long	0x940f
	.uleb128 0x11
	.long	0x3cd
	.byte	0x42
	.byte	0x0
	.uleb128 0xb
	.long	0xca61
	.uleb128 0xb
	.long	0xc9f9
	.uleb128 0xb
	.long	0x84f
	.uleb128 0x44
	.string	"const_alias_set"
	.byte	0x1
	.byte	0x94
	.long	0x47d
	.byte	0x5
	.byte	0x3
	.long	const_alias_set
	.uleb128 0x45
	.long	.LASF48
	.byte	0x1
	.byte	0xd1
	.long	0x8bd7
	.byte	0x5
	.byte	0x3
	.long	in_section
	.uleb128 0x44
	.string	"in_named_name"
	.byte	0x1
	.byte	0xdb
	.long	0x2ca
	.byte	0x5
	.byte	0x3
	.long	in_named_name
	.uleb128 0x44
	.string	"in_named_htab"
	.byte	0x1
	.byte	0xe6
	.long	0x6d56
	.byte	0x5
	.byte	0x3
	.long	in_named_htab
	.uleb128 0x10
	.long	0xcaf5
	.long	0xa34a
	.uleb128 0x46
	.long	0x3cd
	.value	0x3f0
	.byte	0x0
	.uleb128 0x33
	.string	"const_hash_table"
	.byte	0x1
	.value	0x8c4
	.long	0xcae4
	.byte	0x5
	.byte	0x3
	.long	const_hash_table
	.uleb128 0x33
	.string	"const_str_htab"
	.byte	0x1
	.value	0x8d4
	.long	0x6d56
	.byte	0x5
	.byte	0x3
	.long	const_str_htab
	.uleb128 0x33
	.string	"deferred_constants"
	.byte	0x1
	.value	0x9fe
	.long	0xa6db
	.byte	0x5
	.byte	0x3
	.long	deferred_constants
	.uleb128 0x33
	.string	"after_function_constants"
	.byte	0x1
	.value	0xa02
	.long	0xa6db
	.byte	0x5
	.byte	0x3
	.long	after_function_constants
	.uleb128 0x33
	.string	"defer_addressed_constants_flag"
	.byte	0x1
	.value	0xa06
	.long	0x2dd
	.byte	0x5
	.byte	0x3
	.long	defer_addressed_constants_flag
	.uleb128 0x47
	.string	"target_flags"
	.byte	0xf
	.byte	0x21
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"mips_section_threshold"
	.byte	0xf
	.byte	0x97
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"mips_string_length"
	.byte	0xf
	.byte	0xbc
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"mips_abi"
	.byte	0xf
	.value	0x3ca
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xcc1c
	.long	0x2d5
	.uleb128 0x49
	.uleb128 0x11
	.long	0x3cd
	.byte	0xaf
	.byte	0x0
	.uleb128 0x48
	.string	"mips_hard_regno_mode_ok"
	.byte	0xf
	.value	0x778
	.long	0xcc0b
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xcc4e
	.long	0x436
	.uleb128 0x11
	.long	0x3cd
	.byte	0xff
	.byte	0x0
	.uleb128 0x47
	.string	"_sch_istable"
	.byte	0x18
	.byte	0x48
	.long	0xcc64
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcc3e
	.uleb128 0x10
	.long	0xcc79
	.long	0xaef
	.uleb128 0x11
	.long	0x3cd
	.byte	0x35
	.byte	0x0
	.uleb128 0x4a
	.long	.LASF7
	.byte	0x7
	.byte	0x34
	.long	0xcc86
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcc69
	.uleb128 0x10
	.long	0xcc9b
	.long	0x425
	.uleb128 0x11
	.long	0x3cd
	.byte	0x35
	.byte	0x0
	.uleb128 0x47
	.string	"mode_size"
	.byte	0x7
	.byte	0x59
	.long	0xccae
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcc8b
	.uleb128 0x47
	.string	"mode_unit_size"
	.byte	0x7
	.byte	0x5e
	.long	0xcccb
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcc8b
	.uleb128 0x10
	.long	0xcce0
	.long	0x436
	.uleb128 0x11
	.long	0x3cd
	.byte	0x35
	.byte	0x0
	.uleb128 0x47
	.string	"mode_bitsize"
	.byte	0x7
	.byte	0x69
	.long	0xccf6
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xccd0
	.uleb128 0x10
	.long	0xcd0b
	.long	0x8a6
	.uleb128 0x11
	.long	0x3cd
	.byte	0x35
	.byte	0x0
	.uleb128 0x47
	.string	"inner_mode_array"
	.byte	0x7
	.byte	0x77
	.long	0xcd25
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xccfb
	.uleb128 0x47
	.string	"word_mode"
	.byte	0x7
	.byte	0xad
	.long	0x8a6
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xcd4d
	.long	0x425
	.uleb128 0x11
	.long	0x3cd
	.byte	0xa2
	.byte	0x0
	.uleb128 0x47
	.string	"rtx_length"
	.byte	0x6
	.byte	0x36
	.long	0xcd61
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcd3d
	.uleb128 0x10
	.long	0xcd76
	.long	0x2ca
	.uleb128 0x11
	.long	0x3cd
	.byte	0xa2
	.byte	0x0
	.uleb128 0x47
	.string	"rtx_format"
	.byte	0x6
	.byte	0x3c
	.long	0xcd8a
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcd66
	.uleb128 0x10
	.long	0xcd9f
	.long	0x2d5
	.uleb128 0x11
	.long	0x3cd
	.byte	0xa2
	.byte	0x0
	.uleb128 0x47
	.string	"rtx_class"
	.byte	0x6
	.byte	0x3f
	.long	0xcdb2
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcd8f
	.uleb128 0x10
	.long	0xcdc7
	.long	0x9b
	.uleb128 0x11
	.long	0x3cd
	.byte	0x80
	.byte	0x0
	.uleb128 0x48
	.string	"const_int_rtx"
	.byte	0x6
	.value	0x69e
	.long	0xcdb7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xcdea
	.long	0x2d5
	.uleb128 0x49
	.byte	0x0
	.uleb128 0x47
	.string	"tree_code_type"
	.byte	0x5
	.byte	0x43
	.long	0xce02
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xcddf
	.uleb128 0x10
	.long	0xce17
	.long	0x1e3
	.uleb128 0x11
	.long	0x3cd
	.byte	0x3f
	.byte	0x0
	.uleb128 0x48
	.string	"global_trees"
	.byte	0x5
	.value	0x8ee
	.long	0xce07
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_tls_default"
	.byte	0x5
	.value	0x976
	.long	0x6078
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xce59
	.long	0x1e3
	.uleb128 0x11
	.long	0x3cd
	.byte	0x5
	.byte	0x0
	.uleb128 0x48
	.string	"sizetype_tab"
	.byte	0x5
	.value	0xb10
	.long	0xce49
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"current_function_decl"
	.byte	0x5
	.value	0xc07
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"optimize"
	.byte	0x19
	.byte	0x41
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_writable_strings"
	.byte	0x19
	.value	0x146
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_volatile_global"
	.byte	0x19
	.value	0x15d
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_volatile_static"
	.byte	0x19
	.value	0x161
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_syntax_only"
	.byte	0x19
	.value	0x1a1
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_shared_data"
	.byte	0x19
	.value	0x1a9
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_pic"
	.byte	0x19
	.value	0x1dd
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_shlib"
	.byte	0x19
	.value	0x1e7
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_inhibit_size_directive"
	.byte	0x19
	.value	0x205
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_function_sections"
	.byte	0x19
	.value	0x20a
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_data_sections"
	.byte	0x19
	.value	0x20e
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_merge_constants"
	.byte	0x19
	.value	0x25d
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"align_functions_log"
	.byte	0x19
	.value	0x289
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"force_align_functions_log"
	.byte	0x19
	.value	0x28d
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"flag_zero_initialized_in_bss"
	.byte	0x19
	.value	0x2b5
	.long	0x2dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"cfun"
	.byte	0xe
	.value	0x202
	.long	0x55e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd069
	.long	0x2ca
	.uleb128 0x11
	.long	0x3cd
	.byte	0xaf
	.byte	0x0
	.uleb128 0x47
	.string	"reg_names"
	.byte	0x1a
	.byte	0xa3
	.long	0xd059
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"asm_out_file"
	.byte	0x1b
	.value	0x194
	.long	0x6e28
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.string	"first_global_object_name"
	.byte	0x1
	.byte	0x4f
	.long	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	first_global_object_name
	.uleb128 0x4b
	.string	"weak_global_object_name"
	.byte	0x1
	.byte	0x50
	.long	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	weak_global_object_name
	.uleb128 0x47
	.string	"htab_hash_pointer"
	.byte	0x3
	.byte	0xa0
	.long	0x6c00
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.string	"weak_decls"
	.byte	0x1
	.value	0x11ca
	.long	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	weak_decls
	.uleb128 0x4d
	.long	.LASF41
	.byte	0x1c
	.value	0x176
	.long	0xd123
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x74c1
	.uleb128 0x47
	.string	"debug_hooks"
	.byte	0x20
	.byte	0x6a
	.long	0xd13d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0xd143
	.uleb128 0xb
	.long	0x7ac6
	.uleb128 0x48
	.string	"targetm"
	.byte	0x17
	.value	0x12d
	.long	0x8346
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.string	"global_dc"
	.byte	0x1d
	.value	0x109
	.long	0x8a74
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.string	"const_labelno"
	.byte	0x1
	.byte	0x7a
	.long	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	const_labelno
	.uleb128 0x4b
	.string	"var_labelno"
	.byte	0x1
	.byte	0x7f
	.long	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	var_labelno
	.uleb128 0x4b
	.string	"size_directive_output"
	.byte	0x1
	.byte	0x84
	.long	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	size_directive_output
	.uleb128 0x4b
	.string	"last_assemble_variable_decl"
	.byte	0x1
	.byte	0x8b
	.long	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_assemble_variable_decl
	.uleb128 0x47
	.string	"asm_out_text_file"
	.byte	0x1
	.byte	0xf6
	.long	0x6e28
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xd21d
	.long	0x6d9e
	.uleb128 0x11
	.long	0x3cd
	.byte	0x3
	.byte	0x0
	.uleb128 0x4b
	.string	"gt_ggc_r_gt_varasm_h"
	.byte	0x2
	.byte	0x88
	.long	0xd240
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_varasm_h
	.uleb128 0xb
	.long	0xd20d
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x8
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x17
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
	.uleb128 0x41
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.long	0xadb
	.value	0x2
	.long	.Ldebug_info0
	.long	0xd246
	.long	0x8c88
	.string	"sdata_section"
	.long	0x8ca7
	.string	"sbss_section"
	.long	0x8cc5
	.string	"text_section"
	.long	0x8ce3
	.string	"data_section"
	.long	0x8d02
	.string	"force_data_section"
	.long	0x8d27
	.string	"readonly_data_section"
	.long	0x8d4f
	.string	"in_text_section"
	.long	0x8d75
	.string	"in_data_section"
	.long	0x8e56
	.string	"get_named_section_flags"
	.long	0x8eb4
	.string	"named_section_first_declaration"
	.long	0x8f0e
	.string	"set_named_section_flags"
	.long	0x8f80
	.string	"named_section_flags"
	.long	0x8fd9
	.string	"named_section"
	.long	0x9040
	.string	"resolve_unique_section"
	.long	0x90b6
	.string	"bss_section"
	.long	0x9181
	.string	"function_section"
	.long	0x91b8
	.string	"variable_section"
	.long	0x91fe
	.string	"mergeable_string_section"
	.long	0x92f0
	.string	"mergeable_constant_section"
	.long	0x93af
	.string	"decode_reg_name"
	.long	0x944d
	.string	"make_decl_rtl"
	.long	0x9558
	.string	"make_var_volatile"
	.long	0x95a0
	.string	"assemble_constant_align"
	.long	0x95ed
	.string	"assemble_asm"
	.long	0x9620
	.string	"default_stabs_asm_out_destructor"
	.long	0x9676
	.string	"default_named_section_asm_out_destructor"
	.long	0x9702
	.string	"default_stabs_asm_out_constructor"
	.long	0x9759
	.string	"default_named_section_asm_out_constructor"
	.long	0x97d6
	.string	"assemble_start_function"
	.long	0x9858
	.string	"assemble_end_function"
	.long	0x98a3
	.string	"assemble_zeros"
	.long	0x98d8
	.string	"assemble_align"
	.long	0x990d
	.string	"assemble_string"
	.long	0x9a97
	.string	"assemble_variable"
	.long	0x9bda
	.string	"assemble_external"
	.long	0x9c2b
	.string	"assemble_external_libcall"
	.long	0x9c6b
	.string	"assemble_label"
	.long	0x9ca0
	.string	"assemble_name"
	.long	0x9d07
	.string	"assemble_static_space"
	.long	0x9d89
	.string	"assemble_trampoline_template"
	.long	0x9e01
	.string	"integer_asm_op"
	.long	0x9e5e
	.string	"assemble_integer_with_op"
	.long	0x9ea9
	.string	"default_assemble_integer"
	.long	0x9f16
	.string	"assemble_integer"
	.long	0x9f8d
	.string	"assemble_real"
	.long	0xa6e1
	.string	"defer_addressed_constants"
	.long	0xa70d
	.string	"output_deferred_addressed_constants"
	.long	0xa856
	.string	"output_constant_def"
	.long	0xaa06
	.string	"init_varasm_status"
	.long	0xab3a
	.string	"simplify_subtraction"
	.long	0xacff
	.string	"mem_for_const_double"
	.long	0xad5b
	.string	"force_const_mem"
	.long	0xae7c
	.string	"get_pool_constant"
	.long	0xaeb8
	.string	"get_pool_constant_mark"
	.long	0xaf1b
	.string	"get_pool_constant_for_function"
	.long	0xaf71
	.string	"get_pool_mode"
	.long	0xafa9
	.string	"get_pool_mode_for_function"
	.long	0xaffb
	.string	"get_pool_offset"
	.long	0xb035
	.string	"get_pool_size"
	.long	0xb059
	.string	"output_constant_pool"
	.long	0xb367
	.string	"initializer_constant_valid_p"
	.long	0xb4ea
	.string	"output_constant"
	.long	0xb8fe
	.string	"merge_weak"
	.long	0xb95e
	.string	"declare_weak"
	.long	0xb991
	.string	"weak_finish"
	.long	0xba16
	.string	"assemble_alias"
	.long	0xba6c
	.string	"default_assemble_visibility"
	.long	0xbb48
	.string	"supports_one_only"
	.long	0xbb70
	.string	"make_decl_one_only"
	.long	0xbbb9
	.string	"init_varasm_once"
	.long	0xbbdc
	.string	"decl_tls_model"
	.long	0xbc59
	.string	"decl_visibility"
	.long	0xbcd2
	.string	"default_section_type_flags"
	.long	0xbd35
	.string	"default_section_type_flags_1"
	.long	0xbdb8
	.string	"default_no_named_section"
	.long	0xbe16
	.string	"default_elf_asm_named_section"
	.long	0xbeae
	.string	"default_coff_asm_named_section"
	.long	0xbf1e
	.string	"default_pe_asm_named_section"
	.long	0xbf70
	.string	"assemble_vtable_entry"
	.long	0xbfbb
	.string	"assemble_vtable_inherit"
	.long	0xc00d
	.string	"default_select_section"
	.long	0xc23c
	.string	"decl_readonly_section"
	.long	0xc28b
	.string	"decl_readonly_section_1"
	.long	0xc2eb
	.string	"default_elf_select_section"
	.long	0xc34a
	.string	"default_elf_select_section_1"
	.long	0xc3ca
	.string	"default_unique_section"
	.long	0xc416
	.string	"default_unique_section_1"
	.long	0xc4e7
	.string	"default_select_rtx_section"
	.long	0xc544
	.string	"default_elf_select_rtx_section"
	.long	0xc5a5
	.string	"default_strip_name_encoding"
	.long	0xc5eb
	.string	"default_binds_local_p"
	.long	0xc62b
	.string	"default_binds_local_p_1"
	.long	0xc68f
	.string	"default_globalize_label"
	.long	0xc6df
	.string	"gt_ggc_mx_deferred_string"
	.long	0xc72e
	.string	"gt_ggc_mx_constant_descriptor_tree"
	.long	0xc786
	.string	"gt_ggc_mx_pool_constant"
	.long	0xc7d3
	.string	"gt_ggc_mx_constant_descriptor_rtx"
	.long	0xc85c
	.string	"gt_ggc_mx_varasm_status"
	.long	0xc8db
	.string	"gt_ggc_m_P15deferred_string4htab"
	.long	0xd093
	.string	"first_global_object_name"
	.long	0xd0ba
	.string	"weak_global_object_name"
	.long	0xd0fb
	.string	"weak_decls"
	.long	0xd16e
	.string	"const_labelno"
	.long	0xd18a
	.string	"var_labelno"
	.long	0xd1a4
	.string	"size_directive_output"
	.long	0xd1c8
	.string	"last_assemble_variable_decl"
	.long	0xd21d
	.string	"gt_ggc_r_gt_varasm_h"
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
.LASF63:
	.string	"flagchars"
.LASF32:
	.string	"name"
.LASF16:
	.string	"lang_flag_0"
.LASF17:
	.string	"lang_flag_1"
.LASF18:
	.string	"lang_flag_2"
.LASF22:
	.string	"lang_flag_6"
.LASF44:
	.string	"label"
.LASF2:
	.string	"string"
.LASF9:
	.string	"mem_attrs"
.LASF62:
	.string	"shlib"
.LASF43:
	.string	"diagnostic_context"
.LASF1:
	.string	"common"
.LASF61:
	.string	"fieldsize"
.LASF33:
	.string	"lang_specific"
.LASF39:
	.string	"sequence_rtl_expr"
.LASF11:
	.string	"size"
.LASF59:
	.string	"addr"
.LASF8:
	.string	"min_align"
.LASF38:
	.string	"sequence_stack"
.LASF36:
	.string	"function_frequency"
.LASF52:
	.string	"modesize"
.LASF19:
	.string	"lang_flag_3"
.LASF34:
	.string	"function"
.LASF37:
	.string	"next"
.LASF5:
	.string	"unsigned int"
.LASF27:
	.string	"abstract_origin"
.LASF7:
	.string	"mode_class"
.LASF12:
	.string	"align"
.LASF48:
	.string	"in_section"
.LASF53:
	.string	"top_level"
.LASF30:
	.string	"pointer_depth"
.LASF56:
	.string	"fnname"
.LASF13:
	.string	"index"
.LASF60:
	.string	"pool"
.LASF31:
	.string	"user_align"
.LASF41:
	.string	"lang_hooks"
.LASF28:
	.string	"size_unit"
.LASF42:
	.string	"attribute_table"
.LASF45:
	.string	"named_section"
.LASF4:
	.string	"type"
.LASF57:
	.string	"thissize"
.LASF25:
	.string	"value"
.LASF46:
	.string	"output_buffer"
.LASF35:
	.string	"args_size"
.LASF58:
	.string	"aligned_p"
.LASF20:
	.string	"lang_flag_4"
.LASF21:
	.string	"lang_flag_5"
.LASF23:
	.string	"lang_flag_7"
.LASF26:
	.string	"abstract_flag"
.LASF47:
	.string	"labelno"
.LASF54:
	.string	"symbol"
.LASF24:
	.string	"ht_identifier"
.LASF51:
	.string	"reloc"
.LASF10:
	.string	"offset"
.LASF50:
	.string	"__FUNCTION__"
.LASF15:
	.string	"built_in_class"
.LASF14:
	.string	"flags"
.LASF40:
	.string	"inner"
.LASF49:
	.string	"section"
.LASF55:
	.string	"priority"
.LASF0:
	.string	"mode"
.LASF6:
	.string	"_IO_FILE"
.LASF29:
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
