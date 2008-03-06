	.file	"ra.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl debug_new_regalloc
	.data
	.align 4
	.type	debug_new_regalloc, @object
	.size	debug_new_regalloc, 4
debug_new_regalloc:
	.long	-1
.globl flag_ra_biased
	.bss
	.align 4
	.type	flag_ra_biased, @object
	.size	flag_ra_biased, 4
flag_ra_biased:
	.zero	4
.globl flag_ra_improved_spilling
	.align 4
	.type	flag_ra_improved_spilling, @object
	.size	flag_ra_improved_spilling, 4
flag_ra_improved_spilling:
	.zero	4
.globl flag_ra_ir_spilling
	.align 4
	.type	flag_ra_ir_spilling, @object
	.size	flag_ra_ir_spilling, 4
flag_ra_ir_spilling:
	.zero	4
.globl flag_ra_optimistic_coalescing
	.align 4
	.type	flag_ra_optimistic_coalescing, @object
	.size	flag_ra_optimistic_coalescing, 4
flag_ra_optimistic_coalescing:
	.zero	4
.globl flag_ra_break_aliases
	.align 4
	.type	flag_ra_break_aliases, @object
	.size	flag_ra_break_aliases, 4
flag_ra_break_aliases:
	.zero	4
.globl flag_ra_merge_spill_costs
	.align 4
	.type	flag_ra_merge_spill_costs, @object
	.size	flag_ra_merge_spill_costs, 4
flag_ra_merge_spill_costs:
	.zero	4
.globl flag_ra_spill_every_use
	.align 4
	.type	flag_ra_spill_every_use, @object
	.size	flag_ra_spill_every_use, 4
flag_ra_spill_every_use:
	.zero	4
.globl flag_ra_dump_notes
	.align 4
	.type	flag_ra_dump_notes, @object
	.size	flag_ra_dump_notes, 4
flag_ra_dump_notes:
	.zero	4
	.text
.globl ra_alloc
	.type	ra_alloc, @function
ra_alloc:
.LFB15:
	.file 1 "../../../kg++fe/gnu/ra.c"
	.loc 1 167 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$48, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB2:
	.loc 1 168 0
	leal	ra_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB3:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L2
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L2:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE3:
.LBB4:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L4
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L4:
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
	jle	.L6
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L6:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE4:
.LBE2:
	.loc 1 169 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	ra_alloc, .-ra_alloc
.globl ra_calloc
	.type	ra_calloc, @function
ra_calloc:
.LFB16:
	.loc 1 176 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%esi
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$44, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB5:
	.loc 1 177 0
	leal	ra_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.LBB6:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-24(%ebp), %eax
	jge	.L10
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L10:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE6:
.LBB7:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L12
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L12:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L14
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L14:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE7:
.LBE5:
	movl	%eax, -36(%ebp)
	.loc 1 178 0
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 179 0
	movl	-36(%ebp), %eax
	.loc 1 180 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	ra_calloc, .-ra_calloc
.globl hard_regs_count
	.type	hard_regs_count, @function
hard_regs_count:
.LFB17:
	.loc 1 187 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	subl	$32, %esp
.LCFI13:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 188 0
	movl	$0, -12(%ebp)
	.loc 1 200 0
	movl	$0, -8(%ebp)
	jmp	.L18
.L19:
.LBB8:
	.loc 1 202 0
	movl	-8(%ebp), %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 203 0
	jmp	.L26
.L21:
.LBB9:
	.loc 1 205 0
	movl	-24(%ebp), %eax
	movb	%al, -1(%ebp)
	.loc 1 206 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	$8, %edx, %eax
	shrl	$8, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 207 0
	cmpb	$0, -1(%ebp)
	je	.L20
	.loc 1 208 0
	movzbl	-1(%ebp), %edx
	movl	byte2bitcount@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	addl	%eax, -12(%ebp)
.L20:
.L26:
.LBE9:
	.loc 1 203 0
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L21
.LBE8:
	.loc 1 200 0
	addl	$1, -8(%ebp)
.L18:
	cmpl	$2, -8(%ebp)
	jbe	.L19
	.loc 1 212 0
	movl	-12(%ebp), %eax
	.loc 1 213 0
	leave
	ret
.LFE17:
	.size	hard_regs_count, .-hard_regs_count
.globl ra_emit_move_insn
	.type	ra_emit_move_insn, @function
ra_emit_move_insn:
.LFB18:
	.loc 1 222 0
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
	.loc 1 223 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 224 0
	movl	-8(%ebp), %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$4, %eax
	jne	.L28
	.loc 1 225 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_move_insn@PLT
	movl	%eax, (%esp)
	call	emit_insn@PLT
	movl	%eax, -24(%ebp)
	jmp	.L30
.L28:
	.loc 1 227 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_move_insn@PLT
	movl	%eax, -24(%ebp)
.L30:
	movl	-24(%ebp), %eax
	.loc 1 228 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	ra_emit_move_insn, .-ra_emit_move_insn
	.section	.rodata
	.type	__FUNCTION__.11783, @object
	.size	__FUNCTION__.11783, 17
__FUNCTION__.11783:
	.string	"create_insn_info"
.LC0:
	.string	"../../../kg++fe/gnu/ra.c"
	.text
	.type	create_insn_info, @function
create_insn_info:
.LFB19:
	.loc 1 240 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%esi
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$108, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 243 0
	call	get_max_uid@PLT
	movl	%eax, %edx
	movl	insn_df_max_uid@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 244 0
	movl	insn_df_max_uid@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 245 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, refs_for_insn_df@GOTOFF(%ebx)
	.loc 1 246 0
	movl	refs_for_insn_df@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 249 0
	call	get_last_insn@PLT
	movl	%eax, -36(%ebp)
	jmp	.L33
.L34:
.LBB10:
	.loc 1 251 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 254 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L35
	.loc 1 256 0
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L37
.L38:
	.loc 1 257 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L39
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L41
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L43
.L41:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
.L43:
	movl	-96(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	$175, %eax
	ja	.L44
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L46
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L48
.L46:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L48:
	movl	-92(%ebp), %esi
	movl	4(%esi), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L49
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L51
.L49:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
.L51:
	movl	-76(%ebp), %edi
	movl	4(%edi), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L78
	movl	%edx, %eax
	xorl	%edx, %edx
.L78:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L39
.L44:
	.loc 1 262 0
	cmpl	$0, -24(%ebp)
	jne	.L52
	.loc 1 263 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%edx)
.L52:
	.loc 1 264 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -24(%ebp)
.L39:
	.loc 1 256 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L37:
	cmpl	$0, -20(%ebp)
	jne	.L38
	.loc 1 266 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%eax, -32(%ebp)
	.loc 1 267 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 268 0
	movl	$0, -24(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L55
.L56:
	.loc 1 269 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L57
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L59
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L61
.L59:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
.L61:
	movl	-72(%ebp), %edx
	movl	4(%edx), %eax
	cmpl	$175, %eax
	ja	.L62
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L64
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L66
.L64:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L66:
	movl	-68(%ebp), %esi
	movl	4(%esi), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L67
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L69
.L67:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L69:
	movl	-52(%ebp), %edi
	movl	4(%edi), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L77
	movl	%edx, %eax
	xorl	%edx, %edx
.L77:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L57
.L62:
	.loc 1 274 0
	cmpl	$0, -24(%ebp)
	jne	.L70
	.loc 1 275 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%edx)
.L70:
	.loc 1 276 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -24(%ebp)
