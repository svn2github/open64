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
	.file 1 "../../../kgccfe/gnu/varasm.c"
	.loc 1 230 0
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
	.loc 1 230 0
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
	.loc 1 230 0
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
	.loc 1 230 0
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
	.loc 1 237 0
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
	.loc 1 238 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$1, %eax
	je	.L16
	.loc 1 240 0
	movl	$1, in_section@GOTOFF(%ebx)
	.loc 1 242 0
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
	.loc 1 247 0
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
	.loc 1 253 0
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
	.loc 1 254 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$2, %eax
	je	.L22
	.loc 1 256 0
	movl	$2, in_section@GOTOFF(%ebx)
	.loc 1 257 0
	movl	flag_shared_data@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L20
	.loc 1 262 0
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
	.loc 1 266 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L22:
	.loc 1 268 0
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
	.loc 1 275 0
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
	.loc 1 276 0
	movl	$0, in_section@GOTOFF(%ebx)
	.loc 1 277 0
	call	data_section@PLT
	.loc 1 278 0
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
	.loc 1 285 0
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
	.loc 1 290 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$5, %eax
	je	.L28
	.loc 1 292 0
	movl	$5, in_section@GOTOFF(%ebx)
	.loc 1 293 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 294 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L28:
	.loc 1 300 0
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
	.loc 1 306 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 307 0
	movl	in_section@GOTOFF(%ecx), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 308 0
	popl	%ebp
	ret
.LFE21:
	.size	in_text_section, .-in_text_section
.globl in_data_section
	.type	in_data_section, @function
in_data_section:
.LFB22:
	.loc 1 314 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 315 0
	movl	in_section@GOTOFF(%ecx), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 316 0
	popl	%ebp
	ret
.LFE22:
	.size	in_data_section, .-in_data_section
	.type	in_named_entry_eq, @function
in_named_entry_eq:
.LFB23:
	.loc 1 324 0
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
	.loc 1 325 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 326 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 328 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 329 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	in_named_entry_eq, .-in_named_entry_eq
	.type	in_named_entry_hash, @function
in_named_entry_hash:
.LFB24:
	.loc 1 334 0
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
	.loc 1 335 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 336 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	htab_hash_string@PLT
	.loc 1 337 0
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
	.loc 1 347 0
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
	.loc 1 350 0
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
	.loc 1 354 0
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
	.loc 1 355 0
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
	.loc 1 364 0
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
	.loc 1 367 0
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
	.loc 1 370 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L43
	.loc 1 372 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movb	$1, 8(%eax)
	.loc 1 373 0
	movl	$1, -24(%ebp)
	jmp	.L45
.L43:
	.loc 1 377 0
	movl	$0, -24(%ebp)
.L45:
	movl	-24(%ebp), %eax
	.loc 1 379 0
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
	.loc 1 389 0
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
	.loc 1 392 0
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
	.loc 1 395 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 397 0
	cmpl	$0, -8(%ebp)
	jne	.L48
	.loc 1 399 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 400 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 401 0
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 402 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 403 0
	movl	-8(%ebp), %eax
	movb	$0, 8(%eax)
	jmp	.L50
.L48:
	.loc 1 405 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L50
	.loc 1 406 0
	movl	$0, -24(%ebp)
	jmp	.L52
.L50:
	.loc 1 408 0
	movl	$1, -24(%ebp)
.L52:
	movl	-24(%ebp), %eax
	.loc 1 409 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	set_named_section_flags, .-set_named_section_flags
	.section	.rodata
	.type	__FUNCTION__.15532, @object
	.size	__FUNCTION__.15532, 20
__FUNCTION__.15532:
	.string	"named_section_flags"
.LC6:
	.string	"../../../kgccfe/gnu/varasm.c"
	.text
.globl named_section_flags
	.type	named_section_flags, @function
named_section_flags:
.LFB28:
	.loc 1 417 0
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
	.loc 1 418 0
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
	.loc 1 420 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_named_section_flags@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L58
	.loc 1 421 0
	leal	__FUNCTION__.15532@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$421, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L58:
	.loc 1 423 0
	movl	targetm@GOT(%ebx), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 425 0
	movl	12(%ebp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L60
	.loc 1 426 0
	movl	$0, in_section@GOTOFF(%ebx)
	jmp	.L62
.L60:
	.loc 1 429 0
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, in_named_name@GOTOFF(%ebx)
	.loc 1 430 0
	movl	$3, in_section@GOTOFF(%ebx)
.L62:
	.loc 1 433 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	named_section_flags, .-named_section_flags
	.section	.rodata
	.type	__FUNCTION__.15555, @object
	.size	__FUNCTION__.15555, 14
__FUNCTION__.15555:
	.string	"named_section"
	.align 4
.LC7:
	.string	"%s causes a section type conflict"
	.text
.globl named_section
	.type	named_section, @function
named_section:
.LFB29:
	.loc 1 445 0
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
	.loc 1 448 0
	cmpl	$0, 8(%ebp)
	je	.L64
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L64
	.loc 1 449 0
	leal	__FUNCTION__.15555@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$449, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L64:
	.loc 1 450 0
	cmpl	$0, 12(%ebp)
	jne	.L67
	.loc 1 451 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%ebp)
.L67:
	.loc 1 453 0
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
	.loc 1 460 0
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
	.loc 1 462 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_named_section_flags@PLT
	movl	%eax, -8(%ebp)
	.loc 1 463 0
	movl	-8(%ebp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	jne	.L69
	.loc 1 464 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L69:
	.loc 1 467 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 468 0
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
	.loc 1 477 0
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
	.loc 1 478 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
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
	.loc 1 482 0
	movl	targetm@GOT(%ebx), %eax
	movl	92(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L80:
	.loc 1 483 0
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
	.loc 1 491 0
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
	.loc 1 492 0
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$4, %eax
	je	.L84
	.loc 1 499 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 501 0
	movl	$4, in_section@GOTOFF(%ebx)
.L84:
	.loc 1 503 0
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
	.loc 1 546 0
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
	.loc 1 547 0
	call	bss_section@PLT
	.loc 1 548 0
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
	.loc 1 550 0
	movl	last_assemble_variable_decl@GOT(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.LBB2:
	.loc 1 551 0
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
	.loc 1 556 0
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
	.loc 1 557 0
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
	.loc 1 572 0
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
	.loc 1 573 0
	cmpl	$0, 8(%ebp)
	je	.L94
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L94
	.loc 1 575 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section@PLT
	.loc 1 573 0
	jmp	.L98
.L94:
	.loc 1 577 0
	call	text_section@PLT
.L98:
	.loc 1 578 0
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
	.loc 1 587 0
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
	.loc 1 588 0
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
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L102
	.loc 1 589 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section@PLT
	.loc 1 588 0
	jmp	.L105
.L102:
	.loc 1 591 0
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
	.loc 1 592 0
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
	.loc 1 601 0
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
	.loc 1 601 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 603 0
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
	.loc 1 615 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -72(%ebp)
	.loc 1 616 0
	movl	-72(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -68(%ebp)
	.loc 1 617 0
	cmpl	$7, -68(%ebp)
	jbe	.L107
	cmpl	$256, -68(%ebp)
	ja	.L107
	movl	-68(%ebp), %eax
	subl	$1, %eax
	andl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	.L107
	.loc 1 620 0
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
	.loc 1 621 0
	movl	-68(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
.L118:
	.loc 1 623 0
	movl	-76(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 624 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 625 0
	movl	-72(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 628 0
	movl	$0, -60(%ebp)
	jmp	.L121
.L122:
	.loc 1 630 0
	movl	$0, -56(%ebp)
	jmp	.L123
.L124:
	.loc 1 631 0
	movl	-56(%ebp), %eax
	addl	-60(%ebp), %eax
	addl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L125
	.loc 1 630 0
	addl	$1, -56(%ebp)
.L123:
	movl	-56(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jl	.L124
.L125:
	.loc 1 633 0
	movl	-56(%ebp), %eax
	cmpl	-48(%ebp), %eax
	je	.L127
	.loc 1 628 0
	movl	-48(%ebp), %eax
	addl	%eax, -60(%ebp)
.L121:
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L122
.L127:
	.loc 1 636 0
	movl	-48(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-60(%ebp), %eax
	jne	.L107
	.loc 1 638 0
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
	.loc 1 640 0
	movl	-68(%ebp), %eax
	shrl	$3, %eax
	orl	20(%ebp), %eax
	orl	$98304, %eax
	movl	%eax, 20(%ebp)
	.loc 1 641 0
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
	.loc 1 652 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-42(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 653 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 657 0
	jmp	.L135
.L130:
	.loc 1 660 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-42(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 661 0
	jmp	.L135
.L107:
.LBE4:
	.loc 1 666 0
	call	readonly_data_section@PLT
.L135:
	.loc 1 667 0
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
	.loc 1 676 0
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
	.loc 1 676 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 678 0
	movl	8(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	.loc 1 680 0
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
	.loc 1 690 0
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
	.loc 1 691 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$3, %edx, %eax
	shrl	$3, %edx
	orl	20(%ebp), %eax
	orb	$128, %ah
	movl	%eax, 20(%ebp)
	.loc 1 692 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 693 0
	jmp	.L150
.L138:
.LBE5:
	.loc 1 696 0
	call	readonly_data_section@PLT
.L150:
	.loc 1 697 0
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
	.loc 1 704 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	.loc 1 709 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	je	.L153
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L155
.L153:
	.loc 1 710 0
	addl	$1, 8(%ebp)
.L155:
	.loc 1 711 0
	movl	8(%ebp), %eax
	.loc 1 712 0
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
	.type	table.15785, @object
	.size	table.15785, 536
table.15785:
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
	.loc 1 725 0
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
	.loc 1 726 0
	cmpl	$0, 8(%ebp)
	je	.L158
.LBB6:
	.loc 1 731 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_reg_name
	movl	%eax, 8(%ebp)
	.loc 1 734 0
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
	.loc 1 735 0
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
	.loc 1 734 0
	subl	$1, -12(%ebp)
.L160:
	cmpl	$0, -12(%ebp)
	jns	.L161
.L162:
	.loc 1 737 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L164
	cmpl	$0, -12(%ebp)
	jns	.L164
	.loc 1 739 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -12(%ebp)
	.loc 1 740 0
	cmpl	$175, -12(%ebp)
	jg	.L167
	cmpl	$0, -12(%ebp)
	js	.L167
	.loc 1 741 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L170
.L167:
	.loc 1 743 0
	movl	$-2, -28(%ebp)
	jmp	.L170
.L164:
	.loc 1 746 0
	movl	$0, -12(%ebp)
	jmp	.L171
.L172:
	.loc 1 747 0
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
	.loc 1 749 0
	movl	-12(%ebp), %edi
	movl	%edi, -28(%ebp)
	jmp	.L170
.L173:
	.loc 1 746 0
	addl	$1, -12(%ebp)
.L171:
	cmpl	$175, -12(%ebp)
	jle	.L172
.LBB7:
	.loc 1 756 0
	movl	$0, -12(%ebp)
	jmp	.L177
.L178:
	.loc 1 757 0
	movl	-12(%ebp), %eax
	movl	table.15785@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L179
	.loc 1 758 0
	movl	-12(%ebp), %eax
	movl	4+table.15785@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -28(%ebp)
	jmp	.L170
.L179:
	.loc 1 756 0
	addl	$1, -12(%ebp)
.L177:
	cmpl	$66, -12(%ebp)
	jle	.L178
.LBE7:
	.loc 1 762 0
	leal	.LC87@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L182
	.loc 1 763 0
	movl	$-4, -28(%ebp)
	jmp	.L170
.L182:
	.loc 1 765 0
	leal	.LC88@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L184
	.loc 1 766 0
	movl	$-3, -28(%ebp)
	jmp	.L170
.L184:
	.loc 1 768 0
	movl	$-2, -28(%ebp)
	jmp	.L170
.L158:
.LBE6:
	.loc 1 771 0
	movl	$-1, -28(%ebp)
.L170:
	movl	-28(%ebp), %eax
	.loc 1 772 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	decode_reg_name, .-decode_reg_name
	.section	.rodata
	.type	__FUNCTION__.15845, @object
	.size	__FUNCTION__.15845, 14
__FUNCTION__.15845:
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
	.loc 1 790 0
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
	.loc 1 790 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 791 0
	movl	-60(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 792 0
	movl	$0, -40(%ebp)
	.loc 1 793 0
	movl	$0, -36(%ebp)
	.loc 1 799 0
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
	.loc 1 806 0
	leal	__FUNCTION__.15845@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$806, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L191:
	.loc 1 808 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L196
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L198
.L196:
	.loc 1 810 0
	leal	__FUNCTION__.15845@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$810, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L198:
	.loc 1 814 0
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L199
	.loc 1 817 0
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L201
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L203
.L201:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -96(%ebp)
.L203:
	movl	-96(%ebp), %edx
	movzbl	2(%edx), %eax
	movl	-60(%ebp), %edx
	movzbl	32(%edx), %edx
	cmpb	%dl, %al
	je	.L204
	.loc 1 818 0
	movl	-60(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L206
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L208
.L206:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
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
	movl	%edx, 88(%eax)
.L204:
	.loc 1 829 0
	movl	targetm@GOT(%ebx), %eax
	movl	236(%eax), %edx
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 830 0
	jmp	.L272
.L199:
	.loc 1 833 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 835 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_reg_name@PLT
	movl	%eax, -32(%ebp)
	.loc 1 836 0
	cmpl	$-2, -32(%ebp)
	jne	.L210
.LBB8:
	.loc 1 840 0
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
	.loc 1 841 0
	movl	-24(%ebp), %eax
	movb	$42, (%eax)
	.loc 1 842 0
	movl	-24(%ebp), %edx
	addl	$1, %edx
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 1 843 0
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
.L210:
.LBE8:
	.loc 1 846 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L212
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L212
	.loc 1 849 0
	cmpl	$-1, -32(%ebp)
	jne	.L215
	.loc 1 850 0
	leal	.LC89@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L212
.L215:
	.loc 1 851 0
	cmpl	$0, -32(%ebp)
	jns	.L217
	.loc 1 852 0
	leal	.LC90@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L212
.L217:
	.loc 1 853 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$104, %al
	jne	.L219
	.loc 1 854 0
	leal	.LC91@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L212
.L219:
	.loc 1 856 0
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
	jne	.L221
	.loc 1 857 0
	leal	.LC92@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L212
.L221:
.LBB9:
	.loc 1 864 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L223
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L223
	.loc 1 866 0
	movl	-60(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 867 0
	leal	.LC93@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L223:
	.loc 1 869 0
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L226
	.loc 1 870 0
	leal	.LC94@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L226:
	.loc 1 877 0
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
	movl	%edx, 88(%eax)
	.loc 1 878 0
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L228
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L230
.L228:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -80(%ebp)
.L230:
	movl	-32(%ebp), %eax
	movl	-80(%ebp), %edi
	movl	%eax, 12(%edi)
	.loc 1 879 0
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L231
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L233
.L231:
	movl	$0, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-60(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -76(%ebp)
.L233:
	movl	-76(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$8, %eax
	movl	-76(%ebp), %edi
	movb	%al, 3(%edi)
	.loc 1 881 0
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L272
	.loc 1 886 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Record_Asmspec_For_ST@PLT
	.loc 1 891 0
	movl	-60(%ebp), %eax
	movzbl	32(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 892 0
	jmp	.L236
.L237:
	.loc 1 893 0
	subl	$1, -20(%ebp)
	movl	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	globalize_reg@PLT
.L236:
	.loc 1 892 0
	cmpl	$0, -20(%ebp)
	jg	.L237
	.loc 1 897 0
	jmp	.L272
.L212:
.LBE9:
	.loc 1 904 0
	cmpl	$0, -32(%ebp)
	jns	.L238
	cmpl	$-3, -32(%ebp)
	jne	.L240
.L238:
	.loc 1 905 0
	leal	.LC95@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
.L240:
	.loc 1 910 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L241
	movl	-60(%ebp), %eax
	movl	80(%eax), %eax
	testl	%eax, %eax
	je	.L241
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L241
	movl	-60(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L241
	.loc 1 914 0
	movl	-60(%ebp), %eax
	movzbl	34(%eax), %edx
	andl	$-65, %edx
	movb	%dl, 34(%eax)
.L241:
	.loc 1 917 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L246
	movl	-60(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L246
	.loc 1 918 0
	movl	-60(%ebp), %eax
	movzbl	34(%eax), %edx
	andl	$-65, %edx
	movb	%dl, 34(%eax)
.L246:
	.loc 1 924 0
	cmpl	$0, -44(%ebp)
	jne	.L249
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L249
	movl	-60(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L252
	movl	-60(%ebp), %eax
	movl	56(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L249
.L252:
	cmpl	$0, -64(%ebp)
	jne	.L249
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L249
.LBB10:
	.loc 1 931 0
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
	.loc 1 932 0
	movl	var_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	var_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 933 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
.L249:
.LBE10:
	.loc 1 936 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L256
	.loc 1 938 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 939 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
.L256:
	.loc 1 944 0
	movl	flag_volatile_global@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L258
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L258
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L261
.L258:
	movl	flag_volatile_static@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L262
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L262
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L261
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L262
.L261:
	.loc 1 948 0
	movl	-60(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$1, %edx
	movb	%dl, 9(%eax)
.L262:
	.loc 1 950 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L266
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L266
	movl	$5, -68(%ebp)
	jmp	.L269
.L266:
	movl	$4, -68(%ebp)
.L269:
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
	.loc 1 951 0
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
	.loc 1 952 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L270
	.loc 1 953 0
	movl	$1, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
.L270:
	.loc 1 954 0
	movl	-60(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 88(%edx)
	.loc 1 960 0
	movl	targetm@GOT(%ebx), %eax
	movl	236(%eax), %edx
	movl	$1, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L272:
	.loc 1 961 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L273
	call	__stack_chk_fail_local
.L273:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	make_decl_rtl, .-make_decl_rtl
	.section	.rodata
	.type	__FUNCTION__.16064, @object
	.size	__FUNCTION__.16064, 18
__FUNCTION__.16064:
	.string	"make_var_volatile"
	.text
.globl make_var_volatile
	.type	make_var_volatile, @function
make_var_volatile:
.LFB40:
	.loc 1 969 0
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
	.loc 1 970 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L275
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L277
.L275:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
.L277:
	movl	-12(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	je	.L278
	.loc 1 971 0
	leal	__FUNCTION__.16064@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$971, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L278:
	.loc 1 973 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L280
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L282
.L280:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
.L282:
	movl	-8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$8, %eax
	movl	-8(%ebp), %edx
	movb	%al, 3(%edx)
	.loc 1 974 0
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
	.loc 1 981 0
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
	.loc 1 985 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 987 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L285
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L287
.L285:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L288
	movl	$64, -28(%ebp)
	jmp	.L290
.L288:
	movl	$32, -28(%ebp)
.L290:
	movl	-28(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jle	.L287
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L292
	movl	$64, -24(%ebp)
	jmp	.L294
.L292:
	movl	$32, -24(%ebp)
.L294:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L295
.L287:
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
.L295:
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 990 0
	cmpl	$8, -8(%ebp)
	jle	.L298
	.loc 1 992 0
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
.L298:
	.loc 1 994 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	assemble_constant_align, .-assemble_constant_align
.globl assemble_asm
	.type	assemble_asm, @function
assemble_asm:
.LFB42:
	.loc 1 1002 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$4, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1007 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L300
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L300:
	.loc 1 1010 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	WFE_Assemble_Asm@PLT
	.loc 1 1014 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	assemble_asm, .-assemble_asm
	.section	.rodata
.LC97:
	.string	"\t.stabs\t"
.LC98:
	.string	" #.stabs\t"
.LC99:
	.string	"%s\"___DTOR_LIST__\",22,0,0,"
	.text
.globl default_stabs_asm_out_destructor
	.type	default_stabs_asm_out_destructor, @function
default_stabs_asm_out_destructor:
.LFB43:
	.loc 1 1024 0
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
	.loc 1 1028 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L304
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L306
.L304:
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L306:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC99@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1029 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 1030 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 1031 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	default_stabs_asm_out_destructor, .-default_stabs_asm_out_destructor
	.section	.rodata
.LC100:
	.string	".dtors"
.LC101:
	.string	".dtors.%.5u"
	.text
.globl default_named_section_asm_out_destructor
	.type	default_named_section_asm_out_destructor, @function
default_named_section_asm_out_destructor:
.LFB44:
	.loc 1 1037 0
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
	.loc 1 1037 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1038 0
	leal	.LC100@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1042 0
	cmpl	$65535, 12(%ebp)
	je	.L309
	.loc 1 1044 0
	movl	$65535, %eax
	subl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC101@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1049 0
	leal	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L309:
	.loc 1 1052 0
	movl	$512, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 1053 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L311
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L311
	movl	$64, -52(%ebp)
	jmp	.L314
.L311:
	movl	$32, -52(%ebp)
.L314:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
	.loc 1 1054 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L315
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L315
	movl	$64, -48(%ebp)
	jmp	.L318
.L315:
	movl	$32, -48(%ebp)
.L318:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L319
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L319
	movl	$8, -44(%ebp)
	jmp	.L322
.L319:
	movl	$4, -44(%ebp)
.L322:
	movl	$1, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 1055 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L324
	call	__stack_chk_fail_local
.L324:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	default_named_section_asm_out_destructor, .-default_named_section_asm_out_destructor
	.section	.rodata
.LC102:
	.string	"%s\"___CTOR_LIST__\",22,0,0,"
	.text
.globl default_stabs_asm_out_constructor
	.type	default_stabs_asm_out_constructor, @function
default_stabs_asm_out_constructor:
.LFB45:
	.loc 1 1086 0
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
	.loc 1 1090 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L326
	leal	.LC97@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L328
.L326:
	leal	.LC98@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L328:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC102@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1091 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 1092 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 1093 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	default_stabs_asm_out_constructor, .-default_stabs_asm_out_constructor
	.section	.rodata
.LC103:
	.string	".ctors"
.LC104:
	.string	".ctors.%.5u"
	.text
.globl default_named_section_asm_out_constructor
	.type	default_named_section_asm_out_constructor, @function
default_named_section_asm_out_constructor:
.LFB46:
	.loc 1 1099 0
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
	.loc 1 1099 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1100 0
	leal	.LC103@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1104 0
	cmpl	$65535, 12(%ebp)
	je	.L331
	.loc 1 1106 0
	movl	$65535, %eax
	subl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC104@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1111 0
	leal	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L331:
	.loc 1 1114 0
	movl	$512, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_flags@PLT
	.loc 1 1115 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L333
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L333
	movl	$64, -52(%ebp)
	jmp	.L336
.L333:
	movl	$32, -52(%ebp)
.L336:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
	.loc 1 1116 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L337
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L337
	movl	$64, -48(%ebp)
	jmp	.L340
.L337:
	movl	$32, -48(%ebp)
.L340:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L341
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L341
	movl	$8, -44(%ebp)
	jmp	.L344
.L341:
	movl	$4, -44(%ebp)
.L344:
	movl	$1, 12(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer@PLT
	.loc 1 1117 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L346
	call	__stack_chk_fail_local
.L346:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	default_named_section_asm_out_constructor, .-default_named_section_asm_out_constructor
	.section	.rodata
.LC105:
	.string	"\t.ent\t"
.LC106:
	.string	"function"
	.text
.globl assemble_start_function
	.type	assemble_start_function, @function
assemble_start_function:
.LFB47:
	.loc 1 1161 0
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
	.loc 1 1166 0
	call	app_disable@PLT
	.loc 1 1168 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L348
	.loc 1 1169 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_pool@PLT
.L348:
	.loc 1 1171 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_unique_section@PLT
	.loc 1 1172 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_section@PLT
	.loc 1 1175 0
	movl	$4, (%esp)
	movl	$0, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1176 0
	movl	force_align_functions_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jge	.L350
	.loc 1 1177 0
	movl	force_align_functions_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L350:
	.loc 1 1178 0
	cmpl	$0, -16(%ebp)
	jle	.L352
	.loc 1 1180 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L352:
	.loc 1 1186 0
	movl	align_functions_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jle	.L354
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	300(%eax), %eax
	testl	%eax, %eax
	je	.L354
	.loc 1 1193 0
	movl	align_functions_log@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L354:
	.loc 1 1201 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 1205 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L357
	.loc 1 1207 0
	movl	first_global_object_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L359
.LBB11:
	.loc 1 1212 0
	movl	targetm@GOT(%ebx), %eax
	movl	240(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 1213 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1215 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L361
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L361
	.loc 1 1216 0
	movl	first_global_object_name@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1215 0
	jmp	.L359
.L361:
	.loc 1 1218 0
	movl	weak_global_object_name@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L359:
.LBE11:
	.loc 1 1221 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	globalize_decl
	.loc 1 1223 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_assemble_visibility
.L357:
	.loc 1 1228 0
	movl	flag_inhibit_size_directive@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L364
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC105@GOTOFF(%ebx), %eax
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
.L364:
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
	leal	.LC106@GOTOFF(%ebx), %eax
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
	.loc 1 1233 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	assemble_start_function, .-assemble_start_function
	.section	.rodata
.LC107:
	.string	"\t.end\t"
	.text
.globl assemble_end_function
	.type	assemble_end_function, @function
assemble_end_function:
.LFB48:
	.loc 1 1242 0
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
	.loc 1 1244 0
	movl	flag_inhibit_size_directive@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L368
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC107@GOTOFF(%ebx), %eax
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
.L368:
	.loc 1 1246 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L370
	.loc 1 1248 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_pool@PLT
	.loc 1 1249 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_section@PLT
.L370:
	.loc 1 1253 0
	call	output_after_function_constants
	.loc 1 1254 0
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
	.loc 1 1261 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%ebx
.LCFI136:
	subl	$4, %esp
.LCFI137:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1263 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Add_Aggregate_Init_Padding@PLT
	.loc 1 1284 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	assemble_zeros, .-assemble_zeros
.globl assemble_align
	.type	assemble_align, @function
assemble_align:
.LFB50:
	.loc 1 1291 0
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
	.loc 1 1292 0
	cmpl	$8, 8(%ebp)
	jle	.L378
	.loc 1 1294 0
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
.L378:
	.loc 1 1296 0
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
	.loc 1 1304 0
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
	.loc 1 1306 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Add_Aggregate_Init_String@PLT
	.loc 1 1326 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	assemble_string, .-assemble_string
	.section	.rodata
	.type	__FUNCTION__.16332, @object
	.size	__FUNCTION__.16332, 23
__FUNCTION__.16332:
	.string	"asm_emit_uninitialised"
.LC108:
	.string	"\t.local\t"
.LC109:
	.string	"\t.comm\t"
.LC110:
	.string	",%u,%u\n"
	.text
	.type	asm_emit_uninitialised, @function
asm_emit_uninitialised:
.LFB52:
	.loc 1 1373 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%edi
.LCFI148:
	pushl	%esi
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$76, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1380 0
	movl	$2, -20(%ebp)
	.loc 1 1384 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L382
	.loc 1 1386 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L384
	.loc 1 1388 0
	movl	$1, -20(%ebp)
	jmp	.L382
.L384:
	.loc 1 1393 0
	movl	$0, -20(%ebp)
.L382:
	.loc 1 1396 0
	cmpl	$1, -20(%ebp)
	jne	.L386
	.loc 1 1397 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	globalize_decl
.L386:
	.loc 1 1398 0
	movl	flag_data_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_unique_section@PLT
	.loc 1 1424 0
	movl	-20(%ebp), %eax
	movl	%eax, -56(%ebp)
	cmpl	$1, -56(%ebp)
	je	.L392
	cmpl	$1, -56(%ebp)
	jb	.L391
	cmpl	$2, -56(%ebp)
	je	.L393
	jmp	.L390
.L392:
	.loc 1 1428 0
	movl	targetm@GOT(%ebx), %eax
	movl	48(%eax), %ecx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	cmpl	$0, 16(%ebp)
	jle	.L394
	movl	mips_section_threshold@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 16(%ebp)
	jg	.L394
	call	sbss_section@PLT
	jmp	.L397
.L394:
	call	bss_section@PLT
.L397:
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
.LBB12:
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
	jne	.L398
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L398
	movl	size_directive_output@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.LBB13:
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
.L398:
.LBE13:
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
.LBE12:
	cmpl	$0, 16(%ebp)
	je	.L401
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L403
.L401:
	movl	$1, -52(%ebp)
.L403:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1429 0
	jmp	.L404
.L391:
	.loc 1 1432 0
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
	.loc 1 1433 0
	jmp	.L404
.L393:
	.loc 1 1435 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
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
	leal	.LC109@GOTOFF(%ebx), %eax
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
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 1436 0
	jmp	.L404
.L390:
	.loc 1 1438 0
	leal	__FUNCTION__.16332@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1438, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L404:
	.loc 1 1441 0
	movl	$1, %eax
	.loc 1 1442 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	asm_emit_uninitialised, .-asm_emit_uninitialised
.globl assemble_variable
	.type	assemble_variable, @function
assemble_variable:
.LFB53:
	.loc 1 1460 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$4, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1462 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Start_Aggregate_Init@PLT
	.loc 1 1693 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	assemble_variable, .-assemble_variable
	.type	contains_pointers_p, @function
contains_pointers_p:
.LFB54:
	.loc 1 1700 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%ebx
.LCFI158:
	subl	$28, %esp
.LCFI159:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1701 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$14, %eax
	movl	%eax, -28(%ebp)
	cmpl	$9, -28(%ebp)
	ja	.L409
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L413@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L413:
	.long	.L410@GOTOFF
	.long	.L410@GOTOFF
	.long	.L410@GOTOFF
	.long	.L409@GOTOFF
	.long	.L409@GOTOFF
	.long	.L411@GOTOFF
	.long	.L409@GOTOFF
	.long	.L412@GOTOFF
	.long	.L412@GOTOFF
	.long	.L412@GOTOFF
	.text
.L410:
	.loc 1 1708 0
	movl	$1, -24(%ebp)
	jmp	.L414
.L412:
.LBB14:
	.loc 1 1716 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L415
.L416:
	.loc 1 1717 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$38, %al
	jne	.L417
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_pointers_p
	testl	%eax, %eax
	je	.L417
	.loc 1 1719 0
	movl	$1, -24(%ebp)
	jmp	.L414
.L417:
	.loc 1 1716 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L415:
	cmpl	$0, -8(%ebp)
	jne	.L416
	.loc 1 1720 0
	movl	$0, -24(%ebp)
	jmp	.L414
.L411:
.LBE14:
	.loc 1 1725 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	contains_pointers_p
	movl	%eax, -24(%ebp)
	jmp	.L414
.L409:
	.loc 1 1728 0
	movl	$0, -24(%ebp)
.L414:
	movl	-24(%ebp), %eax
	.loc 1 1730 0
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
	.loc 1 1739 0
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
	.loc 1 1750 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L433
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L433
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L433
.LBB15:
	.loc 1 1752 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L427
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L429
.L427:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L429:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1754 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L433
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L433
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L433
	.loc 1 1758 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$32, %eax
	movb	%al, 3(%edx)
	.loc 1 1759 0
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
.L433:
.LBE15:
	.loc 1 1763 0
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
	.loc 1 1770 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	.loc 1 1781 0
	popl	%ebp
	ret
.LFE56:
	.size	assemble_external_libcall, .-assemble_external_libcall
.globl assemble_label
	.type	assemble_label, @function
assemble_label:
.LFB57:
	.loc 1 1788 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%ebx
.LCFI168:
	subl	$20, %esp
.LCFI169:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1789 0
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
	.loc 1 1790 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	assemble_label, .-assemble_label
	.section	.rodata
.LC111:
	.string	"..CURRENT_FUNCTION"
.LC112:
	.string	"%U%s"
	.text
.globl assemble_name
	.type	assemble_name, @function
assemble_name:
.LFB58:
	.loc 1 1802 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%ebx
.LCFI172:
	subl	$36, %esp
.LCFI173:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1806 0
	movl	targetm@GOT(%ebx), %eax
	movl	240(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 1808 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_get_identifier@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1809 0
	cmpl	$0, -8(%ebp)
	je	.L439
	.loc 1 1810 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$4, %edx
	movb	%dl, 10(%eax)
.L439:
	.loc 1 1812 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L441
	.loc 1 1813 0
	movl	12(%ebp), %edx
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	jmp	.L449
.L441:
	.loc 1 1815 0
	leal	.LC111@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L444
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L446
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L448
.L446:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	88(%eax), %eax
	movl	%eax, -24(%ebp)
.L448:
	movl	-24(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_fprintf@PLT
	jmp	.L449
.L444:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC112@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_fprintf@PLT
.L449:
	.loc 1 1816 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	assemble_name, .-assemble_name
	.section	.rodata
.LC113:
	.string	"LF"
.LC114:
	.string	"$"
.LC115:
	.string	"*%s%s%ld"
	.text
.globl assemble_static_space
	.type	assemble_static_space, @function
assemble_static_space:
.LFB59:
	.loc 1 1824 0
	pushl	%ebp
.LCFI174:
	movl	%esp, %ebp
.LCFI175:
	pushl	%ebx
.LCFI176:
	subl	$68, %esp
.LCFI177:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1824 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1834 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC113@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1835 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	const_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1836 0
	movl	$-1, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1838 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L451
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L451
	movl	$5, -44(%ebp)
	jmp	.L454
.L451:
	movl	$4, -44(%ebp)
.L454:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1845 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC108@GOTOFF(%ebx), %eax
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
	leal	.LC109@GOTOFF(%ebx), %eax
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
	je	.L455
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L457
.L455:
	movl	$16, -40(%ebp)
	jmp	.L458
.L457:
	movl	$8, -40(%ebp)
.L458:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC110@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1859 0
	movl	-24(%ebp), %eax
	.loc 1 1860 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L460
	call	__stack_chk_fail_local
.L460:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	assemble_static_space, .-assemble_static_space
	.section	.rodata
.LC116:
	.string	"LTRAMP"
.LC117:
	.string	"%s%s%d:\n"
	.align 4
.LC118:
	.string	"\t.word\t0x03e00821\t\t# move   $1,$31\n"
	.align 4
.LC119:
	.string	"\t.word\t0x04110001\t\t# bgezal $0,.+8\n"
.LC120:
	.string	"\t.word\t0x00000000\t\t# nop\n"
	.align 4
.LC121:
	.string	"\t.word\t0xdfe30014\t\t# ld     $3,20($31)\n"
	.align 4
.LC122:
	.string	"\t.word\t0xdfe2001c\t\t# ld     $2,28($31)\n"
	.align 4
.LC123:
	.string	"\t.word\t0x8fe30014\t\t# lw     $3,20($31)\n"
	.align 4
.LC124:
	.string	"\t.word\t0x8fe20018\t\t# lw     $2,24($31)\n"
	.align 4
.LC125:
	.string	"\t.word\t0x0060c821\t\t# move   $25,$3 (abicalls)\n"
	.align 4
.LC126:
	.string	"\t.word\t0x00600008\t\t# jr     $3\n"
	.align 4
.LC127:
	.string	"\t.word\t0x0020f821\t\t# move   $31,$1\n"
	.align 4
.LC128:
	.string	"\t.dword\t0x00000000\t\t# <function address>\n"
	.align 4
.LC129:
	.string	"\t.dword\t0x00000000\t\t# <static chain value>\n"
	.align 4
.LC130:
	.string	"\t.word\t0x00000000\t\t# <function address>\n"
	.align 4
.LC131:
	.string	"\t.word\t0x00000000\t\t# <static chain value>\n"
	.text
.globl assemble_trampoline_template
	.type	assemble_trampoline_template, @function
assemble_trampoline_template:
.LFB60:
	.loc 1 1869 0
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$324, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1869 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 1879 0
	call	readonly_data_section@PLT
	.loc 1 1883 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L462
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L462
	movl	$8, -296(%ebp)
	movl	$0, -292(%ebp)
	jmp	.L465
.L462:
	movl	$4, -296(%ebp)
	movl	$0, -292(%ebp)
.L465:
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -272(%ebp)
	.loc 1 1884 0
	cmpl	$0, -272(%ebp)
	jle	.L466
	.loc 1 1886 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L466:
	.loc 1 1889 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 16(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1890 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC118@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC119@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC120@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L468
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L468
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC121@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC122@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L471
.L468:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC123@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$39, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC124@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L471:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$46, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC125@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$31, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC126@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC127@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L472
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L472
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$41, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC128@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$43, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC129@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L475
.L472:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$40, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC130@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$42, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC131@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L475:
	.loc 1 1893 0
	movl	$0, 16(%esp)
	leal	.LC116@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1894 0
	movl	$-1, 4(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -276(%ebp)
	.loc 1 1895 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L476
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L476
	movl	$5, -284(%ebp)
	jmp	.L479
.L476:
	movl	$4, -284(%ebp)
.L479:
	movl	-276(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-284(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	.loc 1 1896 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L481
	call	__stack_chk_fail_local
.L481:
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
	.loc 1 1921 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	subl	$20, %esp
.LCFI184:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1924 0
	cmpl	$0, 12(%ebp)
	je	.L483
	.loc 1 1925 0
	movl	targetm@GOT(%ecx), %eax
	leal	12(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L485
.L483:
	.loc 1 1927 0
	movl	targetm@GOT(%ecx), %eax
	leal	28(%eax), %eax
	movl	%eax, -4(%ebp)
.L485:
	.loc 1 1929 0
	cmpl	$16, 8(%ebp)
	ja	.L486
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	.L492@GOTOFF(%eax,%ecx), %eax
	addl	%ecx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L492:
	.long	.L486@GOTOFF
	.long	.L487@GOTOFF
	.long	.L488@GOTOFF
	.long	.L486@GOTOFF
	.long	.L489@GOTOFF
	.long	.L486@GOTOFF
	.long	.L486@GOTOFF
	.long	.L486@GOTOFF
	.long	.L490@GOTOFF
	.long	.L486@GOTOFF
	.long	.L486@GOTOFF
	.long	.L486@GOTOFF
	.long	.L486@GOTOFF
	.long	.L486@GOTOFF
	.long	.L486@GOTOFF
	.long	.L486@GOTOFF
	.long	.L491@GOTOFF
	.text
.L487:
	.loc 1 1932 0
	movl	targetm@GOT(%ecx), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L493
.L488:
	.loc 1 1934 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L493
.L489:
	.loc 1 1936 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L493
.L490:
	.loc 1 1938 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L493
.L491:
	.loc 1 1940 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L493
.L486:
	.loc 1 1942 0
	movl	$0, -20(%ebp)
.L493:
	movl	-20(%ebp), %eax
	.loc 1 1944 0
	leave
	ret
.LFE62:
	.size	integer_asm_op, .-integer_asm_op
.globl assemble_integer_with_op
	.type	assemble_integer_with_op, @function
assemble_integer_with_op:
.LFB63:
	.loc 1 1953 0
	pushl	%ebp
.LCFI185:
	movl	%esp, %ebp
.LCFI186:
	pushl	%ebx
.LCFI187:
	subl	$20, %esp
.LCFI188:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1954 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 1955 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	.loc 1 1956 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 1957 0
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
	.loc 1 1966 0
	pushl	%ebp
.LCFI189:
	movl	%esp, %ebp
.LCFI190:
	pushl	%ebx
.LCFI191:
	subl	$36, %esp
.LCFI192:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1967 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	integer_asm_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1968 0
	cmpl	$0, -8(%ebp)
	je	.L498
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_integer_with_op@PLT
	movl	$1, -24(%ebp)
	jmp	.L500
.L498:
	movl	$0, -24(%ebp)
.L500:
	movzbl	-24(%ebp), %eax
	movzbl	%al, %eax
	.loc 1 1969 0
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
	.loc 1 1982 0
	pushl	%ebp
.LCFI193:
	movl	%esp, %ebp
.LCFI194:
	pushl	%edi
.LCFI195:
	pushl	%esi
.LCFI196:
	pushl	%ebx
.LCFI197:
	subl	$44, %esp
.LCFI198:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1985 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L503
	.loc 1 1986 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1987 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1989 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-24(%ebp), %eax
	orl	%esi, %eax
	movl	-20(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	.L505
.L503:
	.loc 1 1992 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.L505:
	.loc 1 1994 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	WFE_Add_Aggregate_Init_Integer@PLT
	.loc 1 1995 0
	movl	$1, %eax
	.loc 1 2038 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE65:
	.size	assemble_integer, .-assemble_integer
.globl assemble_real
	.type	assemble_real, @function
assemble_real:
.LFB66:
	.loc 1 2045 0
	pushl	%ebp
.LCFI199:
	movl	%esp, %ebp
.LCFI200:
	pushl	%ebx
.LCFI201:
	subl	$36, %esp
.LCFI202:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2047 0
	movl	32(%ebp), %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	call	WFE_Add_Aggregate_Init_Real@PLT
	.loc 1 2124 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	assemble_real, .-assemble_real
	.section	.rodata
	.type	__FUNCTION__.16706, @object
	.size	__FUNCTION__.16706, 18
__FUNCTION__.16706:
	.string	"decode_addr_const"
	.text
	.type	decode_addr_const, @function
decode_addr_const:
.LFB67:
	.loc 1 2141 0
	pushl	%ebp
.LCFI203:
	movl	%esp, %ebp
.LCFI204:
	pushl	%esi
.LCFI205:
	pushl	%ebx
.LCFI206:
	subl	$64, %esp
.LCFI207:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2142 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2143 0
	movl	$0, -16(%ebp)
	jmp	.L533
.L510:
.L533:
	.loc 1 2148 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L511
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	byte_position@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L511
	.loc 1 2152 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	int_byte_position@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2153 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2148 0
	jmp	.L510
.L511:
	.loc 1 2155 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$44, %al
	je	.L515
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$45, %al
	jne	.L517
.L515:
	.loc 1 2158 0
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
	.loc 1 2160 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2164 0
	jmp	.L510
.L517:
	.loc 1 2166 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -52(%ebp)
	cmpl	$21, -52(%ebp)
	ja	.L518
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-52(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -56(%ebp)
	movl	-56(%ebp), %eax
	andl	$2097175, %eax
	testl	%eax, %eax
	jne	.L519
	movl	-56(%ebp), %eax
	andl	$544, %eax
	testl	%eax, %eax
	jne	.L520
	movl	-56(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L521
	jmp	.L518
.L520:
	.loc 1 2170 0
	movl	-20(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L522
	movl	-20(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L524
.L522:
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	-20(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -36(%ebp)
.L524:
	movl	-36(%ebp), %ecx
	movl	%ecx, -12(%ebp)
	.loc 1 2171 0
	jmp	.L525
.L521:
	.loc 1 2174 0
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
	je	.L526
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L526
	movl	$5, -28(%ebp)
	jmp	.L529
.L526:
	movl	$4, -28(%ebp)
.L529:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2177 0
	jmp	.L525
.L519:
	.loc 1 2186 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_def@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2187 0
	jmp	.L525
.L518:
	.loc 1 2190 0
	leal	__FUNCTION__.16706@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2190, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L525:
	.loc 1 2193 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L530
	.loc 1 2194 0
	leal	__FUNCTION__.16706@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2194, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L530:
	.loc 1 2195 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2197 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2198 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	12(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 2199 0
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
	.loc 1 2276 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$4, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2277 0
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2278 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	const_str_htab_hash, .-const_str_htab_hash
	.type	const_str_htab_eq, @function
const_str_htab_eq:
.LFB69:
	.loc 1 2288 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	.loc 1 2289 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	.loc 1 2290 0
	popl	%ebp
	ret
.LFE69:
	.size	const_str_htab_eq, .-const_str_htab_eq
	.type	const_hash, @function
const_hash:
.LFB70:
	.loc 1 2297 0
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	subl	$24, %esp
.LCFI216:
	.loc 1 2298 0
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
	.loc 1 2299 0
	leave
	ret
.LFE70:
	.size	const_hash, .-const_hash
	.section	.rodata
	.type	__FUNCTION__.16843, @object
	.size	__FUNCTION__.16843, 13
__FUNCTION__.16843:
	.string	"const_hash_1"
	.text
	.type	const_hash_1, @function
const_hash_1:
.LFB71:
	.loc 1 2304 0
	pushl	%ebp
.LCFI217:
	movl	%esp, %ebp
.LCFI218:
	pushl	%esi
.LCFI219:
	pushl	%ebx
.LCFI220:
	subl	$80, %esp
.LCFI221:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2304 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 2308 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2313 0
	movl	-24(%ebp), %edx
	subl	$26, %edx
	movl	%edx, -72(%ebp)
	cmpl	$100, -72(%ebp)
	ja	.L541
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	.L550@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L550:
	.long	.L542@GOTOFF
	.long	.L543@GOTOFF
	.long	.L544@GOTOFF
	.long	.L541@GOTOFF
	.long	.L545@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L546@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L547@GOTOFF
	.long	.L547@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L548@GOTOFF
	.long	.L548@GOTOFF
	.long	.L548@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L549@GOTOFF
	.long	.L541@GOTOFF
	.long	.L541@GOTOFF
	.long	.L549@GOTOFF
	.text
.L542:
	.loc 1 2316 0
	movl	-60(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -40(%ebp)
	.loc 1 2317 0
	movl	$16, -32(%ebp)
	.loc 1 2318 0
	jmp	.L551
.L543:
	.loc 1 2321 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	real_hash@PLT
	movl	%eax, -68(%ebp)
	jmp	.L552
.L545:
	.loc 1 2324 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2325 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2326 0
	jmp	.L551
.L544:
	.loc 1 2329 0
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
	jmp	.L552
.L546:
	.loc 1 2333 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L553
.LBB16:
	.loc 1 2337 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2338 0
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
	.loc 1 2339 0
	movl	-20(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_set_constructor_bytes@PLT
	.loc 1 2340 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2341 0
	jmp	.L551
.L553:
.LBE16:
.LBB17:
	.loc 1 2347 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	addl	$5, %eax
	movl	%eax, -36(%ebp)
	.loc 1 2349 0
	movl	-60(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L555
.L556:
	.loc 1 2350 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L557
	.loc 1 2351 0
	movl	-36(%ebp), %eax
	imull	$603, %eax, %esi
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	const_hash_1
	leal	(%esi,%eax), %eax
	movl	%eax, -36(%ebp)
.L557:
	.loc 1 2349 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L555:
	cmpl	$0, -16(%ebp)
	jne	.L556
	.loc 1 2353 0
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L552
.L549:
.LBE17:
.LBB18:
	.loc 1 2361 0
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_addr_const
	.loc 1 2362 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L560
	.loc 1 2366 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -36(%ebp)
	.loc 1 2367 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2368 0
	movl	$0, -28(%ebp)
	jmp	.L562
.L563:
	.loc 1 2369 0
	movl	-36(%ebp), %eax
	imull	$613, %eax, %edx
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2368 0
	addl	$1, -28(%ebp)
.L562:
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L563
	jmp	.L565
.L560:
	.loc 1 2371 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L566
	.loc 1 2372 0
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
	jmp	.L565
.L566:
	.loc 1 2374 0
	leal	__FUNCTION__.16843@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2374, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L565:
.LBE18:
	.loc 1 2376 0
	movl	-36(%ebp), %edx
	movl	%edx, -68(%ebp)
	jmp	.L552
.L547:
	.loc 1 2380 0
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
	jmp	.L552
.L548:
	.loc 1 2386 0
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
	jmp	.L552
.L541:
	.loc 1 2390 0
	movl	-24(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L552
.L551:
	.loc 1 2394 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2395 0
	movl	$0, -28(%ebp)
	jmp	.L568
.L569:
	.loc 1 2396 0
	movl	-36(%ebp), %eax
	imull	$613, %eax, %edx
	movl	-28(%ebp), %eax
	addl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2395 0
	addl	$1, -28(%ebp)
.L568:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L569
	.loc 1 2398 0
	movl	-36(%ebp), %edx
	movl	%edx, -68(%ebp)
.L552:
	movl	-68(%ebp), %eax
	.loc 1 2399 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L572
	call	__stack_chk_fail_local
.L572:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE71:
	.size	const_hash_1, .-const_hash_1
	.section	.rodata
	.type	__FUNCTION__.16958, @object
	.size	__FUNCTION__.16958, 17
__FUNCTION__.16958:
	.string	"compare_constant"
	.text
	.type	compare_constant, @function
compare_constant:
.LFB72:
	.loc 1 2408 0
	pushl	%ebp
.LCFI222:
	movl	%esp, %ebp
.LCFI223:
	pushl	%edi
.LCFI224:
	pushl	%esi
.LCFI225:
	pushl	%ebx
.LCFI226:
	subl	$172, %esp
.LCFI227:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 2408 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 2411 0
	cmpl	$0, -100(%ebp)
	jne	.L574
	.loc 1 2412 0
	cmpl	$0, -104(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -136(%ebp)
	jmp	.L576
.L574:
	.loc 1 2413 0
	cmpl	$0, -104(%ebp)
	jne	.L577
	.loc 1 2414 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L577:
	.loc 1 2416 0
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	je	.L579
	.loc 1 2417 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L579:
	.loc 1 2419 0
	movl	-100(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -140(%ebp)
	cmpl	$100, -140(%ebp)
	ja	.L581
	movl	-140(%ebp), %eax
	sall	$2, %eax
	movl	.L590@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L590:
	.long	.L582@GOTOFF
	.long	.L583@GOTOFF
	.long	.L584@GOTOFF
	.long	.L581@GOTOFF
	.long	.L585@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L586@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L587@GOTOFF
	.long	.L587@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L587@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L588@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L589@GOTOFF
	.long	.L581@GOTOFF
	.long	.L581@GOTOFF
	.long	.L589@GOTOFF
	.text
.L582:
	.loc 1 2423 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L591
	.loc 1 2424 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L591:
	.loc 1 2425 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	movl	%eax, -136(%ebp)
	jmp	.L576
.L583:
	.loc 1 2429 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	je	.L593
	.loc 1 2430 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L593:
	.loc 1 2432 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	real_identical@PLT
	movzbl	%al, %eax
	movl	%eax, -136(%ebp)
	jmp	.L576
.L585:
	.loc 1 2435 0
	movl	flag_writable_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L595
	.loc 1 2436 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L595:
	.loc 1 2438 0
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
	je	.L597
	.loc 1 2439 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L597:
	.loc 1 2441 0
	movl	-100(%ebp), %eax
	movl	20(%eax), %edx
	movl	-104(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L599
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
	jne	.L599
	movl	$1, -132(%ebp)
	jmp	.L602
.L599:
	movl	$0, -132(%ebp)
.L602:
	movl	-132(%ebp), %esi
	movl	%esi, -136(%ebp)
	jmp	.L576
.L584:
	.loc 1 2446 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	je	.L603
	movl	-104(%ebp), %eax
	movl	24(%eax), %edx
	movl	-100(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	je	.L603
	movl	$1, -128(%ebp)
	jmp	.L606
.L603:
	movl	$0, -128(%ebp)
.L606:
	movl	-128(%ebp), %edi
	movl	%edi, -136(%ebp)
	jmp	.L576
.L586:
	.loc 1 2450 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2451 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	-52(%ebp), %eax
	je	.L607
	.loc 1 2452 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L607:
	.loc 1 2454 0
	cmpl	$20, -52(%ebp)
	jne	.L609
.LBB19:
	.loc 1 2456 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2459 0
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
	je	.L611
	.loc 1 2460 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L611:
	.loc 1 2462 0
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
	.loc 1 2463 0
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
	.loc 1 2465 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	get_set_constructor_bytes@PLT
	testl	%eax, %eax
	je	.L613
	.loc 1 2466 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L613:
	.loc 1 2467 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	get_set_constructor_bytes@PLT
	testl	%eax, %eax
	je	.L615
	.loc 1 2468 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L615:
	.loc 1 2470 0
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
	jmp	.L576
.L609:
.LBE19:
.LBB20:
	.loc 1 2476 0
	cmpl	$19, -52(%ebp)
	jne	.L617
.LBB21:
	.loc 1 2478 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 2480 0
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
	jne	.L619
	movl	-60(%ebp), %eax
	xorl	$-1, %eax
	movl	-64(%ebp), %edx
	xorl	$-1, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L619
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L623
.L619:
	.loc 1 2483 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L617:
.LBE21:
	.loc 1 2489 0
	movl	-100(%ebp), %eax
	movl	4(%eax), %edx
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L623
	.loc 1 2490 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L623:
	.loc 1 2493 0
	movl	-100(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-104(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2494 0
	jmp	.L625
.L626:
	.loc 1 2498 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	jne	.L627
	.loc 1 2499 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L627:
	.loc 1 2501 0
	cmpl	$19, -52(%ebp)
	jne	.L629
	.loc 1 2503 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	jne	.L633
	.loc 1 2505 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L629:
	.loc 1 2509 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	je	.L633
	.loc 1 2510 0
	movl	$0, -136(%ebp)
	jmp	.L576
.L633:
	.loc 1 2495 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L625:
	.loc 1 2494 0
	cmpl	$0, -36(%ebp)
	je	.L635
	cmpl	$0, -32(%ebp)
	jne	.L626
.L635:
	.loc 1 2514 0
	cmpl	$0, -36(%ebp)
	jne	.L637
	cmpl	$0, -32(%ebp)
	jne	.L637
	movl	$1, -116(%ebp)
	jmp	.L640
.L637:
	movl	$0, -116(%ebp)
.L640:
	movl	-116(%ebp), %esi
	movl	%esi, -136(%ebp)
	jmp	.L576
.L589:
.LBE20:
.LBB22:
	.loc 1 2522 0
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_addr_const
	.loc 1 2523 0
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_addr_const
	.loc 1 2524 0
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-84(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L641
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L641
	movl	$1, -112(%ebp)
	jmp	.L644
.L641:
	movl	$0, -112(%ebp)
.L644:
	movl	-112(%ebp), %edi
	movl	%edi, -136(%ebp)
	jmp	.L576
.L587:
.LBE22:
	.loc 1 2531 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	je	.L645
	movl	-104(%ebp), %eax
	movl	24(%eax), %edx
	movl	-100(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	je	.L645
	movl	$1, -108(%ebp)
	jmp	.L648
.L645:
	movl	$0, -108(%ebp)
.L648:
	movl	-108(%ebp), %eax
	movl	%eax, -136(%ebp)
	jmp	.L576
.L588:
	.loc 1 2537 0
	movl	-104(%ebp), %eax
	movl	20(%eax), %edx
	movl	-100(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	compare_constant
	movl	%eax, -136(%ebp)
	jmp	.L576
.L581:
.LBB23:
	.loc 1 2542 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -28(%ebp)
	.loc 1 2543 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	.loc 1 2544 0
	movl	-28(%ebp), %eax
	cmpl	-100(%ebp), %eax
	jne	.L649
	movl	-24(%ebp), %eax
	cmpl	-104(%ebp), %eax
	je	.L651
.L649:
	.loc 1 2545 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_constant
	movl	%eax, -136(%ebp)
	jmp	.L576
.L651:
	.loc 1 2547 0
	movl	$0, -136(%ebp)
.L576:
	movl	-136(%ebp), %eax
.LBE23:
	.loc 1 2553 0
	movl	-20(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L653
	call	__stack_chk_fail_local
.L653:
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
	.loc 1 2580 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2581 0
	movl	defer_addressed_constants_flag@GOTOFF(%ecx), %eax
	addl	$1, %eax
	movl	%eax, defer_addressed_constants_flag@GOTOFF(%ecx)
	.loc 1 2582 0
	popl	%ebp
	ret
.LFE73:
	.size	defer_addressed_constants, .-defer_addressed_constants
.globl output_deferred_addressed_constants
	.type	output_deferred_addressed_constants, @function
output_deferred_addressed_constants:
.LFB74:
	.loc 1 2589 0
	pushl	%ebp
.LCFI230:
	movl	%esp, %ebp
.LCFI231:
	pushl	%ebx
.LCFI232:
	subl	$36, %esp
.LCFI233:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2592 0
	movl	defer_addressed_constants_flag@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, defer_addressed_constants_flag@GOTOFF(%ebx)
	.loc 1 2594 0
	movl	defer_addressed_constants_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jg	.L662
	.loc 1 2597 0
	movl	deferred_constants@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L659
.L660:
	.loc 1 2599 0
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
	.loc 1 2600 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2601 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2597 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L659:
	cmpl	$0, -12(%ebp)
	jne	.L660
	.loc 1 2604 0
	movl	$0, deferred_constants@GOTOFF(%ebx)
.L662:
	.loc 1 2605 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	output_deferred_addressed_constants, .-output_deferred_addressed_constants
	.type	output_after_function_constants, @function
output_after_function_constants:
.LFB75:
	.loc 1 2611 0
	pushl	%ebp
.LCFI234:
	movl	%esp, %ebp
.LCFI235:
	pushl	%ebx
.LCFI236:
	subl	$36, %esp
.LCFI237:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2614 0
	movl	after_function_constants@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L664
.L665:
	.loc 1 2616 0
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
	.loc 1 2617 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2618 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2614 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L664:
	cmpl	$0, -12(%ebp)
	jne	.L665
	.loc 1 2621 0
	movl	$0, after_function_constants@GOTOFF(%ebx)
	.loc 1 2622 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	output_after_function_constants, .-output_after_function_constants
	.section	.rodata
	.type	__FUNCTION__.17186, @object
	.size	__FUNCTION__.17186, 14
__FUNCTION__.17186:
	.string	"copy_constant"
	.text
	.type	copy_constant, @function
copy_constant:
.LFB76:
	.loc 1 2630 0
	pushl	%ebp
.LCFI238:
	movl	%esp, %ebp
.LCFI239:
	pushl	%esi
.LCFI240:
	pushl	%ebx
.LCFI241:
	subl	$48, %esp
.LCFI242:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2631 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -32(%ebp)
	cmpl	$97, -32(%ebp)
	ja	.L669
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L676@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L676:
	.long	.L670@GOTOFF
	.long	.L670@GOTOFF
	.long	.L671@GOTOFF
	.long	.L669@GOTOFF
	.long	.L670@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L672@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L673@GOTOFF
	.long	.L673@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L674@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L669@GOTOFF
	.long	.L675@GOTOFF
	.text
.L675:
	.loc 1 2636 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	jne	.L677
	.loc 1 2637 0
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
	jmp	.L679
.L677:
	.loc 1 2640 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -28(%ebp)
	jmp	.L679
.L670:
	.loc 1 2645 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -28(%ebp)
	jmp	.L679
.L671:
	.loc 1 2648 0
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
	jmp	.L679
.L673:
	.loc 1 2654 0
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
	jmp	.L679
.L674:
	.loc 1 2661 0
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
	jmp	.L679
.L672:
.LBB24:
	.loc 1 2666 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2667 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	copy_list@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2670 0
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 2671 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L680
.L681:
	.loc 1 2672 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2671 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L680:
	cmpl	$0, -16(%ebp)
	jne	.L681
	.loc 1 2673 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$20, %al
	jne	.L683
	.loc 1 2674 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L685
.L686:
	.loc 1 2675 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2674 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L685:
	cmpl	$0, -16(%ebp)
	jne	.L686
.L683:
	.loc 1 2677 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L679
.L669:
.LBE24:
.LBB25:
	.loc 1 2683 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 2684 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L687
	.loc 1 2685 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, -28(%ebp)
	jmp	.L679
.L687:
	.loc 1 2687 0
	leal	__FUNCTION__.17186@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2687, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L679:
	movl	-28(%ebp), %eax
.LBE25:
	.loc 1 2690 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE76:
	.size	copy_constant, .-copy_constant
	.section	.rodata
.LC132:
	.string	"LC"
	.text
.globl output_constant_def
	.type	output_constant_def, @function
output_constant_def:
.LFB77:
	.loc 1 2710 0
	pushl	%ebp
.LCFI243:
	movl	%esp, %ebp
.LCFI244:
	pushl	%ebx
.LCFI245:
	subl	$340, %esp
.LCFI246:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -312(%ebp)
	.loc 1 2710 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 2716 0
	movl	$1, -288(%ebp)
	.loc 1 2717 0
	movl	$0, -284(%ebp)
	.loc 1 2718 0
	movl	$-1, -280(%ebp)
	.loc 1 2724 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L691
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L691
	cmpl	$0, 12(%ebp)
	jne	.L694
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L691
.L694:
	.loc 1 2726 0
	movl	-312(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -324(%ebp)
	jmp	.L696
.L691:
	.loc 1 2731 0
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -292(%ebp)
	.loc 1 2737 0
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	const_hash
	movl	%eax, -304(%ebp)
	.loc 1 2739 0
	movl	-304(%ebp), %eax
	movl	const_hash_table@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -300(%ebp)
	jmp	.L697
.L698:
	.loc 1 2740 0
	movl	-300(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_constant
	testl	%eax, %eax
	jne	.L699
	.loc 1 2739 0
	movl	-300(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -300(%ebp)
.L697:
	cmpl	$0, -300(%ebp)
	jne	.L698
.L699:
	.loc 1 2743 0
	cmpl	$0, -300(%ebp)
	jne	.L701
	.loc 1 2751 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -280(%ebp)
	leal	1(%eax), %edx
	movl	const_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2752 0
	movl	-280(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2754 0
	movl	$16, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -300(%ebp)
	.loc 1 2755 0
	movl	-304(%ebp), %eax
	movl	const_hash_table@GOTOFF(%ebx,%eax,4), %edx
	movl	-300(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2756 0
	movl	$-1, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, %edx
	movl	-300(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2757 0
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_constant
	movl	%eax, %edx
	movl	-300(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2758 0
	movl	-304(%ebp), %edx
	movl	-300(%ebp), %eax
	movl	%eax, const_hash_table@GOTOFF(%ebx,%edx,4)
	.loc 1 2761 0
	movl	-300(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -320(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L703
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L703
	movl	$5, -316(%ebp)
	jmp	.L706
.L703:
	movl	$4, -316(%ebp)
.L706:
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
	.loc 1 2765 0
	movl	$1, 8(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_attributes@PLT
	.loc 1 2766 0
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 2767 0
	movl	const_alias_set@GOTOFF(%ebx), %eax
	movl	4+const_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 2769 0
	movl	$0, -288(%ebp)
	jmp	.L707
.L701:
	.loc 1 2772 0
	movl	-300(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -276(%ebp)
.L707:
	.loc 1 2774 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L708
	.loc 1 2775 0
	movl	-312(%ebp), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 16(%edx)
.L708:
	.loc 1 2782 0
	cmpl	$0, -288(%ebp)
	jne	.L710
	.loc 1 2786 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L712
	.loc 1 2787 0
	movl	targetm@GOT(%ebx), %eax
	movl	236(%eax), %edx
	movl	$1, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L712:
	.loc 1 2789 0
	movl	-300(%ebp), %edx
	movl	-276(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2790 0
	movl	-300(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-300(%ebp), %eax
	movl	%edx, 4(%eax)
.L710:
	.loc 1 2799 0
	cmpl	$0, -288(%ebp)
	je	.L714
	movl	-276(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L714
	cmpl	$0, 12(%ebp)
	je	.L717
	movl	defer_addressed_constants_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L717
	cmpl	$0, -284(%ebp)
	je	.L714
.L717:
	.loc 1 2803 0
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
	.loc 1 2806 0
	cmpl	$0, -296(%ebp)
	je	.L714
	.loc 1 2810 0
	movl	$0, -288(%ebp)
	.loc 1 2811 0
	movl	-296(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -280(%ebp)
	.loc 1 2812 0
	movl	-276(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	andl	$127, %eax
	movb	%al, 3(%edx)
	.loc 1 2813 0
	movl	-296(%ebp), %eax
	movl	const_str_htab@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_clear_slot@PLT
.L714:
	.loc 1 2819 0
	cmpl	$0, -288(%ebp)
	jne	.L721
	.loc 1 2821 0
	movl	defer_addressed_constants_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L723
	cmpl	$0, -284(%ebp)
	je	.L725
.L723:
.LBB26:
	.loc 1 2825 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	%eax, -272(%ebp)
	.loc 1 2827 0
	movl	-300(%ebp), %eax
	movl	12(%eax), %edx
	movl	-272(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2828 0
	movl	-272(%ebp), %edx
	movl	-292(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2829 0
	movl	-272(%ebp), %edx
	movl	-280(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 2830 0
	cmpl	$0, -284(%ebp)
	je	.L726
	.loc 1 2832 0
	movl	after_function_constants@GOTOFF(%ebx), %eax
	movl	-272(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 2833 0
	movl	-272(%ebp), %eax
	movl	%eax, after_function_constants@GOTOFF(%ebx)
	jmp	.L721
.L726:
	.loc 1 2837 0
	movl	deferred_constants@GOTOFF(%ebx), %eax
	movl	-272(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 2838 0
	movl	-272(%ebp), %eax
	movl	%eax, deferred_constants@GOTOFF(%ebx)
	.loc 1 2821 0
	jmp	.L721
.L725:
.LBE26:
	.loc 1 2844 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L721
	.loc 1 2846 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L730
	cmpl	$0, 12(%ebp)
	je	.L730
	movl	flag_writable_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L730
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
	jne	.L734
.L730:
	.loc 1 2854 0
	movl	-280(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_def_contents
	.loc 1 2846 0
	jmp	.L721
.L734:
.LBB27:
	.loc 1 2859 0
	movl	$12, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -268(%ebp)
	.loc 1 2862 0
	movl	-300(%ebp), %eax
	movl	12(%eax), %edx
	movl	-268(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2863 0
	movl	-300(%ebp), %eax
	movl	4(%eax), %edx
	movl	-268(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2864 0
	movl	-268(%ebp), %edx
	movl	-280(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2865 0
	movl	-296(%ebp), %edx
	movl	-268(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2866 0
	movl	-276(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$-128, %eax
	movb	%al, 3(%edx)
.L721:
.LBE27:
	.loc 1 2872 0
	movl	-276(%ebp), %edx
	movl	%edx, -324(%ebp)
.L696:
	movl	-324(%ebp), %eax
	.loc 1 2873 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L736
	call	__stack_chk_fail_local
.L736:
	addl	$340, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	output_constant_def, .-output_constant_def
	.type	output_constant_def_contents, @function
output_constant_def_contents:
.LFB78:
	.loc 1 2883 0
	pushl	%ebp
.LCFI247:
	movl	%esp, %ebp
.LCFI248:
	.loc 1 2926 0
	popl	%ebp
	ret
.LFE78:
	.size	output_constant_def_contents, .-output_constant_def_contents
.globl init_varasm_status
	.type	init_varasm_status, @function
init_varasm_status:
.LFB79:
	.loc 1 2973 0
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
	.loc 1 2975 0
	movl	$24, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2976 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2977 0
	movl	$244, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2981 0
	movl	$244, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2986 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2987 0
	movl	-8(%ebp), %eax
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	.loc 1 2988 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	init_varasm_status, .-init_varasm_status
	.section	.rodata
	.type	__FUNCTION__.17420, @object
	.size	__FUNCTION__.17420, 17
__FUNCTION__.17420:
	.string	"decode_rtx_const"
	.text
	.type	decode_rtx_const, @function
decode_rtx_const:
.LFB80:
	.loc 1 3000 0
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
	subl	$60, %esp
.LCFI258:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3002 0
	movl	16(%ebp), %eax
	movl	%eax, %edx
	movl	$260, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 3004 0
	movl	16(%ebp), %eax
	movw	$3, (%eax)
	.loc 1 3005 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movw	%dx, 2(%eax)
	.loc 1 3007 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$64, %eax
	movl	%eax, -60(%ebp)
	cmpl	$14, -60(%ebp)
	ja	.L742
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L748@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L748:
	.long	.L743@GOTOFF
	.long	.L744@GOTOFF
	.long	.L745@GOTOFF
	.long	.L742@GOTOFF
	.long	.L746@GOTOFF
	.long	.L747@GOTOFF
	.long	.L742@GOTOFF
	.long	.L742@GOTOFF
	.long	.L742@GOTOFF
	.long	.L742@GOTOFF
	.long	.L742@GOTOFF
	.long	.L742@GOTOFF
	.long	.L742@GOTOFF
	.long	.L747@GOTOFF
	.long	.L747@GOTOFF
	.text
.L744:
	.loc 1 3010 0
	movl	16(%ebp), %eax
	movw	$1, (%eax)
	.loc 1 3011 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L749
.LBB28:
	.loc 1 3013 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -36(%ebp)
	.loc 1 3015 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbw	%al, %dx
	movl	16(%ebp), %eax
	movw	%dx, 2(%eax)
	.loc 1 3020 0
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
	.loc 1 3021 0
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
	.loc 1 3022 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	cmpl	$1, -56(%ebp)
	je	.L753
	cmpl	$1, -56(%ebp)
	jg	.L755
	cmpl	$0, -56(%ebp)
	je	.L758
	jmp	.L751
.L755:
	cmpl	$2, -56(%ebp)
	je	.L758
	cmpl	$3, -56(%ebp)
	je	.L754
	jmp	.L751
.L753:
	.loc 1 3028 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	16(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	4(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, 4(%edx)
.L754:
	.loc 1 3031 0
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
	.loc 1 3032 0
	jmp	.L758
.L751:
	.loc 1 3034 0
	leal	__FUNCTION__.17420@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3034, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L749:
.LBE28:
	.loc 1 3039 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 3040 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	.loc 1 3042 0
	jmp	.L758
.L745:
.LBB29:
	.loc 1 3048 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3049 0
	movl	16(%ebp), %eax
	movw	$2, (%eax)
	.loc 1 3050 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movw	%dx, 2(%eax)
	.loc 1 3052 0
	movl	8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	jne	.L759
	.loc 1 3054 0
	movl	$0, -28(%ebp)
	jmp	.L761
.L762:
.LBB30:
	.loc 1 3056 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3057 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L763
	.loc 1 3059 0
	movl	-28(%ebp), %edi
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	16(%ebp), %esi
	movl	%edi, %eax
	sall	$4, %eax
	movl	%edx, 12(%eax,%esi)
	movl	%ecx, 16(%eax,%esi)
	.loc 1 3060 0
	movl	-28(%ebp), %eax
	movl	16(%ebp), %edx
	sall	$4, %eax
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	jmp	.L765
.L763:
	.loc 1 3064 0
	movl	-28(%ebp), %edi
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	16(%ebp), %esi
	movl	%edi, %eax
	sall	$4, %eax
	movl	%edx, 12(%eax,%esi)
	movl	%ecx, 16(%eax,%esi)
	.loc 1 3065 0
	movl	-28(%ebp), %edi
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	16(%eax), %ecx
	movl	16(%ebp), %esi
	movl	%edi, %eax
	sall	$4, %eax
	movl	%edx, 4(%eax,%esi)
	movl	%ecx, 8(%eax,%esi)
.L765:
.LBE30:
	.loc 1 3054 0
	addl	$1, -28(%ebp)
.L761:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L762
	jmp	.L758
.L759:
	.loc 1 3069 0
	movl	8(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L768
	.loc 1 3071 0
	movl	$0, -28(%ebp)
	jmp	.L770
.L771:
.LBB31:
	.loc 1 3074 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	addl	$4, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3075 0
	movl	16(%ebp), %ecx
	addl	$4, %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3080 0
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
	.loc 1 3081 0
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
	.loc 1 3082 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	cmpl	$1, -52(%ebp)
	je	.L774
	cmpl	$1, -52(%ebp)
	jg	.L776
	cmpl	$0, -52(%ebp)
	je	.L777
	jmp	.L772
.L776:
	cmpl	$2, -52(%ebp)
	je	.L777
	cmpl	$3, -52(%ebp)
	je	.L775
	jmp	.L772
.L774:
	.loc 1 3088 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	-16(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
.L775:
	.loc 1 3091 0
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
	.loc 1 3092 0
	jmp	.L777
.L772:
	.loc 1 3094 0
	leal	__FUNCTION__.17420@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3094, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L777:
.LBE31:
	.loc 1 3071 0
	addl	$1, -28(%ebp)
.L770:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L771
	jmp	.L758
.L768:
	.loc 1 3099 0
	leal	__FUNCTION__.17420@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3099, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L743:
.LBE29:
	.loc 1 3104 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 3105 0
	jmp	.L758
.L747:
	.loc 1 3110 0
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3111 0
	jmp	.L758
.L746:
	.loc 1 3114 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 3115 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L779
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L779
	.loc 1 3117 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3118 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	.loc 1 3115 0
	jmp	.L758
.L779:
	.loc 1 3120 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L783
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L783
	.loc 1 3122 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 3123 0
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
	.loc 1 3120 0
	jmp	.L758
.L783:
	.loc 1 3127 0
	movl	16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 3128 0
	movl	16(%ebp), %eax
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 3130 0
	jmp	.L758
.L742:
	.loc 1 3133 0
	movl	16(%ebp), %eax
	movw	$0, (%eax)
.L758:
	.loc 1 3137 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$3, %ax
	jne	.L786
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L786
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$52, %ax
	jne	.L786
	.loc 1 3147 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L786
	.loc 1 3149 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	leal	4(%eax), %edx
	movl	16(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 3150 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
.L786:
	.loc 1 3154 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$2, %ax
	jbe	.L796
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L796
	.loc 1 3155 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	cmpl	$77, -48(%ebp)
	je	.L794
	cmpl	$78, -48(%ebp)
	je	.L795
	jmp	.L796
.L795:
	.loc 1 3160 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 3161 0
	movl	16(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 3162 0
	jmp	.L796
.L794:
	.loc 1 3166 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, 4(%eax)
.L796:
	.loc 1 3171 0
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
	.loc 1 3179 0
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
	subl	$572, %esp
.LCFI264:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3182 0
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
	.loc 1 3183 0
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
	.loc 1 3185 0
	movzwl	-276(%ebp), %eax
	cmpw	$2, %ax
	jbe	.L798
	movzwl	-276(%ebp), %edx
	movzwl	-536(%ebp), %eax
	cmpw	%ax, %dx
	jne	.L798
	movl	-272(%ebp), %edx
	movl	-532(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L798
	movl	-268(%ebp), %edx
	movl	-528(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L798
	.loc 1 3189 0
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
	jmp	.L803
.L798:
	.loc 1 3191 0
	movl	8(%ebp), %edi
	movl	%edi, -548(%ebp)
.L803:
	movl	-548(%ebp), %eax
	.loc 1 3192 0
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
	.loc 1 3200 0
	pushl	%ebp
.LCFI265:
	movl	%esp, %ebp
.LCFI266:
	subl	$296, %esp
.LCFI267:
	.loc 1 3209 0
	leal	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_rtx_const
	.loc 1 3212 0
	movl	$0, -8(%ebp)
	.loc 1 3213 0
	movl	$0, -4(%ebp)
	jmp	.L806
.L807:
	.loc 1 3214 0
	movl	-8(%ebp), %eax
	imull	$613, %eax, %edx
	movl	-4(%ebp), %eax
	movl	-268(%ebp,%eax,4), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3213 0
	addl	$1, -4(%ebp)
.L806:
	cmpl	$64, -4(%ebp)
	jbe	.L807
	.loc 1 3216 0
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
	.loc 1 3217 0
	leave
	ret
.LFE82:
	.size	const_hash_rtx, .-const_hash_rtx
	.type	compare_constant_rtx, @function
compare_constant_rtx:
.LFB83:
	.loc 1 3227 0
	pushl	%ebp
.LCFI268:
	movl	%esp, %ebp
.LCFI269:
	pushl	%edi
.LCFI270:
	pushl	%esi
.LCFI271:
	subl	$304, %esp
.LCFI272:
	.loc 1 3230 0
	leal	-268(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_rtx_const
	.loc 1 3233 0
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
	.loc 1 3234 0
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
	.loc 1 3243 0
	pushl	%ebp
.LCFI273:
	movl	%esp, %ebp
.LCFI274:
	pushl	%ebx
.LCFI275:
	subl	$36, %esp
.LCFI276:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3246 0
	movl	$268, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 3247 0
	movl	-8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_rtx_const
	.loc 1 3249 0
	movl	-8(%ebp), %eax
	.loc 1 3250 0
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
	.loc 1 3258 0
	pushl	%ebp
.LCFI277:
	movl	%esp, %ebp
.LCFI278:
	pushl	%esi
.LCFI279:
	pushl	%ebx
.LCFI280:
	subl	$32, %esp
.LCFI281:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3259 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3262 0
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
	jmp	.L815
.L816:
	.loc 1 3264 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_constant_rtx
	testl	%eax, %eax
	je	.L817
	.loc 1 3265 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L819
.L817:
	.loc 1 3263 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L815:
	.loc 1 3262 0
	cmpl	$0, -12(%ebp)
	jne	.L816
	.loc 1 3267 0
	movl	$0, -28(%ebp)
.L819:
	movl	-28(%ebp), %eax
	.loc 1 3268 0
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
	.loc 1 3277 0
	pushl	%ebp
.LCFI282:
	movl	%esp, %ebp
.LCFI283:
	pushl	%edi
.LCFI284:
	pushl	%esi
.LCFI285:
	pushl	%ebx
.LCFI286:
	subl	$380, %esp
.LCFI287:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -308(%ebp)
	.loc 1 3277 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 3286 0
	movl	targetm@GOT(%ebx), %eax
	movl	224(%eax), %edx
	movl	-308(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testb	%al, %al
	je	.L823
	.loc 1 3287 0
	movl	$0, -356(%ebp)
	jmp	.L825
.L823:
	.loc 1 3291 0
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	const_hash_rtx
	movl	%eax, -296(%ebp)
	.loc 1 3292 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-296(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -292(%ebp)
	jmp	.L826
.L827:
	.loc 1 3293 0
	movl	-292(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_constant_rtx
	testl	%eax, %eax
	je	.L828
	.loc 1 3294 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -356(%ebp)
	jmp	.L825
.L828:
	.loc 1 3292 0
	movl	-292(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -292(%ebp)
.L826:
	cmpl	$0, -292(%ebp)
	jne	.L827
	.loc 1 3299 0
	movl	-308(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_constant_rtx
	movl	%eax, -292(%ebp)
	.loc 1 3300 0
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
	.loc 1 3301 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	-296(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-292(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3304 0
	cmpl	$0, 8(%ebp)
	jne	.L831
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -352(%ebp)
	jmp	.L833
.L831:
	movl	8(%ebp), %edx
	movl	%edx, -352(%ebp)
.L833:
	movl	-352(%ebp), %ecx
	movl	%ecx, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -280(%ebp)
	.loc 1 3306 0
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
	je	.L834
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
	jne	.L836
.L834:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L837
	movl	$64, -344(%ebp)
	jmp	.L839
.L837:
	movl	$32, -344(%ebp)
.L839:
	movl	-344(%ebp), %esi
	cmpl	-280(%ebp), %esi
	jbe	.L836
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L841
	movl	$64, -340(%ebp)
	jmp	.L843
.L841:
	movl	$32, -340(%ebp)
.L843:
	movl	-340(%ebp), %edi
	movl	%edi, -348(%ebp)
	jmp	.L844
.L836:
	movl	-280(%ebp), %eax
	movl	%eax, -348(%ebp)
.L844:
	movl	-348(%ebp), %edx
	movl	%edx, -280(%ebp)
	.loc 1 3310 0
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
	.loc 1 3311 0
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
	.loc 1 3313 0
	movl	-308(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L845
	.loc 1 3314 0
	movl	-308(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$16, %eax
	movb	%al, 3(%edx)
.L845:
	.loc 1 3317 0
	movl	$40, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -284(%ebp)
	.loc 1 3318 0
	movl	-284(%ebp), %edx
	movl	-292(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3319 0
	movl	-284(%ebp), %edx
	movl	-308(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3320 0
	movl	-284(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3321 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 3322 0
	movl	-284(%ebp), %edx
	movl	-280(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 3323 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	-284(%ebp), %ecx
	movl	%eax, 28(%ecx)
	movl	%edx, 32(%ecx)
	.loc 1 3324 0
	movl	-284(%ebp), %eax
	movl	$1, 36(%eax)
	.loc 1 3325 0
	movl	-284(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 3327 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L847
	.loc 1 3328 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L849
.L847:
	.loc 1 3330 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	12(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%eax, 4(%edx)
.L849:
	.loc 1 3332 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	-284(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3333 0
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
	.loc 1 3336 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC115@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-276(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3338 0
	movl	const_labelno@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	const_labelno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3342 0
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
	je	.L850
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L850
	movl	$5, -316(%ebp)
	jmp	.L853
.L850:
	movl	$4, -316(%ebp)
.L853:
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
	.loc 1 3344 0
	movl	const_alias_set@GOTOFF(%ebx), %eax
	movl	4+const_alias_set@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	.loc 1 3345 0
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
	.loc 1 3346 0
	movl	-288(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$4, %eax
	movb	%al, 3(%edx)
	.loc 1 3349 0
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
	.loc 1 3350 0
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
	.loc 1 3351 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	-296(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-284(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3354 0
	movl	-288(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	3(%edx), %eax
	orl	$4, %eax
	movb	%al, 3(%edx)
	.loc 1 3355 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	298(%edx), %eax
	orl	$32, %eax
	movb	%al, 298(%edx)
	.loc 1 3357 0
	movl	-288(%ebp), %edx
	movl	%edx, -356(%ebp)
.L825:
	movl	-356(%ebp), %eax
	.loc 1 3358 0
	movl	-20(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L855
	call	__stack_chk_fail_local
.L855:
	addl	$380, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE86:
	.size	force_const_mem, .-force_const_mem
	.section	.rodata
	.type	__FUNCTION__.17838, @object
	.size	__FUNCTION__.17838, 19
__FUNCTION__.17838:
	.string	"find_pool_constant"
	.text
	.type	find_pool_constant, @function
find_pool_constant:
.LFB87:
	.loc 1 3367 0
	pushl	%ebp
.LCFI288:
	movl	%esp, %ebp
.LCFI289:
	pushl	%esi
.LCFI290:
	pushl	%ebx
.LCFI291:
	subl	$48, %esp
.LCFI292:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3369 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3371 0
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
	jmp	.L857
.L858:
	.loc 1 3373 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L859
	.loc 1 3374 0
	movl	-16(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L856
.L859:
	.loc 1 3372 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
.L857:
	.loc 1 3371 0
	cmpl	$0, -16(%ebp)
	jne	.L858
	.loc 1 3376 0
	leal	__FUNCTION__.17838@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3376, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L856:
	.loc 1 3377 0
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
	.loc 1 3384 0
	pushl	%ebp
.LCFI293:
	movl	%esp, %ebp
.LCFI294:
	pushl	%ebx
.LCFI295:
	subl	$20, %esp
.LCFI296:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3385 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	12(%eax), %eax
	.loc 1 3386 0
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
	.loc 1 3395 0
	pushl	%ebp
.LCFI297:
	movl	%esp, %ebp
.LCFI298:
	pushl	%ebx
.LCFI299:
	subl	$36, %esp
.LCFI300:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3396 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	%eax, -8(%ebp)
	.loc 1 3397 0
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	setne	%dl
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 3398 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	.loc 1 3399 0
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
	.loc 1 3407 0
	pushl	%ebp
.LCFI301:
	movl	%esp, %ebp
.LCFI302:
	subl	$8, %esp
.LCFI303:
	.loc 1 3408 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_pool_constant
	movl	12(%eax), %eax
	.loc 1 3409 0
	leave
	ret
.LFE90:
	.size	get_pool_constant_for_function, .-get_pool_constant_for_function
.globl get_pool_mode
	.type	get_pool_mode, @function
get_pool_mode:
.LFB91:
	.loc 1 3416 0
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
	.loc 1 3417 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	16(%eax), %eax
	.loc 1 3418 0
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
	.loc 1 3424 0
	pushl	%ebp
.LCFI308:
	movl	%esp, %ebp
.LCFI309:
	subl	$8, %esp
.LCFI310:
	.loc 1 3425 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_pool_constant
	movl	16(%eax), %eax
	.loc 1 3426 0
	leave
	ret
.LFE92:
	.size	get_pool_mode_for_function, .-get_pool_mode_for_function
.globl get_pool_offset
	.type	get_pool_offset, @function
get_pool_offset:
.LFB93:
	.loc 1 3433 0
	pushl	%ebp
.LCFI311:
	movl	%esp, %ebp
.LCFI312:
	pushl	%ebx
.LCFI313:
	subl	$20, %esp
.LCFI314:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3434 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	.loc 1 3435 0
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
	.loc 1 3441 0
	pushl	%ebp
.LCFI315:
	movl	%esp, %ebp
.LCFI316:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 3442 0
	movl	cfun@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	.loc 1 3443 0
	popl	%ebp
	ret
.LFE94:
	.size	get_pool_size, .-get_pool_size
	.section	.rodata
	.type	__FUNCTION__.17921, @object
	.size	__FUNCTION__.17921, 21
__FUNCTION__.17921:
	.string	"output_constant_pool"
	.text
.globl output_constant_pool
	.type	output_constant_pool, @function
output_constant_pool:
.LFB95:
	.loc 1 3451 0
	pushl	%ebp
.LCFI317:
	movl	%esp, %ebp
.LCFI318:
	pushl	%edi
.LCFI319:
	pushl	%esi
.LCFI320:
	pushl	%ebx
.LCFI321:
	subl	$108, %esp
.LCFI322:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3459 0
	call	mark_constant_pool
	.loc 1 3465 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L878
.L879:
.LBB32:
	.loc 1 3469 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3471 0
	movl	-48(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L880
	.loc 1 3483 0
	movl	-44(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3484 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -84(%ebp)
	cmpl	$68, -84(%ebp)
	je	.L883
	cmpl	$77, -84(%ebp)
	je	.L884
	jmp	.L882
.L883:
	.loc 1 3487 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L882
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L882
	.loc 1 3490 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L884:
	.loc 1 3494 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3495 0
	movl	-40(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L887
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L882
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	jne	.L882
.L887:
	.loc 1 3499 0
	leal	__FUNCTION__.17921@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3499, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L882:
	.loc 1 3509 0
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
	.loc 1 3516 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
	.loc 1 3519 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 16(%esp)
	leal	.LC132@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC114@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC117@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3522 0
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edx, -80(%ebp)
	cmpl	$8, -80(%ebp)
	ja	.L890
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	.L895@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L895:
	.long	.L890@GOTOFF
	.long	.L891@GOTOFF
	.long	.L892@GOTOFF
	.long	.L891@GOTOFF
	.long	.L890@GOTOFF
	.long	.L890@GOTOFF
	.long	.L890@GOTOFF
	.long	.L893@GOTOFF
	.long	.L894@GOTOFF
	.text
.L892:
	.loc 1 3525 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L896
	.loc 1 3526 0
	leal	__FUNCTION__.17921@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3526, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L896:
	.loc 1 3528 0
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
	.loc 1 3529 0
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
	.loc 1 3530 0
	jmp	.L898
.L891:
	.loc 1 3534 0
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
	.loc 1 3535 0
	jmp	.L898
.L894:
.LBB33:
	.loc 1 3542 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L899
	.loc 1 3543 0
	leal	__FUNCTION__.17921@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3543, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L899:
	.loc 1 3545 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3547 0
	movl	$0, -36(%ebp)
	jmp	.L901
.L902:
	.loc 1 3549 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3550 0
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
	.loc 1 3551 0
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
	.loc 1 3547 0
	addl	$1, -36(%ebp)
.L901:
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L902
	.loc 1 3554 0
	jmp	.L898
.L893:
.LBE33:
.LBB34:
	.loc 1 3561 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$66, %ax
	je	.L904
	.loc 1 3562 0
	leal	__FUNCTION__.17921@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3562, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L904:
	.loc 1 3564 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3566 0
	movl	$0, -24(%ebp)
	jmp	.L906
.L907:
	.loc 1 3568 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3569 0
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
	.loc 1 3566 0
	addl	$1, -24(%ebp)
.L906:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L907
	.loc 1 3573 0
	jmp	.L898
.L890:
.LBE34:
	.loc 1 3576 0
	leal	__FUNCTION__.17921@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3576, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L898:
	.loc 1 3581 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %ecx
	jbe	.L880
	movl	in_section@GOTOFF(%ebx), %eax
	cmpl	$3, %eax
	jne	.L880
	movl	in_named_name@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_named_section_flags@PLT
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L880
	.loc 1 3584 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	assemble_align@PLT
.L880:
.LBE32:
	.loc 1 3465 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
.L878:
	cmpl	$0, -48(%ebp)
	jne	.L879
	.loc 1 3592 0
	movl	mips_string_length@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3596 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %edx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	$0, 12(%eax)
	movl	12(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 3597 0
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
	.loc 1 3605 0
	pushl	%ebp
.LCFI323:
	movl	%esp, %ebp
.LCFI324:
	pushl	%ebx
.LCFI325:
	subl	$20, %esp
.LCFI326:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3610 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L915
	movl	const_str_htab@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	htab_elements@PLT
	testl	%eax, %eax
	je	.L930
.L915:
	.loc 1 3613 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L918
.L919:
	.loc 1 3614 0
	movl	-8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 3613 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L918:
	cmpl	$0, -8(%ebp)
	jne	.L919
	.loc 1 3616 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	jmp	.L921
.L922:
	.loc 1 3617 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L923
	.loc 1 3618 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	mark_constants
.L923:
	.loc 1 3616 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L921:
	cmpl	$0, -16(%ebp)
	jne	.L922
	.loc 1 3620 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3621 0
	jmp	.L926
.L927:
	.loc 1 3624 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3626 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L928
	.loc 1 3627 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	mark_constants
.L928:
	.loc 1 3622 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L926:
	.loc 1 3621 0
	cmpl	$0, -12(%ebp)
	jne	.L927
.L930:
	.loc 1 3629 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE96:
	.size	mark_constant_pool, .-mark_constant_pool
	.section	.rodata
	.type	__FUNCTION__.18093, @object
	.size	__FUNCTION__.18093, 15
__FUNCTION__.18093:
	.string	"mark_constants"
	.text
	.type	mark_constants, @function
mark_constants:
.LFB97:
	.loc 1 3639 0
	pushl	%ebp
.LCFI327:
	movl	%esp, %ebp
.LCFI328:
	pushl	%ebx
.LCFI329:
	subl	$36, %esp
.LCFI330:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3643 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L950
	.loc 1 3646 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L934
	.loc 1 3648 0
	movl	$0, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_constant
	.loc 1 3649 0
	jmp	.L950
.L934:
	.loc 1 3655 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L936
	.loc 1 3657 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	mark_constants
	.loc 1 3658 0
	jmp	.L950
.L936:
	.loc 1 3661 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3663 0
	movl	$0, -16(%ebp)
	jmp	.L938
.L939:
	.loc 1 3665 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -12(%ebp)
	subl	$48, %eax
	movl	%eax, -24(%ebp)
	cmpl	$71, -24(%ebp)
	ja	.L940
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L944@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L944:
	.long	.L945@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L945@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L942@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L945@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L943@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L945@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L945@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L940@GOTOFF
	.long	.L945@GOTOFF
	.long	.L940@GOTOFF
	.long	.L945@GOTOFF
	.long	.L940@GOTOFF
	.long	.L945@GOTOFF
	.text
.L943:
	.loc 1 3668 0
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	mark_constants
	.loc 1 3669 0
	jmp	.L945
.L942:
	.loc 1 3672 0
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	4(%eax,%edx,8), %eax
	testl	%eax, %eax
	je	.L945
.LBB35:
	.loc 1 3676 0
	movl	$0, -8(%ebp)
	jmp	.L948
.L949:
	.loc 1 3677 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	mark_constants
	.loc 1 3676 0
	addl	$1, -8(%ebp)
.L948:
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L949
	.loc 1 3679 0
	jmp	.L945
.L940:
.LBE35:
	.loc 1 3692 0
	leal	__FUNCTION__.18093@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3692, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L945:
	.loc 1 3663 0
	addl	$1, -16(%ebp)
.L938:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-16(%ebp), %eax
	jg	.L939
.L950:
	.loc 1 3695 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	mark_constants, .-mark_constants
	.type	mark_constant, @function
mark_constant:
.LFB98:
	.loc 1 3705 0
	pushl	%ebp
.LCFI331:
	movl	%esp, %ebp
.LCFI332:
	pushl	%ebx
.LCFI333:
	subl	$36, %esp
.LCFI334:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3706 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3708 0
	cmpl	$0, -20(%ebp)
	jne	.L952
	.loc 1 3709 0
	movl	$0, -24(%ebp)
	jmp	.L954
.L952:
	.loc 1 3711 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L955
	.loc 1 3713 0
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L957
.LBB36:
	.loc 1 3715 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_pool_constant
	movl	%eax, -16(%ebp)
	.loc 1 3716 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L959
	.loc 1 3718 0
	movl	-16(%ebp), %eax
	movl	$1, 36(%eax)
	.loc 1 3719 0
	movl	-16(%ebp), %edx
	addl	$12, %edx
	movl	$0, 8(%esp)
	leal	mark_constant@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	jmp	.L955
.L959:
	.loc 1 3722 0
	movl	$-1, -24(%ebp)
	jmp	.L954
.L957:
.LBE36:
	.loc 1 3724 0
	movl	-20(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L955
.LBB37:
	.loc 1 3728 0
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
	.loc 1 3731 0
	cmpl	$0, -12(%ebp)
	je	.L955
.LBB38:
	.loc 1 3733 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3735 0
	movl	-20(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$127, %eax
	movb	%al, 3(%edx)
	.loc 1 3736 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	output_constant_def_contents
	.loc 1 3737 0
	movl	-12(%ebp), %eax
	movl	const_str_htab@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_clear_slot@PLT
.L955:
.LBE38:
.LBE37:
	.loc 1 3741 0
	movl	$0, -24(%ebp)
.L954:
	movl	-24(%ebp), %eax
	.loc 1 3742 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE98:
	.size	mark_constant, .-mark_constant
	.type	output_addressed_constants, @function
output_addressed_constants:
.LFB99:
	.loc 1 3751 0
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
	.loc 1 3752 0
	movl	$0, -16(%ebp)
	.loc 1 3757 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 8(%ebp)
	.loc 1 3759 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$118, -24(%ebp)
	ja	.L971
	cmpl	$116, -24(%ebp)
	jae	.L969
	cmpl	$60, -24(%ebp)
	je	.L967
	cmpl	$61, -24(%ebp)
	je	.L968
	cmpl	$47, -24(%ebp)
	je	.L966
	jmp	.L965
.L971:
	cmpl	$123, -24(%ebp)
	je	.L970
	cmpl	$126, -24(%ebp)
	je	.L970
	jmp	.L965
.L970:
	.loc 1 3766 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L972
.L973:
	.loc 1 3767 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L972:
	.loc 1 3766 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	handled_component_p@PLT
	testl	%eax, %eax
	jne	.L973
	.loc 1 3770 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	je	.L975
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L977
.L975:
	.loc 1 3772 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant_def@PLT
.L977:
	.loc 1 3774 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L978
	.loc 1 3775 0
	orl	$2, -16(%ebp)
	jmp	.L965
.L978:
	.loc 1 3777 0
	orl	$1, -16(%ebp)
	.loc 1 3778 0
	jmp	.L965
.L967:
	.loc 1 3781 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -16(%ebp)
	.loc 1 3782 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	orl	%eax, -16(%ebp)
	.loc 1 3783 0
	jmp	.L965
.L968:
	.loc 1 3786 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -16(%ebp)
	.loc 1 3787 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -12(%ebp)
	.loc 1 3789 0
	cmpl	$1, -16(%ebp)
	jne	.L981
	cmpl	$1, -12(%ebp)
	jne	.L981
	.loc 1 3790 0
	movl	$0, -16(%ebp)
	.loc 1 3789 0
	jmp	.L965
.L981:
	.loc 1 3792 0
	movl	-12(%ebp), %eax
	orl	%eax, -16(%ebp)
	.loc 1 3793 0
	jmp	.L965
.L969:
	.loc 1 3798 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	movl	%eax, -16(%ebp)
	.loc 1 3799 0
	jmp	.L965
.L966:
	.loc 1 3802 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L985
.L986:
	.loc 1 3803 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L987
	.loc 1 3804 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	output_addressed_constants
	orl	%eax, -16(%ebp)
.L987:
	.loc 1 3802 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L985:
	cmpl	$0, -8(%ebp)
	jne	.L986
.L965:
	.loc 1 3811 0
	movl	-16(%ebp), %eax
	.loc 1 3812 0
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
	.loc 1 3828 0
	pushl	%ebp
.LCFI339:
	movl	%esp, %ebp
.LCFI340:
	pushl	%ebx
.LCFI341:
	subl	$100, %esp
.LCFI342:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3831 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 8(%ebp)
	.loc 1 3833 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -88(%ebp)
	cmpl	$100, -88(%ebp)
	ja	.L991
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	.L999@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L999:
	.long	.L992@GOTOFF
	.long	.L992@GOTOFF
	.long	.L992@GOTOFF
	.long	.L992@GOTOFF
	.long	.L992@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L993@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L994@GOTOFF
	.long	.L995@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L996@GOTOFF
	.long	.L996@GOTOFF
	.long	.L997@GOTOFF
	.long	.L997@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L998@GOTOFF
	.long	.L991@GOTOFF
	.long	.L991@GOTOFF
	.long	.L998@GOTOFF
	.text
.L993:
	.loc 1 3836 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1000
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1002
.L1000:
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1002
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1002
.LBB39:
	.loc 1 3842 0
	movb	$1, -5(%ebp)
	.loc 1 3844 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1005
.L1006:
.LBB40:
	.loc 1 3847 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3848 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -48(%ebp)
	.loc 1 3849 0
	cmpl	$0, -48(%ebp)
	jne	.L1007
	.loc 1 3850 0
	movl	$0, -84(%ebp)
	jmp	.L1009
.L1007:
	.loc 1 3851 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L1010
	.loc 1 3852 0
	movb	$0, -5(%ebp)
.L1010:
.LBE40:
	.loc 1 3844 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L1005:
	cmpl	$0, -52(%ebp)
	jne	.L1006
	.loc 1 3857 0
	cmpb	$0, -5(%ebp)
	je	.L1013
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1015
.L1013:
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
.L1015:
	movl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1002:
.LBE39:
	.loc 1 3860 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1016
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1018
.L1016:
	movl	$0, -76(%ebp)
.L1018:
	movl	-76(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L992:
	.loc 1 3867 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L998:
	.loc 1 3871 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	staticp@PLT
	testl	%eax, %eax
	je	.L1019
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L1021
.L1019:
	movl	$0, -72(%ebp)
.L1021:
	movl	-72(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L997:
	.loc 1 3875 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L996:
	.loc 1 3880 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1022
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1024
.L1022:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1025
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1024
.L1025:
	.loc 1 3882 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1024:
	.loc 1 3885 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1027
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1029
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L1029
.L1027:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1031
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1029
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L1029
.L1031:
	.loc 1 3887 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1029:
	.loc 1 3890 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1034
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1034
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1034
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1038
.L1034:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1039
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1039
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1039
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1038
.L1039:
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
	jne	.L1038
	.loc 1 3894 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1038:
	.loc 1 3898 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1044
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1044
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1044
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1048
.L1044:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1049
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1049
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1049
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1048
.L1049:
.LBB41:
	.loc 1 3902 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -44(%ebp)
	.loc 1 3903 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L991
	.loc 1 3904 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1048:
.LBE41:
	.loc 1 3909 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1055
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1055
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1055
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1059
.L1055:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1060
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1059
.L1060:
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
	jl	.L1059
	.loc 1 3913 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1059:
	.loc 1 3918 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L1063
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L1065
.L1063:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1066
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1066
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1066
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1065
.L1066:
	.loc 1 3921 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1070
	.loc 1 3922 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1070:
	.loc 1 3923 0
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
	jg	.L1065
	.loc 1 3925 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1065:
	.loc 1 3930 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L991
	.loc 1 3931 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L994:
	.loc 1 3936 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1075
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1075
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1075
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1079
.L1075:
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -68(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1080
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1080
	movl	$64, -64(%ebp)
	jmp	.L1083
.L1080:
	movl	$32, -64(%ebp)
.L1083:
	movl	-64(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jl	.L991
.L1079:
.LBB42:
	.loc 1 3940 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3942 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3944 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1085
	.loc 1 3945 0
	movl	-36(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1085:
	.loc 1 3946 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L991
	.loc 1 3947 0
	movl	-40(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L995:
.LBE42:
	.loc 1 3952 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1088
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1088
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1088
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1092
.L1088:
	movl	12(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -60(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1093
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1093
	movl	$64, -56(%ebp)
	jmp	.L1096
.L1093:
	movl	$32, -56(%ebp)
.L1096:
	movl	-56(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jl	.L1097
.L1092:
.LBB43:
	.loc 1 3956 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3958 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	initializer_constant_valid_p@PLT
	movl	%eax, -28(%ebp)
	.loc 1 3960 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1098
	.loc 1 3961 0
	movl	-32(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1098:
	.loc 1 3964 0
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	.L1100
	cmpl	$0, -32(%ebp)
	je	.L1100
	.loc 1 3965 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1100:
	.loc 1 3970 0
	cmpl	$0, -32(%ebp)
	je	.L1097
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1097
	cmpl	$0, -28(%ebp)
	je	.L1097
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1097
	movl	-32(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1097
	.loc 1 3973 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L1097:
.LBE43:
	.loc 1 3977 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1108
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1108
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1108
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L991
.L1108:
.LBB44:
	.loc 1 3980 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3981 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3988 0
	jmp	.L1112
.L1113:
.LBB45:
	.loc 1 3992 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3993 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L1123
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L1116
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$3, %eax
	je	.L1116
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$5, %eax
	je	.L1116
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	jne	.L1123
.L1116:
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
	ja	.L1123
	.loc 1 3998 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1112:
.LBE45:
	.loc 1 3988 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1113
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1113
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L1113
	.loc 1 4001 0
	jmp	.L1123
.L1124:
.LBB46:
	.loc 1 4005 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4006 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L1125
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	je	.L1127
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$3, %eax
	je	.L1127
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$5, %eax
	je	.L1127
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$7, %eax
	jne	.L1125
.L1127:
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
	ja	.L1125
	.loc 1 4011 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1123:
.LBE46:
	.loc 1 4001 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1124
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1124
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L1124
.L1125:
	.loc 1 4014 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L991
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L991
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L991
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$32, %al
	jne	.L991
	.loc 1 4018 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1009
.L991:
.LBE44:
	.loc 1 4026 0
	movl	$0, -84(%ebp)
.L1009:
	movl	-84(%ebp), %eax
	.loc 1 4027 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	initializer_constant_valid_p, .-initializer_constant_valid_p
	.section	.rodata
	.type	__FUNCTION__.18702, @object
	.size	__FUNCTION__.18702, 16
__FUNCTION__.18702:
	.string	"output_constant"
	.align 4
.LC133:
	.string	"initializer for integer value is too complicated"
	.align 4
.LC134:
	.string	"initializer for floating value is not a floating constant"
.LC135:
	.string	"unknown set constructor type"
	.text
.globl output_constant
	.type	output_constant, @function
output_constant:
.LFB101:
	.loc 1 4054 0
	pushl	%ebp
.LCFI343:
	movl	%esp, %ebp
.LCFI344:
	pushl	%edi
.LCFI345:
	pushl	%esi
.LCFI346:
	pushl	%ebx
.LCFI347:
	subl	$140, %esp
.LCFI348:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 4054 0
	movl	%gs:20, %eax
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	.loc 1 4061 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	40(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -68(%ebp)
	.loc 1 4063 0
	movl	-80(%ebp), %eax
	orl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L1210
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1144
	.loc 1 4064 0
	jmp	.L1210
.L1145:
	.loc 1 4071 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
.L1144:
	.loc 1 4068 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1145
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1145
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L1145
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$119, %al
	je	.L1145
	.loc 1 4073 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 4074 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 4078 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1150
	movl	-68(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1150
	.loc 1 4080 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	.loc 1 4081 0
	jmp	.L1210
.L1150:
	.loc 1 4084 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$126, %al
	jne	.L1153
	.loc 1 4091 0
	leal	__FUNCTION__.18702@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4091, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1153:
	.loc 1 4098 0
	cmpl	$22, -44(%ebp)
	ja	.L1155
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	.L1163@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1163:
	.long	.L1210@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1157@GOTOFF
	.long	.L1158@GOTOFF
	.long	.L1159@GOTOFF
	.long	.L1160@GOTOFF
	.long	.L1157@GOTOFF
	.long	.L1157@GOTOFF
	.long	.L1157@GOTOFF
	.long	.L1157@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1157@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1155@GOTOFF
	.long	.L1160@GOTOFF
	.long	.L1161@GOTOFF
	.long	.L1162@GOTOFF
	.long	.L1162@GOTOFF
	.text
.L1157:
	.loc 1 4107 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1164
	cmpl	$14, -44(%ebp)
	je	.L1166
	cmpl	$7, -44(%ebp)
	jne	.L1164
.L1166:
	.loc 1 4110 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	WFE_Add_Aggregate_Init_Address@PLT
	.loc 1 4111 0
	jmp	.L1210
.L1164:
	.loc 1 4113 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L1168
	cmpl	$14, -44(%ebp)
	jne	.L1168
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L1168
	movl	-68(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1168
	.loc 1 4117 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Add_Aggregate_Init_Address@PLT
	.loc 1 4118 0
	jmp	.L1210
.L1168:
	.loc 1 4120 0
	cmpl	$14, -44(%ebp)
	jne	.L1173
	.loc 1 4122 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Add_Aggregate_Init_Address@PLT
	.loc 1 4123 0
	jmp	.L1210
.L1173:
	.loc 1 4126 0
	cmpl	$7, -44(%ebp)
	jne	.L1175
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L1175
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L1175
	.loc 1 4129 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Add_Aggregate_Init_Address@PLT
	.loc 1 4130 0
	jmp	.L1210
.L1175:
	.loc 1 4133 0
	movl	-80(%ebp), %esi
	movl	$5, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-68(%ebp), %eax
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
	je	.L1181
	.loc 1 4136 0
	leal	.LC133@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4137 0
	jmp	.L1181
.L1158:
	.loc 1 4140 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	je	.L1182
	.loc 1 4141 0
	leal	.LC134@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1182:
	.loc 1 4143 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	mode_for_size@PLT
	movl	%eax, %ecx
	movl	-68(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	(%edx), %eax
	movl	%eax, (%esp)
	movl	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	8(%edx), %eax
	movl	%eax, 8(%esp)
	movl	12(%edx), %eax
	movl	%eax, 12(%esp)
	movl	16(%edx), %eax
	movl	%eax, 16(%esp)
	movl	20(%edx), %eax
	movl	%eax, 20(%esp)
	call	assemble_real@PLT
	.loc 1 4146 0
	jmp	.L1181
.L1159:
	.loc 1 4149 0
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%edi, %eax
	movl	%edi, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	20(%eax), %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, (%esp)
	call	output_constant@PLT
	.loc 1 4150 0
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%edi, %eax
	movl	%edi, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	min_align
	movl	%eax, -92(%ebp)
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%edi, %eax
	movl	%edi, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	24(%eax), %eax
	movl	-92(%ebp), %esi
	movl	%esi, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	output_constant@PLT
	.loc 1 4152 0
	jmp	.L1181
.L1160:
	.loc 1 4156 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1184
	.loc 1 4158 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constructor
	.loc 1 4159 0
	jmp	.L1210
.L1184:
	.loc 1 4161 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1186
	.loc 1 4163 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-108(%ebp), %edi
	cmpl	%edi, -100(%ebp)
	jl	.L1188
	movl	-108(%ebp), %eax
	cmpl	%eax, -100(%ebp)
	jg	.L1189
	movl	-112(%ebp), %edx
	cmpl	%edx, -104(%ebp)
	jbe	.L1188
.L1189:
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
.L1188:
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 4164 0
	movl	-56(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	24(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_string@PLT
	jmp	.L1181
.L1186:
	.loc 1 4166 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$29, %al
	jne	.L1191
.LBB47:
	.loc 1 4173 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	inner_mode_array@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4174 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	cmpl	20(%ebp), %eax
	ja	.L1193
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mode_alignment@PLT
	movl	%eax, -88(%ebp)
	jmp	.L1195
.L1193:
	movl	20(%ebp), %edx
	movl	%edx, -88(%ebp)
.L1195:
	movl	-88(%ebp), %esi
	movl	%esi, -32(%ebp)
	.loc 1 4176 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_unit_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 4178 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4179 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-36(%ebp), %eax
	movl	20(%eax), %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, (%esp)
	call	output_constant@PLT
	.loc 1 4180 0
	jmp	.L1196
.L1197:
	.loc 1 4181 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	-36(%ebp), %eax
	movl	20(%eax), %esi
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, (%esp)
	call	output_constant@PLT
.L1196:
	.loc 1 4180 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	.L1197
	jmp	.L1181
.L1191:
.LBE47:
	.loc 1 4184 0
	leal	__FUNCTION__.18702@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4184, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1162:
	.loc 1 4189 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1199
	.loc 1 4190 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constructor
	.loc 1 4193 0
	jmp	.L1210
.L1199:
	.loc 1 4192 0
	leal	__FUNCTION__.18702@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4192, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1161:
	.loc 1 4196 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1201
	.loc 1 4197 0
	movl	-56(%ebp), %esi
	movl	$5, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_expr@PLT
	movl	%eax, %edx
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_integer@PLT
	jmp	.L1210
.L1201:
	.loc 1 4200 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1204
.LBB48:
	.loc 1 4202 0
	movl	-56(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	32(%esp), %edi
	movl	%edi, -84(%ebp)
	movl	-84(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4203 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	get_set_constructor_bytes@PLT
	testl	%eax, %eax
	je	.L1206
	.loc 1 4204 0
	leal	__FUNCTION__.18702@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4204, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1206:
	.loc 1 4205 0
	movl	-56(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_string@PLT
	jmp	.L1210
.L1204:
.LBE48:
	.loc 1 4208 0
	leal	.LC135@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4209 0
	jmp	.L1210
.L1155:
	.loc 1 4215 0
	leal	__FUNCTION__.18702@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4215, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1181:
	.loc 1 4218 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	subl	%eax, -80(%ebp)
	sbbl	%edx, -76(%ebp)
	.loc 1 4219 0
	cmpl	$0, -76(%ebp)
	js	.L1210
	cmpl	$0, -76(%ebp)
	jg	.L1209
	cmpl	$0, -80(%ebp)
	jbe	.L1210
.L1209:
	.loc 1 4220 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
.L1210:
	.loc 1 4221 0
	movl	-20(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L1211
	call	__stack_chk_fail_local
.L1211:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE101:
	.size	output_constant, .-output_constant
	.type	min_align, @function
min_align:
.LFB61:
	.loc 1 1905 0
	pushl	%ebp
.LCFI349:
	movl	%esp, %ebp
.LCFI350:
	.loc 1 1906 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	orl	%eax, %edx
	movl	12(%ebp), %eax
	orl	8(%ebp), %eax
	negl	%eax
	andl	%edx, %eax
	.loc 1 1907 0
	popl	%ebp
	ret
.LFE61:
	.size	min_align, .-min_align
	.type	array_size_for_constructor, @function
array_size_for_constructor:
.LFB102:
	.loc 1 4231 0
	pushl	%ebp
.LCFI351:
	movl	%esp, %ebp
.LCFI352:
	pushl	%esi
.LCFI353:
	pushl	%ebx
.LCFI354:
	subl	$48, %esp
.LCFI355:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4237 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1215
	.loc 1 4238 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -28(%ebp)
	jmp	.L1217
.L1215:
	.loc 1 4240 0
	movl	$0, -20(%ebp)
	.loc 1 4241 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1218
.L1219:
.LBB49:
	.loc 1 4243 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4245 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$115, %al
	jne	.L1220
	.loc 1 4246 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
.L1220:
	.loc 1 4247 0
	cmpl	$0, -20(%ebp)
	je	.L1222
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L1224
.L1222:
	.loc 1 4248 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1224:
.LBE49:
	.loc 1 4241 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1218:
	cmpl	$0, -16(%ebp)
	jne	.L1219
	.loc 1 4251 0
	cmpl	$0, -20(%ebp)
	jne	.L1226
	.loc 1 4252 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L1217
.L1226:
	.loc 1 4255 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %edx
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
	.loc 1 4258 0
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
	.loc 1 4261 0
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
	.loc 1 4263 0
	movl	$1, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L1217:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	.loc 1 4264 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE102:
	.size	array_size_for_constructor, .-array_size_for_constructor
	.section	.rodata
	.type	__FUNCTION__.18914, @object
	.size	__FUNCTION__.18914, 19
__FUNCTION__.18914:
	.string	"output_constructor"
	.align 4
.LC136:
	.string	"invalid initial value for member `%s'"
	.text
	.type	output_constructor, @function
output_constructor:
.LFB103:
	.loc 1 4274 0
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
	subl	$332, %esp
.LCFI361:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -164(%ebp)
	.loc 1 4275 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4276 0
	movl	$0, -56(%ebp)
	.loc 1 4277 0
	movl	$0, -52(%ebp)
	.loc 1 4280 0
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	.loc 1 4282 0
	movl	$0, -48(%ebp)
	.loc 1 4283 0
	movl	$0, -44(%ebp)
	.loc 1 4288 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L1230
	.loc 1 4289 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
.L1230:
	.loc 1 4291 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1232
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1232
	.loc 1 4293 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
.L1232:
	.loc 1 4304 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4305 0
	jmp	.L1235
.L1236:
.LBB50:
	.loc 1 4309 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4310 0
	movl	$0, -36(%ebp)
	.loc 1 4314 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L1237
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	je	.L1237
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$23, %al
	jne	.L1240
.L1237:
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1240
	.loc 1 4317 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4314 0
	jmp	.L1242
.L1240:
	.loc 1 4319 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1242
	.loc 1 4320 0
	movl	-60(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
.L1242:
	.loc 1 4323 0
	cmpl	$0, -40(%ebp)
	je	.L1244
	.loc 1 4324 0
	jmp	.L1246
.L1247:
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L1246:
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1248
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1248
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1244
.L1248:
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1244
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
	je	.L1247
.L1244:
	.loc 1 4326 0
	cmpl	$0, -36(%ebp)
	je	.L1252
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$115, %al
	jne	.L1252
.LBB51:
	.loc 1 4329 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 4330 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	.loc 1 4331 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	.loc 1 4333 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	min_align
	movl	%eax, -32(%ebp)
	.loc 1 4335 0
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	jmp	.L1255
.L1256:
	.loc 1 4338 0
	cmpl	$0, -40(%ebp)
	jne	.L1257
	.loc 1 4339 0
	movl	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	jmp	.L1259
.L1257:
	.loc 1 4341 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	-32(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant@PLT
.L1259:
	.loc 1 4344 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	addl	-152(%ebp), %eax
	adcl	-148(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 4335 0
	addl	$1, -128(%ebp)
	adcl	$0, -124(%ebp)
.L1255:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
	movl	-236(%ebp), %edx
	cmpl	-132(%ebp), %edx
	jl	.L1256
	movl	-236(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	jg	.L1262
	movl	-240(%ebp), %esi
	cmpl	-136(%ebp), %esi
	jbe	.L1256
	.loc 1 4326 0
	jmp	.L1262
.L1252:
.LBE51:
	.loc 1 4347 0
	cmpl	$0, -56(%ebp)
	je	.L1263
	movl	-56(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1265
.L1263:
.LBB52:
	.loc 1 4354 0
	cmpl	$0, -56(%ebp)
	je	.L1266
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	int_byte_position@PLT
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	jmp	.L1268
.L1266:
	movl	$0, -232(%ebp)
	movl	$0, -228(%ebp)
.L1268:
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 4357 0
	cmpl	$0, -36(%ebp)
	je	.L1269
	.loc 1 4358 0
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
.L1269:
	.loc 1 4362 0
	cmpl	$0, -48(%ebp)
	je	.L1271
	.loc 1 4364 0
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
	.loc 1 4365 0
	addl	$1, -160(%ebp)
	adcl	$0, -156(%ebp)
	.loc 1 4366 0
	movl	$0, -48(%ebp)
.L1271:
	.loc 1 4372 0
	cmpl	$0, -56(%ebp)
	jne	.L1273
	cmpl	$0, -36(%ebp)
	je	.L1275
.L1273:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%edx, %ecx
	xorl	-156(%ebp), %ecx
	xorl	-160(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1275
	.loc 1 4374 0
	movl	-112(%ebp), %edx
	movl	-160(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	.loc 1 4375 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
.L1275:
	.loc 1 4379 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	shldl	$3, %eax, %edx
	sall	$3, %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	min_align
	movl	%eax, -28(%ebp)
	.loc 1 4382 0
	cmpl	$0, -56(%ebp)
	je	.L1277
	.loc 1 4384 0
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	.loc 1 4391 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$19, %al
	jne	.L1279
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L1279
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L1279
	.loc 1 4395 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	array_size_for_constructor
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	.loc 1 4398 0
	movl	-120(%ebp), %eax
	orl	-116(%ebp), %eax
	testl	%eax, %eax
	je	.L1289
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1289
	.loc 1 4399 0
	leal	__FUNCTION__.18914@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4399, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1279:
	.loc 1 4401 0
	movl	-56(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L1289
	.loc 1 4405 0
	movl	-56(%ebp), %eax
	movl	48(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L1289
	.loc 1 4406 0
	movl	-56(%ebp), %eax
	movl	48(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	jmp	.L1289
.L1277:
	.loc 1 4410 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L1289:
	.loc 1 4413 0
	cmpl	$0, -40(%ebp)
	jne	.L1290
	.loc 1 4414 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
	jmp	.L1292
.L1290:
	.loc 1 4416 0
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	output_constant@PLT
.L1292:
	.loc 1 4419 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	addl	-120(%ebp), %eax
	adcl	-116(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	.loc 1 4347 0
	jmp	.L1262
.L1265:
.LBE52:
	.loc 1 4421 0
	cmpl	$0, -40(%ebp)
	je	.L1293
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1293
	.loc 1 4422 0
	movl	-56(%ebp), %eax
	movl	52(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC136@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4421 0
	jmp	.L1262
.L1293:
.LBB53:
	.loc 1 4428 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	int_bit_position@PLT
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 4430 0
	movl	-56(%ebp), %eax
	movl	28(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	addl	-104(%ebp), %eax
	adcl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 4432 0
	cmpl	$0, -40(%ebp)
	jne	.L1296
	.loc 1 4433 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
.L1296:
	.loc 1 4437 0
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
	je	.L1298
	.loc 1 4440 0
	cmpl	$0, -48(%ebp)
	je	.L1300
	.loc 1 4442 0
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
	.loc 1 4443 0
	addl	$1, -160(%ebp)
	adcl	$0, -156(%ebp)
	.loc 1 4444 0
	movl	$0, -48(%ebp)
.L1300:
	.loc 1 4448 0
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
	je	.L1298
	.loc 1 4450 0
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
	.loc 1 4451 0
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
.L1298:
	.loc 1 4455 0
	cmpl	$0, -48(%ebp)
	jne	.L1305
	.loc 1 4456 0
	movl	$0, -44(%ebp)
	.loc 1 4466 0
	jmp	.L1305
.L1306:
.LBB54:
	.loc 1 4471 0
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
	.loc 1 4472 0
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
	.loc 1 4476 0
	jmp	.L1307
.L1308:
	.loc 1 4478 0
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
	.loc 1 4479 0
	addl	$1, -160(%ebp)
	adcl	$0, -156(%ebp)
	.loc 1 4480 0
	movl	$0, -44(%ebp)
.L1307:
	.loc 1 4476 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %ecx
	xorl	-156(%ebp), %ecx
	xorl	-160(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1308
	.loc 1 4485 0
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
	jl	.L1310
	movl	-204(%ebp), %eax
	cmpl	%eax, -196(%ebp)
	jg	.L1311
	movl	-208(%ebp), %edx
	cmpl	%edx, -200(%ebp)
	jbe	.L1310
.L1311:
	movl	-208(%ebp), %esi
	movl	-204(%ebp), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
.L1310:
	movl	-200(%ebp), %edi
	movl	%edi, -24(%ebp)
	.loc 1 4487 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1312
	.loc 1 4492 0
	movl	-96(%ebp), %edx
	movl	-104(%ebp), %eax
	subl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4498 0
	cmpl	$63, -20(%ebp)
	jg	.L1314
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	cmpl	$64, %eax
	jle	.L1314
	.loc 1 4501 0
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -24(%ebp)
	.loc 1 4502 0
	movl	$64, -20(%ebp)
.L1314:
	.loc 1 4506 0
	cmpl	$63, -20(%ebp)
	jg	.L1317
	.loc 1 4507 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	jmp	.L1319
.L1317:
	.loc 1 4508 0
	cmpl	$127, -20(%ebp)
	jg	.L1320
	.loc 1 4510 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 4511 0
	subl	$64, -20(%ebp)
	jmp	.L1319
.L1320:
	.loc 1 4514 0
	leal	__FUNCTION__.18914@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4514, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1319:
	.loc 1 4518 0
	movl	-20(%ebp), %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	sarl	%cl, %edi
	testb	$32, %cl
	je	.L1345
	movl	%edi, %esi
	sarl	$31, %edi
.L1345:
	movl	%esi, -192(%ebp)
	movl	%edi, -188(%ebp)
	movl	-24(%ebp), %ecx
	subl	$1, %ecx
	movl	$2, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1346
	movl	%eax, %edx
	xorl	%eax, %eax
.L1346:
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
	je	.L1347
	movl	%eax, %edx
	xorl	%eax, %eax
.L1347:
	orl	%eax, -44(%ebp)
	jmp	.L1322
.L1312:
	.loc 1 4528 0
	movl	-104(%ebp), %esi
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	int_bit_position@PLT
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4534 0
	cmpl	$63, -20(%ebp)
	jg	.L1323
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	cmpl	$64, %eax
	jle	.L1323
	.loc 1 4536 0
	movl	$64, %eax
	subl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1323:
	.loc 1 4539 0
	cmpl	$63, -20(%ebp)
	jg	.L1326
	.loc 1 4540 0
	movl	-40(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	jmp	.L1328
.L1326:
	.loc 1 4541 0
	cmpl	$127, -20(%ebp)
	jg	.L1329
	.loc 1 4543 0
	movl	-40(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 4544 0
	subl	$64, -20(%ebp)
	jmp	.L1328
.L1329:
	.loc 1 4547 0
	leal	__FUNCTION__.18914@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4547, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1328:
	.loc 1 4551 0
	movl	-20(%ebp), %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	sarl	%cl, %edi
	testb	$32, %cl
	je	.L1342
	movl	%edi, %esi
	sarl	$31, %edi
.L1342:
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-24(%ebp), %ecx
	subl	$1, %ecx
	movl	$2, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1343
	movl	%eax, %edx
	xorl	%eax, %eax
.L1343:
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
	je	.L1344
	movl	%eax, %edx
	xorl	%eax, %eax
.L1344:
	orl	%eax, -44(%ebp)
.L1322:
	.loc 1 4556 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%eax, -104(%ebp)
	adcl	%edx, -100(%ebp)
	.loc 1 4557 0
	movl	$1, -48(%ebp)
.L1305:
.LBE54:
	.loc 1 4466 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -296(%ebp)
	movl	%edx, -292(%ebp)
	movl	-292(%ebp), %edx
	cmpl	-92(%ebp), %edx
	jl	.L1306
	movl	-292(%ebp), %ecx
	cmpl	-92(%ebp), %ecx
	jg	.L1262
	movl	-296(%ebp), %esi
	cmpl	-96(%ebp), %esi
	jb	.L1306
.L1262:
.LBE53:
.LBE50:
	.loc 1 4307 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L1332
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -172(%ebp)
	jmp	.L1334
.L1332:
	movl	$0, -172(%ebp)
.L1334:
	movl	-172(%ebp), %edi
	movl	%edi, -56(%ebp)
.L1235:
	.loc 1 4305 0
	cmpl	$0, -60(%ebp)
	jne	.L1236
	.loc 1 4562 0
	cmpl	$0, -48(%ebp)
	je	.L1336
	.loc 1 4564 0
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
	.loc 1 4565 0
	addl	$1, -160(%ebp)
	adcl	$0, -156(%ebp)
.L1336:
	.loc 1 4568 0
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, -304(%ebp)
	movl	%edx, -300(%ebp)
	movl	-300(%ebp), %edx
	cmpl	-164(%ebp), %edx
	jg	.L1341
	movl	-300(%ebp), %ecx
	cmpl	-164(%ebp), %ecx
	jl	.L1340
	movl	-304(%ebp), %esi
	cmpl	-168(%ebp), %esi
	jae	.L1341
.L1340:
	.loc 1 4569 0
	movl	-168(%ebp), %edx
	movl	-160(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, (%esp)
	call	assemble_zeros@PLT
.L1341:
	.loc 1 4570 0
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
	.loc 1 4586 0
	pushl	%ebp
.LCFI362:
	movl	%esp, %ebp
.LCFI363:
	pushl	%ebx
.LCFI364:
	subl	$36, %esp
.LCFI365:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4587 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$16, %eax
	movb	%al, 35(%edx)
	.loc 1 4589 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1366
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1351
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1353
.L1351:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -20(%ebp)
.L1353:
	movl	-20(%ebp), %edx
	movzwl	(%edx), %eax
	cmpw	$76, %ax
	jne	.L1366
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1355
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1357
.L1355:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -16(%ebp)
.L1357:
	movl	-16(%ebp), %edx
	movl	4(%edx), %eax
	testl	%eax, %eax
	je	.L1366
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1359
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1361
.L1359:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
.L1361:
	movl	-12(%ebp), %edx
	movl	4(%edx), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L1366
	.loc 1 4593 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1363
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1365
.L1363:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -8(%ebp)
.L1365:
	movl	-8(%ebp), %edx
	movl	4(%edx), %eax
	movzbl	3(%eax), %edx
	orl	$64, %edx
	movb	%dl, 3(%eax)
.L1366:
	.loc 1 4594 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE104:
	.size	mark_weak, .-mark_weak
	.section	.rodata
	.align 4
.LC137:
	.string	"weak declaration of `%s' must precede definition"
	.align 4
.LC138:
	.string	"weak declaration of `%s' after first use results in unspecified behavior"
	.text
.globl merge_weak
	.type	merge_weak, @function
merge_weak:
.LFB105:
	.loc 1 4602 0
	pushl	%ebp
.LCFI366:
	movl	%esp, %ebp
.LCFI367:
	pushl	%ebx
.LCFI368:
	subl	$36, %esp
.LCFI369:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4603 0
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
	je	.L1382
	.loc 1 4606 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1370
.LBB55:
	.loc 1 4616 0
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1372
	.loc 1 4617 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L1374
.L1372:
	.loc 1 4623 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1374
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1374
	.loc 1 4625 0
	leal	.LC138@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L1374:
	.loc 1 4631 0
	movl	weak_decls@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1377
.L1378:
	.loc 1 4632 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1379
	.loc 1 4634 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 4635 0
	jmp	.L1381
.L1379:
	.loc 1 4631 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L1377:
	cmpl	$0, -8(%ebp)
	jne	.L1378
.L1381:
	.loc 1 4644 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_weak
	jmp	.L1382
.L1370:
.LBE55:
	.loc 1 4649 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_weak
.L1382:
	.loc 1 4650 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE105:
	.size	merge_weak, .-merge_weak
	.section	.rodata
	.align 4
.LC139:
	.string	"weak declaration of `%s' must be public"
	.text
.globl declare_weak
	.type	declare_weak, @function
declare_weak:
.LFB106:
	.loc 1 4657 0
	pushl	%ebp
.LCFI370:
	movl	%esp, %ebp
.LCFI371:
	pushl	%ebx
.LCFI372:
	subl	$20, %esp
.LCFI373:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4658 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1384
	.loc 1 4659 0
	leal	.LC139@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	jmp	.L1386
.L1384:
	.loc 1 4660 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1387
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1387
	.loc 1 4661 0
	leal	.LC137@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	error_with_decl@PLT
	.loc 1 4660 0
	jmp	.L1386
.L1387:
	.loc 1 4664 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L1386
	.loc 1 4665 0
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
.L1386:
	.loc 1 4671 0
	call	WFE_Add_Weak@PLT
	.loc 1 4674 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_weak
	.loc 1 4675 0
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
	.loc 1 4681 0
	pushl	%ebp
.LCFI374:
	movl	%esp, %ebp
.LCFI375:
	pushl	%ebx
.LCFI376:
	subl	$20, %esp
.LCFI377:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4685 0
	call	WFE_Weak_Finish@PLT
	.loc 1 4709 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE107:
	.size	weak_finish, .-weak_finish
	.section	.rodata
.LC140:
	.string	"\t.weak\t"
	.text
	.type	globalize_decl, @function
globalize_decl:
.LFB108:
	.loc 1 4716 0
	pushl	%ebp
.LCFI378:
	movl	%esp, %ebp
.LCFI379:
	pushl	%esi
.LCFI380:
	pushl	%ebx
.LCFI381:
	subl	$48, %esp
.LCFI382:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4717 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L1395
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1397
.L1395:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
.L1397:
	movl	-28(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4720 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1398
.LBB56:
	.loc 1 4727 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC140@GOTOFF(%ebx), %eax
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
	.loc 1 4732 0
	movl	weak_decls@GOT(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1407
.L1401:
	.loc 1 4734 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	cmpl	%eax, %esi
	jne	.L1402
	.loc 1 4735 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L1400
.L1402:
	.loc 1 4737 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L1400:
.L1407:
	.loc 1 4732 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L1401
	.loc 1 4739 0
	jmp	.L1406
.L1398:
.LBE56:
	.loc 1 4743 0
	movl	targetm@GOT(%ebx), %eax
	movl	48(%eax), %ecx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
.L1406:
	.loc 1 4744 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE108:
	.size	globalize_decl, .-globalize_decl
.globl assemble_alias
	.type	assemble_alias, @function
assemble_alias:
.LFB109:
	.loc 1 4752 0
	pushl	%ebp
.LCFI383:
	movl	%esp, %ebp
.LCFI384:
	pushl	%ebx
.LCFI385:
	subl	$20, %esp
.LCFI386:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4754 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	.loc 1 4755 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Assemble_Alias@PLT
	.loc 1 4798 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE109:
	.size	assemble_alias, .-assemble_alias
	.section	.rodata
.LC141:
	.string	"internal"
.LC142:
	.string	"hidden"
.LC143:
	.string	"protected"
	.section	.data.rel.ro.local
	.align 4
	.type	visibility_types.19327, @object
	.size	visibility_types.19327, 16
visibility_types.19327:
	.long	0
	.long	.LC141
	.long	.LC142
	.long	.LC143
	.section	.rodata
.LC144:
	.string	"\t.%s\t"
	.text
.globl default_assemble_visibility
	.type	default_assemble_visibility, @function
default_assemble_visibility:
.LFB110:
	.loc 1 4807 0
	pushl	%ebp
.LCFI387:
	movl	%esp, %ebp
.LCFI388:
	pushl	%ebx
.LCFI389:
	subl	$36, %esp
.LCFI390:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4814 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4815 0
	movl	12(%ebp), %eax
	movl	visibility_types.19327@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4818 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC144@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 4819 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 4820 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 4824 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE110:
	.size	default_assemble_visibility, .-default_assemble_visibility
	.type	maybe_assemble_visibility, @function
maybe_assemble_visibility:
.LFB111:
	.loc 1 4831 0
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
	.loc 1 4832 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_visibility@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4834 0
	cmpl	$0, -8(%ebp)
	je	.L1415
	.loc 1 4835 0
	movl	targetm@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L1415:
	.loc 1 4836 0
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
	.loc 1 4845 0
	pushl	%ebp
.LCFI395:
	movl	%esp, %ebp
.LCFI396:
	.loc 1 4847 0
	movl	$1, %eax
	.loc 1 4849 0
	popl	%ebp
	ret
.LFE112:
	.size	supports_one_only, .-supports_one_only
	.section	.rodata
	.type	__FUNCTION__.19352, @object
	.size	__FUNCTION__.19352, 19
__FUNCTION__.19352:
	.string	"make_decl_one_only"
	.text
.globl make_decl_one_only
	.type	make_decl_one_only, @function
make_decl_one_only:
.LFB113:
	.loc 1 4857 0
	pushl	%ebp
.LCFI397:
	movl	%esp, %ebp
.LCFI398:
	pushl	%ebx
.LCFI399:
	subl	$20, %esp
.LCFI400:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4858 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L1419
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L1419
	.loc 1 4859 0
	leal	__FUNCTION__.19352@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4859, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1419:
	.loc 1 4861 0
	movl	8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 4863 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1422
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1424
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1422
.L1424:
	.loc 1 4865 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$64, %edx
	movb	%dl, 34(%eax)
	.loc 1 4863 0
	jmp	.L1427
.L1422:
	.loc 1 4869 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$16, %eax
	movb	%al, 35(%edx)
	.loc 1 4871 0
	movl	8(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$1, %eax
	movb	%al, 35(%edx)
.L1427:
	.loc 1 4877 0
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
	.loc 1 4881 0
	pushl	%ebp
.LCFI401:
	movl	%esp, %ebp
.LCFI402:
	pushl	%ebx
.LCFI403:
	subl	$36, %esp
.LCFI404:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4882 0
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
	.loc 1 4884 0
	movl	$0, 12(%esp)
	leal	in_named_entry_eq@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	in_named_entry_hash@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	htab_create@PLT
	movl	%eax, in_named_htab@GOTOFF(%ebx)
	.loc 1 4887 0
	call	new_alias_set@PLT
	movl	%eax, const_alias_set@GOTOFF(%ebx)
	movl	%edx, 4+const_alias_set@GOTOFF(%ebx)
	.loc 1 4888 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE114:
	.size	init_varasm_once, .-init_varasm_once
	.section	.rodata
	.type	__FUNCTION__.19379, @object
	.size	__FUNCTION__.19379, 15
__FUNCTION__.19379:
	.string	"decl_tls_model"
.LC145:
	.string	"tls_model"
.LC146:
	.string	"local-exec"
.LC147:
	.string	"initial-exec"
.LC148:
	.string	"local-dynamic"
.LC149:
	.string	"global-dynamic"
	.text
.globl decl_tls_model
	.type	decl_tls_model, @function
decl_tls_model:
.LFB115:
	.loc 1 4893 0
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
	.loc 1 4895 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC145@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4898 0
	cmpl	$0, -12(%ebp)
	je	.L1431
	.loc 1 4900 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4901 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L1433
	.loc 1 4902 0
	leal	__FUNCTION__.19379@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4902, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1433:
	.loc 1 4903 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC146@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1435
	.loc 1 4904 0
	movl	$4, -16(%ebp)
	jmp	.L1437
.L1435:
	.loc 1 4905 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC147@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1438
	.loc 1 4906 0
	movl	$3, -16(%ebp)
	jmp	.L1437
.L1438:
	.loc 1 4907 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC148@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1440
	.loc 1 4908 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1442
	movl	$2, -28(%ebp)
	jmp	.L1444
.L1442:
	movl	$1, -28(%ebp)
.L1444:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1437
.L1440:
	.loc 1 4909 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	leal	.LC149@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1445
	.loc 1 4910 0
	movl	$1, -16(%ebp)
	jmp	.L1437
.L1445:
	.loc 1 4912 0
	leal	__FUNCTION__.19379@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4912, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1437:
	.loc 1 4913 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1447
.L1431:
	.loc 1 4916 0
	movl	targetm@GOT(%ebx), %eax
	movl	232(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movb	%al, -5(%ebp)
	.loc 1 4917 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1448
	.loc 1 4919 0
	cmpb	$0, -5(%ebp)
	je	.L1450
	.loc 1 4920 0
	movl	$4, -16(%ebp)
	jmp	.L1453
.L1450:
	.loc 1 4922 0
	movl	$3, -16(%ebp)
	jmp	.L1453
.L1448:
	.loc 1 4926 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1454
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1454
	.loc 1 4927 0
	movl	$2, -16(%ebp)
	.loc 1 4926 0
	jmp	.L1453
.L1454:
	.loc 1 4929 0
	movl	$1, -16(%ebp)
.L1453:
	.loc 1 4930 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jae	.L1457
	.loc 1 4931 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1457:
	.loc 1 4933 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1447:
	movl	-24(%ebp), %eax
	.loc 1 4934 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE115:
	.size	decl_tls_model, .-decl_tls_model
	.section	.rodata
	.type	__FUNCTION__.19438, @object
	.size	__FUNCTION__.19438, 16
__FUNCTION__.19438:
	.string	"decl_visibility"
.LC150:
	.string	"visibility"
.LC151:
	.string	"default"
	.text
.globl decl_visibility
	.type	decl_visibility, @function
decl_visibility:
.LFB116:
	.loc 1 4939 0
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
	.loc 1 4940 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC150@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4942 0
	cmpl	$0, -12(%ebp)
	je	.L1461
.LBB57:
	.loc 1 4944 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4946 0
	leal	.LC151@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1463
	.loc 1 4947 0
	movl	$0, -24(%ebp)
	jmp	.L1465
.L1463:
	.loc 1 4948 0
	leal	.LC141@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1466
	.loc 1 4949 0
	movl	$1, -24(%ebp)
	jmp	.L1465
.L1466:
	.loc 1 4950 0
	leal	.LC142@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1468
	.loc 1 4951 0
	movl	$2, -24(%ebp)
	jmp	.L1465
.L1468:
	.loc 1 4952 0
	leal	.LC143@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1470
	.loc 1 4953 0
	movl	$3, -24(%ebp)
	jmp	.L1465
.L1470:
	.loc 1 4955 0
	leal	__FUNCTION__.19438@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4955, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1461:
.LBE57:
	.loc 1 4958 0
	movl	$0, -24(%ebp)
.L1465:
	movl	-24(%ebp), %eax
	.loc 1 4959 0
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
	.loc 1 4973 0
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
	.loc 1 4974 0
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
	.loc 1 4975 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE117:
	.size	default_section_type_flags, .-default_section_type_flags
	.section	.rodata
.LC152:
	.string	".bss"
.LC153:
	.string	".bss."
.LC154:
	.string	".gnu.linkonce.b."
.LC155:
	.string	".sbss"
.LC156:
	.string	".sbss."
.LC157:
	.string	".gnu.linkonce.sb."
.LC158:
	.string	".tbss"
.LC159:
	.string	".gnu.linkonce.tb."
.LC160:
	.string	".tdata"
.LC161:
	.string	".gnu.linkonce.td."
.LC162:
	.string	".init_array"
.LC163:
	.string	".fini_array"
.LC164:
	.string	".preinit_array"
	.text
.globl default_section_type_flags_1
	.type	default_section_type_flags_1, @function
default_section_type_flags_1:
.LFB118:
	.loc 1 4983 0
	pushl	%ebp
.LCFI417:
	movl	%esp, %ebp
.LCFI418:
	pushl	%edi
.LCFI419:
	pushl	%esi
.LCFI420:
	pushl	%ebx
.LCFI421:
	subl	$124, %esp
.LCFI422:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4986 0
	cmpl	$0, 8(%ebp)
	je	.L1476
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1476
	.loc 1 4987 0
	movl	$256, -16(%ebp)
	.loc 1 4986 0
	jmp	.L1479
.L1476:
	.loc 1 4988 0
	cmpl	$0, 8(%ebp)
	je	.L1480
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_readonly_section_1@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1480
	.loc 1 4989 0
	movl	$0, -16(%ebp)
	.loc 1 4988 0
	jmp	.L1479
.L1480:
	.loc 1 4991 0
	movl	$512, -16(%ebp)
.L1479:
	.loc 1 4993 0
	cmpl	$0, 8(%ebp)
	je	.L1483
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1483
	.loc 1 4994 0
	orl	$2048, -16(%ebp)
.L1483:
	.loc 1 4996 0
	cmpl	$0, 8(%ebp)
	je	.L1486
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1486
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1486
	.loc 1 4997 0
	orl	$262656, -16(%ebp)
.L1486:
	.loc 1 4999 0
	leal	.LC152@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1490
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	.LC153@GOTOFF(%ebx), %eax
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
	je	.L1490
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC154@GOTOFF(%ebx), %esi
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
	je	.L1490
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1490
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	.LC156@GOTOFF(%ebx), %esi
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
	je	.L1490
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	leal	.LC157@GOTOFF(%ebx), %esi
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
	je	.L1490
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1490
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	leal	.LC159@GOTOFF(%ebx), %esi
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
	jne	.L1498
.L1490:
	.loc 1 5007 0
	orl	$8192, -16(%ebp)
.L1498:
	.loc 1 5009 0
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1499
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1499
	movl	12(%ebp), %eax
	movl	%eax, -92(%ebp)
	leal	.LC161@GOTOFF(%ebx), %esi
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
	je	.L1499
	movl	12(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	.LC159@GOTOFF(%ebx), %esi
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
	jne	.L1503
.L1499:
	.loc 1 5013 0
	orl	$262144, -16(%ebp)
.L1503:
	.loc 1 5020 0
	movl	-16(%ebp), %eax
	andl	$270592, %eax
	testl	%eax, %eax
	jne	.L1504
	leal	.LC162@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1506
	leal	.LC163@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L1506
	leal	.LC164@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1504
.L1506:
	.loc 1 5024 0
	orl	$524288, -16(%ebp)
.L1504:
	.loc 1 5026 0
	movl	-16(%ebp), %eax
	.loc 1 5027 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE118:
	.size	default_section_type_flags_1, .-default_section_type_flags_1
	.section	.rodata
	.type	__FUNCTION__.19543, @object
	.size	__FUNCTION__.19543, 25
__FUNCTION__.19543:
	.string	"default_no_named_section"
	.text
.globl default_no_named_section
	.type	default_no_named_section, @function
default_no_named_section:
.LFB119:
	.loc 1 5036 0
	pushl	%ebp
.LCFI423:
	movl	%esp, %ebp
.LCFI424:
	pushl	%ebx
.LCFI425:
	subl	$20, %esp
.LCFI426:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5039 0
	leal	__FUNCTION__.19543@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5039, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.LFE119:
	.size	default_no_named_section, .-default_no_named_section
	.section	.rodata
.LC165:
	.string	"\t.section\t%s\n"
	.text
.globl default_elf_asm_named_section
	.type	default_elf_asm_named_section, @function
default_elf_asm_named_section:
.LFB120:
	.loc 1 5046 0
	pushl	%ebp
.LCFI427:
	movl	%esp, %ebp
.LCFI428:
	pushl	%ebx
.LCFI429:
	subl	$52, %esp
.LCFI430:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5046 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 5047 0
	leal	-18(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5049 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	named_section_first_declaration@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L1513
	.loc 1 5051 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC165@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 5052 0
	jmp	.L1530
.L1513:
	.loc 1 5055 0
	movl	12(%ebp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L1516
	.loc 1 5056 0
	movl	-24(%ebp), %eax
	movb	$97, (%eax)
	addl	$1, -24(%ebp)
.L1516:
	.loc 1 5057 0
	movl	12(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L1518
	.loc 1 5058 0
	movl	-24(%ebp), %eax
	movb	$119, (%eax)
	addl	$1, -24(%ebp)
.L1518:
	.loc 1 5059 0
	movl	12(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1520
	.loc 1 5060 0
	movl	-24(%ebp), %eax
	movb	$120, (%eax)
	addl	$1, -24(%ebp)
.L1520:
	.loc 1 5061 0
	movl	12(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1522
	.loc 1 5062 0
	movl	-24(%ebp), %eax
	movb	$115, (%eax)
	addl	$1, -24(%ebp)
.L1522:
	.loc 1 5063 0
	movl	12(%ebp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L1524
	.loc 1 5064 0
	movl	-24(%ebp), %eax
	movb	$77, (%eax)
	addl	$1, -24(%ebp)
.L1524:
	.loc 1 5065 0
	movl	12(%ebp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1526
	.loc 1 5066 0
	movl	-24(%ebp), %eax
	movb	$83, (%eax)
	addl	$1, -24(%ebp)
.L1526:
	.loc 1 5067 0
	movl	12(%ebp), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	je	.L1528
	.loc 1 5068 0
	movl	-24(%ebp), %eax
	movb	$84, (%eax)
	addl	$1, -24(%ebp)
.L1528:
	.loc 1 5069 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
.L1530:
	.loc 1 5091 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1531
	call	__stack_chk_fail_local
.L1531:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE120:
	.size	default_elf_asm_named_section, .-default_elf_asm_named_section
	.section	.rodata
.LC166:
	.string	"\t.section\t%s,\"%s\"\n"
	.text
.globl default_coff_asm_named_section
	.type	default_coff_asm_named_section, @function
default_coff_asm_named_section:
.LFB121:
	.loc 1 5097 0
	pushl	%ebp
.LCFI431:
	movl	%esp, %ebp
.LCFI432:
	pushl	%ebx
.LCFI433:
	subl	$36, %esp
.LCFI434:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5097 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 5098 0
	leal	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 5100 0
	movl	12(%ebp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L1533
	.loc 1 5101 0
	movl	-20(%ebp), %eax
	movb	$119, (%eax)
	addl	$1, -20(%ebp)
.L1533:
	.loc 1 5102 0
	movl	12(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1535
	.loc 1 5103 0
	movl	-20(%ebp), %eax
	movb	$120, (%eax)
	addl	$1, -20(%ebp)
.L1535:
	.loc 1 5104 0
	movl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 5106 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC166@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 5107 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1538
	call	__stack_chk_fail_local
.L1538:
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE121:
	.size	default_coff_asm_named_section, .-default_coff_asm_named_section
	.section	.rodata
.LC167:
	.string	"discard"
.LC168:
	.string	"same_size"
.LC169:
	.string	"\t.linkonce %s\n"
	.text
.globl default_pe_asm_named_section
	.type	default_pe_asm_named_section, @function
default_pe_asm_named_section:
.LFB122:
	.loc 1 5113 0
	pushl	%ebp
.LCFI435:
	movl	%esp, %ebp
.LCFI436:
	pushl	%ebx
.LCFI437:
	subl	$20, %esp
.LCFI438:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5114 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_coff_asm_named_section@PLT
	.loc 1 5116 0
	movl	12(%ebp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L1545
	.loc 1 5121 0
	movl	12(%ebp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1542
	leal	.LC167@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1544
.L1542:
	leal	.LC168@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L1544:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC169@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L1545:
	.loc 1 5124 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE122:
	.size	default_pe_asm_named_section, .-default_pe_asm_named_section
	.section	.rodata
.LC170:
	.string	"\t.vtable_entry "
	.text
.globl assemble_vtable_entry
	.type	assemble_vtable_entry, @function
assemble_vtable_entry:
.LFB123:
	.loc 1 5133 0
	pushl	%ebp
.LCFI439:
	movl	%esp, %ebp
.LCFI440:
	pushl	%ebx
.LCFI441:
	subl	$36, %esp
.LCFI442:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5134 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC170@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5135 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	.loc 1 5136 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5137 0
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
	.loc 1 5138 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 5139 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE123:
	.size	assemble_vtable_entry, .-assemble_vtable_entry
	.section	.rodata
.LC171:
	.string	"\t.vtable_inherit "
	.text
.globl assemble_vtable_inherit
	.type	assemble_vtable_inherit, @function
assemble_vtable_inherit:
.LFB124:
	.loc 1 5147 0
	pushl	%ebp
.LCFI443:
	movl	%esp, %ebp
.LCFI444:
	pushl	%ebx
.LCFI445:
	subl	$20, %esp
.LCFI446:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5148 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC171@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5149 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	.loc 1 5150 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5151 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_addr_const@PLT
	.loc 1 5152 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 5153 0
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
	.loc 1 5162 0
	pushl	%ebp
.LCFI447:
	movl	%esp, %ebp
.LCFI448:
	pushl	%ebx
.LCFI449:
	subl	$36, %esp
.LCFI450:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 5163 0
	movb	$0, -9(%ebp)
	.loc 1 5165 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L1551
	.loc 1 5167 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_readonly_section@PLT
	testb	%al, %al
	je	.L1555
	.loc 1 5168 0
	movb	$1, -9(%ebp)
	jmp	.L1555
.L1551:
	.loc 1 5170 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1556
	.loc 1 5172 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1558
	cmpl	$0, 12(%ebp)
	jne	.L1555
.L1558:
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1555
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1555
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1555
	.loc 1 5176 0
	movb	$1, -9(%ebp)
	jmp	.L1555
.L1556:
	.loc 1 5178 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1564
	.loc 1 5179 0
	movl	flag_writable_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movb	%al, -9(%ebp)
	jmp	.L1555
.L1564:
	.loc 1 5180 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1566
	cmpl	$0, 12(%ebp)
	jne	.L1555
.L1566:
	.loc 1 5181 0
	movb	$1, -9(%ebp)
.L1555:
	.loc 1 5183 0
	cmpb	$0, -9(%ebp)
	je	.L1568
	.loc 1 5184 0
	call	readonly_data_section@PLT
	jmp	.L1571
.L1568:
	.loc 1 5186 0
	call	data_section@PLT
.L1571:
	.loc 1 5187 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE125:
	.size	default_select_section, .-default_select_section
	.type	categorize_decl_for_section, @function
categorize_decl_for_section:
.LFB126:
	.loc 1 5234 0
	pushl	%ebp
.LCFI451:
	movl	%esp, %ebp
.LCFI452:
	pushl	%ebx
.LCFI453:
	subl	$36, %esp
.LCFI454:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5237 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L1573
	.loc 1 5238 0
	movl	$0, -24(%ebp)
	jmp	.L1575
.L1573:
	.loc 1 5239 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1576
	.loc 1 5241 0
	movl	flag_writable_strings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1578
	.loc 1 5242 0
	movl	$6, -24(%ebp)
	jmp	.L1575
.L1578:
	.loc 1 5244 0
	movl	$2, -24(%ebp)
	jmp	.L1575
.L1576:
	.loc 1 5246 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1580
	.loc 1 5248 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1582
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1584
.L1582:
	.loc 1 5250 0
	movl	$13, -8(%ebp)
	.loc 1 5248 0
	jmp	.L1608
.L1584:
	.loc 1 5251 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1586
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1586
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1589
.L1586:
	.loc 1 5255 0
	cmpl	$0, 16(%ebp)
	je	.L1590
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1590
	.loc 1 5256 0
	movl	$7, -8(%ebp)
	.loc 1 5255 0
	jmp	.L1608
.L1590:
	.loc 1 5257 0
	cmpl	$0, 16(%ebp)
	je	.L1594
	cmpl	$0, 12(%ebp)
	je	.L1594
	.loc 1 5258 0
	movl	$8, -8(%ebp)
	.loc 1 5257 0
	jmp	.L1608
.L1594:
	.loc 1 5260 0
	movl	$6, -8(%ebp)
	.loc 1 5251 0
	jmp	.L1608
.L1589:
	.loc 1 5262 0
	cmpl	$0, 16(%ebp)
	je	.L1597
	movl	12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1597
	.loc 1 5263 0
	movl	$9, -8(%ebp)
	.loc 1 5262 0
	jmp	.L1608
.L1597:
	.loc 1 5264 0
	cmpl	$0, 16(%ebp)
	je	.L1600
	cmpl	$0, 12(%ebp)
	je	.L1600
	.loc 1 5265 0
	movl	$10, -8(%ebp)
	.loc 1 5264 0
	jmp	.L1608
.L1600:
	.loc 1 5266 0
	cmpl	$0, 12(%ebp)
	jne	.L1603
	movl	flag_merge_constants@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jg	.L1605
.L1603:
	.loc 1 5270 0
	movl	$1, -8(%ebp)
	.loc 1 5266 0
	jmp	.L1608
.L1605:
	.loc 1 5271 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	jne	.L1606
	.loc 1 5272 0
	movl	$3, -8(%ebp)
	jmp	.L1608
.L1606:
	.loc 1 5274 0
	movl	$4, -8(%ebp)
	jmp	.L1608
.L1580:
	.loc 1 5276 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L1609
	.loc 1 5278 0
	cmpl	$0, 16(%ebp)
	je	.L1611
	cmpl	$0, 12(%ebp)
	jne	.L1613
.L1611:
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1613
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1615
.L1613:
	.loc 1 5281 0
	movl	$6, -8(%ebp)
	.loc 1 5278 0
	jmp	.L1608
.L1615:
	.loc 1 5283 0
	movl	$1, -8(%ebp)
	jmp	.L1608
.L1609:
	.loc 1 5286 0
	movl	$1, -8(%ebp)
.L1608:
	.loc 1 5289 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L1617
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1617
	.loc 1 5291 0
	cmpl	$13, -8(%ebp)
	jne	.L1620
	.loc 1 5292 0
	movl	$15, -8(%ebp)
	jmp	.L1623
.L1620:
	.loc 1 5294 0
	movl	$12, -8(%ebp)
	.loc 1 5289 0
	jmp	.L1623
.L1617:
	.loc 1 5298 0
	movl	targetm@GOT(%ebx), %eax
	movl	228(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testb	%al, %al
	je	.L1623
	.loc 1 5300 0
	cmpl	$13, -8(%ebp)
	jne	.L1625
	.loc 1 5301 0
	movl	$14, -8(%ebp)
	jmp	.L1623
.L1625:
	.loc 1 5302 0
	movl	targetm@GOT(%ebx), %eax
	movzbl	247(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1627
	cmpl	$1, -8(%ebp)
	jne	.L1627
	.loc 1 5303 0
	movl	$5, -8(%ebp)
	.loc 1 5302 0
	jmp	.L1623
.L1627:
	.loc 1 5305 0
	movl	$11, -8(%ebp)
.L1623:
	.loc 1 5308 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1575:
	movl	-24(%ebp), %eax
	.loc 1 5309 0
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
	.loc 1 5315 0
	pushl	%ebp
.LCFI455:
	movl	%esp, %ebp
.LCFI456:
	pushl	%ebx
.LCFI457:
	subl	$20, %esp
.LCFI458:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5316 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_readonly_section_1@PLT
	movzbl	%al, %eax
	.loc 1 5317 0
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
	.loc 1 5324 0
	pushl	%ebp
.LCFI459:
	movl	%esp, %ebp
.LCFI460:
	subl	$24, %esp
.LCFI461:
	.loc 1 5325 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	categorize_decl_for_section
	subl	$1, %eax
	cmpl	$4, %eax
	ja	.L1634
	.loc 1 5332 0
	movl	$1, -4(%ebp)
	jmp	.L1636
.L1634:
	.loc 1 5335 0
	movl	$0, -4(%ebp)
.L1636:
	movl	-4(%ebp), %eax
	.loc 1 5338 0
	leave
	ret
.LFE128:
	.size	decl_readonly_section_1, .-decl_readonly_section_1
.globl default_elf_select_section
	.type	default_elf_select_section, @function
default_elf_select_section:
.LFB129:
	.loc 1 5347 0
	pushl	%ebp
.LCFI462:
	movl	%esp, %ebp
.LCFI463:
	pushl	%ebx
.LCFI464:
	subl	$36, %esp
.LCFI465:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5348 0
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
	.loc 1 5349 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE129:
	.size	default_elf_select_section, .-default_elf_select_section
	.section	.rodata
	.type	__FUNCTION__.19831, @object
	.size	__FUNCTION__.19831, 29
__FUNCTION__.19831:
	.string	"default_elf_select_section_1"
.LC172:
	.string	".sdata2"
.LC173:
	.string	".data.rel"
.LC174:
	.string	".data.rel.local"
.LC175:
	.string	".data.rel.ro"
.LC176:
	.string	".data.rel.ro.local"
.LC177:
	.string	".sdata"
	.text
.globl default_elf_select_section_1
	.type	default_elf_select_section_1, @function
default_elf_select_section_1:
.LFB130:
	.loc 1 5357 0
	pushl	%ebp
.LCFI466:
	movl	%esp, %ebp
.LCFI467:
	pushl	%ebx
.LCFI468:
	subl	$36, %esp
.LCFI469:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5358 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	categorize_decl_for_section
	movl	%eax, -20(%ebp)
	cmpl	$15, -20(%ebp)
	ja	.L1641
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	.L1658@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1658:
	.long	.L1642@GOTOFF
	.long	.L1643@GOTOFF
	.long	.L1644@GOTOFF
	.long	.L1645@GOTOFF
	.long	.L1646@GOTOFF
	.long	.L1647@GOTOFF
	.long	.L1648@GOTOFF
	.long	.L1649@GOTOFF
	.long	.L1650@GOTOFF
	.long	.L1651@GOTOFF
	.long	.L1652@GOTOFF
	.long	.L1653@GOTOFF
	.long	.L1654@GOTOFF
	.long	.L1655@GOTOFF
	.long	.L1656@GOTOFF
	.long	.L1657@GOTOFF
	.text
.L1642:
	.loc 1 5362 0
	leal	__FUNCTION__.19831@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5362, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1643:
	.loc 1 5364 0
	call	readonly_data_section@PLT
	.loc 1 5365 0
	jmp	.L1660
.L1644:
	.loc 1 5367 0
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mergeable_string_section@PLT
	.loc 1 5368 0
	jmp	.L1660
.L1645:
	.loc 1 5370 0
	movl	8(%ebp), %eax
	movl	68(%eax), %ecx
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	call	mergeable_string_section@PLT
	.loc 1 5371 0
	jmp	.L1660
.L1646:
	.loc 1 5373 0
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
	.loc 1 5374 0
	jmp	.L1660
.L1647:
	.loc 1 5376 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC172@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5377 0
	jmp	.L1660
.L1648:
	.loc 1 5379 0
	call	data_section@PLT
	.loc 1 5380 0
	jmp	.L1660
.L1649:
	.loc 1 5382 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC173@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5383 0
	jmp	.L1660
.L1650:
	.loc 1 5385 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC174@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5386 0
	jmp	.L1660
.L1651:
	.loc 1 5388 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5389 0
	jmp	.L1660
.L1652:
	.loc 1 5391 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5392 0
	jmp	.L1660
.L1653:
	.loc 1 5394 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC177@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5395 0
	jmp	.L1660
.L1654:
	.loc 1 5397 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC160@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5398 0
	jmp	.L1660
.L1655:
	.loc 1 5401 0
	call	bss_section@PLT
	.loc 1 5405 0
	jmp	.L1660
.L1656:
	.loc 1 5407 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC155@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5408 0
	jmp	.L1660
.L1657:
	.loc 1 5410 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC158@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5411 0
	jmp	.L1660
.L1641:
	.loc 1 5413 0
	leal	__FUNCTION__.19831@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5413, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1660:
	.loc 1 5415 0
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
	.loc 1 5424 0
	pushl	%ebp
.LCFI470:
	movl	%esp, %ebp
.LCFI471:
	pushl	%ebx
.LCFI472:
	subl	$20, %esp
.LCFI473:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5425 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_unique_section_1@PLT
	.loc 1 5426 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE131:
	.size	default_unique_section, .-default_unique_section
	.section	.rodata
	.type	__FUNCTION__.19887, @object
	.size	__FUNCTION__.19887, 25
__FUNCTION__.19887:
	.string	"default_unique_section_1"
.LC178:
	.string	".gnu.linkonce.t."
.LC179:
	.string	".text."
.LC180:
	.string	".gnu.linkonce.r."
.LC181:
	.string	".rodata."
.LC182:
	.string	".gnu.linkonce.s2."
.LC183:
	.string	".sdata2."
.LC184:
	.string	".gnu.linkonce.d."
.LC185:
	.string	".data."
.LC186:
	.string	".gnu.linkonce.s."
.LC187:
	.string	".sdata."
.LC188:
	.string	".tdata."
.LC189:
	.string	".tbss."
	.text
.globl default_unique_section_1
	.type	default_unique_section_1, @function
default_unique_section_1:
.LFB132:
	.loc 1 5433 0
	pushl	%ebp
.LCFI474:
	movl	%esp, %ebp
.LCFI475:
	pushl	%edi
.LCFI476:
	pushl	%esi
.LCFI477:
	pushl	%ebx
.LCFI478:
	subl	$108, %esp
.LCFI479:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 5433 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 5434 0
	movl	-48(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -17(%ebp)
	.loc 1 5439 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	categorize_decl_for_section
	movl	%eax, -92(%ebp)
	cmpl	$15, -92(%ebp)
	ja	.L1664
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	.L1674@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1674:
	.long	.L1665@GOTOFF
	.long	.L1666@GOTOFF
	.long	.L1666@GOTOFF
	.long	.L1666@GOTOFF
	.long	.L1666@GOTOFF
	.long	.L1667@GOTOFF
	.long	.L1668@GOTOFF
	.long	.L1668@GOTOFF
	.long	.L1668@GOTOFF
	.long	.L1668@GOTOFF
	.long	.L1668@GOTOFF
	.long	.L1669@GOTOFF
	.long	.L1670@GOTOFF
	.long	.L1671@GOTOFF
	.long	.L1672@GOTOFF
	.long	.L1673@GOTOFF
	.text
.L1665:
	.loc 1 5442 0
	cmpb	$0, -17(%ebp)
	je	.L1675
	leal	.LC178@GOTOFF(%ebx), %edi
	movl	%edi, -88(%ebp)
	jmp	.L1677
.L1675:
	leal	.LC179@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
.L1677:
	movl	-88(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5443 0
	jmp	.L1678
.L1666:
	.loc 1 5448 0
	cmpb	$0, -17(%ebp)
	je	.L1679
	leal	.LC180@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L1681
.L1679:
	leal	.LC181@GOTOFF(%ebx), %edi
	movl	%edi, -84(%ebp)
.L1681:
	movl	-84(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5449 0
	jmp	.L1678
.L1667:
	.loc 1 5451 0
	cmpb	$0, -17(%ebp)
	je	.L1682
	leal	.LC182@GOTOFF(%ebx), %edi
	movl	%edi, -80(%ebp)
	jmp	.L1684
.L1682:
	leal	.LC183@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
.L1684:
	movl	-80(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5452 0
	jmp	.L1678
.L1668:
	.loc 1 5458 0
	cmpb	$0, -17(%ebp)
	je	.L1685
	leal	.LC184@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1687
.L1685:
	leal	.LC185@GOTOFF(%ebx), %edi
	movl	%edi, -76(%ebp)
.L1687:
	movl	-76(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5459 0
	jmp	.L1678
.L1669:
	.loc 1 5461 0
	cmpb	$0, -17(%ebp)
	je	.L1688
	leal	.LC186@GOTOFF(%ebx), %edi
	movl	%edi, -72(%ebp)
	jmp	.L1690
.L1688:
	leal	.LC187@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
.L1690:
	movl	-72(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5462 0
	jmp	.L1678
.L1671:
	.loc 1 5464 0
	cmpb	$0, -17(%ebp)
	je	.L1691
	leal	.LC154@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	jmp	.L1693
.L1691:
	leal	.LC153@GOTOFF(%ebx), %edi
	movl	%edi, -68(%ebp)
.L1693:
	movl	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5465 0
	jmp	.L1678
.L1672:
	.loc 1 5467 0
	cmpb	$0, -17(%ebp)
	je	.L1694
	leal	.LC157@GOTOFF(%ebx), %edi
	movl	%edi, -64(%ebp)
	jmp	.L1696
.L1694:
	leal	.LC156@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
.L1696:
	movl	-64(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5468 0
	jmp	.L1678
.L1670:
	.loc 1 5470 0
	cmpb	$0, -17(%ebp)
	je	.L1697
	leal	.LC161@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1699
.L1697:
	leal	.LC188@GOTOFF(%ebx), %edi
	movl	%edi, -60(%ebp)
.L1699:
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 5471 0
	jmp	.L1678
.L1673:
	.loc 1 5473 0
	cmpb	$0, -17(%ebp)
	je	.L1700
	leal	.LC159@GOTOFF(%ebx), %edi
	movl	%edi, -56(%ebp)
	jmp	.L1702
.L1700:
	leal	.LC189@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
.L1702:
	movl	-56(%ebp), %edi
	movl	%edi, -40(%ebp)
	.loc 1 5474 0
	jmp	.L1678
.L1664:
	.loc 1 5476 0
	leal	__FUNCTION__.19887@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5476, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1678:
	.loc 1 5478 0
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
	.loc 1 5480 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 5481 0
	movl	targetm@GOT(%ebx), %eax
	movl	240(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -36(%ebp)
	.loc 1 5482 0
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
	.loc 1 5484 0
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
	.loc 1 5485 0
	movl	-24(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	-28(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 5486 0
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
	.loc 1 5488 0
	movl	-28(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_string@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 80(%eax)
	.loc 1 5489 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1704
	call	__stack_chk_fail_local
.L1704:
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
	.loc 1 5496 0
	pushl	%ebp
.LCFI480:
	movl	%esp, %ebp
.LCFI481:
	pushl	%ebx
.LCFI482:
	subl	$20, %esp
.LCFI483:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5497 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1706
	.loc 1 5498 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$68, %eax
	movl	%eax, -20(%ebp)
	cmpl	$10, -20(%ebp)
	ja	.L1706
	movl	$1, %eax
	movzbl	-20(%ebp), %ecx
	sall	%cl, %eax
	andl	$1537, %eax
	testl	%eax, %eax
	jne	.L1708
	jmp	.L1706
.L1708:
	.loc 1 5503 0
	call	data_section@PLT
	.loc 1 5504 0
	jmp	.L1710
.L1706:
	.loc 1 5510 0
	call	readonly_data_section@PLT
.L1710:
	.loc 1 5511 0
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
	.loc 1 5518 0
	pushl	%ebp
.LCFI484:
	movl	%esp, %ebp
.LCFI485:
	pushl	%ebx
.LCFI486:
	subl	$36, %esp
.LCFI487:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5521 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1712
	.loc 1 5522 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	cmpl	$77, -20(%ebp)
	je	.L1715
	cmpl	$78, -20(%ebp)
	je	.L1714
	cmpl	$68, -20(%ebp)
	je	.L1714
	jmp	.L1712
.L1714:
	.loc 1 5526 0
	movl	$3, 8(%esp)
	leal	.LC175@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5527 0
	jmp	.L1717
.L1715:
	.loc 1 5530 0
	movl	$1, 8(%esp)
	leal	.LC176@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	named_section@PLT
	.loc 1 5531 0
	jmp	.L1717
.L1712:
	.loc 1 5537 0
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mergeable_constant_section@PLT
.L1717:
	.loc 1 5538 0
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
	.loc 1 5546 0
	pushl	%ebp
.LCFI488:
	movl	%esp, %ebp
.LCFI489:
	subl	$4, %esp
.LCFI490:
	.loc 1 5547 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L1719
	movl	$1, -4(%ebp)
	jmp	.L1721
.L1719:
	movl	$0, -4(%ebp)
.L1721:
	movl	-4(%ebp), %eax
	addl	8(%ebp), %eax
	.loc 1 5548 0
	leave
	ret
.LFE135:
	.size	default_strip_name_encoding, .-default_strip_name_encoding
.globl default_binds_local_p
	.type	default_binds_local_p, @function
default_binds_local_p:
.LFB136:
	.loc 1 5556 0
	pushl	%ebp
.LCFI491:
	movl	%esp, %ebp
.LCFI492:
	pushl	%ebx
.LCFI493:
	subl	$20, %esp
.LCFI494:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5557 0
	movl	flag_shlib@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	default_binds_local_p_1@PLT
	movzbl	%al, %eax
	.loc 1 5558 0
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
	.loc 1 5564 0
	pushl	%ebp
.LCFI495:
	movl	%esp, %ebp
.LCFI496:
	pushl	%ebx
.LCFI497:
	subl	$20, %esp
.LCFI498:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5568 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L1726
	.loc 1 5569 0
	movb	$1, -5(%ebp)
	jmp	.L1728
.L1726:
	.loc 1 5571 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1729
	.loc 1 5572 0
	movb	$1, -5(%ebp)
	jmp	.L1728
.L1729:
	.loc 1 5574 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_visibility@PLT
	testl	%eax, %eax
	je	.L1731
	.loc 1 5575 0
	movb	$1, -5(%ebp)
	jmp	.L1728
.L1731:
	.loc 1 5577 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1733
	.loc 1 5578 0
	movb	$0, -5(%ebp)
	jmp	.L1728
.L1733:
	.loc 1 5580 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1735
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L1737
.L1735:
	.loc 1 5581 0
	movb	$0, -5(%ebp)
	.loc 1 5580 0
	jmp	.L1728
.L1737:
	.loc 1 5584 0
	cmpl	$0, 12(%ebp)
	je	.L1738
	.loc 1 5585 0
	movb	$0, -5(%ebp)
	jmp	.L1728
.L1738:
	.loc 1 5588 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L1740
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L1742
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1740
.L1742:
	.loc 1 5591 0
	movb	$0, -5(%ebp)
	.loc 1 5588 0
	jmp	.L1728
.L1740:
	.loc 1 5595 0
	movb	$1, -5(%ebp)
.L1728:
	.loc 1 5597 0
	movzbl	-5(%ebp), %eax
	.loc 1 5598 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE137:
	.size	default_binds_local_p_1, .-default_binds_local_p_1
	.section	.rodata
.LC190:
	.string	"\t.globl\t"
	.text
.globl default_globalize_label
	.type	default_globalize_label, @function
default_globalize_label:
.LFB138:
	.loc 1 5608 0
	pushl	%ebp
.LCFI499:
	movl	%esp, %ebp
.LCFI500:
	pushl	%ebx
.LCFI501:
	subl	$20, %esp
.LCFI502:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5609 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC190@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 5610 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 5611 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 5612 0
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
	.file 2 "../../../kgccfe/gnu/MIPS/gt-varasm.h"
	.loc 2 26 0
	pushl	%ebp
.LCFI503:
	movl	%esp, %ebp
.LCFI504:
	pushl	%ebx
.LCFI505:
	subl	$20, %esp
.LCFI506:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 27 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 28 0
	cmpl	$0, -8(%ebp)
	je	.L1753
	cmpl	$1, -8(%ebp)
	je	.L1753
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1753
	.loc 2 30 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1753
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L1753:
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
.LCFI507:
	movl	%esp, %ebp
.LCFI508:
	pushl	%ebx
.LCFI509:
	subl	$20, %esp
.LCFI510:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 38 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 39 0
	cmpl	$0, -8(%ebp)
	je	.L1764
	cmpl	$1, -8(%ebp)
	je	.L1764
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1764
	.loc 2 41 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1759
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_constant_descriptor_tree@PLT
.L1759:
	.loc 2 42 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1761
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1761:
	.loc 2 43 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1764
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L1764:
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
.LCFI511:
	movl	%esp, %ebp
.LCFI512:
	pushl	%ebx
.LCFI513:
	subl	$20, %esp
.LCFI514:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 51 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 52 0
	cmpl	$0, -8(%ebp)
	je	.L1777
	cmpl	$1, -8(%ebp)
	je	.L1777
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1777
	.loc 2 54 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1770
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_constant_descriptor_rtx@PLT
.L1770:
	.loc 2 55 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1772
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1772:
	.loc 2 56 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1774
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1774:
	.loc 2 57 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1777
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1777:
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
.LCFI515:
	movl	%esp, %ebp
.LCFI516:
	pushl	%ebx
.LCFI517:
	subl	$36, %esp
.LCFI518:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 65 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 66 0
	cmpl	$0, -16(%ebp)
	je	.L1794
	cmpl	$1, -16(%ebp)
	je	.L1794
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1794
	.loc 2 68 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1783
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_constant_descriptor_rtx@PLT
.L1783:
	.loc 2 69 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1785
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
.L1785:
	.loc 2 70 0
	movl	-16(%ebp), %eax
	movzwl	8(%eax), %eax
	cmpw	$2, %ax
	seta	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1788
	cmpl	$2, -24(%ebp)
	je	.L1789
	jmp	.L1794
.L1788:
	.loc 2 73 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1794
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_rtx_def@PLT
	.loc 2 74 0
	jmp	.L1794
.L1789:
.LBB58:
	.loc 2 80 0
	movl	$16, -8(%ebp)
	.loc 2 81 0
	movl	$0, -12(%ebp)
	jmp	.L1792
.L1793:
	addl	$1, -12(%ebp)
.L1792:
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L1793
.L1794:
.LBE58:
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
.LCFI519:
	movl	%esp, %ebp
.LCFI520:
	pushl	%ebx
.LCFI521:
	subl	$20, %esp
.LCFI522:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 95 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 96 0
	cmpl	$0, -16(%ebp)
	je	.L1815
	cmpl	$1, -16(%ebp)
	je	.L1815
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1815
	.loc 2 98 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1800
.LBB59:
	.loc 2 100 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	.loc 2 101 0
	movl	$0, -12(%ebp)
	jmp	.L1802
.L1803:
	.loc 2 102 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1804
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_constant_descriptor_rtx@PLT
.L1804:
	.loc 2 101 0
	addl	$1, -12(%ebp)
.L1802:
	cmpl	$60, -12(%ebp)
	jbe	.L1803
.L1800:
.LBE59:
	.loc 2 105 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L1806
.LBB60:
	.loc 2 107 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	.loc 2 108 0
	movl	$0, -8(%ebp)
	jmp	.L1808
.L1809:
	.loc 2 109 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1810
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1810:
	.loc 2 108 0
	addl	$1, -8(%ebp)
.L1808:
	cmpl	$60, -8(%ebp)
	jbe	.L1809
.L1806:
.LBE60:
	.loc 2 112 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L1812
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1812:
	.loc 2 113 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1815
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_pool_constant@PLT
.L1815:
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
.LCFI523:
	movl	%esp, %ebp
.LCFI524:
	pushl	%ebx
.LCFI525:
	subl	$20, %esp
.LCFI526:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 121 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 2 122 0
	cmpl	$0, -12(%ebp)
	je	.L1826
	cmpl	$1, -12(%ebp)
	je	.L1826
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L1826
	.loc 2 124 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L1826
.LBB61:
	.loc 2 126 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	.loc 2 127 0
	movl	$0, -8(%ebp)
	jmp	.L1822
.L1823:
	.loc 2 128 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1824
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_deferred_string@PLT
.L1824:
	.loc 2 127 0
	addl	$1, -8(%ebp)
.L1822:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L1823
.L1826:
.LBE61:
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
	.long	.LCFI151-.LCFI147
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
	.long	.LCFI152-.LFB53
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
	.long	.LCFI159-.LCFI157
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
	.long	.LCFI160-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI164-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xd
	.uleb128 0x5
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
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI182-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
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
	.long	.LCFI185-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI186-.LCFI185
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI188-.LCFI186
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
	.long	.LCFI189-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI190-.LCFI189
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI192-.LCFI190
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
	.long	.LCFI193-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI194-.LCFI193
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI198-.LCFI194
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
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI199-.LFB66
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
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI203-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI204-.LCFI203
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI207-.LCFI204
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI208-.LFB68
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
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI212-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI213-.LCFI212
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI214-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI217-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI218-.LCFI217
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI221-.LCFI218
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
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI222-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI223-.LCFI222
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI227-.LCFI223
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI228-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI230-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI231-.LCFI230
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI233-.LCFI231
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI234-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI235-.LCFI234
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI237-.LCFI235
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI238-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI242-.LCFI239
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
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI243-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI244-.LCFI243
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI246-.LCFI244
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI247-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI248-.LCFI247
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI249-.LFB79
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
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI253-.LFB80
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
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI259-.LFB81
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
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI265-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI266-.LCFI265
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI268-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI269-.LCFI268
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI272-.LCFI269
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI273-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI274-.LCFI273
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI276-.LCFI274
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI277-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI278-.LCFI277
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI281-.LCFI278
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI282-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI287-.LCFI283
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI288-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI289-.LCFI288
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI292-.LCFI289
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
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI293-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI294-.LCFI293
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI296-.LCFI294
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI297-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI298-.LCFI297
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI300-.LCFI298
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
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
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
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
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
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
	.align 4
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI311-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI312-.LCFI311
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI314-.LCFI312
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI315-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI316-.LCFI315
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI317-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI318-.LCFI317
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI322-.LCFI318
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
	.long	.LFB96
	.long	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI323-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI324-.LCFI323
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI326-.LCFI324
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI327-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI328-.LCFI327
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI330-.LCFI328
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI331-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI332-.LCFI331
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI334-.LCFI332
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB99
	.long	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI335-.LFB99
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
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.long	.LFB100
	.long	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI339-.LFB100
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
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.long	.LFB101
	.long	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI343-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI344-.LCFI343
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI348-.LCFI344
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
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI349-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI350-.LCFI349
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
	.long	.LCFI351-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI352-.LCFI351
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI355-.LCFI352
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
	.long	.LCFI356-.LFB103
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
.LEFDE176:
.LSFDE178:
	.long	.LEFDE178-.LASFDE178
.LASFDE178:
	.long	.Lframe0
	.long	.LFB104
	.long	.LFE104-.LFB104
	.byte	0x4
	.long	.LCFI362-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI363-.LCFI362
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI365-.LCFI363
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
	.long	.LCFI366-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI367-.LCFI366
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI369-.LCFI367
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
	.long	.LCFI370-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI371-.LCFI370
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI373-.LCFI371
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
	.long	.LCFI374-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI375-.LCFI374
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI377-.LCFI375
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
	.long	.LCFI378-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI379-.LCFI378
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI382-.LCFI379
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
	.long	.LCFI383-.LFB109
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
.LEFDE188:
.LSFDE190:
	.long	.LEFDE190-.LASFDE190
.LASFDE190:
	.long	.Lframe0
	.long	.LFB110
	.long	.LFE110-.LFB110
	.byte	0x4
	.long	.LCFI387-.LFB110
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
.LEFDE190:
.LSFDE192:
	.long	.LEFDE192-.LASFDE192
.LASFDE192:
	.long	.Lframe0
	.long	.LFB111
	.long	.LFE111-.LFB111
	.byte	0x4
	.long	.LCFI391-.LFB111
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
.LEFDE192:
.LSFDE194:
	.long	.LEFDE194-.LASFDE194
.LASFDE194:
	.long	.Lframe0
	.long	.LFB112
	.long	.LFE112-.LFB112
	.byte	0x4
	.long	.LCFI395-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI396-.LCFI395
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
	.long	.LCFI397-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI398-.LCFI397
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI400-.LCFI398
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
	.long	.LCFI401-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI402-.LCFI401
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI404-.LCFI402
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
	.long	.LCFI405-.LFB115
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
.LEFDE200:
.LSFDE202:
	.long	.LEFDE202-.LASFDE202
.LASFDE202:
	.long	.Lframe0
	.long	.LFB116
	.long	.LFE116-.LFB116
	.byte	0x4
	.long	.LCFI409-.LFB116
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
.LEFDE202:
.LSFDE204:
	.long	.LEFDE204-.LASFDE204
.LASFDE204:
	.long	.Lframe0
	.long	.LFB117
	.long	.LFE117-.LFB117
	.byte	0x4
	.long	.LCFI413-.LFB117
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
.LEFDE204:
.LSFDE206:
	.long	.LEFDE206-.LASFDE206
.LASFDE206:
	.long	.Lframe0
	.long	.LFB118
	.long	.LFE118-.LFB118
	.byte	0x4
	.long	.LCFI417-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI418-.LCFI417
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI422-.LCFI418
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
	.long	.LCFI423-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI424-.LCFI423
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI426-.LCFI424
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
	.long	.LCFI427-.LFB120
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
.LEFDE210:
.LSFDE212:
	.long	.LEFDE212-.LASFDE212
.LASFDE212:
	.long	.Lframe0
	.long	.LFB121
	.long	.LFE121-.LFB121
	.byte	0x4
	.long	.LCFI431-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI432-.LCFI431
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI434-.LCFI432
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
	.long	.LCFI435-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI436-.LCFI435
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI438-.LCFI436
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
	.long	.LCFI439-.LFB123
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI440-.LCFI439
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI442-.LCFI440
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
	.long	.LCFI443-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI444-.LCFI443
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI446-.LCFI444
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
	.long	.LCFI447-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI448-.LCFI447
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI450-.LCFI448
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
	.long	.LCFI451-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI452-.LCFI451
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI454-.LCFI452
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
	.long	.LCFI455-.LFB127
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI456-.LCFI455
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI458-.LCFI456
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
	.long	.LCFI459-.LFB128
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI460-.LCFI459
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
	.long	.LCFI462-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI463-.LCFI462
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI465-.LCFI463
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
	.long	.LCFI466-.LFB130
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI467-.LCFI466
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI469-.LCFI467
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
	.long	.LCFI470-.LFB131
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI471-.LCFI470
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI473-.LCFI471
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
	.long	.LCFI474-.LFB132
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI475-.LCFI474
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI479-.LCFI475
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
	.long	.LCFI480-.LFB133
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI481-.LCFI480
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI483-.LCFI481
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
	.long	.LCFI484-.LFB134
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI485-.LCFI484
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI487-.LCFI485
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
	.long	.LCFI488-.LFB135
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI489-.LCFI488
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
	.long	.LCFI491-.LFB136
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI492-.LCFI491
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI494-.LCFI492
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
	.long	.LCFI495-.LFB137
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
.LEFDE244:
.LSFDE246:
	.long	.LEFDE246-.LASFDE246
.LASFDE246:
	.long	.Lframe0
	.long	.LFB138
	.long	.LFE138-.LFB138
	.byte	0x4
	.long	.LCFI499-.LFB138
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI500-.LCFI499
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI502-.LCFI500
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
	.long	.LCFI503-.LFB139
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI504-.LCFI503
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI506-.LCFI504
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
	.long	.LCFI507-.LFB140
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI508-.LCFI507
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI510-.LCFI508
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
	.long	.LCFI511-.LFB141
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI512-.LCFI511
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI514-.LCFI512
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
	.long	.LCFI515-.LFB142
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI516-.LCFI515
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI518-.LCFI516
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
	.long	.LCFI519-.LFB143
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI520-.LCFI519
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI522-.LCFI520
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
	.long	.LCFI523-.LFB144
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI524-.LCFI523
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI526-.LCFI524
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE258:
	.file 3 "../../../include/gnu/hashtab.h"
	.file 4 "../../../kgccfe/gnu/MIPS/config.h"
	.file 5 "../../../kgccfe/gnu/tree.h"
	.file 6 "../../../kgccfe/gnu/rtl.h"
	.file 7 "../../../kgccfe/gnu/machmode.h"
	.file 8 "../../../kgccfe/gnu/bitmap.h"
	.file 9 "../../../kgccfe/gnu/basic-block.h"
	.file 10 "../../../kgccfe/gnu/sbitmap.h"
	.file 11 "../../../kgccfe/gnu/real.h"
	.file 12 "../../../kgccfe/gnu/hashtable.h"
	.file 13 "../../../kgccfe/gnu/location.h"
	.file 14 "../../../kgccfe/gnu/function.h"
	.file 15 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 16 "../../../kgccfe/gnu/c-tree.h"
	.file 17 "../../../kgccfe/gnu/c-common.h"
	.file 18 "../../../kgccfe/omp_types.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/libio.h"
	.file 21 "/usr/include/bits/types.h"
	.file 22 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 23 "../../../kgccfe/gnu/target.h"
	.file 24 "../../../include/gnu/safe-ctype.h"
	.file 25 "../../../kgccfe/gnu/flags.h"
	.file 26 "../../../kgccfe/gnu/regs.h"
	.file 27 "../../../kgccfe/gnu/output.h"
	.file 28 "../../../kgccfe/gnu/langhooks.h"
	.file 29 "../../../kgccfe/gnu/debug.h"
	.file 30 "../../../kgccfe/gnu/ggc.h"
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFB62-.Ltext0
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
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB63-.Ltext0
	.long	.LCFI185-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI185-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI186-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB64-.Ltext0
	.long	.LCFI189-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI189-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI190-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB65-.Ltext0
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
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB66-.Ltext0
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
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB67-.Ltext0
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
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB68-.Ltext0
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
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB69-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB70-.Ltext0
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
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB72-.Ltext0
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
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB74-.Ltext0
	.long	.LCFI230-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI230-.Ltext0
	.long	.LCFI231-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI231-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB77-.Ltext0
	.long	.LCFI243-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI243-.Ltext0
	.long	.LCFI244-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI244-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB78-.Ltext0
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
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB79-.Ltext0
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
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB80-.Ltext0
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
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB81-.Ltext0
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
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB82-.Ltext0
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
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB83-.Ltext0
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
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB84-.Ltext0
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
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB85-.Ltext0
	.long	.LCFI277-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI277-.Ltext0
	.long	.LCFI278-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI278-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB86-.Ltext0
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
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB87-.Ltext0
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
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB88-.Ltext0
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
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB89-.Ltext0
	.long	.LCFI297-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI297-.Ltext0
	.long	.LCFI298-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI298-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
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
.LLST75:
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
.LLST76:
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
.LLST77:
	.long	.LFB93-.Ltext0
	.long	.LCFI311-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI311-.Ltext0
	.long	.LCFI312-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI312-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB94-.Ltext0
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
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB95-.Ltext0
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
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB96-.Ltext0
	.long	.LCFI323-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI323-.Ltext0
	.long	.LCFI324-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI324-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB97-.Ltext0
	.long	.LCFI327-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI327-.Ltext0
	.long	.LCFI328-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI328-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB98-.Ltext0
	.long	.LCFI331-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI331-.Ltext0
	.long	.LCFI332-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI332-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB99-.Ltext0
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
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB100-.Ltext0
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
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB101-.Ltext0
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
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB61-.Ltext0
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
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST87:
	.long	.LFB102-.Ltext0
	.long	.LCFI351-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI351-.Ltext0
	.long	.LCFI352-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI352-.Ltext0
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST88:
	.long	.LFB103-.Ltext0
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
	.long	.LFE103-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST89:
	.long	.LFB104-.Ltext0
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
	.long	.LFE104-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST90:
	.long	.LFB105-.Ltext0
	.long	.LCFI366-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI366-.Ltext0
	.long	.LCFI367-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI367-.Ltext0
	.long	.LFE105-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST91:
	.long	.LFB106-.Ltext0
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
	.long	.LFE106-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST92:
	.long	.LFB107-.Ltext0
	.long	.LCFI374-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI374-.Ltext0
	.long	.LCFI375-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI375-.Ltext0
	.long	.LFE107-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST93:
	.long	.LFB108-.Ltext0
	.long	.LCFI378-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI378-.Ltext0
	.long	.LCFI379-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI379-.Ltext0
	.long	.LFE108-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST94:
	.long	.LFB109-.Ltext0
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
	.long	.LFE109-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST95:
	.long	.LFB110-.Ltext0
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
	.long	.LFE110-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST96:
	.long	.LFB111-.Ltext0
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
	.long	.LFE111-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST97:
	.long	.LFB112-.Ltext0
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
	.long	.LFE112-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST98:
	.long	.LFB113-.Ltext0
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
	.long	.LFE113-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST99:
	.long	.LFB114-.Ltext0
	.long	.LCFI401-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI401-.Ltext0
	.long	.LCFI402-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI402-.Ltext0
	.long	.LFE114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST100:
	.long	.LFB115-.Ltext0
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
	.long	.LFE115-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST101:
	.long	.LFB116-.Ltext0
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
	.long	.LFE116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST102:
	.long	.LFB117-.Ltext0
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
	.long	.LFE117-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST103:
	.long	.LFB118-.Ltext0
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
	.long	.LFE118-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST104:
	.long	.LFB119-.Ltext0
	.long	.LCFI423-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI423-.Ltext0
	.long	.LCFI424-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI424-.Ltext0
	.long	.LFE119-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST105:
	.long	.LFB120-.Ltext0
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
	.long	.LFE120-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST106:
	.long	.LFB121-.Ltext0
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
	.long	.LFE121-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST107:
	.long	.LFB122-.Ltext0
	.long	.LCFI435-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI435-.Ltext0
	.long	.LCFI436-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI436-.Ltext0
	.long	.LFE122-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST108:
	.long	.LFB123-.Ltext0
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
	.long	.LFE123-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST109:
	.long	.LFB124-.Ltext0
	.long	.LCFI443-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI443-.Ltext0
	.long	.LCFI444-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI444-.Ltext0
	.long	.LFE124-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST110:
	.long	.LFB125-.Ltext0
	.long	.LCFI447-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI447-.Ltext0
	.long	.LCFI448-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI448-.Ltext0
	.long	.LFE125-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST111:
	.long	.LFB126-.Ltext0
	.long	.LCFI451-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI451-.Ltext0
	.long	.LCFI452-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI452-.Ltext0
	.long	.LFE126-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST112:
	.long	.LFB127-.Ltext0
	.long	.LCFI455-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI455-.Ltext0
	.long	.LCFI456-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI456-.Ltext0
	.long	.LFE127-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST113:
	.long	.LFB128-.Ltext0
	.long	.LCFI459-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI459-.Ltext0
	.long	.LCFI460-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI460-.Ltext0
	.long	.LFE128-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST114:
	.long	.LFB129-.Ltext0
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
	.long	.LFE129-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST115:
	.long	.LFB130-.Ltext0
	.long	.LCFI466-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI466-.Ltext0
	.long	.LCFI467-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI467-.Ltext0
	.long	.LFE130-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST116:
	.long	.LFB131-.Ltext0
	.long	.LCFI470-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI470-.Ltext0
	.long	.LCFI471-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI471-.Ltext0
	.long	.LFE131-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST117:
	.long	.LFB132-.Ltext0
	.long	.LCFI474-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI474-.Ltext0
	.long	.LCFI475-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI475-.Ltext0
	.long	.LFE132-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST118:
	.long	.LFB133-.Ltext0
	.long	.LCFI480-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI480-.Ltext0
	.long	.LCFI481-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI481-.Ltext0
	.long	.LFE133-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST119:
	.long	.LFB134-.Ltext0
	.long	.LCFI484-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI484-.Ltext0
	.long	.LCFI485-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI485-.Ltext0
	.long	.LFE134-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST120:
	.long	.LFB135-.Ltext0
	.long	.LCFI488-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI488-.Ltext0
	.long	.LCFI489-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI489-.Ltext0
	.long	.LFE135-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST121:
	.long	.LFB136-.Ltext0
	.long	.LCFI491-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI491-.Ltext0
	.long	.LCFI492-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI492-.Ltext0
	.long	.LFE136-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST122:
	.long	.LFB137-.Ltext0
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
	.long	.LFE137-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST123:
	.long	.LFB138-.Ltext0
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
	.long	.LFE138-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST124:
	.long	.LFB139-.Ltext0
	.long	.LCFI503-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI503-.Ltext0
	.long	.LCFI504-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI504-.Ltext0
	.long	.LFE139-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST125:
	.long	.LFB140-.Ltext0
	.long	.LCFI507-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI507-.Ltext0
	.long	.LCFI508-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI508-.Ltext0
	.long	.LFE140-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST126:
	.long	.LFB141-.Ltext0
	.long	.LCFI511-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI511-.Ltext0
	.long	.LCFI512-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI512-.Ltext0
	.long	.LFE141-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST127:
	.long	.LFB142-.Ltext0
	.long	.LCFI515-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI515-.Ltext0
	.long	.LCFI516-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI516-.Ltext0
	.long	.LFE142-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST128:
	.long	.LFB143-.Ltext0
	.long	.LCFI519-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI519-.Ltext0
	.long	.LCFI520-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI520-.Ltext0
	.long	.LFE143-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST129:
	.long	.LFB144-.Ltext0
	.long	.LCFI523-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI523-.Ltext0
	.long	.LCFI524-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI524-.Ltext0
	.long	.LFE144-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xc59a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/varasm.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
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
	.byte	0x8a
	.long	0xb64
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF0
	.byte	0x6
	.byte	0x8d
	.long	0x86c
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x6
	.byte	0x94
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x6
	.byte	0x97
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x6
	.byte	0x9f
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x6
	.byte	0xa8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x6
	.byte	0xba
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x6
	.byte	0xc1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x6
	.byte	0xc6
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x6
	.byte	0xcf
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x6
	.byte	0xd4
	.long	0x1773
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
	.byte	0xf8
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x6
	.byte	0xf9
	.long	0x1783
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
	.long	0x2cb
	.string	"tree_node"
	.byte	0x94
	.byte	0x4
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x5
	.value	0x855
	.long	0x3a09
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x5
	.value	0x856
	.long	0x3d23
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x5
	.value	0x857
	.long	0x3d6b
	.uleb128 0xa
	.string	"vector"
	.byte	0x5
	.value	0x858
	.long	0x3eda
	.uleb128 0x9
	.long	.LASF2
	.byte	0x5
	.value	0x859
	.long	0x3e18
	.uleb128 0xa
	.string	"complex"
	.byte	0x5
	.value	0x85a
	.long	0x3e85
	.uleb128 0xa
	.string	"identifier"
	.byte	0x5
	.value	0x85b
	.long	0x3f60
	.uleb128 0x9
	.long	.LASF3
	.byte	0x5
	.value	0x85c
	.long	0x5005
	.uleb128 0xa
	.string	"type"
	.byte	0x5
	.value	0x85d
	.long	0x41c3
	.uleb128 0xa
	.string	"list"
	.byte	0x5
	.value	0x85e
	.long	0x3f97
	.uleb128 0xa
	.string	"vec"
	.byte	0x5
	.value	0x85f
	.long	0x3fdc
	.uleb128 0xa
	.string	"exp"
	.byte	0x5
	.value	0x860
	.long	0x402d
	.uleb128 0xa
	.string	"block"
	.byte	0x5
	.value	0x861
	.long	0x4079
	.uleb128 0xa
	.string	"omp"
	.byte	0x5
	.value	0x863
	.long	0x59d1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d1
	.uleb128 0xb
	.long	0x2d6
	.uleb128 0xc
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	0x3b7
	.string	"mips_args"
	.byte	0x40
	.byte	0xf
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0xf
	.value	0xaad
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0xf
	.value	0xab0
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0xf
	.value	0xab5
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0xf
	.value	0xab8
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0xf
	.value	0xabb
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0xf
	.value	0xac8
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0xf
	.value	0xacb
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0xf
	.value	0xad3
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0xf
	.value	0xad4
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x3ce
	.long	0x9b
	.uleb128 0x11
	.long	0x3ce
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0xf
	.value	0xad5
	.long	0x2e5
	.uleb128 0x2
	.string	"size_t"
	.byte	0x16
	.byte	0xd6
	.long	0x3b7
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
	.long	0x453
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x15
	.byte	0x90
	.long	0x49d
	.uleb128 0xc
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x15
	.byte	0x91
	.long	0x47e
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d6
	.uleb128 0x2
	.string	"FILE"
	.byte	0x13
	.byte	0x2e
	.long	0x4ce
	.uleb128 0x14
	.long	0x749
	.long	.LASF5
	.byte	0x94
	.byte	0x13
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x14
	.value	0x10c
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x14
	.value	0x111
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x14
	.value	0x112
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x14
	.value	0x113
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x14
	.value	0x114
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x14
	.value	0x115
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x14
	.value	0x116
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x14
	.value	0x117
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x14
	.value	0x118
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x14
	.value	0x11a
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x14
	.value	0x11b
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x14
	.value	0x11c
	.long	0x4bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x14
	.value	0x11e
	.long	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x14
	.value	0x120
	.long	0x7c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x14
	.value	0x122
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x14
	.value	0x126
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x14
	.value	0x128
	.long	0x48e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x14
	.value	0x12c
	.long	0x40c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x14
	.value	0x12d
	.long	0x437
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x14
	.value	0x12e
	.long	0x7cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x14
	.value	0x132
	.long	0x7df
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x14
	.value	0x13b
	.long	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x14
	.value	0x144
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x14
	.value	0x145
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x14
	.value	0x146
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x14
	.value	0x147
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x14
	.value	0x148
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x14
	.value	0x14a
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x14
	.value	0x14c
	.long	0x7e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74f
	.uleb128 0xb
	.long	0x3fb
	.uleb128 0x3
	.byte	0x4
	.long	0x3fb
	.uleb128 0x3
	.byte	0x4
	.long	0x4ba
	.uleb128 0x3
	.byte	0x4
	.long	0x766
	.uleb128 0x15
	.long	0x772
	.byte	0x1
	.uleb128 0x16
	.long	0x4ba
	.byte	0x0
	.uleb128 0x17
	.string	"_IO_lock_t"
	.byte	0x14
	.byte	0xb0
	.uleb128 0x4
	.long	0x7c3
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x14
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x14
	.byte	0xb7
	.long	0x7c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x14
	.byte	0xb8
	.long	0x7c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x14
	.byte	0xbc
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x780
	.uleb128 0x3
	.byte	0x4
	.long	0x4ce
	.uleb128 0x10
	.long	0x7df
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x772
	.uleb128 0x10
	.long	0x7f5
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x27
	.byte	0x0
	.uleb128 0x10
	.long	0x805
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x17
	.byte	0x0
	.uleb128 0x10
	.long	0x815
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	0x825
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x13
	.byte	0x0
	.uleb128 0xb
	.long	0x2de
	.uleb128 0x3
	.byte	0x4
	.long	0x2de
	.uleb128 0x3
	.byte	0x4
	.long	0x836
	.uleb128 0x18
	.long	0x84b
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x84b
	.uleb128 0x16
	.long	0x84b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x851
	.uleb128 0x19
	.uleb128 0x3
	.byte	0x4
	.long	0x858
	.uleb128 0x15
	.long	0x864
	.byte	0x1
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x864
	.uleb128 0x1b
	.long	0xab5
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
	.long	0xb64
	.long	.LASF6
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
	.long	0x1333
	.string	"rtx_code"
	.byte	0x4
	.byte	0x6
	.byte	0x2f
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
	.long	0x1407
	.byte	0x4
	.byte	0x6
	.byte	0x4d
	.uleb128 0x6
	.long	.LASF7
	.byte	0x6
	.byte	0x4f
	.long	0x3b7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x6
	.byte	0x51
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x6
	.byte	0x52
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x6
	.byte	0x54
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x6
	.byte	0x56
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x6
	.byte	0x58
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x6
	.byte	0x5b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x6
	.byte	0x5d
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
	.byte	0x6
	.byte	0x5e
	.long	0x1333
	.uleb128 0x14
	.long	0x1478
	.long	.LASF8
	.byte	0x18
	.byte	0x6
	.byte	0x68
	.uleb128 0x7
	.string	"alias"
	.byte	0x6
	.byte	0x69
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x6
	.byte	0x6a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x6
	.byte	0x6b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x6
	.byte	0x6c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x6
	.byte	0x6d
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x20
	.long	.LASF8
	.byte	0x6
	.byte	0x6e
	.long	0x1422
	.uleb128 0x8
	.long	0x1555
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.uleb128 0x21
	.string	"rtwint"
	.byte	0x6
	.byte	0x74
	.long	0x453
	.uleb128 0x21
	.string	"rtint"
	.byte	0x6
	.byte	0x75
	.long	0x2de
	.uleb128 0x21
	.string	"rtuint"
	.byte	0x6
	.byte	0x76
	.long	0x3b7
	.uleb128 0x21
	.string	"rtstr"
	.byte	0x6
	.byte	0x77
	.long	0x2cb
	.uleb128 0x21
	.string	"rtx"
	.byte	0x6
	.byte	0x78
	.long	0x9b
	.uleb128 0x21
	.string	"rtvec"
	.byte	0x6
	.byte	0x79
	.long	0x19b
	.uleb128 0x21
	.string	"rttype"
	.byte	0x6
	.byte	0x7a
	.long	0x86c
	.uleb128 0x21
	.string	"rt_addr_diff_vec_flags"
	.byte	0x6
	.byte	0x7b
	.long	0x1407
	.uleb128 0x21
	.string	"rt_cselib"
	.byte	0x6
	.byte	0x7c
	.long	0x1569
	.uleb128 0x21
	.string	"rtbit"
	.byte	0x6
	.byte	0x7d
	.long	0x15d1
	.uleb128 0x21
	.string	"rttree"
	.byte	0x6
	.byte	0x7e
	.long	0x1e3
	.uleb128 0x21
	.string	"bb"
	.byte	0x6
	.byte	0x7f
	.long	0x1758
	.uleb128 0x21
	.string	"rtmem"
	.byte	0x6
	.byte	0x80
	.long	0x175e
	.byte	0x0
	.uleb128 0x22
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1555
	.uleb128 0x4
	.long	0x15d1
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x6
	.byte	0x7d
	.uleb128 0x7
	.string	"first"
	.byte	0x8
	.byte	0x3d
	.long	0x6148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x8
	.byte	0x3e
	.long	0x6148
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x8
	.byte	0x3f
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x8
	.byte	0x40
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x156f
	.uleb128 0x4
	.long	0x1758
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x6
	.byte	0x7f
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
	.long	0x6298
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x9
	.byte	0xbc
	.long	0x6298
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x9
	.byte	0xc1
	.long	0x61ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x9
	.byte	0xc5
	.long	0x61ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x9
	.byte	0xcb
	.long	0x61ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x9
	.byte	0xcd
	.long	0x61ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x9
	.byte	0xd0
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x9
	.byte	0xd3
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x9
	.byte	0xd6
	.long	0x1758
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x9
	.byte	0xd6
	.long	0x1758
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x9
	.byte	0xd9
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x9
	.byte	0xdc
	.long	0x6511
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x9
	.byte	0xdf
	.long	0x61d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x9
	.byte	0xe2
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x9
	.byte	0xe5
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15d7
	.uleb128 0x3
	.byte	0x4
	.long	0x1478
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x6
	.byte	0x82
	.long	0x1483
	.uleb128 0x10
	.long	0x1783
	.long	0x1764
	.uleb128 0x11
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x1793
	.long	0x9b
	.uleb128 0x11
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x4
	.long	0x17cb
	.string	"location_s"
	.byte	0x8
	.byte	0xd
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0xd
	.byte	0x1e
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0xd
	.byte	0x21
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xd
	.byte	0x23
	.long	0x1799
	.uleb128 0x1b
	.long	0x20ff
	.string	"tree_code"
	.byte	0x4
	.byte	0x5
	.byte	0x27
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
	.byte	0x31
	.long	0x3b7
	.uleb128 0x4
	.long	0x214c
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x5
	.byte	0x32
	.uleb128 0x7
	.string	"block"
	.byte	0x5
	.byte	0x32
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x5
	.byte	0x32
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x5
	.byte	0x36
	.long	0x2156
	.uleb128 0x22
	.string	"st"
	.byte	0x1
	.uleb128 0x1d
	.long	0x21ab
	.long	.LASF14
	.byte	0x4
	.byte	0x5
	.byte	0x5a
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
	.long	0x3a09
	.string	"built_in_function"
	.byte	0x4
	.byte	0x5
	.byte	0x69
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
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x1c
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x1c
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x1c
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x1c
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x1c
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x1c
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x1c
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x1c
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x1c
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x1c
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x1c
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x1c
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x1c
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x1c
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x1c
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x1c
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x1c
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x1c
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x1c
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x1c
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x1c
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x1c
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x1c
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x1c
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x1c
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x1c
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x1c
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x1c
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x1c
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x1c
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x1c
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x1c
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x1c
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x1c
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x1c
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x1c
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x1c
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x1c
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x1c
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x1c
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x1c
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x1c
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x1c
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x1c
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x1c
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x1c
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x1c
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x1c
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x1c
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x1c
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x1c
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x1c
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x1c
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x1c
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x1c
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x1c
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x1c
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x1c
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x1c
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x1c
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x1c
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x1c
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x1c
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x1c
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x1c
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x1c
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x1c
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x1c
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x1c
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x1c
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x1c
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x1c
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x1c
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x1c
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x1c
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x1c
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x1c
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x1c
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x1c
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x1c
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x1c
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x1c
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x1c
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x1c
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x1c
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x1c
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x1c
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x1c
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x1c
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x1c
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x1c
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x1c
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x1c
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x1c
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x1c
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x1c
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x1c
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x1c
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x1c
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x1c
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x1c
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x1c
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x1c
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x1c
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x1c
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x1c
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x1c
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x1c
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x1c
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x1c
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x1c
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x1c
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x1c
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x1c
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x1c
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x1c
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x1c
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x1c
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x1c
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x1c
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x1c
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x1c
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x1c
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x1c
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x1c
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x1c
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x1c
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x1c
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x1c
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x1c
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3ce7
	.string	"tree_common"
	.byte	0x10
	.byte	0x5
	.byte	0x8e
	.uleb128 0x7
	.string	"chain"
	.byte	0x5
	.byte	0x8f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type"
	.byte	0x5
	.byte	0x90
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x5
	.byte	0x92
	.long	0x17dd
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x5
	.byte	0x94
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x5
	.byte	0x95
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x5
	.byte	0x96
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x5
	.byte	0x97
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x5
	.byte	0x98
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x5
	.byte	0x99
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x5
	.byte	0x9a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_0"
	.byte	0x5
	.byte	0x9b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x5
	.byte	0x9d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x5
	.byte	0x9e
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x5
	.byte	0x9f
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x5
	.byte	0xa0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x5
	.byte	0xa1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x5
	.byte	0xa2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x5
	.byte	0xa3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x5
	.byte	0xa4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0xa6
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0xa7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF17
	.byte	0x5
	.byte	0xa8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF18
	.byte	0x5
	.byte	0xa9
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF19
	.byte	0x5
	.byte	0xaa
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF20
	.byte	0x5
	.byte	0xab
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x5
	.byte	0xac
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_1"
	.byte	0x5
	.byte	0xad
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x5
	.byte	0xaf
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x5
	.byte	0xb0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x5
	.byte	0xb1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x5
	.byte	0xb2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x5
	.byte	0xb3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x3d23
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x5
	.value	0x2f6
	.uleb128 0xe
	.string	"low"
	.byte	0x5
	.value	0x2f7
	.long	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"high"
	.byte	0x5
	.value	0x2f8
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3d6b
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x5
	.value	0x2ef
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x2f0
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x2f1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"int_cst"
	.byte	0x5
	.value	0x2f9
	.long	0x3ce7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3db9
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x5
	.value	0x30b
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x30c
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x30d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real_cst_ptr"
	.byte	0x5
	.value	0x30e
	.long	0x3e12
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3e12
	.string	"real_value"
	.byte	0x18
	.byte	0x5
	.value	0x305
	.uleb128 0x5
	.string	"class"
	.byte	0xb
	.byte	0x37
	.long	0x6536
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"sign"
	.byte	0xb
	.byte	0x39
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"exp"
	.byte	0xb
	.byte	0x3a
	.long	0x2de
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sig"
	.byte	0xb
	.byte	0x3b
	.long	0x657c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3db9
	.uleb128 0xd
	.long	0x3e7f
	.string	"tree_string"
	.byte	0x20
	.byte	0x5
	.value	0x31f
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x320
	.long	0x3a09
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
	.string	"length"
	.byte	0x5
	.value	0x322
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"pointer"
	.byte	0x5
	.value	0x323
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st"
	.byte	0x5
	.value	0x325
	.long	0x3e7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x214c
	.uleb128 0xd
	.long	0x3eda
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x5
	.value	0x32e
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x32f
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x330
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"real"
	.byte	0x5
	.value	0x331
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"imag"
	.byte	0x5
	.value	0x332
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.long	0x3f22
	.string	"tree_vector"
	.byte	0x18
	.byte	0x5
	.value	0x340
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x341
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x342
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"elements"
	.byte	0x5
	.value	0x343
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	0x3f60
	.long	.LASF22
	.byte	0xc
	.byte	0xc
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0xc
	.byte	0x1c
	.long	0x749
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0xc
	.byte	0x1d
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0xc
	.byte	0x1e
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x3f97
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x5
	.value	0x35f
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x360
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"id"
	.byte	0x5
	.value	0x361
	.long	0x3f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x3fdc
	.string	"tree_list"
	.byte	0x18
	.byte	0x5
	.value	0x369
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x36a
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"purpose"
	.byte	0x5
	.value	0x36b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF23
	.byte	0x5
	.value	0x36c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x401d
	.string	"tree_vec"
	.byte	0x18
	.byte	0x5
	.value	0x377
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x378
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"length"
	.byte	0x5
	.value	0x379
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"a"
	.byte	0x5
	.value	0x37a
	.long	0x401d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.long	0x402d
	.long	0x1e3
	.uleb128 0x11
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x4079
	.string	"tree_exp"
	.byte	0x18
	.byte	0x5
	.value	0x3bd
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x3be
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"complexity"
	.byte	0x5
	.value	0x3bf
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"operands"
	.byte	0x5
	.value	0x3c2
	.long	0x401d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x4169
	.string	"tree_block"
	.byte	0x2c
	.byte	0x5
	.value	0x3f3
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x3f4
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x24
	.string	"handler_block_flag"
	.byte	0x5
	.value	0x3f6
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x25
	.long	.LASF24
	.byte	0x5
	.value	0x3f7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.string	"block_num"
	.byte	0x5
	.value	0x3f8
	.long	0x3b7
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"vars"
	.byte	0x5
	.value	0x3fa
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"subblocks"
	.byte	0x5
	.value	0x3fb
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"supercontext"
	.byte	0x5
	.value	0x3fc
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.long	.LASF25
	.byte	0x5
	.value	0x3fd
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"fragment_origin"
	.byte	0x5
	.value	0x3fe
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"fragment_chain"
	.byte	0x5
	.value	0x3ff
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x26
	.long	0x41b0
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x5
	.value	0x562
	.uleb128 0xa
	.string	"address"
	.byte	0x5
	.value	0x563
	.long	0x2de
	.uleb128 0xa
	.string	"pointer"
	.byte	0x5
	.value	0x564
	.long	0x4bc
	.uleb128 0xa
	.string	"die"
	.byte	0x5
	.value	0x565
	.long	0x41bd
	.byte	0x0
	.uleb128 0x22
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x41b0
	.uleb128 0xd
	.long	0x4511
	.string	"tree_type"
	.byte	0x74
	.byte	0x5
	.value	0x53f
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x540
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"values"
	.byte	0x5
	.value	0x541
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF10
	.byte	0x5
	.value	0x542
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x23
	.long	.LASF26
	.byte	0x5
	.value	0x543
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF27
	.byte	0x5
	.value	0x544
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"uid"
	.byte	0x5
	.value	0x545
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"precision"
	.byte	0x5
	.value	0x547
	.long	0x3b7
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF0
	.byte	0x5
	.value	0x548
	.long	0x86c
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"string_flag"
	.byte	0x5
	.value	0x54a
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"no_force_blk_flag"
	.byte	0x5
	.value	0x54b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"needs_constructing_flag"
	.byte	0x5
	.value	0x54c
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"transparent_union_flag"
	.byte	0x5
	.value	0x54d
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"packed_flag"
	.byte	0x5
	.value	0x54e
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"restrict_flag"
	.byte	0x5
	.value	0x54f
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF28
	.byte	0x5
	.value	0x550
	.long	0x3b7
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF15
	.byte	0x5
	.value	0x552
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF16
	.byte	0x5
	.value	0x553
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF17
	.byte	0x5
	.value	0x554
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF18
	.byte	0x5
	.value	0x555
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF19
	.byte	0x5
	.value	0x556
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF20
	.byte	0x5
	.value	0x557
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF21
	.byte	0x5
	.value	0x558
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF29
	.byte	0x5
	.value	0x559
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"defer_expansion"
	.byte	0x5
	.value	0x55c
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x23
	.long	.LASF11
	.byte	0x5
	.value	0x55f
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"pointer_to"
	.byte	0x5
	.value	0x560
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"reference_to"
	.byte	0x5
	.value	0x561
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"symtab"
	.byte	0x5
	.value	0x566
	.long	0x4169
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x23
	.long	.LASF30
	.byte	0x5
	.value	0x568
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"minval"
	.byte	0x5
	.value	0x569
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"maxval"
	.byte	0x5
	.value	0x56a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"next_variant"
	.byte	0x5
	.value	0x56b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"main_variant"
	.byte	0x5
	.value	0x56c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"binfo"
	.byte	0x5
	.value	0x56d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"context"
	.byte	0x5
	.value	0x56e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"alias_set"
	.byte	0x5
	.value	0x56f
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x23
	.long	.LASF31
	.byte	0x5
	.value	0x571
	.long	0x4542
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"ty_idx"
	.byte	0x5
	.value	0x573
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"field_ids_used"
	.byte	0x5
	.value	0x574
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"dst_id"
	.byte	0x5
	.value	0x575
	.long	0x2110
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xd
	.long	0x4542
	.string	"lang_type"
	.byte	0x8
	.byte	0x5
	.value	0x571
	.uleb128 0x7
	.string	"len"
	.byte	0x10
	.byte	0x80
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elts"
	.byte	0x10
	.byte	0x81
	.long	0x401d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4511
	.uleb128 0xd
	.long	0x458b
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x5
	.value	0x7f0
	.uleb128 0x25
	.long	.LASF11
	.byte	0x5
	.value	0x7f1
	.long	0x3b7
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x24
	.string	"off_align"
	.byte	0x5
	.value	0x7f2
	.long	0x3b7
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x45c0
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x5
	.value	0x7e7
	.uleb128 0xa
	.string	"f"
	.byte	0x5
	.value	0x7ea
	.long	0x21ab
	.uleb128 0xa
	.string	"i"
	.byte	0x5
	.value	0x7ed
	.long	0x453
	.uleb128 0xa
	.string	"a"
	.byte	0x5
	.value	0x7f3
	.long	0x4548
	.byte	0x0
	.uleb128 0x26
	.long	0x45ff
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x5
	.value	0x808
	.uleb128 0xa
	.string	"f"
	.byte	0x5
	.value	0x809
	.long	0x4fb1
	.uleb128 0xa
	.string	"r"
	.byte	0x5
	.value	0x80a
	.long	0x9b
	.uleb128 0xa
	.string	"t"
	.byte	0x5
	.value	0x80b
	.long	0x1e3
	.uleb128 0xa
	.string	"i"
	.byte	0x5
	.value	0x80c
	.long	0x2de
	.byte	0x0
	.uleb128 0x27
	.long	0x4fb1
	.long	.LASF32
	.value	0x134
	.byte	0x6
	.byte	0x1f
	.uleb128 0x7
	.string	"eh"
	.byte	0xe
	.byte	0xb5
	.long	0x5f72
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"stmt"
	.byte	0xe
	.byte	0xb6
	.long	0x5f86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"expr"
	.byte	0xe
	.byte	0xb7
	.long	0x5f8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emit"
	.byte	0xe
	.byte	0xb8
	.long	0x5f92
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"varasm"
	.byte	0xe
	.byte	0xb9
	.long	0x603a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF30
	.byte	0xe
	.byte	0xbe
	.long	0x2cb
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
	.long	0x4fb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"pops_args"
	.byte	0xe
	.byte	0xc9
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF33
	.byte	0xe
	.byte	0xce
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"pretend_args_size"
	.byte	0xe
	.byte	0xd3
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"outgoing_args_size"
	.byte	0xe
	.byte	0xd7
	.long	0x2de
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
	.long	0x3d5
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
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"hard_reg_initial_vals"
	.byte	0xe
	.byte	0xf0
	.long	0x6057
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"x_function_call_count"
	.byte	0xe
	.byte	0xf3
	.long	0x2de
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
	.long	0x453
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
	.long	0x3b7
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0xe
	.value	0x157
	.long	0x1793
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0xe
	.value	0x15a
	.long	0x6069
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0xe
	.value	0x15d
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0xe
	.value	0x160
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0xe
	.value	0x166
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0xe
	.value	0x16a
	.long	0x5c79
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0xe
	.value	0x16d
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0xe
	.value	0x16e
	.long	0x2de
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
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0xe
	.value	0x178
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0xe
	.value	0x17d
	.long	0x6082
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0xe
	.value	0x17f
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0xe
	.value	0x181
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0xe
	.value	0x184
	.long	0x609c
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
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
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.long	.LASF34
	.byte	0xe
	.value	0x1fa
	.long	0x5efc
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0xe
	.value	0x1fe
	.long	0x2de
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x45ff
	.uleb128 0x28
	.long	0x4fef
	.byte	0x4
	.byte	0x5
	.value	0x81e
	.uleb128 0xa
	.string	"st"
	.byte	0x5
	.value	0x81f
	.long	0x3e7f
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x5
	.value	0x820
	.long	0x20ff
	.uleb128 0xa
	.string	"field_id"
	.byte	0x5
	.value	0x821
	.long	0x3b7
	.byte	0x0
	.uleb128 0x28
	.long	0x5005
	.byte	0x4
	.byte	0x5
	.value	0x823
	.uleb128 0xa
	.string	"st2"
	.byte	0x5
	.value	0x824
	.long	0x3e7f
	.byte	0x0
	.uleb128 0xd
	.long	0x573f
	.string	"tree_decl"
	.byte	0x94
	.byte	0x5
	.value	0x7a0
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x7a1
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"locus"
	.byte	0x5
	.value	0x7a2
	.long	0x17cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"uid"
	.byte	0x5
	.value	0x7a3
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF10
	.byte	0x5
	.value	0x7a4
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x25
	.long	.LASF0
	.byte	0x5
	.value	0x7a5
	.long	0x86c
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"external_flag"
	.byte	0x5
	.value	0x7a7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"nonlocal_flag"
	.byte	0x5
	.value	0x7a8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"regdecl_flag"
	.byte	0x5
	.value	0x7a9
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"inline_flag"
	.byte	0x5
	.value	0x7aa
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"bit_field_flag"
	.byte	0x5
	.value	0x7ab
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"virtual_flag"
	.byte	0x5
	.value	0x7ac
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"ignored_flag"
	.byte	0x5
	.value	0x7ad
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x25
	.long	.LASF24
	.byte	0x5
	.value	0x7ae
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"sbuf_flag"
	.byte	0x5
	.value	0x7b2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"sdram_flag"
	.byte	0x5
	.value	0x7b3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v1buf_flag"
	.byte	0x5
	.value	0x7b4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v2buf_flag"
	.byte	0x5
	.value	0x7b5
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"v4buf_flag"
	.byte	0x5
	.value	0x7b6
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"in_system_header_flag"
	.byte	0x5
	.value	0x7ba
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"common_flag"
	.byte	0x5
	.value	0x7bb
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"defer_output"
	.byte	0x5
	.value	0x7bc
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"transparent_union"
	.byte	0x5
	.value	0x7bd
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"static_ctor_flag"
	.byte	0x5
	.value	0x7be
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"static_dtor_flag"
	.byte	0x5
	.value	0x7bf
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"artificial_flag"
	.byte	0x5
	.value	0x7c0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"weak_flag"
	.byte	0x5
	.value	0x7c1
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"non_addr_const_p"
	.byte	0x5
	.value	0x7c3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"no_instrument_function_entry_exit"
	.byte	0x5
	.value	0x7c4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"comdat_flag"
	.byte	0x5
	.value	0x7c5
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.string	"malloc_flag"
	.byte	0x5
	.value	0x7c6
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"no_limit_stack"
	.byte	0x5
	.value	0x7c7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF14
	.byte	0x5
	.value	0x7c8
	.long	0x215b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"pure_flag"
	.byte	0x5
	.value	0x7c9
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF28
	.byte	0x5
	.value	0x7cb
	.long	0x3b7
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"non_addressable"
	.byte	0x5
	.value	0x7cc
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF29
	.byte	0x5
	.value	0x7cd
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"uninlinable"
	.byte	0x5
	.value	0x7ce
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"thread_local_flag"
	.byte	0x5
	.value	0x7cf
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"inlined_function_flag"
	.byte	0x5
	.value	0x7d0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"noinline_attrib"
	.byte	0x5
	.value	0x7d2
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF15
	.byte	0x5
	.value	0x7d5
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF16
	.byte	0x5
	.value	0x7d6
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF17
	.byte	0x5
	.value	0x7d7
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF18
	.byte	0x5
	.value	0x7d8
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF19
	.byte	0x5
	.value	0x7d9
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF20
	.byte	0x5
	.value	0x7da
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF21
	.byte	0x5
	.value	0x7db
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"lang_flag_7"
	.byte	0x5
	.value	0x7dc
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"syscall_linkage_flag"
	.byte	0x5
	.value	0x7df
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"widen_retval_flag"
	.byte	0x5
	.value	0x7e0
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"promote_static"
	.byte	0x5
	.value	0x7e3
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.string	"always_inline_attrib"
	.byte	0x5
	.value	0x7e4
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"u1"
	.byte	0x5
	.value	0x7f4
	.long	0x458b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x23
	.long	.LASF26
	.byte	0x5
	.value	0x7f6
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x23
	.long	.LASF30
	.byte	0x5
	.value	0x7f7
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"context"
	.byte	0x5
	.value	0x7f8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"arguments"
	.byte	0x5
	.value	0x7f9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"result"
	.byte	0x5
	.value	0x7fa
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"initial"
	.byte	0x5
	.value	0x7fb
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x23
	.long	.LASF25
	.byte	0x5
	.value	0x7fc
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"assembler_name"
	.byte	0x5
	.value	0x7fd
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"section_name"
	.byte	0x5
	.value	0x7fe
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x23
	.long	.LASF27
	.byte	0x5
	.value	0x7ff
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"rtl"
	.byte	0x5
	.value	0x800
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"live_range_rtl"
	.byte	0x5
	.value	0x801
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"u2"
	.byte	0x5
	.value	0x80d
	.long	0x45c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"saved_tree"
	.byte	0x5
	.value	0x810
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"inlined_fns"
	.byte	0x5
	.value	0x814
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"vindex"
	.byte	0x5
	.value	0x816
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"pointer_alias_set"
	.byte	0x5
	.value	0x817
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x23
	.long	.LASF31
	.byte	0x5
	.value	0x819
	.long	0x577a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x24
	.string	"symtab_idx"
	.byte	0x5
	.value	0x81b
	.long	0x3b7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x24
	.string	"label_defined"
	.byte	0x5
	.value	0x81c
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"sgi_u1"
	.byte	0x5
	.value	0x822
	.long	0x4fb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"sgi_u2"
	.byte	0x5
	.value	0x825
	.long	0x4fef
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"decl_dst_id"
	.byte	0x5
	.value	0x826
	.long	0x2110
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"sl_model_name"
	.byte	0x5
	.value	0x82a
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0xd
	.long	0x577a
	.string	"lang_decl"
	.byte	0x8
	.byte	0x5
	.value	0x819
	.uleb128 0x7
	.string	"base"
	.byte	0x10
	.byte	0x40
	.long	0x6712
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
	.long	0x573f
	.uleb128 0x1b
	.long	0x59d1
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x12
	.byte	0x1e
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
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x1c
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x1c
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x1c
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x1c
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x1c
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x1c
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x1c
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x1c
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x1c
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x1c
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xd
	.long	0x5a20
	.string	"tree_omp"
	.byte	0x18
	.byte	0x5
	.value	0x832
	.uleb128 0x23
	.long	.LASF1
	.byte	0x5
	.value	0x833
	.long	0x3a09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"choice"
	.byte	0x5
	.value	0x834
	.long	0x5780
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"omp_clause_list"
	.byte	0x5
	.value	0x835
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x29
	.long	0x5a99
	.string	"tls_model"
	.byte	0x4
	.byte	0x5
	.value	0x92d
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
	.long	0x5b0b
	.string	"symbol_visibility"
	.byte	0x4
	.byte	0x5
	.value	0x939
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
	.long	0x5bc6
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x5
	.value	0x9db
	.uleb128 0x23
	.long	.LASF30
	.byte	0x5
	.value	0x9de
	.long	0x5bc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"min_length"
	.byte	0x5
	.value	0x9e0
	.long	0x825
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"max_length"
	.byte	0x5
	.value	0x9e3
	.long	0x825
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"decl_required"
	.byte	0x5
	.value	0x9eb
	.long	0x5bcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"type_required"
	.byte	0x5
	.value	0x9ee
	.long	0x5bcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xe
	.string	"function_type_required"
	.byte	0x5
	.value	0x9f3
	.long	0x5bcb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"handler"
	.byte	0x5
	.value	0xa02
	.long	0x5c09
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.long	0x2cb
	.uleb128 0xb
	.long	0x5bd0
	.uleb128 0xc
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x18
	.long	0x5bfd
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x5bfd
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x5c03
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x4
	.long	0x5bd0
	.uleb128 0xb
	.long	0x5c0e
	.uleb128 0x3
	.byte	0x4
	.long	0x5bd9
	.uleb128 0x4
	.long	0x5c79
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
	.long	0x86c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"unsignedp"
	.byte	0xe
	.byte	0x1a
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF35
	.byte	0xe
	.byte	0x1b
	.long	0x5c79
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c14
	.uleb128 0x14
	.long	0x5cc7
	.long	.LASF36
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
	.long	.LASF37
	.byte	0xe
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF35
	.byte	0xe
	.byte	0x29
	.long	0x5cc7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c7f
	.uleb128 0x4
	.long	0x5e1c
	.string	"emit_status"
	.byte	0x34
	.byte	0xe
	.byte	0x37
	.uleb128 0x7
	.string	"x_reg_rtx_no"
	.byte	0xe
	.byte	0x3a
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_first_label_num"
	.byte	0xe
	.byte	0x3d
	.long	0x2de
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
	.long	.LASF37
	.byte	0xe
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF36
	.byte	0xe
	.byte	0x50
	.long	0x5cc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x_cur_insn_uid"
	.byte	0xe
	.byte	0x54
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"x_last_linenum"
	.byte	0xe
	.byte	0x58
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"x_last_filename"
	.byte	0xe
	.byte	0x59
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"regno_pointer_align_length"
	.byte	0xe
	.byte	0x5f
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"regno_pointer_align"
	.byte	0xe
	.byte	0x65
	.long	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"regno_decl"
	.byte	0xe
	.byte	0x69
	.long	0x5bfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"x_regno_reg_rtx"
	.byte	0xe
	.byte	0x70
	.long	0x1793
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x5efc
	.string	"expr_status"
	.byte	0x1c
	.byte	0xe
	.byte	0x7d
	.uleb128 0x7
	.string	"x_pending_stack_adjust"
	.byte	0xe
	.byte	0x80
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_inhibit_defer_pop"
	.byte	0xe
	.byte	0x91
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_stack_pointer_delta"
	.byte	0xe
	.byte	0x97
	.long	0x2de
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
	.long	0x5f66
	.long	.LASF34
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
	.long	0x5f66
	.uleb128 0x22
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f78
	.uleb128 0x3
	.byte	0x4
	.long	0x5e1c
	.uleb128 0x3
	.byte	0x4
	.long	0x5ccd
	.uleb128 0x4
	.long	0x603a
	.string	"varasm_status"
	.byte	0x18
	.byte	0xe
	.byte	0xb9
	.uleb128 0x7
	.string	"x_const_rtx_hash_table"
	.byte	0x1
	.byte	0x60
	.long	0x7fd8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"x_const_rtx_sym_hash_table"
	.byte	0x1
	.byte	0x62
	.long	0x808e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"x_first_pool"
	.byte	0x1
	.byte	0x65
	.long	0x8094
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"x_last_pool"
	.byte	0x1
	.byte	0x66
	.long	0x8094
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"x_pool_offset"
	.byte	0x1
	.byte	0x6a
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f98
	.uleb128 0x22
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6040
	.uleb128 0x22
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x605d
	.uleb128 0x22
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x606f
	.uleb128 0x22
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6088
	.uleb128 0x10
	.long	0x60b2
	.long	0x464
	.uleb128 0x11
	.long	0x3ce
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x8
	.byte	0x1d
	.long	0x422
	.uleb128 0x4
	.long	0x611c
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF35
	.byte	0x8
	.byte	0x35
	.long	0x611c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x8
	.byte	0x36
	.long	0x611c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x8
	.byte	0x37
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x8
	.byte	0x38
	.long	0x6122
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60c5
	.uleb128 0x10
	.long	0x6132
	.long	0x60b2
	.uleb128 0x11
	.long	0x3ce
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x8
	.byte	0x39
	.long	0x60c5
	.uleb128 0x3
	.byte	0x4
	.long	0x6132
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x8
	.byte	0x43
	.long	0x15d1
	.uleb128 0x4
	.long	0x61b5
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xa
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0xa
	.byte	0x21
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF10
	.byte	0xa
	.byte	0x22
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0xa
	.byte	0x23
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0xa
	.byte	0x24
	.long	0x60a2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xa
	.byte	0x25
	.long	0x61c4
	.uleb128 0x3
	.byte	0x4
	.long	0x615c
	.uleb128 0x2
	.string	"regset"
	.byte	0x9
	.byte	0x22
	.long	0x614e
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x9
	.byte	0x75
	.long	0x453
	.uleb128 0x4
	.long	0x6292
	.string	"edge_def"
	.byte	0x28
	.byte	0x9
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x9
	.byte	0x7a
	.long	0x6292
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x9
	.byte	0x7a
	.long	0x6292
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x9
	.byte	0x7d
	.long	0x1758
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"dest"
	.byte	0x9
	.byte	0x7d
	.long	0x1758
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
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x9
	.byte	0x85
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x9
	.byte	0x86
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x9
	.byte	0x87
	.long	0x61d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x61e9
	.uleb128 0x2
	.string	"edge"
	.byte	0x9
	.byte	0x89
	.long	0x6292
	.uleb128 0x4
	.long	0x6511
	.string	"loop"
	.byte	0x80
	.byte	0x9
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x9
	.value	0x176
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x9
	.value	0x179
	.long	0x6517
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x9
	.value	0x17c
	.long	0x6517
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x9
	.value	0x17f
	.long	0x6517
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x9
	.value	0x184
	.long	0x652a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x9
	.value	0x187
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0x9
	.value	0x18b
	.long	0x6517
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x9
	.value	0x18f
	.long	0x6517
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x9
	.value	0x192
	.long	0x61b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x9
	.value	0x195
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x9
	.value	0x198
	.long	0x652a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x9
	.value	0x19b
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x9
	.value	0x19e
	.long	0x652a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x9
	.value	0x1a1
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x9
	.value	0x1a4
	.long	0x61b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x9
	.value	0x1a7
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x9
	.value	0x1aa
	.long	0x6530
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x9
	.value	0x1ae
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x9
	.value	0x1b1
	.long	0x6511
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x23
	.long	.LASF38
	.byte	0x9
	.value	0x1b4
	.long	0x6511
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x23
	.long	.LASF35
	.byte	0x9
	.value	0x1b7
	.long	0x6511
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x9
	.value	0x1ba
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x9
	.value	0x1bd
	.long	0x4ba
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
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62a4
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x9
	.byte	0xe6
	.long	0x1758
	.uleb128 0x3
	.byte	0x4
	.long	0x6298
	.uleb128 0x3
	.byte	0x4
	.long	0x6511
	.uleb128 0x1b
	.long	0x657c
	.string	"real_value_class"
	.byte	0x4
	.byte	0xb
	.byte	0x24
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
	.long	0x658c
	.long	0x422
	.uleb128 0x11
	.long	0x3ce
	.byte	0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6592
	.uleb128 0xb
	.long	0x3db9
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0x3
	.byte	0x32
	.long	0x3b7
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0x3
	.byte	0x37
	.long	0x65b9
	.uleb128 0x3
	.byte	0x4
	.long	0x65bf
	.uleb128 0x18
	.long	0x65cf
	.byte	0x1
	.long	0x6597
	.uleb128 0x16
	.long	0x84b
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0x3
	.byte	0x3e
	.long	0x830
	.uleb128 0x2
	.string	"htab_del"
	.byte	0x3
	.byte	0x42
	.long	0x760
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0x3
	.byte	0x4e
	.long	0x6600
	.uleb128 0x3
	.byte	0x4
	.long	0x6606
	.uleb128 0x18
	.long	0x661b
	.byte	0x1
	.long	0x4ba
	.uleb128 0x16
	.long	0x3ed
	.uleb128 0x16
	.long	0x3ed
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0x3
	.byte	0x51
	.long	0x760
	.uleb128 0x4
	.long	0x66fe
	.string	"htab"
	.byte	0x2c
	.byte	0x3
	.byte	0x59
	.uleb128 0x7
	.string	"hash_f"
	.byte	0x3
	.byte	0x5b
	.long	0x65a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"eq_f"
	.byte	0x3
	.byte	0x5e
	.long	0x65cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"del_f"
	.byte	0x3
	.byte	0x61
	.long	0x65de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"entries"
	.byte	0x3
	.byte	0x64
	.long	0x75a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.byte	0x67
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_elements"
	.byte	0x3
	.byte	0x6a
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"n_deleted"
	.byte	0x3
	.byte	0x6d
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"searches"
	.byte	0x3
	.byte	0x71
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"collisions"
	.byte	0x3
	.byte	0x75
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"alloc_f"
	.byte	0x3
	.byte	0x78
	.long	0x65ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"free_f"
	.byte	0x3
	.byte	0x79
	.long	0x661b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0x3
	.byte	0x7c
	.long	0x670c
	.uleb128 0x3
	.byte	0x4
	.long	0x662c
	.uleb128 0xd
	.long	0x6746
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0x11
	.value	0x16a
	.uleb128 0x24
	.string	"declared_inline"
	.byte	0x11
	.value	0x16b
	.long	0x3b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x6798
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x1e
	.byte	0x34
	.uleb128 0x7
	.string	"base"
	.byte	0x1e
	.byte	0x35
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0x1e
	.byte	0x36
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0x1e
	.byte	0x37
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0x1e
	.byte	0x38
	.long	0x760
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x1c
	.byte	0x1d
	.long	0x67b4
	.uleb128 0x3
	.byte	0x4
	.long	0x67ba
	.uleb128 0x15
	.long	0x67d0
	.byte	0x1
	.uleb128 0x16
	.long	0x67d0
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c2
	.uleb128 0x4
	.long	0x695c
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0x1c
	.byte	0x24
	.long	0x69a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0x1c
	.byte	0x29
	.long	0x69bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0x1c
	.byte	0x2a
	.long	0x69d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0x1c
	.byte	0x2b
	.long	0x69ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0x1c
	.byte	0x2d
	.long	0x69d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0x1c
	.byte	0x2e
	.long	0x6a08
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0x1c
	.byte	0x2f
	.long	0x6a37
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0x1c
	.byte	0x34
	.long	0x69d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0x1c
	.byte	0x35
	.long	0x6a4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0x1c
	.byte	0x36
	.long	0x69d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0x1c
	.byte	0x37
	.long	0x6a5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0x1c
	.byte	0x38
	.long	0x6a7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x18
	.long	0x6980
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x6980
	.uleb128 0x16
	.long	0x82a
	.uleb128 0x16
	.long	0x6986
	.uleb128 0x16
	.long	0x4ba
	.uleb128 0x16
	.long	0x4ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x698c
	.uleb128 0x18
	.long	0x69a6
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x6980
	.uleb128 0x16
	.long	0x82a
	.uleb128 0x16
	.long	0x4ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x695c
	.uleb128 0x18
	.long	0x69bc
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x6980
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69ac
	.uleb128 0x18
	.long	0x69d2
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69c2
	.uleb128 0x18
	.long	0x69ed
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x4ba
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69d8
	.uleb128 0x18
	.long	0x6a08
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69f3
	.uleb128 0x18
	.long	0x6a37
	.byte	0x1
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x1ef
	.uleb128 0x16
	.long	0x4ba
	.uleb128 0x16
	.long	0x82a
	.uleb128 0x16
	.long	0x4ba
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a0e
	.uleb128 0x18
	.long	0x6a4d
	.byte	0x1
	.long	0x5bd0
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a3d
	.uleb128 0x15
	.long	0x6a5f
	.byte	0x1
	.uleb128 0x16
	.long	0x1ef
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a53
	.uleb128 0x18
	.long	0x6a7f
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
	.long	0x6a65
	.uleb128 0x4
	.long	0x6af4
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x1c
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0x1c
	.byte	0x42
	.long	0x6b00
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0x1c
	.byte	0x45
	.long	0x6b00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0x1c
	.byte	0x48
	.long	0x6b00
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0x1c
	.byte	0x4b
	.long	0x6b00
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x6b00
	.byte	0x1
	.uleb128 0x16
	.long	0x4fb1
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6af4
	.uleb128 0x4
	.long	0x6b51
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x1c
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0x1c
	.byte	0x54
	.long	0x6b66
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0x1c
	.byte	0x57
	.long	0x6b7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x18
	.long	0x6b66
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x4ba
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b51
	.uleb128 0x18
	.long	0x6b7c
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b6c
	.uleb128 0x4
	.long	0x6c6f
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x1c
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0x1c
	.byte	0x60
	.long	0x6c7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0x1c
	.byte	0x64
	.long	0x6c9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0x1c
	.byte	0x68
	.long	0x6cb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"unsigned_type"
	.byte	0x1c
	.byte	0x6c
	.long	0x6ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"signed_type"
	.byte	0x1c
	.byte	0x70
	.long	0x6ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0x1c
	.byte	0x74
	.long	0x6ce6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0x1c
	.byte	0x7a
	.long	0x6ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0x1c
	.byte	0x80
	.long	0x6cfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x6c7f
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x17dd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c6f
	.uleb128 0x18
	.long	0x6c9a
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x86c
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c85
	.uleb128 0x18
	.long	0x6cb5
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x3b7
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ca0
	.uleb128 0x18
	.long	0x6ccb
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6cbb
	.uleb128 0x18
	.long	0x6ce6
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6cd1
	.uleb128 0x15
	.long	0x6cfd
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6cec
	.uleb128 0x4
	.long	0x6e09
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x1c
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0x1c
	.byte	0x89
	.long	0x852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0x1c
	.byte	0x90
	.long	0x6e23
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0x1c
	.byte	0x94
	.long	0x6e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0x1c
	.byte	0x99
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0x1c
	.byte	0x9c
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0x1c
	.byte	0xa2
	.long	0x6ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0x1c
	.byte	0xa5
	.long	0x6e4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0x1c
	.byte	0xa9
	.long	0x6e63
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0x1c
	.byte	0xad
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0x1c
	.byte	0xb0
	.long	0x6e63
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x18
	.long	0x6e23
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e09
	.uleb128 0x2b
	.byte	0x1
	.long	0x2de
	.uleb128 0x3
	.byte	0x4
	.long	0x6e29
	.uleb128 0x15
	.long	0x6e41
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e35
	.uleb128 0x2b
	.byte	0x1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x4
	.long	0x6e47
	.uleb128 0x18
	.long	0x6e63
	.byte	0x1
	.long	0x5bd0
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e53
	.uleb128 0x27
	.long	0x728e
	.long	.LASF39
	.value	0x120
	.byte	0x1c
	.byte	0xb6
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x1c
	.byte	0xb8
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0x1c
	.byte	0xbc
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0x1c
	.byte	0xc0
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0x1c
	.byte	0xca
	.long	0x72a9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0x1c
	.byte	0xd6
	.long	0x72b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0x1c
	.byte	0xde
	.long	0x72cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0x1c
	.byte	0xe1
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0x1c
	.byte	0xe5
	.long	0x852
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0x1c
	.byte	0xe8
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0x1c
	.byte	0xec
	.long	0x72e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0x1c
	.byte	0xf1
	.long	0x6ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0x1c
	.byte	0xf5
	.long	0x7306
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"truthvalue_conversion"
	.byte	0x1c
	.value	0x102
	.long	0x6ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"insert_default_attributes"
	.byte	0x1c
	.value	0x106
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"safe_from_p"
	.byte	0x1c
	.value	0x10f
	.long	0x7321
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"finish_incomplete_decl"
	.byte	0x1c
	.value	0x113
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"unsafe_for_reeval"
	.byte	0x1c
	.value	0x118
	.long	0x6b7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"mark_addressable"
	.byte	0x1c
	.value	0x11d
	.long	0x6e63
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"staticp"
	.byte	0x1c
	.value	0x120
	.long	0x6b7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"dup_lang_specific_decl"
	.byte	0x1c
	.value	0x124
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"unsave_expr_now"
	.byte	0x1c
	.value	0x129
	.long	0x6ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"maybe_build_cleanup"
	.byte	0x1c
	.value	0x12d
	.long	0x6ccb
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"set_decl_assembler_name"
	.byte	0x1c
	.value	0x134
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"can_use_bit_fields_p"
	.byte	0x1c
	.value	0x138
	.long	0x72b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"honor_readonly"
	.byte	0x1c
	.value	0x13b
	.long	0x5bd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"print_statistics"
	.byte	0x1c
	.value	0x13f
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"print_xnode"
	.byte	0x1c
	.value	0x143
	.long	0x6798
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"print_decl"
	.byte	0x1c
	.value	0x147
	.long	0x6798
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"print_type"
	.byte	0x1c
	.value	0x148
	.long	0x6798
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"print_identifier"
	.byte	0x1c
	.value	0x149
	.long	0x6798
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"decl_printable_name"
	.byte	0x1c
	.value	0x151
	.long	0x733c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"print_error_function"
	.byte	0x1c
	.value	0x154
	.long	0x736e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"expr_size"
	.byte	0x1c
	.value	0x15b
	.long	0x6ccb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x23
	.long	.LASF40
	.byte	0x1c
	.value	0x162
	.long	0x7374
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"common_attribute_table"
	.byte	0x1c
	.value	0x163
	.long	0x7374
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"format_attribute_table"
	.byte	0x1c
	.value	0x164
	.long	0x7374
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x23
	.long	.LASF32
	.byte	0x1c
	.value	0x167
	.long	0x6a85
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"tree_inlining"
	.byte	0x1c
	.value	0x169
	.long	0x67d6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"tree_dump"
	.byte	0x1c
	.value	0x16b
	.long	0x6b06
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"decls"
	.byte	0x1c
	.value	0x16d
	.long	0x6d03
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"types"
	.byte	0x1c
	.value	0x16f
	.long	0x6b82
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x18
	.long	0x72a3
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x72a3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4bc
	.uleb128 0x3
	.byte	0x4
	.long	0x728e
	.uleb128 0x2b
	.byte	0x1
	.long	0x5bd0
	.uleb128 0x3
	.byte	0x4
	.long	0x72af
	.uleb128 0x18
	.long	0x72cb
	.byte	0x1
	.long	0x2cb
	.uleb128 0x16
	.long	0x2cb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72bb
	.uleb128 0x18
	.long	0x72e1
	.byte	0x1
	.long	0x453
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72d1
	.uleb128 0x18
	.long	0x7306
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x86c
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72e7
	.uleb128 0x18
	.long	0x7321
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x730c
	.uleb128 0x18
	.long	0x733c
	.byte	0x1
	.long	0x2cb
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7327
	.uleb128 0x15
	.long	0x7353
	.byte	0x1
	.uleb128 0x16
	.long	0x7353
	.uleb128 0x16
	.long	0x2cb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7359
	.uleb128 0x22
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7342
	.uleb128 0x3
	.byte	0x4
	.long	0x737a
	.uleb128 0xb
	.long	0x5b0b
	.uleb128 0x4
	.long	0x7560
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x1d
	.byte	0x19
	.uleb128 0x7
	.string	"init"
	.byte	0x1d
	.byte	0x1c
	.long	0x756c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"finish"
	.byte	0x1d
	.byte	0x1f
	.long	0x756c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"define"
	.byte	0x1d
	.byte	0x22
	.long	0x7583
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"undef"
	.byte	0x1d
	.byte	0x25
	.long	0x7583
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"start_source_file"
	.byte	0x1d
	.byte	0x29
	.long	0x7583
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"end_source_file"
	.byte	0x1d
	.byte	0x2d
	.long	0x7595
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"begin_block"
	.byte	0x1d
	.byte	0x31
	.long	0x75ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"end_block"
	.byte	0x1d
	.byte	0x34
	.long	0x75ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"ignore_block"
	.byte	0x1d
	.byte	0x3b
	.long	0x6e63
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"source_line"
	.byte	0x1d
	.byte	0x3e
	.long	0x7583
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"begin_prologue"
	.byte	0x1d
	.byte	0x43
	.long	0x7583
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"end_prologue"
	.byte	0x1d
	.byte	0x47
	.long	0x7583
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"end_epilogue"
	.byte	0x1d
	.byte	0x4a
	.long	0x7583
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"begin_function"
	.byte	0x1d
	.byte	0x4d
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"end_function"
	.byte	0x1d
	.byte	0x50
	.long	0x7595
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_decl"
	.byte	0x1d
	.byte	0x56
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"global_decl"
	.byte	0x1d
	.byte	0x5a
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"deferred_inline_function"
	.byte	0x1d
	.byte	0x5e
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"outlining_inline_function"
	.byte	0x1d
	.byte	0x63
	.long	0x6e41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1f
	.long	.LASF41
	.byte	0x1d
	.byte	0x67
	.long	0x75be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x15
	.long	0x756c
	.byte	0x1
	.uleb128 0x16
	.long	0x2cb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7560
	.uleb128 0x15
	.long	0x7583
	.byte	0x1
	.uleb128 0x16
	.long	0x3b7
	.uleb128 0x16
	.long	0x2cb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7572
	.uleb128 0x15
	.long	0x7595
	.byte	0x1
	.uleb128 0x16
	.long	0x3b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7589
	.uleb128 0x15
	.long	0x75ac
	.byte	0x1
	.uleb128 0x16
	.long	0x3b7
	.uleb128 0x16
	.long	0x3b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x759b
	.uleb128 0x15
	.long	0x75be
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75b2
	.uleb128 0x4
	.long	0x760c
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x17
	.byte	0x3a
	.uleb128 0x7
	.string	"hi"
	.byte	0x17
	.byte	0x3b
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"si"
	.byte	0x17
	.byte	0x3c
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"di"
	.byte	0x17
	.byte	0x3d
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ti"
	.byte	0x17
	.byte	0x3e
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x7838
	.string	"asm_out"
	.byte	0x70
	.byte	0x17
	.byte	0x33
	.uleb128 0x7
	.string	"open_paren"
	.byte	0x17
	.byte	0x35
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"close_paren"
	.byte	0x17
	.byte	0x35
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"byte_op"
	.byte	0x17
	.byte	0x38
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"aligned_op"
	.byte	0x17
	.byte	0x3f
	.long	0x75c4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"unaligned_op"
	.byte	0x17
	.byte	0x3f
	.long	0x75c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"integer"
	.byte	0x17
	.byte	0x46
	.long	0x7852
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"globalize_label"
	.byte	0x17
	.byte	0x49
	.long	0x7869
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"visibility"
	.byte	0x17
	.byte	0x4d
	.long	0x7880
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"function_prologue"
	.byte	0x17
	.byte	0x50
	.long	0x7897
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"function_end_prologue"
	.byte	0x17
	.byte	0x53
	.long	0x78a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"function_begin_epilogue"
	.byte	0x17
	.byte	0x56
	.long	0x78a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"function_epilogue"
	.byte	0x17
	.byte	0x59
	.long	0x7897
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1f
	.long	.LASF42
	.byte	0x17
	.byte	0x5d
	.long	0x78c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"exception_section"
	.byte	0x17
	.byte	0x60
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"eh_frame_section"
	.byte	0x17
	.byte	0x63
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"select_section"
	.byte	0x17
	.byte	0x6a
	.long	0x78dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"select_rtx_section"
	.byte	0x17
	.byte	0x6e
	.long	0x78f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"unique_section"
	.byte	0x17
	.byte	0x73
	.long	0x7880
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"constructor"
	.byte	0x17
	.byte	0x76
	.long	0x790f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"destructor"
	.byte	0x17
	.byte	0x79
	.long	0x790f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"output_mi_thunk"
	.byte	0x17
	.byte	0x80
	.long	0x7935
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"can_output_mi_thunk"
	.byte	0x17
	.byte	0x8b
	.long	0x795a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x18
	.long	0x7852
	.byte	0x1
	.long	0x5bd0
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x3b7
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7838
	.uleb128 0x15
	.long	0x7869
	.byte	0x1
	.uleb128 0x16
	.long	0x67d0
	.uleb128 0x16
	.long	0x2cb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7858
	.uleb128 0x15
	.long	0x7880
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x786f
	.uleb128 0x15
	.long	0x7897
	.byte	0x1
	.uleb128 0x16
	.long	0x67d0
	.uleb128 0x16
	.long	0x453
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7886
	.uleb128 0x15
	.long	0x78a9
	.byte	0x1
	.uleb128 0x16
	.long	0x67d0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x789d
	.uleb128 0x15
	.long	0x78c0
	.byte	0x1
	.uleb128 0x16
	.long	0x2cb
	.uleb128 0x16
	.long	0x3b7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78af
	.uleb128 0x15
	.long	0x78dc
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x464
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78c6
	.uleb128 0x15
	.long	0x78f8
	.byte	0x1
	.uleb128 0x16
	.long	0x86c
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x464
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78e2
	.uleb128 0x15
	.long	0x790f
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78fe
	.uleb128 0x15
	.long	0x7935
	.byte	0x1
	.uleb128 0x16
	.long	0x67d0
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x453
	.uleb128 0x16
	.long	0x453
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7915
	.uleb128 0x18
	.long	0x795a
	.byte	0x1
	.long	0x5bd0
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x453
	.uleb128 0x16
	.long	0x453
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x793b
	.uleb128 0x4
	.long	0x7b1b
	.string	"sched"
	.byte	0x40
	.byte	0x17
	.byte	0x93
	.uleb128 0x7
	.string	"adjust_cost"
	.byte	0x17
	.byte	0x97
	.long	0x7b3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"adjust_priority"
	.byte	0x17
	.byte	0x9b
	.long	0x7b55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"issue_rate"
	.byte	0x17
	.byte	0xa0
	.long	0x6e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"variable_issue"
	.byte	0x17
	.byte	0xa4
	.long	0x7b7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"md_init"
	.byte	0x17
	.byte	0xa7
	.long	0x7b96
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"md_finish"
	.byte	0x17
	.byte	0xaa
	.long	0x7bad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"reorder"
	.byte	0x17
	.byte	0xae
	.long	0x7bd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reorder2"
	.byte	0x17
	.byte	0xaf
	.long	0x7bd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"use_dfa_pipeline_interface"
	.byte	0x17
	.byte	0xb4
	.long	0x6e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x17
	.byte	0xc2
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"dfa_pre_cycle_insn"
	.byte	0x17
	.byte	0xc3
	.long	0x7be3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"init_dfa_post_cycle_insn"
	.byte	0x17
	.byte	0xc4
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"dfa_post_cycle_insn"
	.byte	0x17
	.byte	0xc5
	.long	0x7be3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x17
	.byte	0xcd
	.long	0x6e2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"init_dfa_bubbles"
	.byte	0x17
	.byte	0xd8
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"dfa_bubble"
	.byte	0x17
	.byte	0xd9
	.long	0x7bf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x18
	.long	0x7b3a
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b1b
	.uleb128 0x18
	.long	0x7b55
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b40
	.uleb128 0x18
	.long	0x7b7a
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x67d0
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b5b
	.uleb128 0x15
	.long	0x7b96
	.byte	0x1
	.uleb128 0x16
	.long	0x67d0
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b80
	.uleb128 0x15
	.long	0x7bad
	.byte	0x1
	.uleb128 0x16
	.long	0x67d0
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b9c
	.uleb128 0x18
	.long	0x7bd7
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x67d0
	.uleb128 0x16
	.long	0x2de
	.uleb128 0x16
	.long	0x1793
	.uleb128 0x16
	.long	0x82a
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bb3
	.uleb128 0x2b
	.byte	0x1
	.long	0x9b
	.uleb128 0x3
	.byte	0x4
	.long	0x7bdd
	.uleb128 0x18
	.long	0x7bf9
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7be9
	.uleb128 0x4
	.long	0x7edc
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x17
	.byte	0x30
	.uleb128 0x7
	.string	"asm_out"
	.byte	0x17
	.byte	0x8f
	.long	0x760c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sched"
	.byte	0x17
	.byte	0xda
	.long	0x7960
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"merge_decl_attributes"
	.byte	0x17
	.byte	0xdd
	.long	0x7ef1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x7
	.string	"merge_type_attributes"
	.byte	0x17
	.byte	0xe0
	.long	0x7ef1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x1f
	.long	.LASF40
	.byte	0x17
	.byte	0xe4
	.long	0x7374
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x7
	.string	"comp_type_attributes"
	.byte	0x17
	.byte	0xe9
	.long	0x7f0c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x7
	.string	"set_default_type_attributes"
	.byte	0x17
	.byte	0xec
	.long	0x6e41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"insert_attributes"
	.byte	0x17
	.byte	0xef
	.long	0x7f23
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x7
	.string	"function_attribute_inlinable_p"
	.byte	0x17
	.byte	0xf3
	.long	0x6e63
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"ms_bitfield_layout_p"
	.byte	0x17
	.byte	0xf7
	.long	0x6e63
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"init_builtins"
	.byte	0x17
	.byte	0xfa
	.long	0x866
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"expand_builtin"
	.byte	0x17
	.byte	0xfd
	.long	0x7f4d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"section_type_flags"
	.byte	0x17
	.value	0x103
	.long	0x7f6d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"cannot_modify_jumps_p"
	.byte	0x17
	.value	0x107
	.long	0x72b5
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"cannot_force_const_mem"
	.byte	0x17
	.value	0x10a
	.long	0x7f83
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"in_small_data_p"
	.byte	0x17
	.value	0x10d
	.long	0x6e63
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"binds_local_p"
	.byte	0x17
	.value	0x111
	.long	0x6e63
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"encode_section_info"
	.byte	0x17
	.value	0x115
	.long	0x7880
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"strip_name_encoding"
	.byte	0x17
	.value	0x118
	.long	0x72cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"have_named_sections"
	.byte	0x17
	.value	0x11d
	.long	0x5bd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"have_ctors_dtors"
	.byte	0x17
	.value	0x121
	.long	0x5bd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xe
	.string	"have_tls"
	.byte	0x17
	.value	0x124
	.long	0x5bd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xe
	.string	"have_srodata_section"
	.byte	0x17
	.value	0x127
	.long	0x5bd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xe
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x17
	.value	0x12a
	.long	0x5bd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x18
	.long	0x7ef1
	.byte	0x1
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7edc
	.uleb128 0x18
	.long	0x7f0c
	.byte	0x1
	.long	0x2de
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ef7
	.uleb128 0x15
	.long	0x7f23
	.byte	0x1
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x5bfd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f12
	.uleb128 0x18
	.long	0x7f4d
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x86c
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f29
	.uleb128 0x18
	.long	0x7f6d
	.byte	0x1
	.long	0x3b7
	.uleb128 0x16
	.long	0x1e3
	.uleb128 0x16
	.long	0x2cb
	.uleb128 0x16
	.long	0x2de
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f53
	.uleb128 0x18
	.long	0x7f83
	.byte	0x1
	.long	0x5bd0
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f73
	.uleb128 0x2c
	.long	0x7fd8
	.string	"constant_descriptor_rtx"
	.value	0x10c
	.byte	0x1
	.byte	0x4f
	.uleb128 0x23
	.long	.LASF35
	.byte	0x1
	.value	0xb78
	.long	0x7fde
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rtl"
	.byte	0x1
	.value	0xb7b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF23
	.byte	0x1
	.value	0xb7e
	.long	0x9631
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7fde
	.uleb128 0x3
	.byte	0x4
	.long	0x7f89
	.uleb128 0x4
	.long	0x808e
	.string	"pool_constant"
	.byte	0x28
	.byte	0x1
	.byte	0x51
	.uleb128 0xe
	.string	"desc"
	.byte	0x1
	.value	0xb88
	.long	0x7fde
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF35
	.byte	0x1
	.value	0xb89
	.long	0x8094
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"next_sym"
	.byte	0x1
	.value	0xb8a
	.long	0x8094
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"constant"
	.byte	0x1
	.value	0xb8b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x23
	.long	.LASF0
	.byte	0x1
	.value	0xb8c
	.long	0x86c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.value	0xb8d
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x23
	.long	.LASF11
	.byte	0x1
	.value	0xb8e
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x23
	.long	.LASF9
	.byte	0x1
	.value	0xb8f
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"mark"
	.byte	0x1
	.value	0xb90
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8094
	.uleb128 0x3
	.byte	0x4
	.long	0x7fe4
	.uleb128 0x1d
	.long	0x8104
	.long	.LASF44
	.byte	0x4
	.byte	0x1
	.byte	0xbd
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
	.long	0x814b
	.string	"in_named_entry"
	.byte	0xc
	.byte	0x1
	.byte	0xdc
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x1
	.byte	0xdd
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x1
	.byte	0xde
	.long	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"declared"
	.byte	0x1
	.byte	0xdf
	.long	0x5bd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.string	"sdata_section"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2d
	.byte	0x1
	.string	"sbss_section"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2d
	.byte	0x1
	.string	"text_section"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2d
	.byte	0x1
	.string	"data_section"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2e
	.byte	0x1
	.string	"force_data_section"
	.byte	0x1
	.value	0x113
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2e
	.byte	0x1
	.string	"readonly_data_section"
	.byte	0x1
	.value	0x11d
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2f
	.byte	0x1
	.string	"in_text_section"
	.byte	0x1
	.value	0x132
	.byte	0x1
	.long	0x2de
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2f
	.byte	0x1
	.string	"in_data_section"
	.byte	0x1
	.value	0x13a
	.byte	0x1
	.long	0x2de
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x30
	.long	0x82c3
	.string	"in_named_entry_eq"
	.byte	0x1
	.value	0x144
	.byte	0x1
	.long	0x2de
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x31
	.string	"p1"
	.byte	0x1
	.value	0x142
	.long	0x84b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"p2"
	.byte	0x1
	.value	0x143
	.long	0x84b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"old"
	.byte	0x1
	.value	0x145
	.long	0x82c3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"new"
	.byte	0x1
	.value	0x146
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x82c9
	.uleb128 0xb
	.long	0x8104
	.uleb128 0x30
	.long	0x8318
	.string	"in_named_entry_hash"
	.byte	0x1
	.value	0x14e
	.byte	0x1
	.long	0x6597
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x14d
	.long	0x84b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"old"
	.byte	0x1
	.value	0x14f
	.long	0x82c3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x836a
	.byte	0x1
	.string	"get_named_section_flags"
	.byte	0x1
	.value	0x15b
	.byte	0x1
	.long	0x3b7
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x15a
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"slot"
	.byte	0x1
	.value	0x15c
	.long	0x836a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8370
	.uleb128 0x3
	.byte	0x4
	.long	0x8104
	.uleb128 0x33
	.long	0x83d0
	.byte	0x1
	.string	"named_section_first_declaration"
	.byte	0x1
	.value	0x16c
	.byte	0x1
	.long	0x5bd0
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x16b
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"slot"
	.byte	0x1
	.value	0x16d
	.long	0x836a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x8442
	.byte	0x1
	.string	"set_named_section_flags"
	.byte	0x1
	.value	0x185
	.byte	0x1
	.long	0x5bd0
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x183
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF13
	.byte	0x1
	.value	0x184
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"slot"
	.byte	0x1
	.value	0x186
	.long	0x836a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"entry"
	.byte	0x1
	.value	0x186
	.long	0x8370
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x849b
	.byte	0x1
	.string	"named_section_flags"
	.byte	0x1
	.value	0x1a1
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x19f
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF13
	.byte	0x1
	.value	0x1a0
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF46
	.long	0xbe0e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15532
	.byte	0x0
	.uleb128 0x37
	.long	0x8502
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.value	0x1bd
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x1ba
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x1bb
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x1bc
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	.LASF13
	.byte	0x1
	.value	0x1be
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.long	.LASF46
	.long	0xbe09
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15555
	.byte	0x0
	.uleb128 0x35
	.long	0x8578
	.byte	0x1
	.string	"resolve_unique_section"
	.byte	0x1
	.value	0x1dd
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x1da
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x1db
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"flag_function_or_data_sections"
	.byte	0x1
	.value	0x1dc
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.string	"bss_section"
	.byte	0x1
	.value	0x1eb
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x39
	.long	0x8643
	.string	"asm_output_aligned_bss"
	.byte	0x1
	.value	0x222
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x31
	.string	"file"
	.byte	0x1
	.value	0x21e
	.long	0x67d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x21f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x220
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x221
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x221
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3a
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x38
	.long	.LASF10
	.byte	0x1
	.value	0x227
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x32
	.string	"size_"
	.byte	0x1
	.value	0x227
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x867a
	.byte	0x1
	.string	"function_section"
	.byte	0x1
	.value	0x23c
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x23b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x86c0
	.byte	0x1
	.string	"variable_section"
	.byte	0x1
	.value	0x24b
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x249
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x24a
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0x87a2
	.byte	0x1
	.string	"mergeable_string_section"
	.byte	0x1
	.value	0x259
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x256
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x257
	.long	0x464
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.long	.LASF13
	.byte	0x1
	.value	0x258
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x38
	.long	.LASF0
	.byte	0x1
	.value	0x261
	.long	0x86c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.long	.LASF48
	.byte	0x1
	.value	0x262
	.long	0x3b7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.string	"str"
	.byte	0x1
	.value	0x263
	.long	0x2cb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x264
	.long	0x2de
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.value	0x264
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x264
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.string	"unit"
	.byte	0x1
	.value	0x264
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x265
	.long	0x87a2
	.byte	0x2
	.byte	0x91
	.sleb128 -50
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x87b2
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x1d
	.byte	0x0
	.uleb128 0x35
	.long	0x8839
	.byte	0x1
	.string	"mergeable_constant_section"
	.byte	0x1
	.value	0x2a4
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x2a1
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x2a2
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF13
	.byte	0x1
	.value	0x2a3
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.long	.LASF48
	.byte	0x1
	.value	0x2a6
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x2b0
	.long	0x7f5
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x8871
	.string	"strip_reg_name"
	.byte	0x1
	.value	0x2c0
	.byte	0x1
	.long	0x2cb
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x2bf
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0x890f
	.byte	0x1
	.string	"decode_reg_name"
	.byte	0x1
	.value	0x2d5
	.byte	0x1
	.long	0x2de
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x31
	.string	"asmspec"
	.byte	0x1
	.value	0x2d4
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	0x88fa
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x2d8
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x3c
	.byte	0x8
	.byte	0x1
	.value	0x2f1
	.uleb128 0x23
	.long	.LASF30
	.byte	0x1
	.value	0x2f1
	.long	0x5bc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"number"
	.byte	0x1
	.value	0x2f1
	.long	0x825
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.string	"table"
	.byte	0x1
	.value	0x2f1
	.long	0xbe04
	.byte	0x5
	.byte	0x3
	.long	table.15785
	.byte	0x0
	.uleb128 0x35
	.long	0x8a1a
	.byte	0x1
	.string	"make_decl_rtl"
	.byte	0x1
	.value	0x316
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x314
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"asmspec"
	.byte	0x1
	.value	0x315
	.long	0x2cb
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF49
	.byte	0x1
	.value	0x317
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x318
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"new_name"
	.byte	0x1
	.value	0x319
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"reg_number"
	.byte	0x1
	.value	0x31a
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x31b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	0x89cd
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x32
	.string	"starred"
	.byte	0x1
	.value	0x348
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3b
	.long	0x89ec
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x32
	.string	"nregs"
	.byte	0x1
	.value	0x35e
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3b
	.long	0x8a09
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x38
	.long	.LASF41
	.byte	0x1
	.value	0x3a1
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbdef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15845
	.byte	0x0
	.uleb128 0x35
	.long	0x8a62
	.byte	0x1
	.string	"make_var_volatile"
	.byte	0x1
	.value	0x3c9
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x31
	.string	"var"
	.byte	0x1
	.value	0x3c8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbdea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16064
	.byte	0x0
	.uleb128 0x35
	.long	0x8aaf
	.byte	0x1
	.string	"assemble_constant_align"
	.byte	0x1
	.value	0x3d5
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0x3d4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF11
	.byte	0x1
	.value	0x3d6
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x8ae2
	.byte	0x1
	.string	"assemble_asm"
	.byte	0x1
	.value	0x3ea
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x3e9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x8b38
	.byte	0x1
	.string	"default_stabs_asm_out_destructor"
	.byte	0x1
	.value	0x400
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x34
	.long	.LASF50
	.byte	0x1
	.value	0x3fe
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF51
	.byte	0x1
	.value	0x3ff
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0x8bb4
	.byte	0x1
	.string	"default_named_section_asm_out_destructor"
	.byte	0x1
	.value	0x40d
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x34
	.long	.LASF50
	.byte	0x1
	.value	0x40b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF51
	.byte	0x1
	.value	0x40c
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF45
	.byte	0x1
	.value	0x40e
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x40f
	.long	0x8bb4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x10
	.long	0x8bc4
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0xf
	.byte	0x0
	.uleb128 0x35
	.long	0x8c1b
	.byte	0x1
	.string	"default_stabs_asm_out_constructor"
	.byte	0x1
	.value	0x43e
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x34
	.long	.LASF50
	.byte	0x1
	.value	0x43c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF51
	.byte	0x1
	.value	0x43d
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0x8c98
	.byte	0x1
	.string	"default_named_section_asm_out_constructor"
	.byte	0x1
	.value	0x44b
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x34
	.long	.LASF50
	.byte	0x1
	.value	0x449
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF51
	.byte	0x1
	.value	0x44a
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF45
	.byte	0x1
	.value	0x44c
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"buf"
	.byte	0x1
	.value	0x44d
	.long	0x8bb4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x35
	.long	0x8d1a
	.byte	0x1
	.string	"assemble_start_function"
	.byte	0x1
	.value	0x489
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x487
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0x488
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF11
	.byte	0x1
	.value	0x48a
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x4b9
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x4ba
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x8d65
	.byte	0x1
	.string	"assemble_end_function"
	.byte	0x1
	.value	0x4da
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x4d8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0x4d9
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0x8d9a
	.byte	0x1
	.string	"assemble_zeros"
	.byte	0x1
	.value	0x4ed
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x4ec
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x8dcf
	.byte	0x1
	.string	"assemble_align"
	.byte	0x1
	.value	0x50b
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x50a
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x8e12
	.byte	0x1
	.string	"assemble_string"
	.byte	0x1
	.value	0x518
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x516
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x517
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x8f1e
	.string	"asm_emit_uninitialised"
	.byte	0x1
	.value	0x55d
	.byte	0x1
	.long	0x5bd0
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x559
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x55a
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x55b
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"rounded"
	.byte	0x1
	.value	0x55c
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3d
	.long	0x8ebe
	.byte	0x4
	.byte	0x1
	.value	0x55f
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
	.uleb128 0x32
	.string	"destination"
	.byte	0x1
	.value	0x564
	.long	0x8e82
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	0x8f0d
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x38
	.long	.LASF10
	.byte	0x1
	.value	0x594
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x32
	.string	"size_"
	.byte	0x1
	.value	0x594
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbde5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16332
	.byte	0x0
	.uleb128 0x35
	.long	0x8f93
	.byte	0x1
	.string	"assemble_variable"
	.byte	0x1
	.value	0x5b4
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x5b0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF49
	.byte	0x1
	.value	0x5b1
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"at_end"
	.byte	0x1
	.value	0x5b2
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"dont_output_data"
	.byte	0x1
	.value	0x5b3
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x30
	.long	0x8fed
	.string	"contains_pointers_p"
	.byte	0x1
	.value	0x6a4
	.byte	0x1
	.long	0x2de
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x31
	.string	"type"
	.byte	0x1
	.value	0x6a3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x32
	.string	"fields"
	.byte	0x1
	.value	0x6b2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x903e
	.byte	0x1
	.string	"assemble_external"
	.byte	0x1
	.value	0x6cb
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x6ca
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x32
	.string	"rtl"
	.byte	0x1
	.value	0x6d8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x907e
	.byte	0x1
	.string	"assemble_external_libcall"
	.byte	0x1
	.value	0x6ea
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x31
	.string	"fun"
	.byte	0x1
	.value	0x6e9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x90b3
	.byte	0x1
	.string	"assemble_label"
	.byte	0x1
	.value	0x6fc
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x6fb
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x911a
	.byte	0x1
	.string	"assemble_name"
	.byte	0x1
	.value	0x70a
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x31
	.string	"file"
	.byte	0x1
	.value	0x708
	.long	0x67d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x709
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"real_name"
	.byte	0x1
	.value	0x70b
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"id"
	.byte	0x1
	.value	0x70c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x918c
	.byte	0x1
	.string	"assemble_static_space"
	.byte	0x1
	.value	0x720
	.byte	0x1
	.long	0x9b
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x71f
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x721
	.long	0x918c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"namestring"
	.byte	0x1
	.value	0x722
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x723
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x10
	.long	0x919c
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0xb
	.byte	0x0
	.uleb128 0x33
	.long	0x9204
	.byte	0x1
	.string	"assemble_trampoline_template"
	.byte	0x1
	.value	0x74d
	.byte	0x1
	.long	0x9b
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x38
	.long	.LASF41
	.byte	0x1
	.value	0x74e
	.long	0x9204
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x74f
	.long	0x2cb
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x38
	.long	.LASF11
	.byte	0x1
	.value	0x750
	.long	0x2de
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.uleb128 0x10
	.long	0x9214
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0xff
	.byte	0x0
	.uleb128 0x33
	.long	0x926b
	.byte	0x1
	.string	"integer_asm_op"
	.byte	0x1
	.value	0x781
	.byte	0x1
	.long	0x2cb
	.long	.LFB62
	.long	.LFE62
	.long	.LLST46
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x77f
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x780
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"ops"
	.byte	0x1
	.value	0x782
	.long	0x926b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75c4
	.uleb128 0x35
	.long	0x92bc
	.byte	0x1
	.string	"assemble_integer_with_op"
	.byte	0x1
	.value	0x7a1
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.long	.LLST47
	.uleb128 0x31
	.string	"op"
	.byte	0x1
	.value	0x79f
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x7a0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0x9329
	.byte	0x1
	.string	"default_assemble_integer"
	.byte	0x1
	.value	0x7ae
	.byte	0x1
	.long	0x5bd0
	.long	.LFB64
	.long	.LFE64
	.long	.LLST48
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x7ab
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x7ac
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF53
	.byte	0x1
	.value	0x7ad
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x7af
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x93a1
	.byte	0x1
	.string	"assemble_integer"
	.byte	0x1
	.value	0x7be
	.byte	0x1
	.long	0x5bd0
	.long	.LFB65
	.long	.LFE65
	.long	.LLST49
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x7ba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x7bb
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x7bc
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"force"
	.byte	0x1
	.value	0x7bd
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"ival"
	.byte	0x1
	.value	0x7c0
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x35
	.long	0x93f1
	.byte	0x1
	.string	"assemble_real"
	.byte	0x1
	.value	0x7fd
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST50
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x7fa
	.long	0x3db9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x7fb
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x7fc
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0x0
	.uleb128 0x4
	.long	0x9424
	.string	"addr_const"
	.byte	0xc
	.byte	0x1
	.byte	0x4e
	.uleb128 0xe
	.string	"base"
	.byte	0x1
	.value	0x855
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF9
	.byte	0x1
	.value	0x856
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x39
	.long	0x94a8
	.string	"decode_addr_const"
	.byte	0x1
	.value	0x85d
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST51
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0x85b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF23
	.byte	0x1
	.value	0x85c
	.long	0x94a8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"target"
	.byte	0x1
	.value	0x85e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF9
	.byte	0x1
	.value	0x85f
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x860
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LASF46
	.long	0xbdd0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16706
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x93f1
	.uleb128 0x29
	.long	0x94fc
	.string	"kind"
	.byte	0x4
	.byte	0x1
	.value	0x89a
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
	.long	0x9545
	.string	"rtx_const_u_addr"
	.byte	0x10
	.byte	0x1
	.value	0x8a1
	.uleb128 0xe
	.string	"base"
	.byte	0x1
	.value	0x8a2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF50
	.byte	0x1
	.value	0x8a3
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF9
	.byte	0x1
	.value	0x8a4
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x957d
	.string	"rtx_const_u_di"
	.byte	0x10
	.byte	0x1
	.value	0x8a6
	.uleb128 0xe
	.string	"high"
	.byte	0x1
	.value	0x8a7
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"low"
	.byte	0x1
	.value	0x8a8
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.long	0x95b8
	.string	"rtx_const_int_vec"
	.byte	0x10
	.byte	0x1
	.value	0x8ad
	.uleb128 0xe
	.string	"high"
	.byte	0x1
	.value	0x8ae
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"low"
	.byte	0x1
	.value	0x8af
	.long	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3e
	.long	0x9611
	.string	"rtx_const_un"
	.value	0x100
	.byte	0x1
	.value	0x89f
	.uleb128 0xa
	.string	"du"
	.byte	0x1
	.value	0x8a0
	.long	0x3db9
	.uleb128 0x9
	.long	.LASF54
	.byte	0x1
	.value	0x8a5
	.long	0x94fc
	.uleb128 0xa
	.string	"di"
	.byte	0x1
	.value	0x8a9
	.long	0x9545
	.uleb128 0xa
	.string	"int_vec"
	.byte	0x1
	.value	0x8b0
	.long	0x9611
	.uleb128 0xa
	.string	"fp_vec"
	.byte	0x1
	.value	0x8b2
	.long	0x9621
	.byte	0x0
	.uleb128 0x10
	.long	0x9621
	.long	0x957d
	.uleb128 0x11
	.long	0x3ce
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.long	0x9631
	.long	0x3db9
	.uleb128 0x11
	.long	0x3ce
	.byte	0x7
	.byte	0x0
	.uleb128 0x2c
	.long	0x9678
	.string	"rtx_const"
	.value	0x104
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.string	"kind"
	.byte	0x1
	.value	0x89d
	.long	0x94ae
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x25
	.long	.LASF0
	.byte	0x1
	.value	0x89e
	.long	0x86c
	.byte	0x4
	.byte	0x10
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"un"
	.byte	0x1
	.value	0x8b4
	.long	0x95b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	0x96d7
	.string	"constant_descriptor_tree"
	.byte	0x10
	.byte	0x1
	.value	0x8bc
	.uleb128 0x23
	.long	.LASF35
	.byte	0x1
	.value	0x8be
	.long	0x96d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.long	.LASF41
	.byte	0x1
	.value	0x8c1
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"rtl"
	.byte	0x1
	.value	0x8c4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x23
	.long	.LASF23
	.byte	0x1
	.value	0x8c7
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9678
	.uleb128 0xd
	.long	0x9724
	.string	"deferred_string"
	.byte	0xc
	.byte	0x1
	.value	0x8d6
	.uleb128 0x23
	.long	.LASF41
	.byte	0x1
	.value	0x8d7
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x1
	.value	0x8d8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.value	0x8d9
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x30
	.long	0x975f
	.string	"const_str_htab_hash"
	.byte	0x1
	.value	0x8e4
	.byte	0x1
	.long	0x6597
	.long	.LFB68
	.long	.LFE68
	.long	.LLST52
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x8e3
	.long	0x84b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x97a5
	.string	"const_str_htab_eq"
	.byte	0x1
	.value	0x8f0
	.byte	0x1
	.long	0x2de
	.long	.LFB69
	.long	.LFE69
	.long	.LLST53
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x8ee
	.long	0x84b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0x8ef
	.long	0x84b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x97d9
	.string	"const_hash"
	.byte	0x1
	.value	0x8f9
	.byte	0x1
	.long	0x3b7
	.long	.LFB70
	.long	.LFE70
	.long	.LLST54
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0x8f8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x98bf
	.string	"const_hash_1"
	.byte	0x1
	.value	0x900
	.byte	0x1
	.long	0x3b7
	.long	.LFB71
	.long	.LFE71
	.long	.LLST55
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0x8ff
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x901
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"hi"
	.byte	0x1
	.value	0x902
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x903
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x903
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"code"
	.byte	0x1
	.value	0x904
	.long	0x17dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	0x9873
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x32
	.string	"tmp"
	.byte	0x1
	.value	0x91f
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3b
	.long	0x9891
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x32
	.string	"link"
	.byte	0x1
	.value	0x929
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3b
	.long	0x98ae
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x937
	.long	0x93f1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbdbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16843
	.byte	0x0
	.uleb128 0x30
	.long	0x9a10
	.string	"compare_constant"
	.byte	0x1
	.value	0x968
	.byte	0x1
	.long	0x2de
	.long	.LFB72
	.long	.LFE72
	.long	.LLST56
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0x966
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0x967
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.string	"typecode"
	.byte	0x1
	.value	0x969
	.long	0x17dd
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3b
	.long	0x9958
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x998
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"tmp1"
	.byte	0x1
	.value	0x999
	.long	0x754
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"tmp2"
	.byte	0x1
	.value	0x999
	.long	0x754
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x3b
	.long	0x999f
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x32
	.string	"l1"
	.byte	0x1
	.value	0x9aa
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"l2"
	.byte	0x1
	.value	0x9aa
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x32
	.string	"size_1"
	.byte	0x1
	.value	0x9ae
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x99d3
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x32
	.string	"value1"
	.byte	0x1
	.value	0x9d8
	.long	0x93f1
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.string	"value2"
	.byte	0x1
	.value	0x9d8
	.long	0x93f1
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x3b
	.long	0x99ff
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x32
	.string	"nt1"
	.byte	0x1
	.value	0x9ed
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"nt2"
	.byte	0x1
	.value	0x9ed
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbda6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16958
	.byte	0x0
	.uleb128 0xd
	.long	0x9a68
	.string	"deferred_constant"
	.byte	0x10
	.byte	0x1
	.value	0x9ff
	.uleb128 0x23
	.long	.LASF35
	.byte	0x1
	.value	0xa00
	.long	0x9a68
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x1
	.value	0xa01
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x23
	.long	.LASF47
	.byte	0x1
	.value	0xa02
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.value	0xa03
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a10
	.uleb128 0x2e
	.byte	0x1
	.string	"defer_addressed_constants"
	.byte	0x1
	.value	0xa14
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST57
	.uleb128 0x35
	.long	0x9af1
	.byte	0x1
	.string	"output_deferred_addressed_constants"
	.byte	0x1
	.value	0xa1d
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.long	.LLST58
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xa1e
	.long	0x9a68
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF35
	.byte	0x1
	.value	0xa1e
	.long	0x9a68
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x9b43
	.string	"output_after_function_constants"
	.byte	0x1
	.value	0xa33
	.byte	0x1
	.long	.LFB75
	.long	.LFE75
	.long	.LLST59
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xa34
	.long	0x9a68
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF35
	.byte	0x1
	.value	0xa34
	.long	0x9a68
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x9be3
	.string	"copy_constant"
	.byte	0x1
	.value	0xa46
	.byte	0x1
	.long	0x1e3
	.long	.LFB76
	.long	.LFE76
	.long	.LLST60
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0xa45
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	0x9bb7
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x32
	.string	"copy"
	.byte	0x1
	.value	0xa6a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"list"
	.byte	0x1
	.value	0xa6b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"tail"
	.byte	0x1
	.value	0xa6c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3b
	.long	0x9bd2
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0xa7a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbda1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17186
	.byte	0x0
	.uleb128 0x33
	.long	0x9d09
	.byte	0x1
	.string	"output_constant_def"
	.byte	0x1
	.value	0xa96
	.byte	0x1
	.long	0x9b
	.long	.LFB77
	.long	.LFE77
	.long	.LLST61
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0xa94
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x31
	.string	"defer"
	.byte	0x1
	.value	0xa95
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"hash"
	.byte	0x1
	.value	0xa97
	.long	0x2de
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x32
	.string	"desc"
	.byte	0x1
	.value	0xa98
	.long	0x96d7
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x32
	.string	"defstr"
	.byte	0x1
	.value	0xa99
	.long	0x9d09
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x38
	.long	.LASF41
	.byte	0x1
	.value	0xa9a
	.long	0x9204
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x38
	.long	.LASF47
	.byte	0x1
	.value	0xa9b
	.long	0x2de
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x32
	.string	"found"
	.byte	0x1
	.value	0xa9c
	.long	0x2de
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x32
	.string	"after_function"
	.byte	0x1
	.value	0xa9d
	.long	0x2de
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x38
	.long	.LASF43
	.byte	0x1
	.value	0xa9e
	.long	0x2de
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x32
	.string	"rtl"
	.byte	0x1
	.value	0xa9f
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x3b
	.long	0x9cf0
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xb07
	.long	0x9a68
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xb29
	.long	0x9d0f
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9d0f
	.uleb128 0x3
	.byte	0x4
	.long	0x96dd
	.uleb128 0x39
	.long	0x9d75
	.string	"output_constant_def_contents"
	.byte	0x1
	.value	0xb43
	.byte	0x1
	.long	.LFB78
	.long	.LFE78
	.long	.LLST62
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0xb40
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0xb41
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF43
	.byte	0x1
	.value	0xb42
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x35
	.long	0x9db9
	.byte	0x1
	.string	"init_varasm_status"
	.byte	0x1
	.value	0xb9d
	.byte	0x1
	.long	.LFB79
	.long	.LFE79
	.long	.LLST63
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0xb9c
	.long	0x4fb1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xb9e
	.long	0x603a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x9ea3
	.string	"decode_rtx_const"
	.byte	0x1
	.value	0xbb8
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST64
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0xbb5
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xbb6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF23
	.byte	0x1
	.value	0xbb7
	.long	0x9ea3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.long	0x9e25
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0xbc5
	.long	0x658c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3b
	.long	0x9e92
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x32
	.string	"units"
	.byte	0x1
	.value	0xbe6
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0xbe6
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	0x9e6d
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x32
	.string	"elt"
	.byte	0x1
	.value	0xbf0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0xc01
	.long	0x658c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"d"
	.byte	0x1
	.value	0xc03
	.long	0x3e12
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd8c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17420
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9631
	.uleb128 0x33
	.long	0x9f08
	.byte	0x1
	.string	"simplify_subtraction"
	.byte	0x1
	.value	0xc6b
	.byte	0x1
	.long	0x9b
	.long	.LFB81
	.long	.LFE81
	.long	.LLST65
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xc6a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"val0"
	.byte	0x1
	.value	0xc6c
	.long	0x9631
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x32
	.string	"val1"
	.byte	0x1
	.value	0xc6c
	.long	0x9631
	.byte	0x3
	.byte	0x91
	.sleb128 -544
	.byte	0x0
	.uleb128 0x30
	.long	0x9f9a
	.string	"const_hash_rtx"
	.byte	0x1
	.value	0xc80
	.byte	0x1
	.long	0x3b7
	.long	.LFB82
	.long	.LFE82
	.long	.LLST66
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0xc7e
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xc7f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3f
	.long	0x9f70
	.value	0x104
	.byte	0x1
	.value	0xc81
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.value	0xc82
	.long	0x9631
	.uleb128 0xa
	.string	"data"
	.byte	0x1
	.value	0xc83
	.long	0x9f9a
	.byte	0x0
	.uleb128 0x32
	.string	"u"
	.byte	0x1
	.value	0xc84
	.long	0x9f4c
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x32
	.string	"hi"
	.byte	0x1
	.value	0xc86
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0xc87
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x10
	.long	0x9faa
	.long	0x3b7
	.uleb128 0x11
	.long	0x3ce
	.byte	0x40
	.byte	0x0
	.uleb128 0x30
	.long	0xa015
	.string	"compare_constant_rtx"
	.byte	0x1
	.value	0xc9b
	.byte	0x1
	.long	0x2de
	.long	.LFB83
	.long	.LFE83
	.long	.LLST67
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0xc98
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xc99
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"desc"
	.byte	0x1
	.value	0xc9a
	.long	0x7fde
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0xc9c
	.long	0x9631
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.byte	0x0
	.uleb128 0x30
	.long	0xa06e
	.string	"record_constant_rtx"
	.byte	0x1
	.value	0xcab
	.byte	0x1
	.long	0x7fde
	.long	.LFB84
	.long	.LFE84
	.long	.LLST68
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0xca9
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xcaa
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.value	0xcac
	.long	0x7fde
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0xa0ca
	.byte	0x1
	.string	"mem_for_const_double"
	.byte	0x1
	.value	0xcba
	.byte	0x1
	.long	0x9b
	.long	.LFB85
	.long	.LFE85
	.long	.LLST69
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xcb9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF0
	.byte	0x1
	.value	0xcbb
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"desc"
	.byte	0x1
	.value	0xcbc
	.long	0x7fde
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0xa174
	.byte	0x1
	.string	"force_const_mem"
	.byte	0x1
	.value	0xccd
	.byte	0x1
	.long	0x9b
	.long	.LFB86
	.long	.LFE86
	.long	.LLST70
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0xccb
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xccc
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x32
	.string	"hash"
	.byte	0x1
	.value	0xcce
	.long	0x2de
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x32
	.string	"desc"
	.byte	0x1
	.value	0xccf
	.long	0x7fde
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x38
	.long	.LASF41
	.byte	0x1
	.value	0xcd0
	.long	0x9204
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x32
	.string	"def"
	.byte	0x1
	.value	0xcd1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x38
	.long	.LASF55
	.byte	0x1
	.value	0xcd2
	.long	0x8094
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x38
	.long	.LASF11
	.byte	0x1
	.value	0xcd3
	.long	0x3b7
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.byte	0x0
	.uleb128 0x30
	.long	0xa1eb
	.string	"find_pool_constant"
	.byte	0x1
	.value	0xd27
	.byte	0x1
	.long	0x8094
	.long	.LFB87
	.long	.LFE87
	.long	.LLST71
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0xd25
	.long	0x4fb1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0xd26
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF55
	.byte	0x1
	.value	0xd28
	.long	0x8094
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF41
	.byte	0x1
	.value	0xd29
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17838
	.byte	0x0
	.uleb128 0x33
	.long	0xa227
	.byte	0x1
	.string	"get_pool_constant"
	.byte	0x1
	.value	0xd38
	.byte	0x1
	.long	0x9b
	.long	.LFB88
	.long	.LFE88
	.long	.LLST72
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0xd37
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0xa28a
	.byte	0x1
	.string	"get_pool_constant_mark"
	.byte	0x1
	.value	0xd43
	.byte	0x1
	.long	0x9b
	.long	.LFB89
	.long	.LFE89
	.long	.LLST73
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0xd41
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"pmarked"
	.byte	0x1
	.value	0xd42
	.long	0x5c03
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF55
	.byte	0x1
	.value	0xd44
	.long	0x8094
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0xa2e0
	.byte	0x1
	.string	"get_pool_constant_for_function"
	.byte	0x1
	.value	0xd4f
	.byte	0x1
	.long	0x9b
	.long	.LFB90
	.long	.LFE90
	.long	.LLST74
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0xd4d
	.long	0x4fb1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0xd4e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0xa318
	.byte	0x1
	.string	"get_pool_mode"
	.byte	0x1
	.value	0xd58
	.byte	0x1
	.long	0x86c
	.long	.LFB91
	.long	.LFE91
	.long	.LLST75
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0xd57
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0xa36a
	.byte	0x1
	.string	"get_pool_mode_for_function"
	.byte	0x1
	.value	0xd60
	.byte	0x1
	.long	0x86c
	.long	.LFB92
	.long	.LFE92
	.long	.LLST76
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0xd5e
	.long	0x4fb1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0xd5f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0xa3a4
	.byte	0x1
	.string	"get_pool_offset"
	.byte	0x1
	.value	0xd69
	.byte	0x1
	.long	0x2de
	.long	.LFB93
	.long	.LFE93
	.long	.LLST77
	.uleb128 0x34
	.long	.LASF54
	.byte	0x1
	.value	0xd68
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"get_pool_size"
	.byte	0x1
	.value	0xd71
	.byte	0x1
	.long	0x2de
	.long	.LFB94
	.long	.LFE94
	.long	.LLST78
	.uleb128 0x35
	.long	0xa4de
	.byte	0x1
	.string	"output_constant_pool"
	.byte	0x1
	.value	0xd7b
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST79
	.uleb128 0x34
	.long	.LASF52
	.byte	0x1
	.value	0xd79
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"fndecl"
	.byte	0x1
	.value	0xd7a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF55
	.byte	0x1
	.value	0xd7c
	.long	0x8094
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xd7d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0xd7e
	.long	0x3db9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3b
	.long	0xa4cd
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x32
	.string	"tmp"
	.byte	0x1
	.value	0xd8b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.long	0xa495
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0xdd3
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"units"
	.byte	0x1
	.value	0xdd3
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"elt"
	.byte	0x1
	.value	0xdd4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0xde6
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"units"
	.byte	0x1
	.value	0xde6
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"elt"
	.byte	0x1
	.value	0xde7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd72
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17921
	.byte	0x0
	.uleb128 0x39
	.long	0xa536
	.string	"mark_constant_pool"
	.byte	0x1
	.value	0xe15
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.long	.LLST80
	.uleb128 0x32
	.string	"insn"
	.byte	0x1
	.value	0xe16
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"link"
	.byte	0x1
	.value	0xe17
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF55
	.byte	0x1
	.value	0xe18
	.long	0x8094
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xa5b6
	.string	"mark_constants"
	.byte	0x1
	.value	0xe37
	.byte	0x1
	.long	.LFB97
	.long	.LFE97
	.long	.LLST81
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xe36
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0xe38
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"format_ptr"
	.byte	0x1
	.value	0xe39
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	0xa5a5
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.value	0xe5a
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd5d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18093
	.byte	0x0
	.uleb128 0x30
	.long	0xa662
	.string	"mark_constant"
	.byte	0x1
	.value	0xe79
	.byte	0x1
	.long	0x2de
	.long	.LFB98
	.long	.LFE98
	.long	.LLST82
	.uleb128 0x31
	.string	"current_rtx"
	.byte	0x1
	.value	0xe77
	.long	0x1793
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"data"
	.byte	0x1
	.value	0xe78
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xe7a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	0xa62e
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x38
	.long	.LASF55
	.byte	0x1
	.value	0xe83
	.long	0x8094
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x32
	.string	"defstr"
	.byte	0x1
	.value	0xe8e
	.long	0x9d09
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xe95
	.long	0x9d0f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0xa6d6
	.string	"output_addressed_constants"
	.byte	0x1
	.value	0xea7
	.byte	0x1
	.long	0x2de
	.long	.LFB99
	.long	.LFE99
	.long	.LLST83
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0xea6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF47
	.byte	0x1
	.value	0xea8
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"reloc2"
	.byte	0x1
	.value	0xea8
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"tem"
	.byte	0x1
	.value	0xea9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0xa859
	.byte	0x1
	.string	"initializer_constant_valid_p"
	.byte	0x1
	.value	0xef4
	.byte	0x1
	.long	0x1e3
	.long	.LFB100
	.long	.LFE100
	.long	.LLST84
	.uleb128 0x34
	.long	.LASF23
	.byte	0x1
	.value	0xef2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"endtype"
	.byte	0x1
	.value	0xef3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	0xa779
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x32
	.string	"elt"
	.byte	0x1
	.value	0xf01
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.string	"absolute"
	.byte	0x1
	.value	0xf02
	.long	0x5bd0
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x3a
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x38
	.long	.LASF47
	.byte	0x1
	.value	0xf06
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa796
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x38
	.long	.LASF38
	.byte	0x1
	.value	0xf3d
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x3b
	.long	0xa7c8
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x32
	.string	"valid0"
	.byte	0x1
	.value	0xf63
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"valid1"
	.byte	0x1
	.value	0xf65
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x3b
	.long	0xa7fa
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x32
	.string	"valid0"
	.byte	0x1
	.value	0xf73
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"valid1"
	.byte	0x1
	.value	0xf75
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x32
	.string	"op0"
	.byte	0x1
	.value	0xf8b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"op1"
	.byte	0x1
	.value	0xf8b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.long	0xa83e
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x38
	.long	.LASF38
	.byte	0x1
	.value	0xf98
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x38
	.long	.LASF38
	.byte	0x1
	.value	0xfa5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0xa956
	.byte	0x1
	.string	"output_constant"
	.byte	0x1
	.value	0xfd6
	.byte	0x1
	.long	.LFB101
	.long	.LFE101
	.long	.LLST85
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0xfd3
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0xfd4
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0xfd5
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"code"
	.byte	0x1
	.value	0xfd7
	.long	0x17dd
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.string	"thissize"
	.byte	0x1
	.value	0xfd8
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3b
	.long	0xa925
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x32
	.string	"elt_size"
	.byte	0x1
	.value	0x1048
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"link"
	.byte	0x1
	.value	0x1049
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"nalign"
	.byte	0x1
	.value	0x104a
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF38
	.byte	0x1
	.value	0x104b
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3b
	.long	0xa945
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x32
	.string	"buffer"
	.byte	0x1
	.value	0x106a
	.long	0x754
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18702
	.byte	0x0
	.uleb128 0x40
	.long	0xa98e
	.long	.LASF7
	.byte	0x1
	.value	0x771
	.byte	0x1
	.long	0x3b7
	.long	.LFB61
	.long	.LFE61
	.long	.LLST86
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.value	0x770
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x770
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0xaa0d
	.string	"array_size_for_constructor"
	.byte	0x1
	.value	0x1087
	.byte	0x1
	.long	0x464
	.long	.LFB102
	.long	.LFE102
	.long	.LLST87
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x1086
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"max_index"
	.byte	0x1
	.value	0x1088
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x1088
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x38
	.long	.LASF12
	.byte	0x1
	.value	0x1093
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0xac7c
	.string	"output_constructor"
	.byte	0x1
	.value	0x10b2
	.byte	0x1
	.long	.LFB103
	.long	.LFE103
	.long	.LLST88
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0x10af
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF10
	.byte	0x1
	.value	0x10b0
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x10b1
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"type"
	.byte	0x1
	.value	0x10b3
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.string	"link"
	.byte	0x1
	.value	0x10b4
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"field"
	.byte	0x1
	.value	0x10b4
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"min_index"
	.byte	0x1
	.value	0x10b5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.string	"total_bytes"
	.byte	0x1
	.value	0x10b8
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x32
	.string	"byte_buffer_in_use"
	.byte	0x1
	.value	0x10ba
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"byte"
	.byte	0x1
	.value	0x10bb
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.long	0xac6b
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x10d5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF12
	.byte	0x1
	.value	0x10d6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	0xab86
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x38
	.long	.LASF56
	.byte	0x1
	.value	0x10e8
	.long	0x464
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x32
	.string	"lo_index"
	.byte	0x1
	.value	0x10ea
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x32
	.string	"hi_index"
	.byte	0x1
	.value	0x10eb
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x38
	.long	.LASF12
	.byte	0x1
	.value	0x10ec
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x32
	.string	"align2"
	.byte	0x1
	.value	0x10ed
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x3b
	.long	0xabc6
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x38
	.long	.LASF56
	.byte	0x1
	.value	0x10ff
	.long	0x464
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x32
	.string	"pos"
	.byte	0x1
	.value	0x1102
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x32
	.string	"align2"
	.byte	0x1
	.value	0x1103
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x32
	.string	"next_offset"
	.byte	0x1
	.value	0x114c
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.string	"end_offset"
	.byte	0x1
	.value	0x114d
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3a
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x32
	.string	"this_time"
	.byte	0x1
	.value	0x1174
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"shift"
	.byte	0x1
	.value	0x1175
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF23
	.byte	0x1
	.value	0x1176
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.string	"next_byte"
	.byte	0x1
	.value	0x1177
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"next_bit"
	.byte	0x1
	.value	0x1178
	.long	0x453
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd53
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.18914
	.byte	0x0
	.uleb128 0x39
	.long	0xacab
	.string	"mark_weak"
	.byte	0x1
	.value	0x11ea
	.byte	0x1
	.long	.LFB104
	.long	.LFE104
	.long	.LLST89
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x11e9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0xad0b
	.byte	0x1
	.string	"merge_weak"
	.byte	0x1
	.value	0x11fa
	.byte	0x1
	.long	.LFB105
	.long	.LFE105
	.long	.LLST90
	.uleb128 0x31
	.string	"newdecl"
	.byte	0x1
	.value	0x11f8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"olddecl"
	.byte	0x1
	.value	0x11f9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x32
	.string	"wd"
	.byte	0x1
	.value	0x1200
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0xad3e
	.byte	0x1
	.string	"declare_weak"
	.byte	0x1
	.value	0x1231
	.byte	0x1
	.long	.LFB106
	.long	.LFE106
	.long	.LLST91
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x1230
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0xad6e
	.byte	0x1
	.string	"weak_finish"
	.byte	0x1
	.value	0x1249
	.byte	0x1
	.long	.LFB107
	.long	.LFE107
	.long	.LLST92
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x124a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0xadd5
	.string	"globalize_decl"
	.byte	0x1
	.value	0x126c
	.byte	0x1
	.long	.LFB108
	.long	.LFE108
	.long	.LLST93
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x126b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x126d
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1272
	.long	0x5bfd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x1272
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0xae1c
	.byte	0x1
	.string	"assemble_alias"
	.byte	0x1
	.value	0x1290
	.byte	0x1
	.long	.LFB109
	.long	.LFE109
	.long	.LLST94
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x128f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"target"
	.byte	0x1
	.value	0x128f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0xaeab
	.byte	0x1
	.string	"default_assemble_visibility"
	.byte	0x1
	.value	0x12c7
	.byte	0x1
	.long	.LFB110
	.long	.LFE110
	.long	.LLST95
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x12c5
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"vis"
	.byte	0x1
	.value	0x12c6
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x12cc
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"type"
	.byte	0x1
	.value	0x12cc
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.string	"visibility_types"
	.byte	0x1
	.value	0x12c8
	.long	0xbd4e
	.byte	0x5
	.byte	0x3
	.long	visibility_types.19327
	.byte	0x0
	.uleb128 0x39
	.long	0xaef9
	.string	"maybe_assemble_visibility"
	.byte	0x1
	.value	0x12df
	.byte	0x1
	.long	.LFB111
	.long	.LFE111
	.long	.LLST96
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x12de
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"vis"
	.byte	0x1
	.value	0x12e0
	.long	0x5a99
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"supports_one_only"
	.byte	0x1
	.value	0x12ed
	.byte	0x1
	.long	0x2de
	.long	.LFB112
	.long	.LFE112
	.long	.LLST97
	.uleb128 0x35
	.long	0xaf6a
	.byte	0x1
	.string	"make_decl_one_only"
	.byte	0x1
	.value	0x12f9
	.byte	0x1
	.long	.LFB113
	.long	.LFE113
	.long	.LLST98
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x12f8
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd39
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19352
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.string	"init_varasm_once"
	.byte	0x1
	.value	0x1311
	.byte	0x1
	.long	.LFB114
	.long	.LFE114
	.long	.LLST99
	.uleb128 0x33
	.long	0xb00a
	.byte	0x1
	.string	"decl_tls_model"
	.byte	0x1
	.value	0x131d
	.byte	0x1
	.long	0x5a20
	.long	.LFB115
	.long	.LFE115
	.long	.LLST100
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x131c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"kind"
	.byte	0x1
	.value	0x131e
	.long	0x5a20
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"attr"
	.byte	0x1
	.value	0x131f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"is_local"
	.byte	0x1
	.value	0x1320
	.long	0x5bd0
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd24
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19379
	.byte	0x0
	.uleb128 0x33
	.long	0xb083
	.byte	0x1
	.string	"decl_visibility"
	.byte	0x1
	.value	0x134b
	.byte	0x1
	.long	0x5a99
	.long	.LFB116
	.long	.LFE116
	.long	.LLST101
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x134a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"attr"
	.byte	0x1
	.value	0x134c
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.long	0xb072
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x32
	.string	"which"
	.byte	0x1
	.value	0x1350
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd0f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19438
	.byte	0x0
	.uleb128 0x33
	.long	0xb0e6
	.byte	0x1
	.string	"default_section_type_flags"
	.byte	0x1
	.value	0x136d
	.byte	0x1
	.long	0x3b7
	.long	.LFB117
	.long	.LFE117
	.long	.LLST102
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x136a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x136b
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x136c
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x33
	.long	0xb169
	.byte	0x1
	.string	"default_section_type_flags_1"
	.byte	0x1
	.value	0x1377
	.byte	0x1
	.long	0x3b7
	.long	.LFB118
	.long	.LFE118
	.long	.LLST103
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x1373
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x1374
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x1375
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x1376
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.long	.LASF13
	.byte	0x1
	.value	0x1378
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	0xb1c7
	.byte	0x1
	.string	"default_no_named_section"
	.byte	0x1
	.value	0x13ac
	.byte	0x1
	.long	.LFB119
	.long	.LFE119
	.long	.LLST104
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x13aa
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF13
	.byte	0x1
	.value	0x13ab
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd0a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19543
	.byte	0x0
	.uleb128 0x35
	.long	0xb236
	.byte	0x1
	.string	"default_elf_asm_named_section"
	.byte	0x1
	.value	0x13b6
	.byte	0x1
	.long	.LFB120
	.long	.LFE120
	.long	.LLST105
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x13b4
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF13
	.byte	0x1
	.value	0x13b5
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF58
	.byte	0x1
	.value	0x13b7
	.long	0xb236
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x13b7
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x10
	.long	0xb246
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x9
	.byte	0x0
	.uleb128 0x35
	.long	0xb2b6
	.byte	0x1
	.string	"default_coff_asm_named_section"
	.byte	0x1
	.value	0x13e9
	.byte	0x1
	.long	.LFB121
	.long	.LFE121
	.long	.LLST106
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x13e7
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF13
	.byte	0x1
	.value	0x13e8
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF58
	.byte	0x1
	.value	0x13ea
	.long	0x805
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0x13ea
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x35
	.long	0xb308
	.byte	0x1
	.string	"default_pe_asm_named_section"
	.byte	0x1
	.value	0x13f9
	.byte	0x1
	.long	.LFB122
	.long	.LFE122
	.long	.LLST107
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x13f7
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF13
	.byte	0x1
	.value	0x13f8
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0xb353
	.byte	0x1
	.string	"assemble_vtable_entry"
	.byte	0x1
	.value	0x140d
	.byte	0x1
	.long	.LFB123
	.long	.LFE123
	.long	.LLST108
	.uleb128 0x34
	.long	.LASF50
	.byte	0x1
	.value	0x140b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF9
	.byte	0x1
	.value	0x140c
	.long	0x453
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	0xb3a5
	.byte	0x1
	.string	"assemble_vtable_inherit"
	.byte	0x1
	.value	0x141b
	.byte	0x1
	.long	.LFB124
	.long	.LFE124
	.long	.LLST109
	.uleb128 0x31
	.string	"child"
	.byte	0x1
	.value	0x141a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"parent"
	.byte	0x1
	.value	0x141a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0xb414
	.byte	0x1
	.string	"default_select_section"
	.byte	0x1
	.value	0x142a
	.byte	0x1
	.long	.LFB125
	.long	.LFE125
	.long	.LLST110
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x1427
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x1428
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x1429
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"readonly"
	.byte	0x1
	.value	0x142b
	.long	0x5bd0
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.byte	0x0
	.uleb128 0x29
	.long	0xb562
	.string	"section_category"
	.byte	0x4
	.byte	0x1
	.value	0x1449
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
	.uleb128 0x30
	.long	0xb5d4
	.string	"categorize_decl_for_section"
	.byte	0x1
	.value	0x1472
	.byte	0x1
	.long	0xb414
	.long	.LFB126
	.long	.LFE126
	.long	.LLST111
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x146f
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x1470
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x1471
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"ret"
	.byte	0x1
	.value	0x1473
	.long	0xb414
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0xb623
	.byte	0x1
	.string	"decl_readonly_section"
	.byte	0x1
	.value	0x14c3
	.byte	0x1
	.long	0x5bd0
	.long	.LFB127
	.long	.LFE127
	.long	.LLST112
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x14c1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x14c2
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0xb683
	.byte	0x1
	.string	"decl_readonly_section_1"
	.byte	0x1
	.value	0x14cc
	.byte	0x1
	.long	0x5bd0
	.long	.LFB128
	.long	.LFE128
	.long	.LLST113
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x14c9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x14ca
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x14cb
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x35
	.long	0xb6e2
	.byte	0x1
	.string	"default_elf_select_section"
	.byte	0x1
	.value	0x14e3
	.byte	0x1
	.long	.LFB129
	.long	.LFE129
	.long	.LLST114
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x14e0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x14e1
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x14e2
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	0xb762
	.byte	0x1
	.string	"default_elf_select_section_1"
	.byte	0x1
	.value	0x14ed
	.byte	0x1
	.long	.LFB130
	.long	.LFE130
	.long	.LLST115
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x14e9
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x14ea
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x14eb
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x14ec
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.long	.LASF46
	.long	0xbd05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19831
	.byte	0x0
	.uleb128 0x35
	.long	0xb7ae
	.byte	0x1
	.string	"default_unique_section"
	.byte	0x1
	.value	0x1530
	.byte	0x1
	.long	.LFB131
	.long	.LFE131
	.long	.LLST116
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x152e
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x152f
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0xb87f
	.byte	0x1
	.string	"default_unique_section_1"
	.byte	0x1
	.value	0x1539
	.byte	0x1
	.long	.LFB132
	.long	.LFE132
	.long	.LLST117
	.uleb128 0x34
	.long	.LASF3
	.byte	0x1
	.value	0x1536
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x1537
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x1538
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"one_only"
	.byte	0x1
	.value	0x153a
	.long	0x5bd0
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x32
	.string	"prefix"
	.byte	0x1
	.value	0x153b
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF30
	.byte	0x1
	.value	0x153b
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"nlen"
	.byte	0x1
	.value	0x153c
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"plen"
	.byte	0x1
	.value	0x153c
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	.LASF2
	.byte	0x1
	.value	0x153d
	.long	0x4bc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF46
	.long	0xbcf0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.19887
	.byte	0x0
	.uleb128 0x35
	.long	0xb8dc
	.byte	0x1
	.string	"default_select_rtx_section"
	.byte	0x1
	.value	0x1578
	.byte	0x1
	.long	.LFB133
	.long	.LFE133
	.long	.LLST118
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x1575
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x1576
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x1577
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	0xb93d
	.byte	0x1
	.string	"default_elf_select_rtx_section"
	.byte	0x1
	.value	0x158e
	.byte	0x1
	.long	.LFB134
	.long	.LFE134
	.long	.LLST119
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x158b
	.long	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x158c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF11
	.byte	0x1
	.value	0x158d
	.long	0x464
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x33
	.long	0xb983
	.byte	0x1
	.string	"default_strip_name_encoding"
	.byte	0x1
	.value	0x15aa
	.byte	0x1
	.long	0x2cb
	.long	.LFB135
	.long	.LFE135
	.long	.LLST120
	.uleb128 0x31
	.string	"str"
	.byte	0x1
	.value	0x15a9
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0xb9c3
	.byte	0x1
	.string	"default_binds_local_p"
	.byte	0x1
	.value	0x15b4
	.byte	0x1
	.long	0x5bd0
	.long	.LFB136
	.long	.LFE136
	.long	.LLST121
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0x15b3
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0xba27
	.byte	0x1
	.string	"default_binds_local_p_1"
	.byte	0x1
	.value	0x15bc
	.byte	0x1
	.long	0x5bd0
	.long	.LFB137
	.long	.LFE137
	.long	.LLST122
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0x15ba
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.value	0x15bb
	.long	0x2de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"local_p"
	.byte	0x1
	.value	0x15bd
	.long	0x5bd0
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x35
	.long	0xba77
	.byte	0x1
	.string	"default_globalize_label"
	.byte	0x1
	.value	0x15e8
	.byte	0x1
	.long	.LFB138
	.long	.LFE138
	.long	.LLST123
	.uleb128 0x31
	.string	"stream"
	.byte	0x1
	.value	0x15e6
	.long	0x67d0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x15e7
	.long	0x2cb
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x41
	.long	0xbac1
	.byte	0x1
	.string	"gt_ggc_mx_deferred_string"
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	.LFB139
	.long	.LFE139
	.long	.LLST124
	.uleb128 0x42
	.string	"x_p"
	.byte	0x2
	.byte	0x19
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.string	"x"
	.byte	0x2
	.byte	0x1b
	.long	0xbac1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x9d0f
	.uleb128 0x41
	.long	0xbb19
	.byte	0x1
	.string	"gt_ggc_mx_constant_descriptor_tree"
	.byte	0x2
	.byte	0x25
	.byte	0x1
	.long	.LFB140
	.long	.LFE140
	.long	.LLST125
	.uleb128 0x42
	.string	"x_p"
	.byte	0x2
	.byte	0x24
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.string	"x"
	.byte	0x2
	.byte	0x26
	.long	0xbb19
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x96d7
	.uleb128 0x41
	.long	0xbb66
	.byte	0x1
	.string	"gt_ggc_mx_pool_constant"
	.byte	0x2
	.byte	0x32
	.byte	0x1
	.long	.LFB141
	.long	.LFE141
	.long	.LLST126
	.uleb128 0x42
	.string	"x_p"
	.byte	0x2
	.byte	0x31
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.string	"x"
	.byte	0x2
	.byte	0x33
	.long	0xbb66
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.long	0x8094
	.uleb128 0x41
	.long	0xbbea
	.byte	0x1
	.string	"gt_ggc_mx_constant_descriptor_rtx"
	.byte	0x2
	.byte	0x40
	.byte	0x1
	.long	.LFB142
	.long	.LFE142
	.long	.LLST127
	.uleb128 0x42
	.string	"x_p"
	.byte	0x2
	.byte	0x3f
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.string	"x"
	.byte	0x2
	.byte	0x41
	.long	0xbbea
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x43
	.string	"i1_0"
	.byte	0x2
	.byte	0x4f
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x43
	.string	"ilimit1_0"
	.byte	0x2
	.byte	0x50
	.long	0xbbef
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x7fde
	.uleb128 0xb
	.long	0x3ed
	.uleb128 0x41
	.long	0xbc6e
	.byte	0x1
	.string	"gt_ggc_mx_varasm_status"
	.byte	0x2
	.byte	0x5e
	.byte	0x1
	.long	.LFB143
	.long	.LFE143
	.long	.LLST128
	.uleb128 0x42
	.string	"x_p"
	.byte	0x2
	.byte	0x5d
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.string	"x"
	.byte	0x2
	.byte	0x5f
	.long	0xbc6e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.long	0xbc56
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x43
	.string	"i1"
	.byte	0x2
	.byte	0x63
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x43
	.string	"i2"
	.byte	0x2
	.byte	0x6a
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x603a
	.uleb128 0x41
	.long	0xbcdb
	.byte	0x1
	.string	"gt_ggc_m_P15deferred_string4htab"
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.long	.LFB144
	.long	.LFE144
	.long	.LLST129
	.uleb128 0x42
	.string	"x_p"
	.byte	0x2
	.byte	0x77
	.long	0x4ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.string	"x"
	.byte	0x2
	.byte	0x79
	.long	0xbcdb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x43
	.string	"i1"
	.byte	0x2
	.byte	0x7d
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.long	0x670c
	.uleb128 0x10
	.long	0xbcf0
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x18
	.byte	0x0
	.uleb128 0xb
	.long	0xbce0
	.uleb128 0x10
	.long	0xbd05
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x1c
	.byte	0x0
	.uleb128 0xb
	.long	0xbcf5
	.uleb128 0xb
	.long	0xbce0
	.uleb128 0xb
	.long	0x8bb4
	.uleb128 0x10
	.long	0xbd24
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0xe
	.byte	0x0
	.uleb128 0xb
	.long	0xbd14
	.uleb128 0x10
	.long	0xbd39
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x12
	.byte	0x0
	.uleb128 0xb
	.long	0xbd29
	.uleb128 0x10
	.long	0xbd4e
	.long	0x2cb
	.uleb128 0x11
	.long	0x3ce
	.byte	0x3
	.byte	0x0
	.uleb128 0xb
	.long	0xbd3e
	.uleb128 0xb
	.long	0xbd29
	.uleb128 0xb
	.long	0x8bb4
	.uleb128 0xb
	.long	0xbd14
	.uleb128 0x10
	.long	0xbd72
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x14
	.byte	0x0
	.uleb128 0xb
	.long	0xbd62
	.uleb128 0xb
	.long	0xbd29
	.uleb128 0x10
	.long	0xbd8c
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x10
	.byte	0x0
	.uleb128 0xb
	.long	0xbd7c
	.uleb128 0x10
	.long	0xbda1
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0xd
	.byte	0x0
	.uleb128 0xb
	.long	0xbd91
	.uleb128 0xb
	.long	0xbd7c
	.uleb128 0x10
	.long	0xbdbb
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0xc
	.byte	0x0
	.uleb128 0xb
	.long	0xbdab
	.uleb128 0x10
	.long	0xbdd0
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x11
	.byte	0x0
	.uleb128 0xb
	.long	0xbdc0
	.uleb128 0x10
	.long	0xbde5
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0x16
	.byte	0x0
	.uleb128 0xb
	.long	0xbdd5
	.uleb128 0xb
	.long	0xbdc0
	.uleb128 0xb
	.long	0xbd91
	.uleb128 0x10
	.long	0xbe04
	.long	0x88d1
	.uleb128 0x11
	.long	0x3ce
	.byte	0x42
	.byte	0x0
	.uleb128 0xb
	.long	0xbdf4
	.uleb128 0xb
	.long	0xbd91
	.uleb128 0xb
	.long	0x815
	.uleb128 0x43
	.string	"const_alias_set"
	.byte	0x1
	.byte	0x90
	.long	0x453
	.byte	0x5
	.byte	0x3
	.long	const_alias_set
	.uleb128 0x44
	.long	.LASF44
	.byte	0x1
	.byte	0xcd
	.long	0x809a
	.byte	0x5
	.byte	0x3
	.long	in_section
	.uleb128 0x43
	.string	"in_named_name"
	.byte	0x1
	.byte	0xd7
	.long	0x2cb
	.byte	0x5
	.byte	0x3
	.long	in_named_name
	.uleb128 0x43
	.string	"in_named_htab"
	.byte	0x1
	.byte	0xe2
	.long	0x66fe
	.byte	0x5
	.byte	0x3
	.long	in_named_htab
	.uleb128 0x10
	.long	0xbe88
	.long	0x96d7
	.uleb128 0x45
	.long	0x3ce
	.value	0x3f0
	.byte	0x0
	.uleb128 0x32
	.string	"const_hash_table"
	.byte	0x1
	.value	0x8cc
	.long	0xbe77
	.byte	0x5
	.byte	0x3
	.long	const_hash_table
	.uleb128 0x32
	.string	"const_str_htab"
	.byte	0x1
	.value	0x8dc
	.long	0x66fe
	.byte	0x5
	.byte	0x3
	.long	const_str_htab
	.uleb128 0x32
	.string	"deferred_constants"
	.byte	0x1
	.value	0xa06
	.long	0x9a68
	.byte	0x5
	.byte	0x3
	.long	deferred_constants
	.uleb128 0x32
	.string	"after_function_constants"
	.byte	0x1
	.value	0xa0a
	.long	0x9a68
	.byte	0x5
	.byte	0x3
	.long	after_function_constants
	.uleb128 0x32
	.string	"defer_addressed_constants_flag"
	.byte	0x1
	.value	0xa0e
	.long	0x2de
	.byte	0x5
	.byte	0x3
	.long	defer_addressed_constants_flag
	.uleb128 0x46
	.string	"target_flags"
	.byte	0xf
	.byte	0x21
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"mips_section_threshold"
	.byte	0xf
	.byte	0x97
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"mips_string_length"
	.byte	0xf
	.byte	0xbc
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"mips_abi"
	.byte	0xf
	.value	0x3ca
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xbfaf
	.long	0x2d6
	.uleb128 0x48
	.uleb128 0x11
	.long	0x3ce
	.byte	0xaf
	.byte	0x0
	.uleb128 0x47
	.string	"mips_hard_regno_mode_ok"
	.byte	0xf
	.value	0x778
	.long	0xbf9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xbfe1
	.long	0x40c
	.uleb128 0x11
	.long	0x3ce
	.byte	0xff
	.byte	0x0
	.uleb128 0x46
	.string	"_sch_istable"
	.byte	0x18
	.byte	0x48
	.long	0xbff7
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbfd1
	.uleb128 0x10
	.long	0xc00c
	.long	0xab5
	.uleb128 0x11
	.long	0x3ce
	.byte	0x35
	.byte	0x0
	.uleb128 0x49
	.long	.LASF6
	.byte	0x7
	.byte	0x34
	.long	0xc019
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xbffc
	.uleb128 0x10
	.long	0xc02e
	.long	0x3fb
	.uleb128 0x11
	.long	0x3ce
	.byte	0x35
	.byte	0x0
	.uleb128 0x46
	.string	"mode_size"
	.byte	0x7
	.byte	0x59
	.long	0xc041
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc01e
	.uleb128 0x46
	.string	"mode_unit_size"
	.byte	0x7
	.byte	0x5e
	.long	0xc05e
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc01e
	.uleb128 0x10
	.long	0xc073
	.long	0x40c
	.uleb128 0x11
	.long	0x3ce
	.byte	0x35
	.byte	0x0
	.uleb128 0x46
	.string	"mode_bitsize"
	.byte	0x7
	.byte	0x69
	.long	0xc089
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc063
	.uleb128 0x10
	.long	0xc09e
	.long	0x86c
	.uleb128 0x11
	.long	0x3ce
	.byte	0x35
	.byte	0x0
	.uleb128 0x46
	.string	"inner_mode_array"
	.byte	0x7
	.byte	0x77
	.long	0xc0b8
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc08e
	.uleb128 0x46
	.string	"word_mode"
	.byte	0x7
	.byte	0xad
	.long	0x86c
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc0e0
	.long	0x3fb
	.uleb128 0x11
	.long	0x3ce
	.byte	0xa2
	.byte	0x0
	.uleb128 0x46
	.string	"rtx_length"
	.byte	0x6
	.byte	0x3c
	.long	0xc0f4
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc0d0
	.uleb128 0x10
	.long	0xc109
	.long	0x2cb
	.uleb128 0x11
	.long	0x3ce
	.byte	0xa2
	.byte	0x0
	.uleb128 0x46
	.string	"rtx_format"
	.byte	0x6
	.byte	0x42
	.long	0xc11d
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc0f9
	.uleb128 0x10
	.long	0xc132
	.long	0x2d6
	.uleb128 0x11
	.long	0x3ce
	.byte	0xa2
	.byte	0x0
	.uleb128 0x46
	.string	"rtx_class"
	.byte	0x6
	.byte	0x45
	.long	0xc145
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc122
	.uleb128 0x10
	.long	0xc15a
	.long	0x9b
	.uleb128 0x11
	.long	0x3ce
	.byte	0x80
	.byte	0x0
	.uleb128 0x47
	.string	"const_int_rtx"
	.byte	0x6
	.value	0x6a4
	.long	0xc14a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc17d
	.long	0x2d6
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x46
	.string	"tree_code_type"
	.byte	0x5
	.byte	0x45
	.long	0xc195
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xc172
	.uleb128 0x10
	.long	0xc1aa
	.long	0x1e3
	.uleb128 0x11
	.long	0x3ce
	.byte	0x3a
	.byte	0x0
	.uleb128 0x47
	.string	"global_trees"
	.byte	0x5
	.value	0x8b5
	.long	0xc19a
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_tls_default"
	.byte	0x5
	.value	0x934
	.long	0x5a20
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc1ec
	.long	0x1e3
	.uleb128 0x11
	.long	0x3ce
	.byte	0x5
	.byte	0x0
	.uleb128 0x47
	.string	"sizetype_tab"
	.byte	0x5
	.value	0xad1
	.long	0xc1dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"current_function_decl"
	.byte	0x5
	.value	0xbc8
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.string	"optimize"
	.byte	0x19
	.byte	0x43
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_writable_strings"
	.byte	0x19
	.value	0x148
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_volatile_global"
	.byte	0x19
	.value	0x15f
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_volatile_static"
	.byte	0x19
	.value	0x163
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_syntax_only"
	.byte	0x19
	.value	0x1a3
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_shared_data"
	.byte	0x19
	.value	0x1ab
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_pic"
	.byte	0x19
	.value	0x1df
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_shlib"
	.byte	0x19
	.value	0x1e9
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_inhibit_size_directive"
	.byte	0x19
	.value	0x201
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_function_sections"
	.byte	0x19
	.value	0x206
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_data_sections"
	.byte	0x19
	.value	0x20a
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"flag_merge_constants"
	.byte	0x19
	.value	0x259
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"align_functions_log"
	.byte	0x19
	.value	0x285
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"force_align_functions_log"
	.byte	0x19
	.value	0x289
	.long	0x2de
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"cfun"
	.byte	0xe
	.value	0x202
	.long	0x4fb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc3d5
	.long	0x2cb
	.uleb128 0x11
	.long	0x3ce
	.byte	0xaf
	.byte	0x0
	.uleb128 0x46
	.string	"reg_names"
	.byte	0x1a
	.byte	0xa3
	.long	0xc3c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"asm_out_file"
	.byte	0x1b
	.value	0x194
	.long	0x67d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.string	"first_global_object_name"
	.byte	0x1
	.byte	0x4b
	.long	0x2cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	first_global_object_name
	.uleb128 0x4a
	.string	"weak_global_object_name"
	.byte	0x1
	.byte	0x4c
	.long	0x2cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	weak_global_object_name
	.uleb128 0x46
	.string	"htab_hash_pointer"
	.byte	0x3
	.byte	0xa0
	.long	0x65a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.string	"weak_decls"
	.byte	0x1
	.value	0x11e0
	.long	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	weak_decls
	.uleb128 0x4c
	.long	.LASF39
	.byte	0x1c
	.value	0x176
	.long	0xc48f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x6e69
	.uleb128 0x46
	.string	"debug_hooks"
	.byte	0x1d
	.byte	0x6a
	.long	0xc4a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0xc4af
	.uleb128 0xb
	.long	0x737f
	.uleb128 0x47
	.string	"targetm"
	.byte	0x17
	.value	0x12d
	.long	0x7bff
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.string	"const_labelno"
	.byte	0x1
	.byte	0x76
	.long	0x2de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	const_labelno
	.uleb128 0x4a
	.string	"var_labelno"
	.byte	0x1
	.byte	0x7b
	.long	0x2de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	var_labelno
	.uleb128 0x4a
	.string	"size_directive_output"
	.byte	0x1
	.byte	0x80
	.long	0x2de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	size_directive_output
	.uleb128 0x4a
	.string	"last_assemble_variable_decl"
	.byte	0x1
	.byte	0x87
	.long	0x1e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_assemble_variable_decl
	.uleb128 0x46
	.string	"asm_out_text_file"
	.byte	0x1
	.byte	0xf2
	.long	0x67d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xc575
	.long	0x6746
	.uleb128 0x11
	.long	0x3ce
	.byte	0x3
	.byte	0x0
	.uleb128 0x4a
	.string	"gt_ggc_r_gt_varasm_h"
	.byte	0x2
	.byte	0x88
	.long	0xc598
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_varasm_h
	.uleb128 0xb
	.long	0xc565
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x42
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.long	0xc59e
	.long	0x814b
	.string	"sdata_section"
	.long	0x816a
	.string	"sbss_section"
	.long	0x8188
	.string	"text_section"
	.long	0x81a6
	.string	"data_section"
	.long	0x81c4
	.string	"force_data_section"
	.long	0x81e9
	.string	"readonly_data_section"
	.long	0x8211
	.string	"in_text_section"
	.long	0x8237
	.string	"in_data_section"
	.long	0x8318
	.string	"get_named_section_flags"
	.long	0x8376
	.string	"named_section_first_declaration"
	.long	0x83d0
	.string	"set_named_section_flags"
	.long	0x8442
	.string	"named_section_flags"
	.long	0x849b
	.string	"named_section"
	.long	0x8502
	.string	"resolve_unique_section"
	.long	0x8578
	.string	"bss_section"
	.long	0x8643
	.string	"function_section"
	.long	0x867a
	.string	"variable_section"
	.long	0x86c0
	.string	"mergeable_string_section"
	.long	0x87b2
	.string	"mergeable_constant_section"
	.long	0x8871
	.string	"decode_reg_name"
	.long	0x890f
	.string	"make_decl_rtl"
	.long	0x8a1a
	.string	"make_var_volatile"
	.long	0x8a62
	.string	"assemble_constant_align"
	.long	0x8aaf
	.string	"assemble_asm"
	.long	0x8ae2
	.string	"default_stabs_asm_out_destructor"
	.long	0x8b38
	.string	"default_named_section_asm_out_destructor"
	.long	0x8bc4
	.string	"default_stabs_asm_out_constructor"
	.long	0x8c1b
	.string	"default_named_section_asm_out_constructor"
	.long	0x8c98
	.string	"assemble_start_function"
	.long	0x8d1a
	.string	"assemble_end_function"
	.long	0x8d65
	.string	"assemble_zeros"
	.long	0x8d9a
	.string	"assemble_align"
	.long	0x8dcf
	.string	"assemble_string"
	.long	0x8f1e
	.string	"assemble_variable"
	.long	0x8fed
	.string	"assemble_external"
	.long	0x903e
	.string	"assemble_external_libcall"
	.long	0x907e
	.string	"assemble_label"
	.long	0x90b3
	.string	"assemble_name"
	.long	0x911a
	.string	"assemble_static_space"
	.long	0x919c
	.string	"assemble_trampoline_template"
	.long	0x9214
	.string	"integer_asm_op"
	.long	0x9271
	.string	"assemble_integer_with_op"
	.long	0x92bc
	.string	"default_assemble_integer"
	.long	0x9329
	.string	"assemble_integer"
	.long	0x93a1
	.string	"assemble_real"
	.long	0x9a6e
	.string	"defer_addressed_constants"
	.long	0x9a9a
	.string	"output_deferred_addressed_constants"
	.long	0x9be3
	.string	"output_constant_def"
	.long	0x9d75
	.string	"init_varasm_status"
	.long	0x9ea9
	.string	"simplify_subtraction"
	.long	0xa06e
	.string	"mem_for_const_double"
	.long	0xa0ca
	.string	"force_const_mem"
	.long	0xa1eb
	.string	"get_pool_constant"
	.long	0xa227
	.string	"get_pool_constant_mark"
	.long	0xa28a
	.string	"get_pool_constant_for_function"
	.long	0xa2e0
	.string	"get_pool_mode"
	.long	0xa318
	.string	"get_pool_mode_for_function"
	.long	0xa36a
	.string	"get_pool_offset"
	.long	0xa3a4
	.string	"get_pool_size"
	.long	0xa3c8
	.string	"output_constant_pool"
	.long	0xa6d6
	.string	"initializer_constant_valid_p"
	.long	0xa859
	.string	"output_constant"
	.long	0xacab
	.string	"merge_weak"
	.long	0xad0b
	.string	"declare_weak"
	.long	0xad3e
	.string	"weak_finish"
	.long	0xadd5
	.string	"assemble_alias"
	.long	0xae1c
	.string	"default_assemble_visibility"
	.long	0xaef9
	.string	"supports_one_only"
	.long	0xaf21
	.string	"make_decl_one_only"
	.long	0xaf6a
	.string	"init_varasm_once"
	.long	0xaf8d
	.string	"decl_tls_model"
	.long	0xb00a
	.string	"decl_visibility"
	.long	0xb083
	.string	"default_section_type_flags"
	.long	0xb0e6
	.string	"default_section_type_flags_1"
	.long	0xb169
	.string	"default_no_named_section"
	.long	0xb1c7
	.string	"default_elf_asm_named_section"
	.long	0xb246
	.string	"default_coff_asm_named_section"
	.long	0xb2b6
	.string	"default_pe_asm_named_section"
	.long	0xb308
	.string	"assemble_vtable_entry"
	.long	0xb353
	.string	"assemble_vtable_inherit"
	.long	0xb3a5
	.string	"default_select_section"
	.long	0xb5d4
	.string	"decl_readonly_section"
	.long	0xb623
	.string	"decl_readonly_section_1"
	.long	0xb683
	.string	"default_elf_select_section"
	.long	0xb6e2
	.string	"default_elf_select_section_1"
	.long	0xb762
	.string	"default_unique_section"
	.long	0xb7ae
	.string	"default_unique_section_1"
	.long	0xb87f
	.string	"default_select_rtx_section"
	.long	0xb8dc
	.string	"default_elf_select_rtx_section"
	.long	0xb93d
	.string	"default_strip_name_encoding"
	.long	0xb983
	.string	"default_binds_local_p"
	.long	0xb9c3
	.string	"default_binds_local_p_1"
	.long	0xba27
	.string	"default_globalize_label"
	.long	0xba77
	.string	"gt_ggc_mx_deferred_string"
	.long	0xbac6
	.string	"gt_ggc_mx_constant_descriptor_tree"
	.long	0xbb1e
	.string	"gt_ggc_mx_pool_constant"
	.long	0xbb6b
	.string	"gt_ggc_mx_constant_descriptor_rtx"
	.long	0xbbf4
	.string	"gt_ggc_mx_varasm_status"
	.long	0xbc73
	.string	"gt_ggc_m_P15deferred_string4htab"
	.long	0xc3ff
	.string	"first_global_object_name"
	.long	0xc426
	.string	"weak_global_object_name"
	.long	0xc467
	.string	"weak_decls"
	.long	0xc4c6
	.string	"const_labelno"
	.long	0xc4e2
	.string	"var_labelno"
	.long	0xc4fc
	.string	"size_directive_output"
	.long	0xc520
	.string	"last_assemble_variable_decl"
	.long	0xc575
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
.LASF58:
	.string	"flagchars"
.LASF30:
	.string	"name"
.LASF15:
	.string	"lang_flag_0"
.LASF16:
	.string	"lang_flag_1"
.LASF17:
	.string	"lang_flag_2"
.LASF21:
	.string	"lang_flag_6"
.LASF41:
	.string	"label"
.LASF2:
	.string	"string"
.LASF8:
	.string	"mem_attrs"
.LASF57:
	.string	"shlib"
.LASF1:
	.string	"common"
.LASF56:
	.string	"fieldsize"
.LASF31:
	.string	"lang_specific"
.LASF37:
	.string	"sequence_rtl_expr"
.LASF10:
	.string	"size"
.LASF54:
	.string	"addr"
.LASF7:
	.string	"min_align"
.LASF36:
	.string	"sequence_stack"
.LASF34:
	.string	"function_frequency"
.LASF48:
	.string	"modesize"
.LASF18:
	.string	"lang_flag_3"
.LASF32:
	.string	"function"
.LASF35:
	.string	"next"
.LASF4:
	.string	"unsigned int"
.LASF25:
	.string	"abstract_origin"
.LASF6:
	.string	"mode_class"
.LASF11:
	.string	"align"
.LASF44:
	.string	"in_section"
.LASF49:
	.string	"top_level"
.LASF28:
	.string	"pointer_depth"
.LASF52:
	.string	"fnname"
.LASF12:
	.string	"index"
.LASF55:
	.string	"pool"
.LASF29:
	.string	"user_align"
.LASF39:
	.string	"lang_hooks"
.LASF26:
	.string	"size_unit"
.LASF40:
	.string	"attribute_table"
.LASF42:
	.string	"named_section"
.LASF23:
	.string	"value"
.LASF33:
	.string	"args_size"
.LASF53:
	.string	"aligned_p"
.LASF19:
	.string	"lang_flag_4"
.LASF20:
	.string	"lang_flag_5"
.LASF24:
	.string	"abstract_flag"
.LASF43:
	.string	"labelno"
.LASF50:
	.string	"symbol"
.LASF22:
	.string	"ht_identifier"
.LASF47:
	.string	"reloc"
.LASF9:
	.string	"offset"
.LASF46:
	.string	"__FUNCTION__"
.LASF14:
	.string	"built_in_class"
.LASF13:
	.string	"flags"
.LASF38:
	.string	"inner"
.LASF45:
	.string	"section"
.LASF51:
	.string	"priority"
.LASF0:
	.string	"mode"
.LASF5:
	.string	"_IO_FILE"
.LASF27:
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