.L57:
	.loc 1 268 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L55:
	cmpl	$0, -20(%ebp)
	jne	.L56
	.loc 1 278 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	%eax, -32(%ebp)
	.loc 1 279 0
	movl	-28(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
.L35:
.LBE10:
	.loc 1 249 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
.L33:
	cmpl	$0, -36(%ebp)
	jne	.L34
	.loc 1 281 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	leal	(%edx,%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	refs_for_insn_df@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	cmpl	-32(%ebp), %eax
	jae	.L76
	.loc 1 282 0
	leal	__FUNCTION__.11783@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$282, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L76:
	.loc 1 283 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	create_insn_info, .-create_insn_info
	.type	free_insn_info, @function
free_insn_info:
.LFB20:
	.loc 1 289 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$4, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 290 0
	movl	refs_for_insn_df@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 291 0
	movl	$0, refs_for_insn_df@GOTOFF(%ebx)
	.loc 1 292 0
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 293 0
	movl	insn_df@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 294 0
	movl	insn_df_max_uid@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 295 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	free_insn_info, .-free_insn_info
	.section	.rodata
	.type	__FUNCTION__.11969, @object
	.size	__FUNCTION__.11969, 12
__FUNCTION__.11969:
	.string	"find_subweb"
	.text
.globl find_subweb
	.type	find_subweb, @function
find_subweb:
.LFB21:
	.loc 1 305 0
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
	.loc 1 307 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L82
	.loc 1 308 0
	leal	__FUNCTION__.11969@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$308, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L82:
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L84
.L85:
	.loc 1 310 0
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L86
	movl	-8(%ebp), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L86
	.loc 1 312 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L89
.L86:
	.loc 1 309 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
.L84:
	cmpl	$0, -8(%ebp)
	jne	.L85
	.loc 1 313 0
	movl	$0, -24(%ebp)
.L89:
	movl	-24(%ebp), %eax
	.loc 1 314 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	find_subweb, .-find_subweb
.globl find_subweb_2
	.type	find_subweb_2, @function
find_subweb_2:
.LFB22:
	.loc 1 323 0
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
	.loc 1 324 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 325 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L93
	.loc 1 327 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L95
.L93:
	.loc 1 328 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L96
.L97:
.LBB11:
	.loc 1 330 0
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	rtx_to_bits@PLT
	movl	%eax, -8(%ebp)
	.loc 1 331 0
	movl	12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L98
	.loc 1 332 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L95
.L98:
.LBE11:
	.loc 1 328 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
.L96:
	cmpl	$0, -12(%ebp)
	jne	.L97
	.loc 1 334 0
	movl	$0, -24(%ebp)
.L95:
	movl	-24(%ebp), %eax
	.loc 1 335 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	find_subweb_2, .-find_subweb_2
.globl find_web_for_subweb_1
	.type	find_web_for_subweb_1, @function
find_web_for_subweb_1:
.LFB23:
	.loc 1 342 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	.loc 1 343 0
	jmp	.L103
.L104:
	.loc 1 344 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
.L103:
	.loc 1 343 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jne	.L104
	.loc 1 345 0
	movl	8(%ebp), %eax
	.loc 1 346 0
	popl	%ebp
	ret
.LFE23:
	.size	find_web_for_subweb_1, .-find_web_for_subweb_1
.globl hard_regs_intersect_p
	.type	hard_regs_intersect_p, @function
hard_regs_intersect_p:
.LFB24:
	.loc 1 354 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%edi
.LCFI40:
	pushl	%esi
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$108, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB12:
	.loc 1 356 0
	leal	-64(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$8, %ecx
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE12:
.LBB13:
	.loc 1 357 0
	leal	-64(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-120(%ebp), %eax
	andl	%esi, %eax
	movl	-116(%ebp), %edx
	andl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -112(%ebp)
	movl	%edi, -108(%ebp)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-112(%ebp), %eax
	andl	%esi, %eax
	movl	-108(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-104(%ebp), %eax
	andl	%esi, %eax
	movl	-100(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE13:
.LBB14:
	.loc 1 358 0
	leal	-64(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	reg_class_contents@GOT(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-96(%ebp), %eax
	andl	%esi, %eax
	movl	-92(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L108
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L108
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-80(%ebp), %eax
	andl	%esi, %eax
	movl	-76(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L111
.L108:
.LBE14:
	.loc 1 359 0
	movl	$1, -68(%ebp)
	jmp	.L112
.L111:
	.loc 1 361 0
	movl	$0, -68(%ebp)
.L112:
	movl	-68(%ebp), %eax
	.loc 1 362 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	hard_regs_intersect_p, .-hard_regs_intersect_p
	.type	alloc_mem, @function
alloc_mem:
.LFB25:
	.loc 1 370 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%esi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$32, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 372 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_build_realloc@PLT
	.loc 1 373 0
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L115
	.loc 1 375 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 377 0
	movl	$0, -12(%ebp)
	jmp	.L117
.L118:
	.loc 1 378 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %esi
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, (%esi)
	.loc 1 377 0
	addl	$1, -12(%ebp)
.L117:
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	cmpl	-12(%ebp), %eax
	jg	.L118
	.loc 1 379 0
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	8(%eax), %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L115:
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	create_insn_info
	.loc 1 382 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE25:
	.size	alloc_mem, .-alloc_mem
	.type	free_mem, @function
free_mem:
.LFB26:
	.loc 1 389 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$4, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 390 0
	call	free_insn_info
	.loc 1 391 0
	call	ra_build_free@PLT
	.loc 1 392 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	free_mem, .-free_mem
	.type	free_all_mem, @function
free_all_mem:
.LFB27:
	.loc 1 400 0
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
	.loc 1 402 0
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-8(%eax), %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 403 0
	movl	$0, -16(%ebp)
	jmp	.L124
.L125:
	.loc 1 404 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L126
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L126:
	.loc 1 403 0
	addl	$1, -16(%ebp)
.L124:
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	cmpl	-16(%ebp), %eax
	ja	.L125
	.loc 1 405 0
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 407 0
	call	ra_colorize_free_all@PLT
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_build_free_all@PLT
.LBB15:
	.loc 1 409 0
	leal	ra_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L129
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L129
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L133
.L129:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L133:
.LBE15:
	.loc 1 410 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	free_all_mem, .-free_all_mem
	.type	one_pass, @function
one_pass:
.LFB28:
	.loc 1 422 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$20, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 423 0
	call	clock@PLT
	movl	%eax, -12(%ebp)
	.loc 1 425 0
	movl	remember_conflicts@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 429 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_i_graph@PLT
	.loc 1 433 0
	movl	remember_conflicts@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 434 0
	cmpl	$0, 12(%ebp)
	jne	.L135
	.loc 1 435 0
	call	dump_igraph_machine@PLT
.L135:
	.loc 1 440 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_colorize_graph@PLT
	.loc 1 442 0
	call	get_max_uid@PLT
	movl	%eax, %edx
	movl	last_max_uid@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 445 0
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 448 0
	cmpl	$0, -8(%ebp)
	je	.L137
	.loc 1 449 0
	call	actual_spill@PLT
.L137:
	.loc 1 451 0
	call	clock@PLT
	subl	-12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 452 0
	cmpl	$0, 12(%ebp)
	je	.L139
	.loc 1 453 0
	movl	ticks_rebuild@GOTOFF(%ebx), %eax
	addl	-12(%ebp), %eax
	movl	%eax, ticks_rebuild@GOTOFF(%ebx)
	jmp	.L141
.L139:
	.loc 1 455 0
	movl	ticks_build@GOTOFF(%ebx), %eax
	addl	-12(%ebp), %eax
	movl	%eax, ticks_build@GOTOFF(%ebx)
.L141:
	.loc 1 456 0
	movl	-8(%ebp), %eax
	.loc 1 457 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	one_pass, .-one_pass
	.section	.rodata
	.type	__FUNCTION__.12238, @object
	.size	__FUNCTION__.12238, 8
__FUNCTION__.12238:
	.string	"init_ra"
	.align 32
	.type	eliminables.12183, @object
	.size	eliminables.12183, 72
eliminables.12183:
	.long	0
	.long	29
	.long	0
	.long	30
	.long	0
	.long	17
	.long	75
	.long	29
	.long	75
	.long	30
	.long	75
	.long	17
	.long	1
	.long	29
	.long	1
	.long	30
	.long	1
	.long	17
	.text
	.type	init_ra, @function
init_ra:
.LFB29:
	.loc 1 463 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%edi
.LCFI63:
	pushl	%esi
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$268, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 475 0
	movl	flag_omit_frame_pointer@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L144
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L144
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	296(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L147
.L144:
	movl	$1, -260(%ebp)
	jmp	.L148
.L147:
	movl	$0, -260(%ebp)
.L148:
	movl	-260(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 477 0
	call	ra_colorize_init@PLT
.LBB16:
	.loc 1 480 0
	movl	never_use_colors@GOT(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	fixed_reg_set@GOT(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-76(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-76(%ebp), %ecx
	addl	$8, %ecx
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-76(%ebp), %ecx
	addl	$16, %ecx
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE16:
	.loc 1 487 0
	movl	$0, -84(%ebp)
	jmp	.L149
.L150:
	.loc 1 489 0
	movl	-84(%ebp), %eax
	movl	eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$75, %eax
	jne	.L151
	movl	-84(%ebp), %eax
	movl	4+eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$29, %eax
	jne	.L153
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L155
.L153:
	movl	-84(%ebp), %eax
	movl	4+eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -256(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L156
	movl	$17, -252(%ebp)
	jmp	.L158
.L156:
	movl	$30, -252(%ebp)
.L158:
	movl	-252(%ebp), %edx
	cmpl	%edx, -256(%ebp)
	je	.L155
.L151:
	movl	-84(%ebp), %eax
	movl	eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$75, %eax
	je	.L159
	movl	-84(%ebp), %eax
	movl	4+eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -248(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L161
	movl	$17, -244(%ebp)
	jmp	.L163
.L161:
	movl	$30, -244(%ebp)
.L163:
	movl	-244(%ebp), %ecx
	cmpl	%ecx, -248(%ebp)
	je	.L155
	movl	-84(%ebp), %eax
	movl	4+eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$29, %eax
	jne	.L159
	movl	frame_pointer_needed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L159
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L167
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L159
.L167:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L155
	call	get_frame_size@PLT
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	compute_frame_size@PLT
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
	cmpl	$0, -236(%ebp)
	jg	.L159
	cmpl	$0, -236(%ebp)
	js	.L155
	cmpl	$32767, -240(%ebp)
	ja	.L159
.L155:
	movl	-84(%ebp), %eax
	movl	4+eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	cmpl	$29, %eax
	jne	.L171
	cmpl	$0, -80(%ebp)
	je	.L171
.L159:
	.loc 1 491 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L173
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L173
	movl	$5, -232(%ebp)
	jmp	.L176
.L173:
	movl	$4, -232(%ebp)
.L176:
	movl	-84(%ebp), %eax
	movl	eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	movl	-232(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -88(%ebp)
	jmp	.L177
.L178:
	.loc 1 492 0
	movl	-84(%ebp), %eax
	movl	eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	addl	-88(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -228(%ebp)
	movl	%eax, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -224(%ebp)
	movl	%edi, -220(%ebp)
	movl	-84(%ebp), %eax
	movl	eliminables.12183@GOTOFF(%ebx,%eax,8), %eax
	addl	-88(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L246
	movl	%esi, %edi
	xorl	%esi, %esi
.L246:
	movl	-224(%ebp), %eax
	orl	%esi, %eax
	movl	-220(%ebp), %edx
	orl	%edi, %edx
	movl	never_use_colors@GOT(%ebx), %ecx
	movl	-228(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L177:
	.loc 1 491 0
	subl	$1, -88(%ebp)
	cmpl	$-1, -88(%ebp)
	jne	.L178
.L171:
	.loc 1 487 0
	addl	$1, -84(%ebp)
.L149:
	cmpl	$8, -84(%ebp)
	jbe	.L150
	.loc 1 495 0
	cmpl	$0, -80(%ebp)
	je	.L180
	.loc 1 496 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L182
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L182
	movl	$5, -216(%ebp)
	jmp	.L185
.L182:
	movl	$4, -216(%ebp)
.L185:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L186
	movl	$17, -212(%ebp)
	jmp	.L188
.L186:
	movl	$30, -212(%ebp)
.L188:
	movl	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-212(%ebp), %edx
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -88(%ebp)
	jmp	.L189
.L190:
	.loc 1 497 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L191
	movl	$17, -208(%ebp)
	jmp	.L193
.L191:
	movl	$30, -208(%ebp)
.L193:
	movl	-208(%ebp), %eax
	addl	-88(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -204(%ebp)
	movl	%eax, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L194
	movl	$17, -188(%ebp)
	jmp	.L196
.L194:
	movl	$30, -188(%ebp)
.L196:
	movl	-188(%ebp), %eax
	addl	-88(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L245
	movl	%esi, %edi
	xorl	%esi, %esi
.L245:
	movl	-200(%ebp), %eax
	orl	%esi, %eax
	movl	-196(%ebp), %edx
	orl	%edi, %edx
	movl	never_use_colors@GOT(%ebx), %ecx
	movl	-204(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L189:
	.loc 1 496 0
	subl	$1, -88(%ebp)
	cmpl	$-1, -88(%ebp)
	jne	.L190
.L180:
	.loc 1 507 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L197
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L197
	movl	$5, -184(%ebp)
	jmp	.L200
.L197:
	movl	$4, -184(%ebp)
.L200:
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$29, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -88(%ebp)
	jmp	.L201
.L202:
	.loc 1 508 0
	movl	-88(%ebp), %eax
	addl	$29, %eax
	shrl	$6, %eax
	movl	%eax, -180(%ebp)
	movl	%eax, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -176(%ebp)
	movl	%edi, -172(%ebp)
	movl	-88(%ebp), %eax
	addl	$29, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L244
	movl	%esi, %edi
	xorl	%esi, %esi
.L244:
	movl	-176(%ebp), %eax
	orl	%esi, %eax
	movl	-172(%ebp), %edx
	orl	%edi, %edx
	movl	never_use_colors@GOT(%ebx), %ecx
	movl	-180(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L201:
	.loc 1 507 0
	subl	$1, -88(%ebp)
	cmpl	$-1, -88(%ebp)
	jne	.L202
	.loc 1 510 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L204
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L204
	movl	$5, -168(%ebp)
	jmp	.L207
.L204:
	movl	$4, -168(%ebp)
.L207:
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -88(%ebp)
	jmp	.L208
.L209:
	.loc 1 511 0
	movl	-88(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -164(%ebp)
	movl	%eax, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -160(%ebp)
	movl	%edi, -156(%ebp)
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L243
	movl	%esi, %edi
	xorl	%esi, %esi
.L243:
	movl	-160(%ebp), %eax
	orl	%esi, %eax
	movl	-156(%ebp), %edx
	orl	%edi, %edx
	movl	never_use_colors@GOT(%ebx), %ecx
	movl	-164(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L208:
	.loc 1 510 0
	subl	$1, -88(%ebp)
	cmpl	$-1, -88(%ebp)
	jne	.L209
	.loc 1 513 0
	movl	$0, -88(%ebp)
	jmp	.L211
.L212:
.LBB17:
	.loc 1 515 0
	movl	-88(%ebp), %eax
	movb	%al, -18(%ebp)
	.loc 1 516 0
	movb	$0, -17(%ebp)
	.loc 1 517 0
	jmp	.L213
.L214:
	.loc 1 519 0
	movzbl	-18(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L215
	.loc 1 520 0
	addb	$1, -17(%ebp)
.L215:
	.loc 1 521 0
	shrb	-18(%ebp)
.L213:
	.loc 1 517 0
	cmpb	$0, -18(%ebp)
	jne	.L214
	.loc 1 523 0
	movl	-88(%ebp), %ecx
	movl	byte2bitcount@GOT(%ebx), %edx
	movzbl	-17(%ebp), %eax
	movb	%al, (%edx,%ecx)
.LBE17:
	.loc 1 513 0
	addl	$1, -88(%ebp)
.L211:
	cmpl	$255, -88(%ebp)
	jle	.L212
	.loc 1 526 0
	movl	$0, -88(%ebp)
	jmp	.L219
.L220:
.LBB18:
.LBB19:
	.loc 1 529 0
	leal	-112(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-88(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	reg_class_contents@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-64(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-64(%ebp), %ecx
	addl	$8, %ecx
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-64(%ebp), %ecx
	addl	$16, %ecx
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE19:
.LBB20:
	.loc 1 530 0
	leal	-112(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	never_use_colors@GOT(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-152(%ebp), %eax
	andl	%esi, %eax
	movl	-148(%ebp), %edx
	andl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$8, %ecx
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -144(%ebp)
	movl	%edi, -140(%ebp)
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-144(%ebp), %eax
	andl	%esi, %eax
	movl	-140(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$16, %ecx
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-136(%ebp), %eax
	andl	%esi, %eax
	movl	-132(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE20:
	.loc 1 531 0
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	hard_regs_count@PLT
	movl	%eax, -68(%ebp)
	.loc 1 532 0
	movl	-88(%ebp), %ecx
	movl	-68(%ebp), %edx
	movl	num_free_regs@GOT(%ebx), %eax
	movl	%edx, (%eax,%ecx,4)
.LBB21:
	.loc 1 533 0
	movl	-88(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	usable_regs@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -48(%ebp)
	leal	-112(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-48(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$8, %ecx
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$16, %ecx
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE21:
.LBE18:
	.loc 1 526 0
	addl	$1, -88(%ebp)
.L219:
	cmpl	$24, -88(%ebp)
	jle	.L220
	.loc 1 540 0
	movl	$0, -88(%ebp)
	jmp	.L222
.L223:
.LBB22:
.LBB23:
	.loc 1 543 0
	leal	-112(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE23:
	.loc 1 544 0
	movl	$0, -40(%ebp)
	jmp	.L224
.L225:
	.loc 1 545 0
	movl	-88(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L226
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L226
	movl	-36(%ebp), %eax
	addl	-40(%ebp), %eax
	cmpl	$176, %eax
	jg	.L226
	.loc 1 550 0
	jmp	.L230
.L231:
	.loc 1 551 0
	movl	-36(%ebp), %eax
	addl	-40(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -124(%ebp)
	movl	-112(%ebp,%eax,8), %edx
	movl	-108(%ebp,%eax,8), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-36(%ebp), %eax
	addl	-40(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L242
	movl	%esi, %edi
	xorl	%esi, %esi
.L242:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-124(%ebp), %ecx
	movl	%eax, -112(%ebp,%ecx,8)
	movl	%edx, -108(%ebp,%ecx,8)
.L230:
	.loc 1 550 0
	subl	$1, -36(%ebp)
	cmpl	$-1, -36(%ebp)
	jne	.L231
.L226:
	.loc 1 544 0
	addl	$1, -40(%ebp)
.L224:
	cmpl	$175, -40(%ebp)
	jle	.L225
.LBB24:
	.loc 1 553 0
	movl	-88(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	hardregs_for_mode@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	leal	-112(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-28(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-28(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE24:
.LBE22:
	.loc 1 540 0
	addl	$1, -88(%ebp)
.L222:
	cmpl	$53, -88(%ebp)
	jle	.L223
	.loc 1 556 0
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L234
.L235:
	.loc 1 558 0
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L241
	movl	%edx, %eax
	xorl	%edx, %edx
.L241:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L236
	.loc 1 557 0
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L234:
	.loc 1 556 0
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$175, %eax
	jle	.L235
.L236:
	.loc 1 560 0
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$176, %eax
	jne	.L238
	.loc 1 561 0
	leal	__FUNCTION__.12238@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$561, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L238:
	.loc 1 563 0
	call	get_max_uid@PLT
	movl	%eax, %edx
	movl	orig_max_uid@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 564 0
	call	compute_bb_for_insn@PLT
	.loc 1 565 0
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 566 0
	movl	orig_max_uid@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, %edx
	movl	insns_with_deaths@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 567 0
	movl	orig_max_uid@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	death_insns_max_uid@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 568 0
	movl	insns_with_deaths@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	.loc 1 569 0
	leal	ra_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 570 0
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	init_ra, .-init_ra
	.section	.rodata
	.type	__FUNCTION__.12535, @object
	.size	__FUNCTION__.12535, 9
__FUNCTION__.12535:
	.string	"check_df"
	.text
	.type	check_df, @function
check_df:
.LFB30:
	.loc 1 578 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$52, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 583 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -16(%ebp)
	.loc 1 584 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -12(%ebp)
	.loc 1 585 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -8(%ebp)
	.loc 1 589 0
	movl	$0, -20(%ebp)
	jmp	.L248
.L249:
	.loc 1 590 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L250
	.loc 1 591 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L250:
	.loc 1 589 0
	addl	$1, -20(%ebp)
.L248:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-20(%ebp), %eax
	ja	.L249
	.loc 1 592 0
	movl	$0, -20(%ebp)
	jmp	.L253
.L254:
	.loc 1 593 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L255
	.loc 1 594 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L255:
	.loc 1 592 0
	addl	$1, -20(%ebp)
.L253:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	-20(%ebp), %eax
	ja	.L254
	.loc 1 599 0
	call	get_insns@PLT
	movl	%eax, -28(%ebp)
	jmp	.L258
.L259:
	.loc 1 600 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L260
	.loc 1 602 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 603 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L262
.L263:
	.loc 1 604 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L264
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L264
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L267
.L264:
	.loc 1 606 0
	leal	__FUNCTION__.12535@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$606, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L267:
	.loc 1 608 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 603 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L262:
	cmpl	$0, -32(%ebp)
	jne	.L263
	.loc 1 610 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 611 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L269
.L270:
	.loc 1 612 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L271
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L271
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L274
.L271:
	.loc 1 614 0
	leal	__FUNCTION__.12535@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$614, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L274:
	.loc 1 616 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 611 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L269:
	cmpl	$0, -32(%ebp)
	jne	.L270
.L260:
	.loc 1 599 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L258:
	cmpl	$0, -28(%ebp)
	jne	.L259
	.loc 1 620 0
	movl	$0, -24(%ebp)
	jmp	.L276
.L277:
	.loc 1 622 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 623 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L278
.L279:
	.loc 1 624 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L280
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L280
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L283
.L280:
	.loc 1 626 0
	leal	__FUNCTION__.12535@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$626, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L283:
	.loc 1 628 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 623 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L278:
	cmpl	$0, -32(%ebp)
	jne	.L279
	.loc 1 630 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 631 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L285
.L286:
	.loc 1 632 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L287
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L287
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L290
.L287:
	.loc 1 634 0
	leal	__FUNCTION__.12535@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$634, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L290:
	.loc 1 636 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 631 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L285:
	cmpl	$0, -32(%ebp)
	jne	.L286
	.loc 1 620 0
	addl	$1, -24(%ebp)
.L276:
	call	max_reg_num@PLT
	cmpl	-24(%ebp), %eax
	jg	.L277
	.loc 1 639 0
	cmpl	$0, -8(%ebp)
	je	.L293
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -8(%ebp)
.L293:
	.loc 1 640 0
	cmpl	$0, -12(%ebp)
	je	.L295
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -12(%ebp)
.L295:
	.loc 1 641 0
	cmpl	$0, -16(%ebp)
	je	.L299
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -16(%ebp)
.L299:
	.loc 1 642 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	check_df, .-check_df
	.section	.rodata
.LC1:
	.string	"RegAlloc Pass %d\n\n"
.LC2:
	.string	"Didn't find a coloring.\n"
.LC3:
	.string	"ticks for build-phase: %ld\n"
.LC4:
	.string	"ticks for rebuild-phase: %ld\n"
	.align 4
.LC5:
	.string	"after allocation/spilling, before reload"
	.text
.globl reg_alloc
	.type	reg_alloc, @function
reg_alloc:
.LFB31:
	.loc 1 648 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%edi
.LCFI73:
	pushl	%esi
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$60, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 650 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 651 0
	call	get_last_insn@PLT
	movl	%eax, -32(%ebp)
	.loc 1 653 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L301
	.loc 1 654 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	movl	%eax, -32(%ebp)
.L301:
	.loc 1 660 0
	cmpl	$0, -32(%ebp)
	je	.L303
.LBB25:
	.loc 1 663 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L305
.L306:
.LBB26:
	.loc 1 665 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 666 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 667 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L307
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L309
.L307:
.LBB27:
	.loc 1 670 0
	call	start_sequence@PLT
	.loc 1 671 0
	call	use_return_register@PLT
	.loc 1 672 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 673 0
	call	end_sequence@PLT
	.loc 1 674 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
.L309:
.LBE27:
.LBE26:
	.loc 1 663 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L305:
	cmpl	$0, -28(%ebp)
	jne	.L306
.L303:
.LBE25:
	.loc 1 683 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	$-1, (%eax)
	.loc 1 694 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L310
	.loc 1 695 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	$0, (%eax)
.L310:
	.loc 1 700 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L312
	.loc 1 701 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	$0, (%eax)
.L312:
	.loc 1 702 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%eax, %edi
	call	get_insns@PLT
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	regclass@PLT
	.loc 1 703 0
	movl	rtl_dump_file@GOT(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 707 0
	movl	$1, 4(%esp)
	movl	$0, (%esp)
	call	count_or_remove_death_notes@PLT
	.loc 1 710 0
	call	init_ra
	.loc 1 713 0
	movl	ra_pass@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 714 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 715 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 716 0
	call	ra_rewrite_init@PLT
	.loc 1 717 0
	movl	last_def_id@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 718 0
	movl	last_use_id@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 719 0
	movl	last_num_webs@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 720 0
	movl	last_max_uid@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 721 0
	movl	last_check_uses@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 722 0
	movl	live_at_end@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 723 0
	movl	web_lists@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 724 0
	movl	web_lists@GOT(%ebx), %eax
	movl	$0, 4(%eax)
	.loc 1 725 0
	movl	hardreg2web@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	$704, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 726 0
	movl	$0, ticks_rebuild@GOTOFF(%ebx)
	movl	ticks_rebuild@GOTOFF(%ebx), %eax
	movl	%eax, ticks_build@GOTOFF(%ebx)
	.loc 1 730 0
	movl	flag_ra_biased@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 731 0
	movl	flag_ra_spill_every_use@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 732 0
	movl	flag_ra_improved_spilling@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 733 0
	movl	flag_ra_ir_spilling@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 734 0
	movl	flag_ra_break_aliases@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 735 0
	movl	flag_ra_optimistic_coalescing@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 736 0
	movl	flag_ra_merge_spill_costs@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 737 0
	movl	flag_ra_optimistic_coalescing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L314
	.loc 1 738 0
	movl	flag_ra_break_aliases@GOT(%ebx), %eax
	movl	$1, (%eax)
.L314:
	.loc 1 739 0
	movl	flag_ra_dump_notes@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 742 0
	call	df_init@PLT
	movl	%eax, %edx
	movl	df@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L316:
	.loc 1 748 0
	movl	ra_pass@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$-65538, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 749 0
	movl	ra_pass@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$40, %eax
	setg	%cl
	leal	1(%eax), %edx
	movl	ra_pass@GOT(%ebx), %eax
	movl	%edx, (%eax)
	testb	%cl, %cl
	je	.L317
	.loc 1 750 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L317:
	.loc 1 755 0
	movl	ra_pass@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L319
	movl	$0, -48(%ebp)
	jmp	.L321
.L319:
	movl	$-1, -48(%ebp)
.L321:
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1216, 8(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	df_analyse@PLT
	.loc 1 758 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L322
.LBB28:
	.loc 1 761 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	$1024, 4(%esp)
	movl	%eax, (%esp)
	call	df_dump@PLT
	.loc 1 762 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	jmp	.L324
.L325:
	.loc 1 763 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L326
	.loc 1 764 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	df_insn_debug_regno@PLT
.L326:
	.loc 1 762 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L324:
	cmpl	$0, -16(%ebp)
	jne	.L325
.L322:
.LBE28:
	.loc 1 766 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	check_df
	.loc 1 770 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	alloc_mem
	.loc 1 774 0
	movl	ra_pass@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %edx
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	one_pass
	movl	%eax, -40(%ebp)
	.loc 1 777 0
	cmpl	$0, -40(%ebp)
	jne	.L328
	.loc 1 780 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	emit_colors@PLT
	.loc 1 787 0
	movl	$0, (%esp)
	call	setup_renumber@PLT
	.loc 1 789 0
	call	delete_moves@PLT
	.loc 1 790 0
	call	dump_constraints@PLT
	jmp	.L330
.L328:
	.loc 1 797 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L331
	.loc 1 798 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	$0, (%eax)
.L331:
	.loc 1 800 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
	.loc 1 802 0
	call	compute_bb_for_insn@PLT
	.loc 1 804 0
	call	max_reg_num@PLT
	movl	%eax, %esi
	call	get_insns@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 806 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %esi
	call	get_insns@PLT
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	reg_scan_update@PLT
	.loc 1 807 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	max_regno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 809 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%eax, %edi
	call	get_insns@PLT
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	regclass@PLT
	.loc 1 810 0
	movl	rtl_dump_file@GOT(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 814 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %edx
	movl	last_def_id@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 815 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	48(%eax), %edx
	movl	last_use_id@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L330:
	.loc 1 819 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_ra@PLT
	.loc 1 820 0
	cmpl	$0, -40(%ebp)
	je	.L333
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L333
	.loc 1 822 0
	call	get_insns@PLT
	movl	%eax, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	ra_print_rtl_with_bb@PLT
	.loc 1 823 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L333:
	.loc 1 827 0
	call	reset_lists@PLT
	.loc 1 828 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_mem
	.loc 1 830 0
	cmpl	$0, -40(%ebp)
	jne	.L316
	.loc 1 834 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_all_mem
	.loc 1 835 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	df_finish@PLT
	.loc 1 836 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L337
	.loc 1 837 0
	movl	$1, (%esp)
	call	dump_cost@PLT
.L337:
	.loc 1 838 0
	movl	ticks_build@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 839 0
	movl	ticks_rebuild@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 840 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1536, %eax
	testl	%eax, %eax
	je	.L339
	.loc 1 841 0
	call	get_insns@PLT
	movl	rtl_dump_file@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ra_print_rtl_with_bb@PLT
.L339:
	.loc 1 844 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L341
	.loc 1 845 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	$0, (%eax)
.L341:
	.loc 1 846 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 847 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
	.loc 1 848 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 849 0
	movl	rtl_dump_file@GOT(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 854 0
	call	fixup_abnormal_edges@PLT
	.loc 1 857 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L343
	.loc 1 858 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	$0, (%eax)
.L343:
	.loc 1 859 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	get_insns@PLT
	movl	$7, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	life_analysis@PLT
	.loc 1 861 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 862 0
	call	get_insns@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	recompute_reg_usage@PLT
	.loc 1 863 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L345
	.loc 1 864 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L345:
	.loc 1 865 0
	movl	rtl_dump_file@GOT(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 877 0
	movl	$1, (%esp)
	call	setup_renumber@PLT
	.loc 1 878 0
	movl	insns_with_deaths@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 882 0
	call	remove_suspicious_death_notes@PLT
	.loc 1 884 0
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L347
	.loc 1 885 0
	call	get_insns@PLT
	movl	rtl_dump_file@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ra_print_rtl_with_bb@PLT
.L347:
	.loc 1 886 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_static_insn_cost@PLT
	.loc 1 890 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 892 0
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	allocate_initial_values@PLT
	.loc 1 894 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%eax, %edi
	call	get_insns@PLT
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	regclass@PLT
	.loc 1 895 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	reg_alloc, .-reg_alloc
	.local	ra_obstack
	.comm	ra_obstack,44,32
	.local	refs_for_insn_df
	.comm	refs_for_insn_df,4,4
	.local	ticks_build
	.comm	ticks_build,4,4
	.local	ticks_rebuild
	.comm	ticks_rebuild,4,4
	.comm	insn_df,4,4
	.comm	insn_df_max_uid,4,4
	.comm	igraph,4,4
	.comm	sup_igraph,4,4
	.comm	insns_with_deaths,4,4
	.comm	death_insns_max_uid,4,4
	.comm	web_parts,4,4
	.comm	num_webs,4,4
	.comm	num_subwebs,4,4
	.comm	num_allwebs,4,4
	.comm	id2web,4,4
	.comm	hardreg2web,704,32
	.comm	def2web,4,4
	.comm	use2web,4,4
	.comm	wl_moves,4,4
	.comm	ra_reg_renumber,4,4
	.comm	ra_max_regno,4,4
	.comm	df,4,4
	.comm	live_at_end,4,4
	.comm	ra_pass,4,4
	.comm	max_normal_pseudo,4,4
	.comm	an_unusable_color,4,4
	.comm	web_lists,48,32
	.comm	last_def_id,4,4
	.comm	last_use_id,4,4
	.comm	last_max_uid,4,4
	.comm	last_num_webs,4,4
	.comm	last_check_uses,4,4
	.comm	remember_conflicts,4,4
	.comm	orig_max_uid,4,4
	.comm	never_use_colors,24,8
	.comm	usable_regs,600,32
	.comm	num_free_regs,100,32
	.comm	hardregs_for_mode,1296,32
	.comm	byte2bitcount,256,32
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
	.long	.LCFI10-.LCFI6
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI11-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI14-.LFB18
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI18-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI19
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI24-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI28-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI32-.LFB22
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
	.long	.LCFI43-.LCFI39
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
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI44-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI45
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
	.long	.LCFI49-.LFB26
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
	.long	.LCFI66-.LCFI62
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
	.long	.LCFI67-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI68
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
	.long	.LCFI71-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI72
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE32:
	.file 2 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "../../../include/gnu/obstack.h"
	.file 5 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 6 "../../../kg++fe/gnu/MIPS/config.h"
	.file 7 "../../../kg++fe/gnu/rtl.h"
	.file 8 "../../../kg++fe/gnu/machmode.h"
	.file 9 "../../../kg++fe/gnu/bitmap.h"
	.file 10 "../../../kg++fe/gnu/basic-block.h"
	.file 11 "../../../kg++fe/gnu/sbitmap.h"
	.file 12 "../../../kg++fe/gnu/df.h"
	.file 13 "../../../kg++fe/gnu/ra.h"
	.file 14 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "../../../kg++fe/gnu/reload.h"
	.file 18 "../../../kg++fe/gnu/function.h"
	.file 19 "../../../kg++fe/gnu/regs.h"
	.file 20 "../../../kg++fe/gnu/output.h"
	.file 21 "../../../kg++fe/gnu/flags.h"
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI67-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI68-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x4b91
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/ra.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x6
	.byte	0xc
	.long	0xa2
	.uleb128 0x3
	.byte	0x4
	.long	0xa8
	.uleb128 0x4
	.long	0x198
	.string	"rtx_def"
	.byte	0xc
	.byte	0x6
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x7
	.byte	0x84
	.long	0xb9e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x7
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
	.byte	0x7
	.byte	0x8e
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x7
	.byte	0x91
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x7
	.byte	0x99
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x7
	.byte	0xa2
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x7
	.byte	0xb4
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x7
	.byte	0xbb
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x7
	.byte	0xc0
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x7
	.byte	0xc9
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x7
	.byte	0xce
	.long	0x17b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x6
	.byte	0xe
	.long	0x1a5
	.uleb128 0x3
	.byte	0x4
	.long	0x1ab
	.uleb128 0x4
	.long	0x1e0
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x6
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x7
	.byte	0xf2
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x7
	.byte	0xf3
	.long	0x17c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x6
	.byte	0x10
	.long	0x1ec
	.uleb128 0x3
	.byte	0x4
	.long	0x1f2
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x204
	.uleb128 0x8
	.long	0x209
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x38e
	.string	"reg_class"
	.byte	0x4
	.byte	0xe
	.value	0x7ec
	.uleb128 0xb
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xb
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xb
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xb
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xb
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xb
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xb
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xb
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xb
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xb
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xb
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xb
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xb
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xb
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xb
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xb
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xb
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xb
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xb
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xb
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xb
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xb
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xb
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xb
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xb
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xb
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xc
	.long	0x460
	.string	"mips_args"
	.byte	0x40
	.byte	0xe
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xe
	.value	0xaad
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xe
	.value	0xab0
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xe
	.value	0xab5
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xe
	.value	0xab8
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xe
	.value	0xabb
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xe
	.value	0xac8
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xe
	.value	0xacb
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xe
	.value	0xad3
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xe
	.value	0xad4
	.long	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x477
	.long	0x97
	.uleb128 0x10
	.long	0x477
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xe
	.value	0xad5
	.long	0x38e
	.uleb128 0x2
	.string	"size_t"
	.byte	0x2
	.byte	0xd6
	.long	0x460
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
	.byte	0x10
	.byte	0x3b
	.long	0x4fc
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x10
	.byte	0x90
	.long	0x546
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x10
	.byte	0x91
	.long	0x527
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x2
	.string	"FILE"
	.byte	0x3
	.byte	0x2e
	.long	0x577
	.uleb128 0x13
	.long	0x7f2
	.long	.LASF1
	.byte	0x94
	.byte	0x3
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xf
	.value	0x10c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xf
	.value	0x111
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xf
	.value	0x112
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xf
	.value	0x113
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xf
	.value	0x114
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xf
	.value	0x115
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xf
	.value	0x116
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xf
	.value	0x117
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xf
	.value	0x118
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xf
	.value	0x11a
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xf
	.value	0x11b
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xf
	.value	0x11c
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xf
	.value	0x11e
	.long	0x859
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xf
	.value	0x120
	.long	0x85f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xf
	.value	0x122
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xf
	.value	0x126
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xf
	.value	0x128
	.long	0x537
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xf
	.value	0x12c
	.long	0x4b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xf
	.value	0x12d
	.long	0x4e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xf
	.value	0x12e
	.long	0x865
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xf
	.value	0x132
	.long	0x875
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xf
	.value	0x13b
	.long	0x552
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xf
	.value	0x144
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xf
	.value	0x145
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xf
	.value	0x146
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xf
	.value	0x147
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xf
	.value	0x148
	.long	0x496
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xf
	.value	0x14a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xf
	.value	0x14c
	.long	0x87b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.long	0x802
	.long	0x209
	.uleb128 0x10
	.long	0x477
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a4
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0xf
	.byte	0xb0
	.uleb128 0x4
	.long	0x859
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xf
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xf
	.byte	0xb7
	.long	0x859
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xf
	.byte	0xb8
	.long	0x85f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xf
	.byte	0xbc
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x816
	.uleb128 0x3
	.byte	0x4
	.long	0x577
	.uleb128 0xf
	.long	0x875
	.long	0x209
	.uleb128 0x10
	.long	0x477
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x808
	.uleb128 0xf
	.long	0x88b
	.long	0x209
	.uleb128 0x10
	.long	0x477
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x89b
	.long	0x209
	.uleb128 0x10
	.long	0x477
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.long	0x211
	.uleb128 0x3
	.byte	0x4
	.long	0x211
	.uleb128 0x15
	.long	0xaef
	.string	"machine_mode"
	.byte	0x4
	.byte	0x8
	.byte	0x1d
	.uleb128 0xb
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xb
	.string	"BImode"
	.sleb128 1
	.uleb128 0xb
	.string	"QImode"
	.sleb128 2
	.uleb128 0xb
	.string	"HImode"
	.sleb128 3
	.uleb128 0xb
	.string	"SImode"
	.sleb128 4
	.uleb128 0xb
	.string	"DImode"
	.sleb128 5
	.uleb128 0xb
	.string	"TImode"
	.sleb128 6
	.uleb128 0xb
	.string	"OImode"
	.sleb128 7
	.uleb128 0xb
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xb
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xb
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xb
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xb
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xb
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xb
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xb
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xb
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xb
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xb
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xb
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xb
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xb
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xb
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xb
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xb
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xb
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xb
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xb
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xb
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xb
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xb
	.string	"COImode"
	.sleb128 30
	.uleb128 0xb
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xb
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xb
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xb
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xb
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xb
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xb
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xb
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xb
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xb
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xb
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xb
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xb
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xb
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xb
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xb
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xb
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xb
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xb
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xb
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xb
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xb
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xb
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xb
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x16
	.long	0xb9e
	.long	.LASF2
	.byte	0x4
	.byte	0x8
	.byte	0x2c
	.uleb128 0xb
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0xb
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0xb
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0xb
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0xb
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0xb
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0xb
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0xb
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0xb
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0xb
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x15
	.long	0x136d
	.string	"rtx_code"
	.byte	0x4
	.byte	0x7
	.byte	0x29
	.uleb128 0xb
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xb
	.string	"NIL"
	.sleb128 1
	.uleb128 0xb
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xb
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xb
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xb
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xb
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xb
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xb
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xb
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xb
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xb
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xb
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xb
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xb
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xb
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xb
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xb
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xb
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xb
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xb
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xb
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xb
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xb
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xb
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xb
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xb
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xb
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xb
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xb
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xb
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xb
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xb
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xb
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xb
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xb
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xb
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xb
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xb
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xb
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xb
	.string	"INSN"
	.sleb128 42
	.uleb128 0xb
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xb
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xb
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xb
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xb
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xb
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xb
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xb
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xb
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xb
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xb
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xb
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xb
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xb
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xb
	.string	"SET"
	.sleb128 57
	.uleb128 0xb
	.string	"USE"
	.sleb128 58
	.uleb128 0xb
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xb
	.string	"CALL"
	.sleb128 60
	.uleb128 0xb
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xb
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xb
	.string	"RESX"
	.sleb128 63
	.uleb128 0xb
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xb
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xb
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xb
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xb
	.string	"CONST"
	.sleb128 68
	.uleb128 0xb
	.string	"PC"
	.sleb128 69
	.uleb128 0xb
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xb
	.string	"REG"
	.sleb128 71
	.uleb128 0xb
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xb
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xb
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xb
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xb
	.string	"MEM"
	.sleb128 76
	.uleb128 0xb
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xb
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xb
	.string	"CC0"
	.sleb128 79
	.uleb128 0xb
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xb
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xb
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xb
	.string	"COND"
	.sleb128 83
	.uleb128 0xb
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xb
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xb
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xb
	.string	"NEG"
	.sleb128 87
	.uleb128 0xb
	.string	"MULT"
	.sleb128 88
	.uleb128 0xb
	.string	"DIV"
	.sleb128 89
	.uleb128 0xb
	.string	"MOD"
	.sleb128 90
	.uleb128 0xb
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xb
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xb
	.string	"AND"
	.sleb128 93
	.uleb128 0xb
	.string	"IOR"
	.sleb128 94
	.uleb128 0xb
	.string	"XOR"
	.sleb128 95
	.uleb128 0xb
	.string	"NOT"
	.sleb128 96
	.uleb128 0xb
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xb
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xb
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xb
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xb
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xb
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xb
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xb
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xb
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xb
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xb
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xb
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xb
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xb
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xb
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xb
	.string	"NE"
	.sleb128 112
	.uleb128 0xb
	.string	"EQ"
	.sleb128 113
	.uleb128 0xb
	.string	"GE"
	.sleb128 114
	.uleb128 0xb
	.string	"GT"
	.sleb128 115
	.uleb128 0xb
	.string	"LE"
	.sleb128 116
	.uleb128 0xb
	.string	"LT"
	.sleb128 117
	.uleb128 0xb
	.string	"GEU"
	.sleb128 118
	.uleb128 0xb
	.string	"GTU"
	.sleb128 119
	.uleb128 0xb
	.string	"LEU"
	.sleb128 120
	.uleb128 0xb
	.string	"LTU"
	.sleb128 121
	.uleb128 0xb
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xb
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xb
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xb
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xb
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xb
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xb
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xb
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xb
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xb
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xb
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xb
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xb
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xb
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xb
	.string	"FIX"
	.sleb128 136
	.uleb128 0xb
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xb
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xb
	.string	"ABS"
	.sleb128 139
	.uleb128 0xb
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xb
	.string	"FFS"
	.sleb128 141
	.uleb128 0xb
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xb
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xb
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xb
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xb
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xb
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xb
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xb
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xb
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xb
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xb
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xb
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xb
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xb
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xb
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xb
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xb
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xb
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xb
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xb
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xb
	.string	"PHI"
	.sleb128 162
	.uleb128 0xb
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x17
	.long	0x1447
	.byte	0x4
	.byte	0x7
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x7
	.byte	0x49
	.long	0x460
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x7
	.byte	0x4b
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x7
	.byte	0x4c
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x7
	.byte	0x4e
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x7
	.byte	0x50
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x7
	.byte	0x52
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x7
	.byte	0x55
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x7
	.byte	0x57
	.long	0x460
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x7
	.byte	0x58
	.long	0x136d
	.uleb128 0x13
	.long	0x14bd
	.long	.LASF3
	.byte	0x18
	.byte	0x7
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x7
	.byte	0x63
	.long	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x7
	.byte	0x64
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x7
	.byte	0x65
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.long	.LASF4
	.byte	0x7
	.byte	0x66
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x7
	.byte	0x67
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.long	.LASF3
	.byte	0x7
	.byte	0x68
	.long	0x1462
	.uleb128 0x1a
	.long	0x159a
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x7
	.byte	0x6d
	.uleb128 0x1b
	.string	"rtwint"
	.byte	0x7
	.byte	0x6e
	.long	0x4fc
	.uleb128 0x1b
	.string	"rtint"
	.byte	0x7
	.byte	0x6f
	.long	0x211
	.uleb128 0x1b
	.string	"rtuint"
	.byte	0x7
	.byte	0x70
	.long	0x460
	.uleb128 0x1b
	.string	"rtstr"
	.byte	0x7
	.byte	0x71
	.long	0x1fe
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x7
	.byte	0x72
	.long	0x97
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0x7
	.byte	0x73
	.long	0x198
	.uleb128 0x1b
	.string	"rttype"
	.byte	0x7
	.byte	0x74
	.long	0x8a6
	.uleb128 0x1b
	.string	"rt_addr_diff_vec_flags"
	.byte	0x7
	.byte	0x75
	.long	0x1447
	.uleb128 0x1b
	.string	"rt_cselib"
	.byte	0x7
	.byte	0x76
	.long	0x15ae
	.uleb128 0x1b
	.string	"rtbit"
	.byte	0x7
	.byte	0x77
	.long	0x1616
	.uleb128 0x1b
	.string	"rttree"
	.byte	0x7
	.byte	0x78
	.long	0x1e0
	.uleb128 0x1b
	.string	"bb"
	.byte	0x7
	.byte	0x79
	.long	0x179d
	.uleb128 0x1b
	.string	"rtmem"
	.byte	0x7
	.byte	0x7a
	.long	0x17a3
	.byte	0x0
	.uleb128 0x1c
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x159a
	.uleb128 0x4
	.long	0x1616
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x7
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x9
	.byte	0x3d
	.long	0x27bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x9
	.byte	0x3e
	.long	0x27bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x9
	.byte	0x3f
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x9
	.byte	0x40
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15b4
	.uleb128 0x4
	.long	0x179d
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x7
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0xa
	.byte	0xb5
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0xa
	.byte	0xb5
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0xa
	.byte	0xb8
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0xa
	.byte	0xb9
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0xa
	.byte	0xbc
	.long	0x2909
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0xa
	.byte	0xbc
	.long	0x2909
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0xa
	.byte	0xc1
	.long	0x283d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0xa
	.byte	0xc5
	.long	0x283d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0xa
	.byte	0xcb
	.long	0x283d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0xa
	.byte	0xcd
	.long	0x283d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0xa
	.byte	0xd0
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0xa
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0xa
	.byte	0xd6
	.long	0x179d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0xa
	.byte	0xd6
	.long	0x179d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0xa
	.byte	0xd9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0xa
	.byte	0xdc
	.long	0x2b84
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.long	.LASF5
	.byte	0xa
	.byte	0xdf
	.long	0x284b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0xa
	.byte	0xe2
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x18
	.long	.LASF6
	.byte	0xa
	.byte	0xe5
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x161c
	.uleb128 0x3
	.byte	0x4
	.long	0x14bd
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x7
	.byte	0x7c
	.long	0x14c8
	.uleb128 0xf
	.long	0x17c8
	.long	0x17a9
	.uleb128 0x10
	.long	0x477
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x17d8
	.long	0x97
	.uleb128 0x10
	.long	0x477
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x97
	.uleb128 0xf
	.long	0x17ee
	.long	0x50d
	.uleb128 0x10
	.long	0x477
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1853
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x12
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x12
	.byte	0x18
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x12
	.byte	0x19
	.long	0x8a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x12
	.byte	0x1a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF7
	.byte	0x12
	.byte	0x1b
	.long	0x1853
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x17ee
	.uleb128 0x13
	.long	0x18a1
	.long	.LASF8
	.byte	0x10
	.byte	0x12
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x12
	.byte	0x26
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x12
	.byte	0x27
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF9
	.byte	0x12
	.byte	0x28
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF7
	.byte	0x12
	.byte	0x29
	.long	0x18a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1859
	.uleb128 0xc
	.long	0x19d4
	.string	"obstack"
	.byte	0x2c
	.byte	0x3
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x4
	.byte	0xaa
	.long	0x546
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x4
	.byte	0xab
	.long	0x2bf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x4
	.byte	0xac
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x4
	.byte	0xad
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x4
	.byte	0xae
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x4
	.byte	0xaf
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x4
	.byte	0xb0
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x4
	.byte	0xb5
	.long	0x2c0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x4
	.byte	0xb6
	.long	0x2c25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x4
	.byte	0xb7
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x4
	.byte	0xbd
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x4
	.byte	0xbe
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x4
	.byte	0xc2
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x18a7
	.uleb128 0x4
	.long	0x1b29
	.string	"emit_status"
	.byte	0x34
	.byte	0x12
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x12
	.byte	0x3a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x12
	.byte	0x3d
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x12
	.byte	0x44
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x12
	.byte	0x45
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.long	.LASF9
	.byte	0x12
	.byte	0x4a
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF8
	.byte	0x12
	.byte	0x50
	.long	0x18a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x12
	.byte	0x54
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x12
	.byte	0x58
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x12
	.byte	0x59
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x12
	.byte	0x5f
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x12
	.byte	0x65
	.long	0x802
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x12
	.byte	0x69
	.long	0x1b29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x12
	.byte	0x70
	.long	0x17d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e0
	.uleb128 0x4
	.long	0x1c0f
	.string	"expr_status"
	.byte	0x1c
	.byte	0x12
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x12
	.byte	0x80
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x12
	.byte	0x91
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x12
	.byte	0x97
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x12
	.byte	0x9c
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x12
	.byte	0x9f
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x12
	.byte	0xa2
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x12
	.byte	0xa5
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x1c79
	.long	.LASF10
	.byte	0x4
	.byte	0x12
	.value	0x1f1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1e
	.long	0x2638
	.string	"function"
	.value	0x134
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x12
	.byte	0xb5
	.long	0x2644
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x12
	.byte	0xb6
	.long	0x2658
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x12
	.byte	0xb7
	.long	0x265e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x12
	.byte	0xb8
	.long	0x2664
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x12
	.byte	0xb9
	.long	0x267a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x12
	.byte	0xbe
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x12
	.byte	0xc1
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x12
	.byte	0xc4
	.long	0x2680
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x12
	.byte	0xc9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x12
	.byte	0xce
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x12
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x12
	.byte	0xd7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x12
	.byte	0xdb
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x12
	.byte	0xdf
	.long	0x47e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x12
	.byte	0xe5
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x12
	.byte	0xe8
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x12
	.byte	0xec
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x12
	.byte	0xf0
	.long	0x269d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x12
	.byte	0xf3
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x12
	.byte	0xf8
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x12
	.byte	0xfe
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x12
	.value	0x102
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x12
	.value	0x107
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x12
	.value	0x10d
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x12
	.value	0x112
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x12
	.value	0x115
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x12
	.value	0x116
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x12
	.value	0x11a
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x12
	.value	0x11e
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x12
	.value	0x121
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x12
	.value	0x125
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x12
	.value	0x128
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x12
	.value	0x12e
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x12
	.value	0x133
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x12
	.value	0x138
	.long	0x4fc
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x12
	.value	0x13d
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x12
	.value	0x146
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x12
	.value	0x149
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x12
	.value	0x14d
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x12
	.value	0x151
	.long	0x460
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x12
	.value	0x157
	.long	0x17d8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x12
	.value	0x15a
	.long	0x26af
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x12
	.value	0x15d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x12
	.value	0x160
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x12
	.value	0x166
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x12
	.value	0x16a
	.long	0x1853
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x12
	.value	0x16d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x12
	.value	0x16e
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x12
	.value	0x16f
	.long	0x198
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x12
	.value	0x170
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x12
	.value	0x173
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x12
	.value	0x175
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x12
	.value	0x178
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x12
	.value	0x17d
	.long	0x26c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x12
	.value	0x17f
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x12
	.value	0x181
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x12
	.value	0x184
	.long	0x26e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x12
	.value	0x18a
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0x12
	.value	0x190
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0x12
	.value	0x194
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0x12
	.value	0x197
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0x12
	.value	0x19a
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0x12
	.value	0x19d
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0x12
	.value	0x1a0
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0x12
	.value	0x1a4
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0x12
	.value	0x1a7
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0x12
	.value	0x1ab
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0x12
	.value	0x1af
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0x12
	.value	0x1b2
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0x12
	.value	0x1b5
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0x12
	.value	0x1ba
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0x12
	.value	0x1c1
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0x12
	.value	0x1c5
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0x12
	.value	0x1c8
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0x12
	.value	0x1cb
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0x12
	.value	0x1cf
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0x12
	.value	0x1d2
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0x12
	.value	0x1d8
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x12
	.value	0x1e1
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0x12
	.value	0x1e4
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0x12
	.value	0x1e7
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0x12
	.value	0x1ea
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0x12
	.value	0x1ed
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.long	.LASF10
	.byte	0x12
	.value	0x1fa
	.long	0x1c0f
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x12
	.value	0x1fe
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1c
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2638
	.uleb128 0x1c
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x264a
	.uleb128 0x3
	.byte	0x4
	.long	0x1b2f
	.uleb128 0x3
	.byte	0x4
	.long	0x19da
	.uleb128 0x1c
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x266a
	.uleb128 0x3
	.byte	0x4
	.long	0x1c79
	.uleb128 0x1c
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2686
	.uleb128 0x1c
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x26a3
	.uleb128 0x1c
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x26b5
	.uleb128 0x1c
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x26ce
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0x5
	.byte	0x29
	.long	0x50d
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0x5
	.byte	0x34
	.long	0x2715
	.uleb128 0xf
	.long	0x2725
	.long	0x26e8
	.uleb128 0x10
	.long	0x477
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x9
	.byte	0x1d
	.long	0x4cb
	.uleb128 0x4
	.long	0x278f
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x9
	.byte	0x34
	.uleb128 0x18
	.long	.LASF7
	.byte	0x9
	.byte	0x35
	.long	0x278f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x9
	.byte	0x36
	.long	0x278f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x9
	.byte	0x37
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x9
	.byte	0x38
	.long	0x2795
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2738
	.uleb128 0xf
	.long	0x27a5
	.long	0x2725
	.uleb128 0x10
	.long	0x477
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x9
	.byte	0x39
	.long	0x2738
	.uleb128 0x3
	.byte	0x4
	.long	0x27a5
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x9
	.byte	0x43
	.long	0x1616
	.uleb128 0x4
	.long	0x2828
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xb
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xb
	.byte	0x21
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF4
	.byte	0xb
	.byte	0x22
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xb
	.byte	0x23
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xb
	.byte	0x24
	.long	0x17de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xb
	.byte	0x25
	.long	0x2837
	.uleb128 0x3
	.byte	0x4
	.long	0x27cf
	.uleb128 0x2
	.string	"regset"
	.byte	0xa
	.byte	0x22
	.long	0x27c1
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xa
	.byte	0x75
	.long	0x4fc
	.uleb128 0x4
	.long	0x2903
	.string	"edge_def"
	.byte	0x28
	.byte	0xa
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0xa
	.byte	0x7a
	.long	0x2903
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0xa
	.byte	0x7a
	.long	0x2903
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0xa
	.byte	0x7d
	.long	0x179d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0xa
	.byte	0x7d
	.long	0x179d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0xa
	.byte	0x80
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0xa
	.byte	0x83
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.long	.LASF6
	.byte	0xa
	.byte	0x85
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0xa
	.byte	0x86
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.long	.LASF5
	.byte	0xa
	.byte	0x87
	.long	0x284b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x285c
	.uleb128 0x2
	.string	"edge"
	.byte	0xa
	.byte	0x89
	.long	0x2903
	.uleb128 0x4
	.long	0x2b84
	.string	"loop"
	.byte	0x80
	.byte	0xa
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0xa
	.value	0x176
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0xa
	.value	0x179
	.long	0x2b8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0xa
	.value	0x17c
	.long	0x2b8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0xa
	.value	0x17f
	.long	0x2b8a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0xa
	.value	0x184
	.long	0x2b9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0xa
	.value	0x187
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0xa
	.value	0x18b
	.long	0x2b8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0xa
	.value	0x18f
	.long	0x2b8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0xa
	.value	0x192
	.long	0x2828
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0xa
	.value	0x195
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0xa
	.value	0x198
	.long	0x2b9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0xa
	.value	0x19b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0xa
	.value	0x19e
	.long	0x2b9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0xa
	.value	0x1a1
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0xa
	.value	0x1a4
	.long	0x2828
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0xa
	.value	0x1a7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0xa
	.value	0x1aa
	.long	0x2ba3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0xa
	.value	0x1ae
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0xa
	.value	0x1b1
	.long	0x2b84
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0xa
	.value	0x1b4
	.long	0x2b84
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x20
	.long	.LASF7
	.byte	0xa
	.value	0x1b7
	.long	0x2b84
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0xa
	.value	0x1ba
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0xa
	.value	0x1bd
	.long	0x563
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0xa
	.value	0x1c3
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0xa
	.value	0x1c7
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0xa
	.value	0x1ca
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0xa
	.value	0x1cd
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0xa
	.value	0x1d1
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0xa
	.value	0x1d4
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0xa
	.value	0x1d7
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0xa
	.value	0x1e2
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0xa
	.value	0x1e6
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2915
	.uleb128 0x2
	.string	"basic_block"
	.byte	0xa
	.byte	0xe6
	.long	0x179d
	.uleb128 0x3
	.byte	0x4
	.long	0x2909
	.uleb128 0x3
	.byte	0x4
	.long	0x2b84
	.uleb128 0x4
	.long	0x2bf3
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x4
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x4
	.byte	0xa3
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x4
	.byte	0xa4
	.long	0x2bf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x4
	.byte	0xa5
	.long	0x7f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2ba9
	.uleb128 0x21
	.long	0x2c0e
	.byte	0x1
	.long	0x2bf3
	.uleb128 0x22
	.long	0x563
	.uleb128 0x22
	.long	0x546
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2bf9
	.uleb128 0x23
	.long	0x2c25
	.byte	0x1
	.uleb128 0x22
	.long	0x563
	.uleb128 0x22
	.long	0x2bf3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c14
	.uleb128 0x15
	.long	0x2c8f
	.string	"df_ref_type"
	.byte	0x4
	.byte	0xc
	.byte	0x23
	.uleb128 0xb
	.string	"DF_REF_REG_DEF"
	.sleb128 0
	.uleb128 0xb
	.string	"DF_REF_REG_USE"
	.sleb128 1
	.uleb128 0xb
	.string	"DF_REF_REG_MEM_LOAD"
	.sleb128 2
	.uleb128 0xb
	.string	"DF_REF_REG_MEM_STORE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	0x2cbc
	.string	"df_link"
	.byte	0x8
	.byte	0xc
	.byte	0x2e
	.uleb128 0x18
	.long	.LASF7
	.byte	0xc
	.byte	0x2f
	.long	0x2cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ref"
	.byte	0xc
	.byte	0x30
	.long	0x2d34
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2c8f
	.uleb128 0x4
	.long	0x2d34
	.string	"ref"
	.byte	0x1c
	.byte	0xc
	.byte	0x30
	.uleb128 0x6
	.string	"reg"
	.byte	0xc
	.byte	0x44
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"insn"
	.byte	0xc
	.byte	0x45
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"loc"
	.byte	0xc
	.byte	0x46
	.long	0x17d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"chain"
	.byte	0xc
	.byte	0x47
	.long	0x2cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"type"
	.byte	0xc
	.byte	0x48
	.long	0x2c2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"id"
	.byte	0xc
	.byte	0x49
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.long	.LASF6
	.byte	0xc
	.byte	0x4a
	.long	0x2d3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2cc2
	.uleb128 0x15
	.long	0x2d79
	.string	"df_ref_flags"
	.byte	0x4
	.byte	0xc
	.byte	0x34
	.uleb128 0xb
	.string	"DF_REF_READ_WRITE"
	.sleb128 1
	.uleb128 0xb
	.string	"DF_REF_MODE_CHANGE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x2db9
	.string	"insn_info"
	.byte	0xc
	.byte	0xc
	.byte	0x50
	.uleb128 0x6
	.string	"defs"
	.byte	0xc
	.byte	0x51
	.long	0x2cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0xc
	.byte	0x52
	.long	0x2cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0xc
	.byte	0x55
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x13
	.long	0x2e19
	.long	.LASF11
	.byte	0x14
	.byte	0xc
	.byte	0x5e
	.uleb128 0x6
	.string	"defs"
	.byte	0xc
	.byte	0x5f
	.long	0x2cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0xc
	.byte	0x60
	.long	0x2cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"lifetime"
	.byte	0xc
	.byte	0x61
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"n_defs"
	.byte	0xc
	.byte	0x62
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"n_uses"
	.byte	0xc
	.byte	0x63
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	0x2f2e
	.string	"bb_info"
	.byte	0x3c
	.byte	0xc
	.byte	0x69
	.uleb128 0x6
	.string	"rd_kill"
	.byte	0xc
	.byte	0x6b
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"rd_gen"
	.byte	0xc
	.byte	0x6c
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"rd_in"
	.byte	0xc
	.byte	0x6d
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"rd_out"
	.byte	0xc
	.byte	0x6e
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"ru_kill"
	.byte	0xc
	.byte	0x70
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"ru_gen"
	.byte	0xc
	.byte	0x71
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ru_in"
	.byte	0xc
	.byte	0x72
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"ru_out"
	.byte	0xc
	.byte	0x73
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"lr_def"
	.byte	0xc
	.byte	0x75
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"lr_use"
	.byte	0xc
	.byte	0x76
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"lr_in"
	.byte	0xc
	.byte	0x77
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"lr_out"
	.byte	0xc
	.byte	0x78
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"rd_valid"
	.byte	0xc
	.byte	0x79
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"ru_valid"
	.byte	0xc
	.byte	0x7a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"lr_valid"
	.byte	0xc
	.byte	0x7b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x4
	.long	0x3163
	.string	"df"
	.byte	0x74
	.byte	0xc
	.byte	0x80
	.uleb128 0x18
	.long	.LASF6
	.byte	0xc
	.byte	0x81
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bbs"
	.byte	0xc
	.byte	0x82
	.long	0x3163
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"defs"
	.byte	0xc
	.byte	0x83
	.long	0x3169
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"uses"
	.byte	0xc
	.byte	0x84
	.long	0x3169
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"reg_def_last"
	.byte	0xc
	.byte	0x85
	.long	0x3169
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"regs"
	.byte	0xc
	.byte	0x86
	.long	0x316f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reg_size"
	.byte	0xc
	.byte	0x87
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"insns"
	.byte	0xc
	.byte	0x88
	.long	0x3175
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"insn_size"
	.byte	0xc
	.byte	0x89
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"def_id"
	.byte	0xc
	.byte	0x8a
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"def_size"
	.byte	0xc
	.byte	0x8b
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"n_defs"
	.byte	0xc
	.byte	0x8c
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"use_id"
	.byte	0xc
	.byte	0x8d
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"use_size"
	.byte	0xc
	.byte	0x8e
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"n_uses"
	.byte	0xc
	.byte	0x8f
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"n_bbs"
	.byte	0xc
	.byte	0x90
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"n_regs"
	.byte	0xc
	.byte	0x91
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"def_id_save"
	.byte	0xc
	.byte	0x92
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"use_id_save"
	.byte	0xc
	.byte	0x93
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"insns_modified"
	.byte	0xc
	.byte	0x94
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"bbs_modified"
	.byte	0xc
	.byte	0x95
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"all_blocks"
	.byte	0xc
	.byte	0x96
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"dom"
	.byte	0xc
	.byte	0x99
	.long	0x317b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"dfs_order"
	.byte	0xc
	.byte	0x9a
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"rc_order"
	.byte	0xc
	.byte	0x9b
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"rts_order"
	.byte	0xc
	.byte	0x9c
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"inverse_rc_map"
	.byte	0xc
	.byte	0x9d
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"inverse_dfs_map"
	.byte	0xc
	.byte	0x9e
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x6
	.string	"inverse_rts_map"
	.byte	0xc
	.byte	0x9f
	.long	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2e19
	.uleb128 0x3
	.byte	0x4
	.long	0x2d34
	.uleb128 0x3
	.byte	0x4
	.long	0x2db9
	.uleb128 0x3
	.byte	0x4
	.long	0x2d79
	.uleb128 0x3
	.byte	0x4
	.long	0x2828
	.uleb128 0x24
	.long	0x31a1
	.byte	0x4
	.byte	0xd
	.byte	0x1c
	.uleb128 0x1b
	.string	"web"
	.byte	0xd
	.byte	0x1d
	.long	0x3615
	.uleb128 0x1b
	.string	"move"
	.byte	0xd
	.byte	0x1e
	.long	0x3686
	.byte	0x0
	.uleb128 0x4
	.long	0x3615
	.string	"web"
	.byte	0xe8
	.byte	0xd
	.byte	0x1d
	.uleb128 0x6
	.string	"id"
	.byte	0xd
	.byte	0x5d
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"regno"
	.byte	0xd
	.byte	0x60
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"span_deaths"
	.byte	0xd
	.byte	0x63
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"spill_temp"
	.byte	0xd
	.byte	0x6b
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"orig_spill_temp"
	.byte	0xd
	.byte	0x6f
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"spill_cost"
	.byte	0xd
	.byte	0x72
	.long	0x50d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"orig_spill_cost"
	.byte	0xd
	.byte	0x73
	.long	0x50d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"num_aliased"
	.byte	0xd
	.byte	0x76
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"color"
	.byte	0xd
	.byte	0x79
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"old_color"
	.byte	0xd
	.byte	0x7c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"use_my_regs"
	.byte	0xd
	.byte	0x82
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"was_spilled"
	.byte	0xd
	.byte	0x86
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"is_coalesced"
	.byte	0xd
	.byte	0x8c
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"artificial"
	.byte	0xd
	.byte	0x9c
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x25
	.long	.LASF12
	.byte	0xd
	.byte	0x9f
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"move_related"
	.byte	0xd
	.byte	0xa2
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"live_over_abnormal"
	.byte	0xd
	.byte	0xa5
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"mode_changed"
	.byte	0xd
	.byte	0xa9
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"old_web"
	.byte	0xd
	.byte	0xad
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"in_load"
	.byte	0xd
	.byte	0xb1
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"one_load"
	.byte	0xd
	.byte	0xb7
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"changed"
	.byte	0xd
	.byte	0xbd
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"target_of_spilled_move"
	.byte	0xd
	.byte	0xc3
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"have_orig_conflicts"
	.byte	0xd
	.byte	0xc9
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"type"
	.byte	0xd
	.byte	0xcc
	.long	0x36ce
	.byte	0x4
	.byte	0x5
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"regclass"
	.byte	0xd
	.byte	0xd1
	.long	0x218
	.byte	0x4
	.byte	0xa
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"add_hardregs"
	.byte	0xd
	.byte	0xd4
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"num_conflicts"
	.byte	0xd
	.byte	0xd7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x18
	.long	.LASF13
	.byte	0xd
	.byte	0xda
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.long	.LASF14
	.byte	0xd
	.byte	0xdb
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"orig_x"
	.byte	0xd
	.byte	0xe0
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"parent_web"
	.byte	0xd
	.byte	0xe4
	.long	0x3615
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"subreg_next"
	.byte	0xd
	.byte	0xe8
	.long	0x3615
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"conflict_list"
	.byte	0xd
	.byte	0xeb
	.long	0x387f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"orig_conflict_list"
	.byte	0xd
	.byte	0xf1
	.long	0x387f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"useless_conflicts"
	.byte	0xd
	.byte	0xf6
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.long	.LASF15
	.byte	0xd
	.byte	0xf9
	.long	0x2701
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"orig_usable_regs"
	.byte	0xd
	.byte	0xfb
	.long	0x2701
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"bias_colors"
	.byte	0xd
	.byte	0xfe
	.long	0x2701
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"prefer_colors"
	.byte	0xd
	.value	0x100
	.long	0x2701
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"num_freedom"
	.byte	0xd
	.value	0x103
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"reg_rtx"
	.byte	0xd
	.value	0x107
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"stack_slot"
	.byte	0xd
	.value	0x10b
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"last_use_insn"
	.byte	0xd
	.value	0x10f
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.string	"pattern"
	.byte	0xd
	.value	0x113
	.long	0x97
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"defs"
	.byte	0xd
	.value	0x117
	.long	0x3169
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"uses"
	.byte	0xd
	.value	0x118
	.long	0x3169
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"alias"
	.byte	0xd
	.value	0x11d
	.long	0x3615
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"moves"
	.byte	0xd
	.value	0x121
	.long	0x38b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"dlink"
	.byte	0xd
	.value	0x124
	.long	0x36c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"temp_refs"
	.byte	0xd
	.value	0x128
	.long	0x2cbc
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x31a1
	.uleb128 0x4
	.long	0x3686
	.string	"move"
	.byte	0x14
	.byte	0xd
	.byte	0x1e
	.uleb128 0xd
	.string	"insn"
	.byte	0xd
	.value	0x154
	.long	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"source_web"
	.byte	0xd
	.value	0x155
	.long	0x3615
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"target_web"
	.byte	0xd
	.value	0x156
	.long	0x3615
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"type"
	.byte	0xd
	.value	0x157
	.long	0x3904
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"dlink"
	.byte	0xd
	.value	0x158
	.long	0x36c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x361b
	.uleb128 0x4
	.long	0x36c8
	.string	"dlist"
	.byte	0xc
	.byte	0xd
	.byte	0x18
	.uleb128 0x6
	.string	"prev"
	.byte	0xd
	.byte	0x19
	.long	0x36c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF7
	.byte	0xd
	.byte	0x1a
	.long	0x36c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"value"
	.byte	0xd
	.byte	0x1f
	.long	0x3181
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x368c
	.uleb128 0x15
	.long	0x3775
	.string	"node_type"
	.byte	0x4
	.byte	0xd
	.byte	0x27
	.uleb128 0xb
	.string	"INITIAL"
	.sleb128 0
	.uleb128 0xb
	.string	"FREE"
	.sleb128 1
	.uleb128 0xb
	.string	"PRECOLORED"
	.sleb128 2
	.uleb128 0xb
	.string	"SIMPLIFY"
	.sleb128 3
	.uleb128 0xb
	.string	"SIMPLIFY_SPILL"
	.sleb128 4
	.uleb128 0xb
	.string	"SIMPLIFY_FAT"
	.sleb128 5
	.uleb128 0xb
	.string	"FREEZE"
	.sleb128 6
	.uleb128 0xb
	.string	"SPILL"
	.sleb128 7
	.uleb128 0xb
	.string	"SELECT"
	.sleb128 8
	.uleb128 0xb
	.string	"SPILLED"
	.sleb128 9
	.uleb128 0xb
	.string	"COALESCED"
	.sleb128 10
	.uleb128 0xb
	.string	"COLORED"
	.sleb128 11
	.uleb128 0xb
	.string	"LAST_NODE_TYPE"
	.sleb128 12
	.byte	0x0
	.uleb128 0x4
	.long	0x37be
	.string	"tagged_conflict"
	.byte	0xc
	.byte	0xd
	.byte	0x34
	.uleb128 0x18
	.long	.LASF7
	.byte	0xd
	.byte	0x35
	.long	0x37be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"conflicts"
	.byte	0xd
	.byte	0x36
	.long	0x27c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF16
	.byte	0xd
	.byte	0x3a
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3775
	.uleb128 0x4
	.long	0x3837
	.string	"web_part"
	.byte	0x14
	.byte	0xd
	.byte	0x44
	.uleb128 0x6
	.string	"ref"
	.byte	0xd
	.byte	0x46
	.long	0x2d34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uplink"
	.byte	0xd
	.byte	0x48
	.long	0x3837
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"spanned_deaths"
	.byte	0xd
	.byte	0x4f
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sub_conflicts"
	.byte	0xd
	.byte	0x51
	.long	0x37be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x25
	.long	.LASF12
	.byte	0xd
	.byte	0x53
	.long	0x460
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x37c4
	.uleb128 0x4
	.long	0x387f
	.string	"conflict_link"
	.byte	0xc
	.byte	0xd
	.byte	0xeb
	.uleb128 0x20
	.long	.LASF7
	.byte	0xd
	.value	0x140
	.long	0x387f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"t"
	.byte	0xd
	.value	0x143
	.long	0x3615
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"sub"
	.byte	0xd
	.value	0x147
	.long	0x38fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x383d
	.uleb128 0xc
	.long	0x38b8
	.string	"move_list"
	.byte	0x8
	.byte	0xd
	.value	0x121
	.uleb128 0x20
	.long	.LASF7
	.byte	0xd
	.value	0x15e
	.long	0x38b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"move"
	.byte	0xd
	.value	0x15f
	.long	0x3686
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3885
	.uleb128 0xc
	.long	0x38fe
	.string	"sub_conflict"
	.byte	0xc
	.byte	0xd
	.value	0x135
	.uleb128 0x20
	.long	.LASF7
	.byte	0xd
	.value	0x138
	.long	0x38fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"s"
	.byte	0xd
	.value	0x139
	.long	0x3615
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"t"
	.byte	0xd
	.value	0x13a
	.long	0x3615
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x38be
	.uleb128 0xa
	.long	0x3963
	.string	"move_type"
	.byte	0x4
	.byte	0xd
	.value	0x14c
	.uleb128 0xb
	.string	"WORKLIST"
	.sleb128 0
	.uleb128 0xb
	.string	"MV_COALESCED"
	.sleb128 1
	.uleb128 0xb
	.string	"CONSTRAINED"
	.sleb128 2
	.uleb128 0xb
	.string	"FROZEN"
	.sleb128 3
	.uleb128 0xb
	.string	"ACTIVE"
	.sleb128 4
	.uleb128 0xb
	.string	"LAST_MOVE_TYPE"
	.sleb128 5
	.byte	0x0
	.uleb128 0xc
	.long	0x39b8
	.string	"ra_insn_info"
	.byte	0x10
	.byte	0xd
	.value	0x169
	.uleb128 0x20
	.long	.LASF14
	.byte	0xd
	.value	0x16a
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF13
	.byte	0xd
	.value	0x16a
	.long	0x460
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"defs"
	.byte	0xd
	.value	0x16b
	.long	0x3169
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"uses"
	.byte	0xd
	.value	0x16b
	.long	0x3169
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x26
	.long	0x3a56
	.byte	0x1
	.string	"ra_alloc"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.long	0x563
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.byte	0xa6
	.long	0x496
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x29
	.string	"__h"
	.byte	0x1
	.byte	0xa8
	.long	0x19d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	0x3a2b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.byte	0xa8
	.long	0x19d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"__len"
	.byte	0x1
	.byte	0xa8
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x28
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x29
	.string	"__o1"
	.byte	0x1
	.byte	0xa8
	.long	0x19d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"value"
	.byte	0x1
	.byte	0xa8
	.long	0x563
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3b01
	.byte	0x1
	.string	"ra_calloc"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x563
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.byte	0xaf
	.long	0x496
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.byte	0xb1
	.long	0x563
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x29
	.string	"__h"
	.byte	0x1
	.byte	0xb1
	.long	0x19d4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x3ad6
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x29
	.string	"__o"
	.byte	0x1
	.byte	0xb1
	.long	0x19d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"__len"
	.byte	0x1
	.byte	0xb1
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x28
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x29
	.string	"__o1"
	.byte	0x1
	.byte	0xb1
	.long	0x19d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"value"
	.byte	0x1
	.byte	0xb1
	.long	0x563
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3b85
	.byte	0x1
	.string	"hard_regs_count"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	0x211
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2b
	.string	"rs"
	.byte	0x1
	.byte	0xba
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x1
	.byte	0xbc
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"ofs"
	.byte	0x1
	.byte	0xc7
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x29
	.string	"elt"
	.byte	0x1
	.byte	0xca
	.long	0x26e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x29
	.string	"byte"
	.byte	0x1
	.byte	0xcd
	.long	0x4a4
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x26e8
	.uleb128 0x26
	.long	0x3bde
	.byte	0x1
	.string	"ra_emit_move_insn"
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	0x97
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.byte	0xdd
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.byte	0xdd
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.string	"mode"
	.byte	0x1
	.byte	0xdf
	.long	0x8a6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3c7a
	.string	"create_insn_info"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2b
	.string	"df"
	.byte	0x1
	.byte	0xef
	.long	0x3c7a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"insn"
	.byte	0x1
	.byte	0xf1
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"act_refs"
	.byte	0x1
	.byte	0xf2
	.long	0x3169
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x3c69
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x29
	.string	"uid"
	.byte	0x1
	.byte	0xfb
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.byte	0xfc
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"link"
	.byte	0x1
	.byte	0xfd
	.long	0x2cbc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	.LASF17
	.long	0x43d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11783
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f2e
	.uleb128 0x2f
	.string	"free_insn_info"
	.byte	0x1
	.value	0x121
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x30
	.long	0x3d02
	.byte	0x1
	.string	"find_subweb"
	.byte	0x1
	.value	0x131
	.byte	0x1
	.long	0x3615
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x31
	.string	"web"
	.byte	0x1
	.value	0x12f
	.long	0x3615
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x130
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"w"
	.byte	0x1
	.value	0x132
	.long	0x3615
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF17
	.long	0x43c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11969
	.byte	0x0
	.uleb128 0x30
	.long	0x3d6e
	.byte	0x1
	.string	"find_subweb_2"
	.byte	0x1
	.value	0x143
	.byte	0x1
	.long	0x3615
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x31
	.string	"web"
	.byte	0x1
	.value	0x141
	.long	0x3615
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF16
	.byte	0x1
	.value	0x142
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"w"
	.byte	0x1
	.value	0x144
	.long	0x3615
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x32
	.string	"bl"
	.byte	0x1
	.value	0x14a
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x3db1
	.byte	0x1
	.string	"find_web_for_subweb_1"
	.byte	0x1
	.value	0x156
	.byte	0x1
	.long	0x3615
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x31
	.string	"subweb"
	.byte	0x1
	.value	0x155
	.long	0x3615
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x3ea1
	.byte	0x1
	.string	"hard_regs_intersect_p"
	.byte	0x1
	.value	0x162
	.byte	0x1
	.long	0x211
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.value	0x161
	.long	0x3ea1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.value	0x161
	.long	0x3ea1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.value	0x163
	.long	0x2701
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.string	"lose"
	.byte	0x1
	.value	0x168
	.long	.L111
	.uleb128 0x2a
	.long	0x3e42
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x35
	.long	.LASF18
	.byte	0x1
	.value	0x164
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x164
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2a
	.long	0x3e6e
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x35
	.long	.LASF18
	.byte	0x1
	.value	0x165
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x165
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x28
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x32
	.string	"scan_xp_"
	.byte	0x1
	.value	0x166
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"scan_yp_"
	.byte	0x1
	.value	0x166
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2701
	.uleb128 0x36
	.long	0x3ee2
	.string	"alloc_mem"
	.byte	0x1
	.value	0x172
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x31
	.string	"df"
	.byte	0x1
	.value	0x171
	.long	0x3c7a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x173
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	0x3f0f
	.string	"free_mem"
	.byte	0x1
	.value	0x185
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x31
	.string	"df"
	.byte	0x1
	.value	0x184
	.long	0x3c7a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.long	0x3f77
	.string	"free_all_mem"
	.byte	0x1
	.value	0x190
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x31
	.string	"df"
	.byte	0x1
	.value	0x18f
	.long	0x3c7a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x191
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x32
	.string	"__o"
	.byte	0x1
	.value	0x199
	.long	0x19d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"__obj"
	.byte	0x1
	.value	0x199
	.long	0x563
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x3fe9
	.string	"one_pass"
	.byte	0x1
	.value	0x1a6
	.byte	0x1
	.long	0x211
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x31
	.string	"df"
	.byte	0x1
	.value	0x1a4
	.long	0x3c7a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"rebuild"
	.byte	0x1
	.value	0x1a5
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"ticks"
	.byte	0x1
	.value	0x1a7
	.long	0x546
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"something_spilled"
	.byte	0x1
	.value	0x1a8
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x4204
	.string	"init_ra"
	.byte	0x1
	.value	0x1cf
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x1d0
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.string	"rs"
	.byte	0x1
	.value	0x1d1
	.long	0x2701
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x38
	.long	0x404b
	.byte	0x8
	.byte	0x1
	.value	0x1d3
	.uleb128 0xd
	.string	"from"
	.byte	0x1
	.value	0x1d3
	.long	0x89b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"to"
	.byte	0x1
	.value	0x1d3
	.long	0x89b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.value	0x1d4
	.long	0x460
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x32
	.string	"need_fp"
	.byte	0x1
	.value	0x1d6
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	0x409b
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x35
	.long	.LASF18
	.byte	0x1
	.value	0x1e0
	.long	0x3b85
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x1e0
	.long	0x3b85
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x2a
	.long	0x40c8
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x32
	.string	"byte"
	.byte	0x1
	.value	0x203
	.long	0x4a4
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x35
	.long	.LASF5
	.byte	0x1
	.value	0x204
	.long	0x4a4
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.byte	0x0
	.uleb128 0x2a
	.long	0x4168
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0x210
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	0x4113
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x35
	.long	.LASF18
	.byte	0x1
	.value	0x211
	.long	0x3b85
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x211
	.long	0x3b85
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2a
	.long	0x413f
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x35
	.long	.LASF18
	.byte	0x1
	.value	0x212
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x212
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x28
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x35
	.long	.LASF18
	.byte	0x1
	.value	0x215
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x215
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x41d9
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x32
	.string	"reg"
	.byte	0x1
	.value	0x21e
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF4
	.byte	0x1
	.value	0x21e
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	0x41b0
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x35
	.long	.LASF18
	.byte	0x1
	.value	0x21f
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x28
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x35
	.long	.LASF18
	.byte	0x1
	.value	0x229
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF19
	.byte	0x1
	.value	0x229
	.long	0x3b85
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.string	"eliminables"
	.byte	0x1
	.value	0x1d3
	.long	0x43a8
	.byte	0x5
	.byte	0x3
	.long	eliminables.12183
	.uleb128 0x2e
	.long	.LASF17
	.long	0x43ad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12238
	.byte	0x0
	.uleb128 0x36
	.long	0x42b9
	.string	"check_df"
	.byte	0x1
	.value	0x242
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x31
	.string	"df"
	.byte	0x1
	.value	0x241
	.long	0x3c7a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"link"
	.byte	0x1
	.value	0x243
	.long	0x2cbc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"insn"
	.byte	0x1
	.value	0x244
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"regno"
	.byte	0x1
	.value	0x245
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"ui"
	.byte	0x1
	.value	0x246
	.long	0x460
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x247
	.long	0x27c1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"empty_defs"
	.byte	0x1
	.value	0x248
	.long	0x27c1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"empty_uses"
	.byte	0x1
	.value	0x249
	.long	0x27c1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF17
	.long	0x4393
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12535
	.byte	0x0
	.uleb128 0x39
	.long	0x437d
	.byte	0x1
	.string	"reg_alloc"
	.byte	0x1
	.value	0x288
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x32
	.string	"changed"
	.byte	0x1
	.value	0x289
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"ra_dump_file"
	.byte	0x1
	.value	0x28a
	.long	0x437d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"last"
	.byte	0x1
	.value	0x28b
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x4362
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.value	0x296
	.long	0x2909
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x32
	.string	"bb"
	.byte	0x1
	.value	0x299
	.long	0x2b8a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x32
	.string	"insns"
	.byte	0x1
	.value	0x29d
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x32
	.string	"insn"
	.byte	0x1
	.value	0x2f8
	.long	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x56b
	.uleb128 0xf
	.long	0x4393
	.long	0x209
	.uleb128 0x10
	.long	0x477
	.byte	0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x4383
	.uleb128 0xf
	.long	0x43a8
	.long	0x4023
	.uleb128 0x10
	.long	0x477
	.byte	0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x4398
	.uleb128 0x8
	.long	0x88b
	.uleb128 0xf
	.long	0x43c2
	.long	0x209
	.uleb128 0x10
	.long	0x477
	.byte	0xb
	.byte	0x0
	.uleb128 0x8
	.long	0x43b2
	.uleb128 0xf
	.long	0x43d7
	.long	0x209
	.uleb128 0x10
	.long	0x477
	.byte	0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x43c7
	.uleb128 0x29
	.string	"ra_obstack"
	.byte	0x1
	.byte	0x55
	.long	0x18a7
	.byte	0x5
	.byte	0x3
	.long	ra_obstack
	.uleb128 0x29
	.string	"refs_for_insn_df"
	.byte	0x1
	.byte	0xe8
	.long	0x3169
	.byte	0x5
	.byte	0x3
	.long	refs_for_insn_df
	.uleb128 0x32
	.string	"ticks_build"
	.byte	0x1
	.value	0x19c
	.long	0x546
	.byte	0x5
	.byte	0x3
	.long	ticks_build
	.uleb128 0x32
	.string	"ticks_rebuild"
	.byte	0x1
	.value	0x19d
	.long	0x546
	.byte	0x5
	.byte	0x3
	.long	ticks_rebuild
	.uleb128 0x3a
	.string	"target_flags"
	.byte	0xe
	.byte	0x21
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x446f
	.long	0x209
	.uleb128 0x3b
	.uleb128 0x10
	.long	0x477
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3c
	.string	"mips_hard_regno_mode_ok"
	.byte	0xe
	.value	0x778
	.long	0x445e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x44a1
	.long	0xaef
	.uleb128 0x10
	.long	0x477
	.byte	0x35
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF2
	.byte	0x8
	.byte	0x34
	.long	0x44ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x4491
	.uleb128 0xf
	.long	0x44c3
	.long	0x4a4
	.uleb128 0x10
	.long	0x477
	.byte	0x35
	.byte	0x0
	.uleb128 0x3a
	.string	"mode_size"
	.byte	0x8
	.byte	0x59
	.long	0x44d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x44b3
	.uleb128 0xf
	.long	0x44eb
	.long	0x209
	.uleb128 0x10
	.long	0x477
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3a
	.string	"rtx_class"
	.byte	0x7
	.byte	0x3f
	.long	0x44fe
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x44db
	.uleb128 0x3c
	.string	"no_new_pseudos"
	.byte	0x7
	.value	0x76e
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"reg_equiv_memory_loc"
	.byte	0x11
	.byte	0xa8
	.long	0x17d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"cfun"
	.byte	0x12
	.value	0x202
	.long	0x2680
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"fixed_reg_set"
	.byte	0x5
	.value	0x18f
	.long	0x2701
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x4577
	.long	0x26e8
	.uleb128 0x10
	.long	0x477
	.byte	0x18
	.uleb128 0x10
	.long	0x477
	.byte	0x2
	.byte	0x0
	.uleb128 0x3c
	.string	"reg_class_contents"
	.byte	0x5
	.value	0x1cb
	.long	0x4561
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"last_basic_block"
	.byte	0xa
	.byte	0xf6
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x45be
	.long	0x161c
	.uleb128 0x10
	.long	0x477
	.byte	0x1
	.byte	0x0
	.uleb128 0x3c
	.string	"entry_exit_blocks"
	.byte	0xa
	.value	0x139
	.long	0x45ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"max_regno"
	.byte	0x13
	.byte	0x2c
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"rtl_dump_file"
	.byte	0x14
	.value	0x1b8
	.long	0x437d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flag_omit_frame_pointer"
	.byte	0x15
	.value	0x151
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"frame_pointer_needed"
	.byte	0x15
	.value	0x26a
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"insn_df"
	.byte	0x1
	.byte	0xe7
	.long	0x465c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_df
	.uleb128 0x3
	.byte	0x4
	.long	0x3963
	.uleb128 0x3e
	.string	"insn_df_max_uid"
	.byte	0x1
	.byte	0xe6
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_df_max_uid
	.uleb128 0x3e
	.string	"igraph"
	.byte	0x1
	.byte	0x69
	.long	0x2828
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	igraph
	.uleb128 0x3e
	.string	"sup_igraph"
	.byte	0x1
	.byte	0x6a
	.long	0x2828
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sup_igraph
	.uleb128 0x3e
	.string	"insns_with_deaths"
	.byte	0x1
	.byte	0x70
	.long	0x2828
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insns_with_deaths
	.uleb128 0x3e
	.string	"death_insns_max_uid"
	.byte	0x1
	.byte	0x71
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	death_insns_max_uid
	.uleb128 0x3e
	.string	"web_parts"
	.byte	0x1
	.byte	0x73
	.long	0x3837
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	web_parts
	.uleb128 0x3e
	.string	"num_webs"
	.byte	0x1
	.byte	0x75
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	num_webs
	.uleb128 0x3e
	.string	"num_subwebs"
	.byte	0x1
	.byte	0x76
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	num_subwebs
	.uleb128 0x3e
	.string	"num_allwebs"
	.byte	0x1
	.byte	0x77
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	num_allwebs
	.uleb128 0x3e
	.string	"id2web"
	.byte	0x1
	.byte	0x78
	.long	0x4768
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	id2web
	.uleb128 0x3
	.byte	0x4
	.long	0x3615
	.uleb128 0xf
	.long	0x477e
	.long	0x3615
	.uleb128 0x10
	.long	0x477
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3e
	.string	"hardreg2web"
	.byte	0x1
	.byte	0x79
	.long	0x476e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	hardreg2web
	.uleb128 0x3e
	.string	"def2web"
	.byte	0x1
	.byte	0x7a
	.long	0x4768
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	def2web
	.uleb128 0x3e
	.string	"use2web"
	.byte	0x1
	.byte	0x7b
	.long	0x4768
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use2web
	.uleb128 0x3e
	.string	"wl_moves"
	.byte	0x1
	.byte	0x7c
	.long	0x38b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	wl_moves
	.uleb128 0x3e
	.string	"ra_reg_renumber"
	.byte	0x1
	.byte	0x7e
	.long	0x47f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ra_reg_renumber
	.uleb128 0x3
	.byte	0x4
	.long	0x4ef
	.uleb128 0x3e
	.string	"ra_max_regno"
	.byte	0x1
	.byte	0x7d
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ra_max_regno
	.uleb128 0x3e
	.string	"df"
	.byte	0x1
	.byte	0x7f
	.long	0x3c7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	df
	.uleb128 0x3e
	.string	"live_at_end"
	.byte	0x1
	.byte	0x80
	.long	0x4845
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	live_at_end
	.uleb128 0x3
	.byte	0x4
	.long	0x27c1
	.uleb128 0x3e
	.string	"ra_pass"
	.byte	0x1
	.byte	0x81
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ra_pass
	.uleb128 0x3e
	.string	"max_normal_pseudo"
	.byte	0x1
	.byte	0x82
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	max_normal_pseudo
	.uleb128 0x3e
	.string	"an_unusable_color"
	.byte	0x1
	.byte	0x83
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	an_unusable_color
	.uleb128 0xf
	.long	0x48b1
	.long	0x36c8
	.uleb128 0x10
	.long	0x477
	.byte	0xb
	.byte	0x0
	.uleb128 0x3e
	.string	"web_lists"
	.byte	0x1
	.byte	0x86
	.long	0x48a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	web_lists
	.uleb128 0x3e
	.string	"last_def_id"
	.byte	0x1
	.byte	0x88
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_def_id
	.uleb128 0x3e
	.string	"last_use_id"
	.byte	0x1
	.byte	0x89
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_use_id
	.uleb128 0x3e
	.string	"last_max_uid"
	.byte	0x1
	.byte	0x8b
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_max_uid
	.uleb128 0x3e
	.string	"last_num_webs"
	.byte	0x1
	.byte	0x8a
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_num_webs
	.uleb128 0x3e
	.string	"last_check_uses"
	.byte	0x1
	.byte	0x8c
	.long	0x2828
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_check_uses
	.uleb128 0x3e
	.string	"remember_conflicts"
	.byte	0x1
	.byte	0x8d
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	remember_conflicts
	.uleb128 0x3e
	.string	"orig_max_uid"
	.byte	0x1
	.byte	0x8f
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	orig_max_uid
	.uleb128 0x3e
	.string	"never_use_colors"
	.byte	0x1
	.byte	0x91
	.long	0x2701
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	never_use_colors
	.uleb128 0x3f
	.long	.LASF15
	.byte	0x1
	.byte	0x92
	.long	0x4561
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	usable_regs
	.uleb128 0xf
	.long	0x49cf
	.long	0x460
	.uleb128 0x10
	.long	0x477
	.byte	0x18
	.byte	0x0
	.uleb128 0x3e
	.string	"num_free_regs"
	.byte	0x1
	.byte	0x93
	.long	0x49bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	num_free_regs
	.uleb128 0xf
	.long	0x4a01
	.long	0x26e8
	.uleb128 0x10
	.long	0x477
	.byte	0x35
	.uleb128 0x10
	.long	0x477
	.byte	0x2
	.byte	0x0
	.uleb128 0x3e
	.string	"hardregs_for_mode"
	.byte	0x1
	.byte	0x94
	.long	0x49eb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	hardregs_for_mode
	.uleb128 0xf
	.long	0x4a31
	.long	0x4a4
	.uleb128 0x10
	.long	0x477
	.byte	0xff
	.byte	0x0
	.uleb128 0x3e
	.string	"byte2bitcount"
	.byte	0x1
	.byte	0x95
	.long	0x4a21
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	byte2bitcount
	.uleb128 0x3e
	.string	"debug_new_regalloc"
	.byte	0x1
	.byte	0x97
	.long	0x460
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	debug_new_regalloc
	.uleb128 0x3e
	.string	"flag_ra_biased"
	.byte	0x1
	.byte	0x98
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ra_biased
	.uleb128 0x3e
	.string	"flag_ra_improved_spilling"
	.byte	0x1
	.byte	0x99
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ra_improved_spilling
	.uleb128 0x3e
	.string	"flag_ra_ir_spilling"
	.byte	0x1
	.byte	0x9a
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ra_ir_spilling
	.uleb128 0x3e
	.string	"flag_ra_optimistic_coalescing"
	.byte	0x1
	.byte	0x9b
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ra_optimistic_coalescing
	.uleb128 0x3e
	.string	"flag_ra_break_aliases"
	.byte	0x1
	.byte	0x9c
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ra_break_aliases
	.uleb128 0x3e
	.string	"flag_ra_merge_spill_costs"
	.byte	0x1
	.byte	0x9d
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ra_merge_spill_costs
	.uleb128 0x3e
	.string	"flag_ra_spill_every_use"
	.byte	0x1
	.byte	0x9e
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ra_spill_every_use
	.uleb128 0x3e
	.string	"flag_ra_dump_notes"
	.byte	0x1
	.byte	0x9f
	.long	0x211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ra_dump_notes
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x38
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x3f
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x3e7
	.value	0x2
	.long	.Ldebug_info0
	.long	0x4b95
	.long	0x39b8
	.string	"ra_alloc"
	.long	0x3a56
	.string	"ra_calloc"
	.long	0x3b01
	.string	"hard_regs_count"
	.long	0x3b8b
	.string	"ra_emit_move_insn"
	.long	0x3ca0
	.string	"find_subweb"
	.long	0x3d02
	.string	"find_subweb_2"
	.long	0x3d6e
	.string	"find_web_for_subweb_1"
	.long	0x3db1
	.string	"hard_regs_intersect_p"
	.long	0x42b9
	.string	"reg_alloc"
	.long	0x4646
	.string	"insn_df"
	.long	0x4662
	.string	"insn_df_max_uid"
	.long	0x4680
	.string	"igraph"
	.long	0x4695
	.string	"sup_igraph"
	.long	0x46ae
	.string	"insns_with_deaths"
	.long	0x46ce
	.string	"death_insns_max_uid"
	.long	0x46f0
	.string	"web_parts"
	.long	0x4708
	.string	"num_webs"
	.long	0x471f
	.string	"num_subwebs"
	.long	0x4739
	.string	"num_allwebs"
	.long	0x4753
	.string	"id2web"
	.long	0x477e
	.string	"hardreg2web"
	.long	0x4798
	.string	"def2web"
	.long	0x47ae
	.string	"use2web"
	.long	0x47c4
	.string	"wl_moves"
	.long	0x47db
	.string	"ra_reg_renumber"
	.long	0x47ff
	.string	"ra_max_regno"
	.long	0x481a
	.string	"df"
	.long	0x482b
	.string	"live_at_end"
	.long	0x484b
	.string	"ra_pass"
	.long	0x4861
	.string	"max_normal_pseudo"
	.long	0x4881
	.string	"an_unusable_color"
	.long	0x48b1
	.string	"web_lists"
	.long	0x48c9
	.string	"last_def_id"
	.long	0x48e3
	.string	"last_use_id"
	.long	0x48fd
	.string	"last_max_uid"
	.long	0x4918
	.string	"last_num_webs"
	.long	0x4934
	.string	"last_check_uses"
	.long	0x4952
	.string	"remember_conflicts"
	.long	0x4973
	.string	"orig_max_uid"
	.long	0x498e
	.string	"never_use_colors"
	.long	0x49ad
	.string	"usable_regs"
	.long	0x49cf
	.string	"num_free_regs"
	.long	0x4a01
	.string	"hardregs_for_mode"
	.long	0x4a31
	.string	"byte2bitcount"
	.long	0x4a4d
	.string	"debug_new_regalloc"
	.long	0x4a6e
	.string	"flag_ra_biased"
	.long	0x4a8b
	.string	"flag_ra_improved_spilling"
	.long	0x4ab3
	.string	"flag_ra_ir_spilling"
	.long	0x4ad5
	.string	"flag_ra_optimistic_coalescing"
	.long	0x4b01
	.string	"flag_ra_break_aliases"
	.long	0x4b25
	.string	"flag_ra_merge_spill_costs"
	.long	0x4b4d
	.string	"flag_ra_spill_every_use"
	.long	0x4b73
	.string	"flag_ra_dump_notes"
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
.LASF7:
	.string	"next"
.LASF15:
	.string	"usable_regs"
.LASF13:
	.string	"num_uses"
.LASF11:
	.string	"reg_info"
.LASF18:
	.string	"scan_tp_"
.LASF4:
	.string	"size"
.LASF3:
	.string	"mem_attrs"
.LASF8:
	.string	"sequence_stack"
.LASF17:
	.string	"__FUNCTION__"
.LASF14:
	.string	"num_defs"
.LASF5:
	.string	"count"
.LASF1:
	.string	"_IO_FILE"
.LASF16:
	.string	"size_word"
.LASF2:
	.string	"mode_class"
.LASF10:
	.string	"function_frequency"
.LASF9:
	.string	"sequence_rtl_expr"
.LASF19:
	.string	"scan_fp_"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"crosses_call"
.LASF6:
	.string	"flags"
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
