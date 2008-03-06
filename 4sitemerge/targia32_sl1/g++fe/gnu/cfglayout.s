	.file	"cfglayout.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	unlink_insn_chain, @function
unlink_insn_chain:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cfglayout.c"
	.loc 1 68 0
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
	.loc 1 69 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 70 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 72 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 73 0
	movl	12(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 74 0
	cmpl	$0, -12(%ebp)
	je	.L2
	.loc 1 75 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
.L2:
	.loc 1 76 0
	cmpl	$0, -8(%ebp)
	je	.L4
	.loc 1 77 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	jmp	.L6
.L4:
	.loc 1 79 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_last_insn@PLT
.L6:
	.loc 1 80 0
	cmpl	$0, -12(%ebp)
	jne	.L7
	.loc 1 81 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_first_insn@PLT
.L7:
	.loc 1 82 0
	movl	8(%ebp), %eax
	.loc 1 83 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	unlink_insn_chain, .-unlink_insn_chain
	.type	skip_insns_after_block, @function
skip_insns_after_block:
.LFB16:
	.loc 1 92 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$52, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 95 0
	movl	$0, -12(%ebp)
	.loc 1 96 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L11
	.loc 1 97 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L11:
	.loc 1 99 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L37
.L14:
	.loc 1 101 0
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L15
	.loc 1 104 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$46, -28(%ebp)
	je	.L19
	cmpl	$47, -28(%ebp)
	je	.L20
	cmpl	$45, -28(%ebp)
	je	.L18
	jmp	.L15
.L18:
	.loc 1 107 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 108 0
	jmp	.L13
.L20:
	.loc 1 111 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$-97, -24(%ebp)
	je	.L23
	cmpl	$-97, -24(%ebp)
	jg	.L24
	jmp	.L13
.L24:
	cmpl	$-95, -24(%ebp)
	je	.L23
	jmp	.L13
.L23:
	.loc 1 115 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 116 0
	jmp	.L13
.L19:
	.loc 1 128 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L15
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L15
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L27
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L15
.L27:
	.loc 1 133 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 134 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
.L13:
.L37:
	.loc 1 99 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L14
.L15:
	.loc 1 156 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L29
.L30:
	.loc 1 158 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 159 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L31
	.loc 1 160 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	addl	$99, %eax
	movl	%eax, -32(%ebp)
	cmpl	$11, -32(%ebp)
	ja	.L33
	movl	$1, %eax
	movzbl	-32(%ebp), %ecx
	sall	%cl, %eax
	andl	$2069, %eax
	testl	%eax, %eax
	jne	.L31
.L33:
	.loc 1 168 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns@PLT
.L31:
	.loc 1 156 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L29:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L30
	.loc 1 172 0
	movl	-16(%ebp), %eax
	.loc 1 173 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	skip_insns_after_block, .-skip_insns_after_block
	.section	.rodata
.LC0:
	.string	"Emitting label for block %d\n"
	.text
	.type	label_for_bb, @function
label_for_bb:
.LFB17:
	.loc 1 180 0
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
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 183 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L39
	.loc 1 185 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L41
	.loc 1 186 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L41:
	.loc 1 188 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, -8(%ebp)
.L39:
	.loc 1 191 0
	movl	-8(%ebp), %eax
	.loc 1 192 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	label_for_bb, .-label_for_bb
	.type	record_effective_endpoints, @function
record_effective_endpoints:
.LFB18:
	.loc 1 199 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%esi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$32, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 200 0
	call	get_insns@PLT
	movl	%eax, -20(%ebp)
	.loc 1 203 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L45
.L46:
.LBB2:
	.loc 1 207 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L47
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L47
	.loc 1 208 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink_insn_chain
	movl	%eax, (%esi)
.L47:
	.loc 1 210 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	skip_insns_after_block
	movl	%eax, -12(%ebp)
	.loc 1 211 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L50
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L50
	.loc 1 212 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	unlink_insn_chain
	movl	%eax, 4(%esi)
.L50:
	.loc 1 213 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.LBE2:
	.loc 1 203 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L45:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L46
	.loc 1 216 0
	movl	-20(%ebp), %eax
	movl	%eax, function_footer@GOTOFF(%ebx)
	.loc 1 217 0
	movl	function_footer@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L56
	.loc 1 218 0
	call	get_last_insn@PLT
	movl	function_footer@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	unlink_insn_chain
	movl	%eax, function_footer@GOTOFF(%ebx)
.L56:
	.loc 1 219 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	record_effective_endpoints, .-record_effective_endpoints
.globl scope_to_insns_initialize
	.type	scope_to_insns_initialize, @function
scope_to_insns_initialize:
.LFB19:
	.loc 1 225 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$36, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 226 0
	movl	$0, -16(%ebp)
	.loc 1 229 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	jmp	.L58
.L59:
	.loc 1 231 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 233 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	active_insn_p@PLT
	testl	%eax, %eax
	je	.L60
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L60
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L60
	.loc 1 236 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 233 0
	jmp	.L64
.L60:
	.loc 1 237 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L64
	.loc 1 239 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$-98, -24(%ebp)
	je	.L66
	cmpl	$-97, -24(%ebp)
	je	.L67
	jmp	.L64
.L66:
	.loc 1 242 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 243 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 244 0
	jmp	.L64
.L67:
	.loc 1 246 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 247 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L64:
	.loc 1 229 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L58:
	cmpl	$0, -12(%ebp)
	jne	.L59
	.loc 1 257 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	68(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	set_block_levels
	.loc 1 258 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	scope_to_insns_initialize, .-scope_to_insns_initialize
	.type	set_block_levels, @function
set_block_levels:
.LFB20:
	.loc 1 267 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	subl	$8, %esp
.LCFI23:
	.loc 1 268 0
	jmp	.L71
.L72:
	.loc 1 270 0
	movl	12(%ebp), %eax
	andl	$1073741823, %eax
	movl	8(%ebp), %edx
	leal	0(,%eax,4), %ecx
	movl	16(%edx), %eax
	andl	$3, %eax
	orl	%ecx, %eax
	movl	%eax, 16(%edx)
	.loc 1 271 0
	movl	12(%ebp), %edx
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	set_block_levels
	.loc 1 272 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L71:
	.loc 1 268 0
	cmpl	$0, 8(%ebp)
	jne	.L72
	.loc 1 274 0
	leave
	ret
.LFE20:
	.size	set_block_levels, .-set_block_levels
.globl choose_inner_scope
	.type	choose_inner_scope, @function
choose_inner_scope:
.LFB21:
	.loc 1 280 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	subl	$4, %esp
.LCFI26:
	.loc 1 281 0
	cmpl	$0, 8(%ebp)
	jne	.L76
	.loc 1 282 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L78
.L76:
	.loc 1 283 0
	cmpl	$0, 12(%ebp)
	jne	.L79
	.loc 1 284 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L78
.L79:
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	cmpl	%eax, %edx
	jle	.L81
	.loc 1 286 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L78
.L81:
	.loc 1 287 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
.L78:
	movl	-4(%ebp), %eax
	.loc 1 288 0
	leave
	ret
.LFE21:
	.size	choose_inner_scope, .-choose_inner_scope
	.section	.rodata
	.type	__FUNCTION__.11749, @object
	.size	__FUNCTION__.11749, 13
__FUNCTION__.11749:
	.string	"change_scope"
	.align 4
.LC1:
	.string	"../../../kg++fe/gnu/cfglayout.c"
	.text
	.type	change_scope, @function
change_scope:
.LFB22:
	.loc 1 296 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$52, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 297 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 298 0
	movl	$0, -24(%ebp)
	.loc 1 299 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 302 0
	jmp	.L102
.L86:
	.loc 1 304 0
	cmpl	$0, -20(%ebp)
	je	.L87
	cmpl	$0, -16(%ebp)
	jne	.L89
.L87:
	.loc 1 305 0
	leal	__FUNCTION__.11749@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$305, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L89:
	.loc 1 306 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	cmpl	%eax, %edx
	jle	.L90
	.loc 1 307 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L85
.L90:
	.loc 1 308 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	cmpl	%eax, %edx
	jge	.L92
	.loc 1 309 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L85
.L92:
	.loc 1 312 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 313 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
.L85:
.L102:
	.loc 1 302 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L86
	.loc 1 316 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 319 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 320 0
	jmp	.L95
.L96:
.LBB3:
	.loc 1 322 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-97, (%esp)
	call	emit_note_before@PLT
	movl	%eax, -8(%ebp)
	.loc 1 323 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 324 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
.L95:
.LBE3:
	.loc 1 320 0
	movl	-12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L96
	.loc 1 328 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 329 0
	jmp	.L98
.L99:
	.loc 1 331 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-98, (%esp)
	call	emit_note_before@PLT
	movl	%eax, -28(%ebp)
	.loc 1 332 0
	movl	-28(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 333 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
.L98:
	.loc 1 329 0
	movl	-12(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L99
	.loc 1 335 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	change_scope, .-change_scope
.globl scope_to_insns_finalize
	.type	scope_to_insns_finalize, @function
scope_to_insns_finalize:
.LFB23:
	.loc 1 342 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$52, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 343 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 346 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	.loc 1 347 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	active_insn_p@PLT
	testl	%eax, %eax
	jne	.L106
	.loc 1 348 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 349 0
	jmp	.L106
.L107:
.LBB4:
	.loc 1 353 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 356 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L108
.LBB5:
	.loc 1 359 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 361 0
	movl	$0, -16(%ebp)
	.loc 1 362 0
	movl	$0, -12(%ebp)
	jmp	.L110
.L111:
	.loc 1 363 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	choose_inner_scope@PLT
	movl	%eax, -16(%ebp)
	.loc 1 362 0
	addl	$1, -12(%ebp)
.L110:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	.L111
.L108:
.LBE5:
	.loc 1 366 0
	cmpl	$0, -16(%ebp)
	je	.L112
	.loc 1 369 0
	movl	-16(%ebp), %eax
	cmpl	-28(%ebp), %eax
	je	.L112
	.loc 1 371 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	change_scope
	.loc 1 372 0
	movl	-16(%ebp), %eax
	movl	%eax, -28(%ebp)
.L112:
.LBE4:
	.loc 1 349 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -24(%ebp)
.L106:
	cmpl	$0, -24(%ebp)
	jne	.L107
	.loc 1 377 0
	movl	$-99, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 378 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	change_scope
	.loc 1 379 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 381 0
	call	reorder_blocks@PLT
	.loc 1 382 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	scope_to_insns_finalize, .-scope_to_insns_finalize
	.section	.rodata
	.type	__FUNCTION__.11835, @object
	.size	__FUNCTION__.11835, 20
__FUNCTION__.11835:
	.string	"fixup_reorder_chain"
.globl __divdi3
.LC2:
	.string	"Reordered sequence:\n"
.LC3:
	.string	" %i "
.LC4:
	.string	"duplicate of %i "
.LC5:
	.string	"compensation "
.LC6:
	.string	"bb %i "
.LC7:
	.string	" [%i]\n"
	.text
	.type	fixup_reorder_chain, @function
fixup_reorder_chain:
.LFB24:
	.loc 1 388 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%edi
.LCFI37:
	pushl	%esi
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$124, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 391 0
	movl	$0, -56(%ebp)
	.loc 1 396 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 397 0
	jmp	.L118
.L119:
	.loc 1 400 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L120
	.loc 1 402 0
	cmpl	$0, -56(%ebp)
	je	.L122
	.loc 1 403 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L124
.L122:
	.loc 1 405 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	set_first_insn@PLT
.L124:
	.loc 1 406 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 407 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 408 0
	jmp	.L125
.L126:
	.loc 1 409 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
.L125:
	.loc 1 408 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L126
.L120:
	.loc 1 411 0
	cmpl	$0, -56(%ebp)
	je	.L127
	.loc 1 412 0
	movl	-68(%ebp), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L129
.L127:
	.loc 1 414 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	set_first_insn@PLT
.L129:
	.loc 1 415 0
	movl	-68(%ebp), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 416 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 417 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L130
	.loc 1 419 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 420 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 421 0
	jmp	.L132
.L133:
	.loc 1 422 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
.L132:
	.loc 1 421 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L133
.L130:
	.loc 1 398 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
	addl	$1, -60(%ebp)
.L118:
	.loc 1 397 0
	cmpl	$0, -68(%ebp)
	jne	.L119
	.loc 1 426 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -60(%ebp)
	je	.L135
	.loc 1 427 0
	leal	__FUNCTION__.11835@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$427, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L135:
	.loc 1 429 0
	movl	function_footer@GOTOFF(%ebx), %eax
	movl	-56(%ebp), %edx
	movl	%eax, 20(%edx)
	.loc 1 430 0
	movl	function_footer@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L139
	.loc 1 431 0
	movl	function_footer@GOTOFF(%ebx), %edx
	movl	-56(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 433 0
	jmp	.L139
.L140:
	.loc 1 434 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
.L139:
	.loc 1 433 0
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L140
	.loc 1 436 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	set_last_insn@PLT
	.loc 1 444 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L142
.L143:
.LBB6:
	.loc 1 450 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L144
	.loc 1 455 0
	movl	$0, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 456 0
	movl	-68(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L146
.L147:
	.loc 1 457 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L148
	.loc 1 458 0
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L150
.L148:
	.loc 1 459 0
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L150
	.loc 1 460 0
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
.L150:
	.loc 1 456 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L146:
	cmpl	$0, -44(%ebp)
	jne	.L147
	.loc 1 462 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 463 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L153
	.loc 1 465 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L155
	.loc 1 468 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %edx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L144
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L158
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L144
.L158:
	.loc 1 473 0
	cmpl	$0, -48(%ebp)
	jne	.L160
	.loc 1 474 0
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
.L160:
	.loc 1 484 0
	cmpl	$0, -48(%ebp)
	jne	.L162
.LBB7:
	.loc 1 489 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	unchecked_make_edge@PLT
	movl	%eax, -28(%ebp)
	.loc 1 491 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	.loc 1 492 0
	cmpl	$0, -32(%ebp)
	je	.L178
.LBB8:
	.loc 1 494 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 496 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 497 0
	movl	-52(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	-24(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -108(%ebp)
	movl	-112(%ebp), %ecx
	imull	%edi, %ecx
	movl	-108(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -92(%ebp)
	addl	-92(%ebp), %ecx
	movl	-112(%ebp), %eax
	mull	%esi
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	addl	-108(%ebp), %ecx
	movl	%ecx, -108(%ebp)
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__divdi3@PLT
	movl	-28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 498 0
	movl	-52(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 499 0
	movl	-52(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-52(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 500 0
	movl	-52(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jns	.L166
	.loc 1 501 0
	movl	-52(%ebp), %eax
	movl	$0, 28(%eax)
.L166:
	.loc 1 502 0
	movl	-52(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	testl	%edx, %edx
	jns	.L178
	.loc 1 503 0
	movl	-52(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	jmp	.L178
.L162:
.LBE8:
.LBE7:
	.loc 1 510 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %edx
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L170
.LBB9:
	.loc 1 512 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -20(%ebp)
	.loc 1 514 0
	cmpl	$0, -20(%ebp)
	je	.L178
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	cmpl	$0, -84(%ebp)
	jg	.L178
	cmpl	$0, -84(%ebp)
	js	.L175
	cmpl	$4999, -88(%ebp)
	ja	.L178
.L175:
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	label_for_bb
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	je	.L178
	.loc 1 519 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 520 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 521 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	update_br_prob_note@PLT
	.loc 1 522 0
	movl	-52(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L178
.L170:
.LBE9:
	.loc 1 528 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	label_for_bb
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	je	.L178
	.loc 1 531 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 532 0
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 533 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	update_br_prob_note@PLT
	.loc 1 534 0
	jmp	.L144
.L155:
	.loc 1 537 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	jne	.L144
	.loc 1 543 0
	cmpl	$0, -52(%ebp)
	je	.L144
	.loc 1 553 0
	leal	__FUNCTION__.11835@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$553, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L153:
	.loc 1 562 0
	cmpl	$0, -52(%ebp)
	je	.L144
	.loc 1 566 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %edx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L144
	.loc 1 570 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L178
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L144
.L178:
	.loc 1 575 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	force_nonfallthru@PLT
	movl	%eax, -36(%ebp)
	.loc 1 576 0
	cmpl	$0, -36(%ebp)
	je	.L144
	.loc 1 578 0
	movl	$20, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_aux_for_block@PLT
	.loc 1 579 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	movl	$1, 16(%eax)
	.loc 1 580 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 581 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 583 0
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
.L144:
.LBE6:
	.loc 1 444 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
.L142:
	cmpl	$0, -68(%ebp)
	jne	.L143
	.loc 1 589 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L186
	.loc 1 591 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 592 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L188
.L189:
	.loc 1 594 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 595 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L190
	.loc 1 596 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L192
.L190:
	.loc 1 598 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	forwarder_block_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L193
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L193
	.loc 1 599 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 598 0
	jmp	.L192
.L193:
	.loc 1 601 0
	movl	-68(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L192:
	.loc 1 602 0
	movl	-68(%ebp), %eax
	movl	72(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 592 0
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
	addl	$1, -60(%ebp)
.L188:
	cmpl	$0, -68(%ebp)
	jne	.L189
.L186:
	.loc 1 606 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -64(%ebp)
	.loc 1 607 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 608 0
	movl	$0, -60(%ebp)
	.loc 1 610 0
	jmp	.L196
.L197:
	.loc 1 612 0
	movl	-68(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 613 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-60(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 615 0
	movl	-68(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 616 0
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 610 0
	movl	-68(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
	addl	$1, -60(%ebp)
.L196:
	cmpl	$0, -68(%ebp)
	jne	.L197
	.loc 1 618 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 619 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 620 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	fixup_reorder_chain, .-fixup_reorder_chain
	.section	.rodata
	.type	__FUNCTION__.12075, @object
	.size	__FUNCTION__.12075, 18
__FUNCTION__.12075:
	.string	"verify_insn_chain"
	.text
.globl verify_insn_chain
	.type	verify_insn_chain, @function
verify_insn_chain:
.LFB25:
	.loc 1 630 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$52, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 634 0
	movl	$0, -20(%ebp)
	movl	$1, -12(%ebp)
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	.loc 1 635 0
	jmp	.L201
.L202:
	.loc 1 637 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L203
	.loc 1 638 0
	leal	__FUNCTION__.12075@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$638, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L203:
	.loc 1 636 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	addl	$1, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L201:
	.loc 1 635 0
	cmpl	$0, -24(%ebp)
	jne	.L202
	.loc 1 640 0
	call	get_last_insn@PLT
	cmpl	-20(%ebp), %eax
	je	.L206
	.loc 1 641 0
	leal	__FUNCTION__.12075@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$641, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L206:
	.loc 1 643 0
	movl	$0, -16(%ebp)
	movl	$1, -8(%ebp)
	call	get_last_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 644 0
	jmp	.L208
.L209:
	.loc 1 646 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L210
	.loc 1 647 0
	leal	__FUNCTION__.12075@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$647, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L210:
	.loc 1 645 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -8(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L208:
	.loc 1 644 0
	cmpl	$0, -24(%ebp)
	jne	.L209
	.loc 1 649 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L215
	.loc 1 650 0
	leal	__FUNCTION__.12075@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$650, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L215:
	.loc 1 651 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	verify_insn_chain, .-verify_insn_chain
	.section	.rodata
.LC8:
	.string	"Removing forwarder BB %i\n"
.LC9:
	.string	"Removing jump %i in BB %i\n"
	.text
	.type	cleanup_unconditional_jumps, @function
cleanup_unconditional_jumps:
.LFB26:
	.loc 1 660 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%esi
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$48, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 663 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L217
.L218:
	.loc 1 665 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L219
	.loc 1 667 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L219
	.loc 1 669 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L219
.LBB10:
	.loc 1 672 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L223
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	forwarder_block_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L223
	movl	-28(%ebp), %eax
	movl	48(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L223
.LBB11:
	.loc 1 675 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 677 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L227
	.loc 1 678 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L227:
	.loc 1 681 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
	.loc 1 682 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block@PLT
	.loc 1 683 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 672 0
	jmp	.L229
.L223:
.LBE11:
	.loc 1 685 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L219
.LBB12:
	.loc 1 687 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 689 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L231
	.loc 1 690 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L231:
	.loc 1 692 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 693 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	orl	$1, %eax
	movl	%eax, 24(%edx)
.L229:
.LBE12:
	.loc 1 698 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 699 0
	jmp	.L233
.L234:
.LBB13:
	.loc 1 703 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 705 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L235
	.loc 1 706 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_barrier@PLT
.L235:
	.loc 1 708 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L233:
.LBE13:
	.loc 1 699 0
	cmpl	$0, -24(%ebp)
	je	.L219
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L234
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L234
.L219:
.LBE10:
	.loc 1 663 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L217:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L218
	.loc 1 712 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	cleanup_unconditional_jumps, .-cleanup_unconditional_jumps
	.type	fixup_fallthru_exit_predecessor, @function
fixup_fallthru_exit_predecessor:
.LFB27:
	.loc 1 718 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	subl	$16, %esp
.LCFI52:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 720 0
	movl	$0, -8(%ebp)
	.loc 1 722 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L242
.L243:
	.loc 1 723 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L244
	.loc 1 724 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L244:
	.loc 1 722 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L242:
	cmpl	$0, -12(%ebp)
	jne	.L243
	.loc 1 726 0
	cmpl	$0, -8(%ebp)
	je	.L256
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L256
.LBB14:
	.loc 1 728 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	movl	52(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 730 0
	jmp	.L250
.L251:
	.loc 1 731 0
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L250:
	.loc 1 730 0
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L251
	.loc 1 733 0
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 734 0
	jmp	.L253
.L254:
	.loc 1 735 0
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L253:
	.loc 1 734 0
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L254
	.loc 1 737 0
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 738 0
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, 8(%eax)
.L256:
.LBE14:
	.loc 1 740 0
	leave
	ret
.LFE27:
	.size	fixup_fallthru_exit_predecessor, .-fixup_fallthru_exit_predecessor
.globl cfg_layout_can_duplicate_bb_p
	.type	cfg_layout_can_duplicate_bb_p, @function
cfg_layout_can_duplicate_bb_p:
.LFB28:
	.loc 1 747 0
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
	.loc 1 751 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 8(%ebp)
	je	.L258
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L260
.L258:
	.loc 1 752 0
	movl	$0, -24(%ebp)
	jmp	.L261
.L260:
	.loc 1 756 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L262
.L263:
	.loc 1 757 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L264
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L264
	.loc 1 758 0
	movl	$0, -24(%ebp)
	jmp	.L261
.L264:
	.loc 1 756 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L262:
	cmpl	$0, -8(%ebp)
	jne	.L263
	.loc 1 763 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L268
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L268
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L268
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L268
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L273
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L268
.L273:
	.loc 1 768 0
	movl	$0, -24(%ebp)
	jmp	.L261
.L268:
	.loc 1 769 0
	movl	$1, -24(%ebp)
.L261:
	movl	-24(%ebp), %eax
	.loc 1 770 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	cfg_layout_can_duplicate_bb_p, .-cfg_layout_can_duplicate_bb_p
	.section	.rodata
	.type	__FUNCTION__.12282, @object
	.size	__FUNCTION__.12282, 21
__FUNCTION__.12282:
	.string	"duplicate_insn_chain"
	.text
	.type	duplicate_insn_chain, @function
duplicate_insn_chain:
.LFB29:
	.loc 1 775 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$52, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 780 0
	movl	$-99, 4(%esp)
	movl	$0, (%esp)
	call	emit_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 784 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L277
.L278:
.LBB15:
	.loc 1 787 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -24(%ebp)
	cmpl	$5, -24(%ebp)
	ja	.L279
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L284@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L284:
	.long	.L280@GOTOFF
	.long	.L280@GOTOFF
	.long	.L280@GOTOFF
	.long	.L281@GOTOFF
	.long	.L285@GOTOFF
	.long	.L283@GOTOFF
	.text
.L280:
	.loc 1 795 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L285
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L285
	.loc 1 798 0
	call	get_last_insn@PLT
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_copy_of_insn_after@PLT
	movl	%eax, -8(%ebp)
	.loc 1 799 0
	jmp	.L285
.L281:
	.loc 1 805 0
	call	emit_barrier@PLT
	.loc 1 806 0
	jmp	.L285
.L283:
	.loc 1 809 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	addl	$99, %eax
	movl	%eax, -28(%ebp)
	cmpl	$16, -28(%ebp)
	ja	.L288
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-28(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$73593, %eax
	testl	%eax, %eax
	jne	.L285
	movl	-32(%ebp), %eax
	andl	$24582, %eax
	testl	%eax, %eax
	jne	.L290
	movl	-32(%ebp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	jne	.L291
	jmp	.L288
.L290:
	.loc 1 843 0
	leal	__FUNCTION__.12282@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$843, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L291:
	.loc 1 846 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	.loc 1 847 0
	jmp	.L285
.L288:
	.loc 1 850 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L293
	.loc 1 851 0
	leal	__FUNCTION__.12282@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$851, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L293:
	.loc 1 854 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	emit_note@PLT
	.loc 1 856 0
	jmp	.L285
.L279:
	.loc 1 858 0
	leal	__FUNCTION__.12282@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$858, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L285:
.LBE15:
	.loc 1 784 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L277:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L278
	.loc 1 861 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 862 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 863 0
	movl	-16(%ebp), %eax
	.loc 1 864 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	duplicate_insn_chain, .-duplicate_insn_chain
	.section	.rodata
	.type	__FUNCTION__.12317, @object
	.size	__FUNCTION__.12317, 25
__FUNCTION__.12317:
	.string	"cfg_layout_redirect_edge"
	.text
.globl cfg_layout_redirect_edge
	.type	cfg_layout_redirect_edge, @function
cfg_layout_redirect_edge:
.LFB30:
	.loc 1 871 0
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
	.loc 1 872 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 873 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 879 0
	movl	-16(%ebp), %eax
	movl	$0, 52(%eax)
	.loc 1 880 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L298
	.loc 1 883 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L300
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L300
	.loc 1 886 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	testl	%eax, %eax
	jne	.L300
	.loc 1 887 0
	leal	__FUNCTION__.12317@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$887, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L300:
	.loc 1 891 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L304
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L304
.LBB16:
	.loc 1 894 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L307
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L309
.L307:
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L309:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 895 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L304
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L304
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L304
	.loc 1 898 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L304:
.LBE16:
	.loc 1 900 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
	jmp	.L313
.L298:
	.loc 1 903 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch@PLT
.L313:
	.loc 1 906 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L314
	.loc 1 908 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	.loc 1 909 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	delete_barrier@PLT
	.loc 1 910 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	orl	$1, %eax
	movl	%eax, 24(%edx)
.L314:
	.loc 1 912 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 913 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	cfg_layout_redirect_edge, .-cfg_layout_redirect_edge
	.section	.rodata
	.type	__FUNCTION__.12386, @object
	.size	__FUNCTION__.12386, 24
__FUNCTION__.12386:
	.string	"cfg_layout_duplicate_bb"
	.text
.globl cfg_layout_duplicate_bb
	.type	cfg_layout_duplicate_bb, @function
cfg_layout_duplicate_bb:
.LFB31:
	.loc 1 921 0
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
	subl	$140, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 925 0
	cmpl	$0, 12(%ebp)
	je	.L318
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	jmp	.L320
.L318:
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
.L320:
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	.loc 1 927 0
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	68(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-100(%ebp), %ecx
	cmpl	-76(%ebp), %ecx
	jg	.L321
	movl	-100(%ebp), %esi
	cmpl	-76(%ebp), %esi
	jl	.L323
	movl	-104(%ebp), %edi
	cmpl	-80(%ebp), %edi
	jae	.L321
.L323:
	.loc 1 928 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
.L321:
	.loc 1 929 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L324
	.loc 1 930 0
	leal	__FUNCTION__.12386@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$930, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L324:
	.loc 1 936 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	duplicate_insn_chain
	movl	%eax, -72(%ebp)
	.loc 1 937 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -96(%ebp)
	cmpl	$0, -72(%ebp)
	je	.L326
	call	get_last_insn@PLT
	movl	%eax, -92(%ebp)
	jmp	.L328
.L326:
	movl	$0, -92(%ebp)
.L328:
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block@PLT
	movl	%eax, -60(%ebp)
	.loc 1 940 0
	movl	$20, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_aux_for_block@PLT
	.loc 1 942 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L329
	.loc 1 944 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 945 0
	jmp	.L331
.L332:
	.loc 1 946 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
.L331:
	.loc 1 945 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L332
	.loc 1 947 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	duplicate_insn_chain
	movl	%eax, -72(%ebp)
	.loc 1 948 0
	cmpl	$0, -72(%ebp)
	je	.L329
	.loc 1 949 0
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %esi
	call	get_last_insn@PLT
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink_insn_chain
	movl	%eax, (%esi)
.L329:
	.loc 1 952 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L335
	.loc 1 954 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 955 0
	jmp	.L337
.L338:
	.loc 1 956 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
.L337:
	.loc 1 955 0
	movl	-72(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L338
	.loc 1 957 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	duplicate_insn_chain
	movl	%eax, -72(%ebp)
	.loc 1 958 0
	cmpl	$0, -72(%ebp)
	je	.L335
	.loc 1 959 0
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %esi
	call	get_last_insn@PLT
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink_insn_chain
	movl	%eax, 4(%esi)
.L335:
	.loc 1 962 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L341
.LBB17:
	.loc 1 964 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -56(%ebp)
.LBB18:
	movl	-56(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$16, -48(%ebp)
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-48(%ebp), %eax
	jge	.L343
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L343:
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE18:
.LBB19:
	movl	-56(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L345
	movl	-44(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L345:
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L347
	movl	-44(%ebp), %eax
	movl	16(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
.L347:
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
.LBE19:
.LBE17:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 32(%eax)
.LBB20:
	.loc 1 965 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -36(%ebp)
.LBB21:
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$16, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpl	-28(%ebp), %eax
	jge	.L349
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L349:
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE21:
.LBB22:
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L351
	movl	-24(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L351:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L353
	movl	-24(%ebp), %eax
	movl	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.L353:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-20(%ebp), %eax
.LBE22:
.LBE20:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 966 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-60(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 967 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-60(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L341:
	.loc 1 970 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 971 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 972 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L355
.L356:
	.loc 1 974 0
	movl	-68(%ebp), %eax
	movl	24(%eax), %edx
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
	movl	%eax, -64(%ebp)
	.loc 1 975 0
	movl	-68(%ebp), %eax
	movl	28(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 976 0
	movl	-80(%ebp), %eax
	orl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L357
	.loc 1 978 0
	movl	-68(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-76(%ebp), %eax
	imull	$10000, %eax, %eax
	movl	%eax, -124(%ebp)
	movl	-80(%ebp), %eax
	imull	$0, %eax, %eax
	addl	%eax, -124(%ebp)
	movl	$10000, -128(%ebp)
	movl	-128(%ebp), %eax
	mull	-80(%ebp)
	movl	%eax, %esi
	movl	%edx, %edi
	addl	%edi, -124(%ebp)
	movl	-124(%ebp), %edi
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__divdi3@PLT
	movl	-84(%ebp), %ecx
	imull	%eax, %ecx
	movl	-88(%ebp), %esi
	imull	%edx, %esi
	addl	%esi, %ecx
	mull	-88(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	-64(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	jmp	.L359
.L357:
	.loc 1 980 0
	movl	-64(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
.L359:
	.loc 1 981 0
	movl	-68(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-64(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-120(%ebp), %esi
	movl	-116(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-68(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 972 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
.L355:
	cmpl	$0, -68(%ebp)
	jne	.L356
	.loc 1 984 0
	movl	-60(%ebp), %ecx
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 985 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	subl	-80(%ebp), %eax
	sbbl	-76(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 987 0
	cmpl	$0, 12(%ebp)
	je	.L361
	.loc 1 989 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -128(%ebp)
	movl	-128(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 990 0
	movl	8(%ebp), %eax
	movl	72(%eax), %esi
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -128(%ebp)
	movl	-128(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 992 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cfg_layout_redirect_edge@PLT
.L361:
	.loc 1 995 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	testl	%edx, %edx
	jns	.L363
	.loc 1 996 0
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
.L363:
	.loc 1 997 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jns	.L365
	.loc 1 998 0
	movl	8(%ebp), %eax
	movl	$0, 72(%eax)
.L365:
	.loc 1 1000 0
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 1001 0
	movl	-60(%ebp), %eax
	.loc 1 1002 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	cfg_layout_duplicate_bb, .-cfg_layout_duplicate_bb
.globl cfg_layout_initialize
	.type	cfg_layout_initialize, @function
cfg_layout_initialize:
.LFB32:
	.loc 1 1009 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$4, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1012 0
	movl	$20, (%esp)
	call	alloc_aux_for_blocks@PLT
	.loc 1 1014 0
	call	cleanup_unconditional_jumps
	.loc 1 1016 0
	call	record_effective_endpoints
	.loc 1 1017 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	cfg_layout_initialize, .-cfg_layout_initialize
.globl cfg_layout_finalize
	.type	cfg_layout_finalize, @function
cfg_layout_finalize:
.LFB33:
	.loc 1 1024 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$4, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1025 0
	call	fixup_fallthru_exit_predecessor
	.loc 1 1026 0
	call	fixup_reorder_chain
	.loc 1 1032 0
	call	free_aux_for_blocks@PLT
	.loc 1 1037 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	cfg_layout_finalize, .-cfg_layout_finalize
	.local	function_footer
	.comm	function_footer,4,4
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
	.long	.LCFI16-.LCFI13
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI27-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI28
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
	.long	.LCFI31-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
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
	.long	.LCFI35-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI36
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
	.long	.LCFI49-.LCFI46
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI74-.LCFI72
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
	.long	.LCFI75-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI76
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/tree.h"
	.file 7 "../../../kg++fe/gnu/hashtable.h"
	.file 8 "../../../kg++fe/gnu/location.h"
	.file 9 "../../../kg++fe/gnu/function.h"
	.file 10 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 11 "../../../kg++fe/omp_types.h"
	.file 12 "../../../kg++fe/gnu/basic-block.h"
	.file 13 "../../../kg++fe/gnu/sbitmap.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "../../../include/gnu/obstack.h"
	.file 16 "../../../kg++fe/gnu/varray.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 18 "../../../kg++fe/gnu/output.h"
	.file 19 "/usr/include/libio.h"
	.file 20 "/usr/include/bits/types.h"
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
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI32-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI35-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI36-.Ltext0
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
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x77a5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cfglayout.c"
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
	.byte	0x3
	.byte	0x84
	.long	0xa5c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x87
	.long	0x813
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x8e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x3
	.byte	0x91
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x3
	.byte	0x99
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x3
	.byte	0xa2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x3
	.byte	0xb4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x3
	.byte	0xbb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x3
	.byte	0xc0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x3
	.byte	0xc9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xce
	.long	0x1679
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
	.byte	0x3
	.byte	0xf2
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x1689
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
	.long	0x2d1
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x6
	.value	0x887
	.long	0x3d5c
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x6
	.value	0x888
	.long	0x407b
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x6
	.value	0x889
	.long	0x40c3
	.uleb128 0x9
	.string	"vector"
	.byte	0x6
	.value	0x88a
	.long	0x41e6
	.uleb128 0x9
	.string	"string"
	.byte	0x6
	.value	0x88b
	.long	0x4124
	.uleb128 0x9
	.string	"complex"
	.byte	0x6
	.value	0x88c
	.long	0x4191
	.uleb128 0x9
	.string	"identifier"
	.byte	0x6
	.value	0x88d
	.long	0x441b
	.uleb128 0x9
	.string	"decl"
	.byte	0x6
	.value	0x88e
	.long	0x5496
	.uleb128 0x9
	.string	"type"
	.byte	0x6
	.value	0x88f
	.long	0x4680
	.uleb128 0x9
	.string	"list"
	.byte	0x6
	.value	0x890
	.long	0x4452
	.uleb128 0x9
	.string	"vec"
	.byte	0x6
	.value	0x891
	.long	0x4499
	.uleb128 0x9
	.string	"exp"
	.byte	0x6
	.value	0x892
	.long	0x44ea
	.uleb128 0x8
	.long	.LASF1
	.byte	0x6
	.value	0x893
	.long	0x4536
	.uleb128 0x9
	.string	"omp"
	.byte	0x6
	.value	0x895
	.long	0x5e70
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0xa
	.long	0x2dc
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3bd
	.string	"mips_args"
	.byte	0x40
	.byte	0xa
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d4
	.long	0x9e
	.uleb128 0x10
	.long	0x3d4
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xa
	.value	0xad5
	.long	0x2eb
	.uleb128 0x2
	.string	"size_t"
	.byte	0x11
	.byte	0xd6
	.long	0x3bd
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
	.byte	0x14
	.byte	0x3b
	.long	0x459
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x14
	.byte	0x90
	.long	0x4a3
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x14
	.byte	0x91
	.long	0x484
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2dc
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x4d4
	.uleb128 0x13
	.long	0x74f
	.long	.LASF3
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x13
	.value	0x10c
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x13
	.value	0x111
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x13
	.value	0x112
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x13
	.value	0x113
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x13
	.value	0x114
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x13
	.value	0x115
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x13
	.value	0x116
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x13
	.value	0x117
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x13
	.value	0x118
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x13
	.value	0x11a
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x13
	.value	0x11b
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x13
	.value	0x11c
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x13
	.value	0x11e
	.long	0x7c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x13
	.value	0x120
	.long	0x7c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x13
	.value	0x122
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x13
	.value	0x126
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x13
	.value	0x128
	.long	0x494
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x13
	.value	0x12c
	.long	0x412
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x13
	.value	0x12d
	.long	0x43d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x13
	.value	0x12e
	.long	0x7cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x13
	.value	0x132
	.long	0x7dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x13
	.value	0x13b
	.long	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x13
	.value	0x144
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x13
	.value	0x145
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x13
	.value	0x146
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x13
	.value	0x147
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x13
	.value	0x148
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x13
	.value	0x14a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x13
	.value	0x14c
	.long	0x7e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.long	0x75f
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x765
	.uleb128 0xa
	.long	0x401
	.uleb128 0x3
	.byte	0x4
	.long	0x401
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x13
	.byte	0xb0
	.uleb128 0x4
	.long	0x7c1
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x13
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x13
	.byte	0xb7
	.long	0x7c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x13
	.byte	0xb8
	.long	0x7c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x13
	.byte	0xbc
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77e
	.uleb128 0x3
	.byte	0x4
	.long	0x4d4
	.uleb128 0xf
	.long	0x7dd
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x770
	.uleb128 0xf
	.long	0x7f3
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x803
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x17
	.byte	0x0
	.uleb128 0xf
	.long	0x813
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x13
	.byte	0x0
	.uleb128 0x15
	.long	0xa5c
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
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
	.uleb128 0x15
	.long	0x122b
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
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
	.uleb128 0x17
	.long	0x1305
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x4b
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x4c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x4e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x3
	.byte	0x50
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x3
	.byte	0x52
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x55
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x3
	.byte	0x57
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x3
	.byte	0x58
	.long	0x122b
	.uleb128 0x13
	.long	0x137c
	.long	.LASF4
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF4
	.byte	0x3
	.byte	0x68
	.long	0x1320
	.uleb128 0x7
	.long	0x1459
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x459
	.uleb128 0x19
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x2e4
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x3bd
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x2d1
	.uleb128 0x19
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9e
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19f
	.uleb128 0x19
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x813
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x1305
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x146d
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x14d3
	.uleb128 0x19
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e7
	.uleb128 0x19
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x165e
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x1664
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1459
	.uleb128 0x4
	.long	0x14d3
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x5
	.byte	0x3d
	.long	0x5f64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x5f64
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1473
	.uleb128 0x4
	.long	0x165e
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0xc
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0xc
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0xc
	.byte	0xb8
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0xc
	.byte	0xb9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0xc
	.byte	0xbc
	.long	0x657b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0xc
	.byte	0xbc
	.long	0x657b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0xc
	.byte	0xc1
	.long	0x64ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0xc
	.byte	0xc5
	.long	0x64ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0xc
	.byte	0xcb
	.long	0x64ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0xc
	.byte	0xcd
	.long	0x64ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0xd0
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0xc
	.byte	0xd3
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x165e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x165e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0xc
	.byte	0xd9
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0xc
	.byte	0xdc
	.long	0x67f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0xdf
	.long	0x64b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0xc
	.byte	0xe2
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0xc
	.byte	0xe5
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14d9
	.uleb128 0x3
	.byte	0x4
	.long	0x137c
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x1387
	.uleb128 0xf
	.long	0x1689
	.long	0x166a
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1699
	.long	0x9e
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9e
	.uleb128 0x4
	.long	0x16d1
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0x169f
	.uleb128 0x15
	.long	0x2005
	.string	"tree_code"
	.byte	0x4
	.byte	0x6
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
	.byte	0x6
	.byte	0x2f
	.long	0x3bd
	.uleb128 0x4
	.long	0x2053
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x30
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x6
	.byte	0x30
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x6
	.byte	0x30
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x34
	.long	0x205d
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1c
	.long	0x20b2
	.long	.LASF6
	.byte	0x4
	.byte	0x6
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
	.long	0x3d5c
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
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
	.long	0x403f
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x6
	.byte	0x8d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x6
	.byte	0x8e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x6
	.byte	0x90
	.long	0x16e3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x6
	.byte	0x92
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x6
	.byte	0x93
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x6
	.byte	0x94
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x6
	.byte	0x95
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x6
	.byte	0x96
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x6
	.byte	0x97
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x6
	.byte	0x98
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x6
	.byte	0x9a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x6
	.byte	0x9f
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x6
	.byte	0xa0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x6
	.byte	0xa1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x6
	.byte	0xa2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x6
	.byte	0xa3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x6
	.byte	0xa4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x6
	.byte	0xa5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x6
	.byte	0xa6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x6
	.byte	0xa8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x6
	.byte	0xa9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF9
	.byte	0x6
	.byte	0xaa
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF10
	.byte	0x6
	.byte	0xab
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF11
	.byte	0x6
	.byte	0xac
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF12
	.byte	0x6
	.byte	0xad
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF13
	.byte	0x6
	.byte	0xae
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF14
	.byte	0x6
	.byte	0xb0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x6
	.byte	0xb5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x6
	.byte	0xb6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x6
	.byte	0xb7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x6
	.byte	0xb8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x6
	.byte	0xb9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x407b
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x6
	.value	0x30b
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x6
	.value	0x30c
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x40c3
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x303
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x304
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x305
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x6
	.value	0x30d
	.long	0x403f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4111
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x320
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x321
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x322
	.long	0x411e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4111
	.uleb128 0xc
	.long	0x418b
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x333
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x334
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x335
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x336
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x6
	.value	0x337
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x6
	.value	0x339
	.long	0x418b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2053
	.uleb128 0xc
	.long	0x41e6
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x342
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x343
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x344
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x6
	.value	0x345
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x6
	.value	0x346
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x422e
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x355
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x356
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x357
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x6
	.value	0x358
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x4278
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xf
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0xf
	.byte	0xa3
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0xf
	.byte	0xa4
	.long	0x4278
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0xf
	.byte	0xa5
	.long	0x74f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x422e
	.uleb128 0xc
	.long	0x43ab
	.string	"obstack"
	.byte	0x2c
	.byte	0xe
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0xf
	.byte	0xaa
	.long	0x4a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0xf
	.byte	0xab
	.long	0x4278
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0xf
	.byte	0xac
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0xf
	.byte	0xad
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0xf
	.byte	0xae
	.long	0x4c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0xf
	.byte	0xaf
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0xf
	.byte	0xb0
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0xf
	.byte	0xb5
	.long	0x43c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0xf
	.byte	0xb6
	.long	0x43d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0xf
	.byte	0xb7
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0xf
	.byte	0xbd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0xf
	.byte	0xbe
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0xf
	.byte	0xc2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1f
	.long	0x43c0
	.byte	0x1
	.long	0x4278
	.uleb128 0x20
	.long	0x4c0
	.uleb128 0x20
	.long	0x4a3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x43ab
	.uleb128 0x21
	.long	0x43d7
	.byte	0x1
	.uleb128 0x20
	.long	0x4c0
	.uleb128 0x20
	.long	0x4278
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x43c6
	.uleb128 0x13
	.long	0x441b
	.long	.LASF15
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x75f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x4452
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x376
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x377
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x6
	.value	0x378
	.long	0x43dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x4499
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x380
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x381
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x6
	.value	0x382
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x6
	.value	0x383
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x44da
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x38e
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x38f
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x390
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x6
	.value	0x391
	.long	0x44da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x44ea
	.long	0x1e7
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x4536
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3d4
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x3d5
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x6
	.value	0x3d6
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x6
	.value	0x3d9
	.long	0x44da
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4626
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x40a
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x40b
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x40d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.long	.LASF16
	.byte	0x6
	.value	0x40e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.string	"block_num"
	.byte	0x6
	.value	0x40f
	.long	0x3bd
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x6
	.value	0x411
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x6
	.value	0x412
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x6
	.value	0x413
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x6
	.value	0x414
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x6
	.value	0x415
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x6
	.value	0x416
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x466d
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x6
	.value	0x571
	.long	0x2e4
	.uleb128 0x9
	.string	"pointer"
	.byte	0x6
	.value	0x572
	.long	0x4c2
	.uleb128 0x9
	.string	"die"
	.byte	0x6
	.value	0x573
	.long	0x467a
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x466d
	.uleb128 0xc
	.long	0x49ce
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x551
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x552
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x6
	.value	0x553
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x554
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x6
	.value	0x555
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x6
	.value	0x556
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x557
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"precision"
	.byte	0x6
	.value	0x559
	.long	0x3bd
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"mode"
	.byte	0x6
	.value	0x55a
	.long	0x813
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"string_flag"
	.byte	0x6
	.value	0x55c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_force_blk_flag"
	.byte	0x6
	.value	0x55d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"needs_constructing_flag"
	.byte	0x6
	.value	0x55e
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"transparent_union_flag"
	.byte	0x6
	.value	0x55f
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"packed_flag"
	.byte	0x6
	.value	0x560
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"restrict_flag"
	.byte	0x6
	.value	0x561
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF20
	.byte	0x6
	.value	0x562
	.long	0x3bd
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0x6
	.value	0x564
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0x6
	.value	0x565
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x6
	.value	0x566
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x6
	.value	0x567
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x6
	.value	0x568
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x6
	.value	0x569
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x6
	.value	0x56a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF21
	.byte	0x6
	.value	0x56b
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"align"
	.byte	0x6
	.value	0x56d
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x6
	.value	0x56e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x6
	.value	0x56f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x6
	.value	0x574
	.long	0x4626
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x576
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x6
	.value	0x577
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x6
	.value	0x578
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x6
	.value	0x579
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x6
	.value	0x57a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0x6
	.value	0x57b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x57c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x6
	.value	0x57d
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x6
	.value	0x57f
	.long	0x49da
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x6
	.value	0x581
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x6
	.value	0x582
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x6
	.value	0x583
	.long	0x2016
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x6
	.value	0x58a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x49ce
	.uleb128 0xc
	.long	0x4a25
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x817
	.uleb128 0x22
	.string	"align"
	.byte	0x6
	.value	0x818
	.long	0x3bd
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"off_align"
	.byte	0x6
	.value	0x819
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x4a5a
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x811
	.long	0x20b2
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x814
	.long	0x459
	.uleb128 0x9
	.string	"a"
	.byte	0x6
	.value	0x81a
	.long	0x49e0
	.byte	0x0
	.uleb128 0x24
	.long	0x4a99
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x838
	.long	0x5458
	.uleb128 0x9
	.string	"r"
	.byte	0x6
	.value	0x839
	.long	0x9e
	.uleb128 0x9
	.string	"t"
	.byte	0x6
	.value	0x83a
	.long	0x1e7
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x83b
	.long	0x2e4
	.byte	0x0
	.uleb128 0x25
	.long	0x5458
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x6b7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x6b8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x9
	.byte	0xb7
	.long	0x6b95
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x6b9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x6bb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x9
	.byte	0xbe
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x9
	.byte	0xc1
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x9
	.byte	0xc4
	.long	0x5458
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x9
	.byte	0xc9
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x9
	.byte	0xce
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x9
	.byte	0xd3
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x9
	.byte	0xd7
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x9
	.byte	0xdb
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x9
	.byte	0xdf
	.long	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x9
	.byte	0xe5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x9
	.byte	0xe8
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x9
	.byte	0xec
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x9
	.byte	0xf0
	.long	0x6bce
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x9
	.byte	0xf3
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x9
	.byte	0xf8
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x9
	.byte	0xfe
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x9
	.value	0x102
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x9
	.value	0x107
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x9
	.value	0x10d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x9
	.value	0x112
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x9
	.value	0x115
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x9
	.value	0x116
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x9
	.value	0x11a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x9
	.value	0x11e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x9
	.value	0x121
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x9
	.value	0x125
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x9
	.value	0x128
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x9
	.value	0x12e
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x9
	.value	0x133
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x9
	.value	0x138
	.long	0x459
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x9
	.value	0x13d
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x9
	.value	0x146
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x9
	.value	0x149
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x9
	.value	0x14d
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x9
	.value	0x151
	.long	0x3bd
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x9
	.value	0x157
	.long	0x1699
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x9
	.value	0x15a
	.long	0x6be0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x9
	.value	0x15d
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x9
	.value	0x160
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x9
	.value	0x166
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x9
	.value	0x16a
	.long	0x687e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x9
	.value	0x16d
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x9
	.value	0x16e
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x9
	.value	0x16f
	.long	0x19f
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x9
	.value	0x170
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x9
	.value	0x173
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x9
	.value	0x175
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x9
	.value	0x178
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x9
	.value	0x17d
	.long	0x6bf9
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x9
	.value	0x17f
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x9
	.value	0x181
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x9
	.value	0x184
	.long	0x6c13
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x9
	.value	0x18a
	.long	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x22
	.string	"returns_struct"
	.byte	0x9
	.value	0x190
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pcc_struct"
	.byte	0x9
	.value	0x194
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"returns_pointer"
	.byte	0x9
	.value	0x197
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"needs_context"
	.byte	0x9
	.value	0x19a
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_setjmp"
	.byte	0x9
	.value	0x19d
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_longjmp"
	.byte	0x9
	.value	0x1a0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_alloca"
	.byte	0x9
	.value	0x1a4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"calls_eh_return"
	.byte	0x9
	.value	0x1a7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_label"
	.byte	0x9
	.value	0x1ab
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_nonlocal_goto"
	.byte	0x9
	.value	0x1af
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"contains_functions"
	.byte	0x9
	.value	0x1b2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"has_computed_jump"
	.byte	0x9
	.value	0x1b5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"is_thunk"
	.byte	0x9
	.value	0x1ba
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"all_throwers_are_sibcalls"
	.byte	0x9
	.value	0x1c1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"instrument_entry_exit"
	.byte	0x9
	.value	0x1c5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arc_profile"
	.byte	0x9
	.value	0x1c8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"profile"
	.byte	0x9
	.value	0x1cb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"limit_stack"
	.byte	0x9
	.value	0x1cf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"stdarg"
	.byte	0x9
	.value	0x1d2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_whole_function_mode_p"
	.byte	0x9
	.value	0x1d8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x9
	.value	0x1e1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_const_pool"
	.byte	0x9
	.value	0x1e4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_pic_offset_table"
	.byte	0x9
	.value	0x1e7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"uses_eh_lsda"
	.byte	0x9
	.value	0x1ea
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x22
	.string	"arg_pointer_save_area_init"
	.byte	0x9
	.value	0x1ed
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x9
	.value	0x1fa
	.long	0x6b05
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x9
	.value	0x1fe
	.long	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a99
	.uleb128 0x26
	.long	0x5496
	.byte	0x4
	.byte	0x6
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x6
	.value	0x84f
	.long	0x418b
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x6
	.value	0x850
	.long	0x2005
	.uleb128 0x9
	.string	"field_id"
	.byte	0x6
	.value	0x851
	.long	0x3bd
	.byte	0x0
	.uleb128 0xc
	.long	0x5be0
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x6
	.value	0x7c5
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x7c6
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x6
	.value	0x7c7
	.long	0x16d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x7c8
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x7c9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.string	"mode"
	.byte	0x6
	.value	0x7ca
	.long	0x813
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"external_flag"
	.byte	0x6
	.value	0x7cc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"nonlocal_flag"
	.byte	0x6
	.value	0x7cd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"regdecl_flag"
	.byte	0x6
	.value	0x7ce
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"inline_flag"
	.byte	0x6
	.value	0x7cf
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"bit_field_flag"
	.byte	0x6
	.value	0x7d0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"virtual_flag"
	.byte	0x6
	.value	0x7d1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"ignored_flag"
	.byte	0x6
	.value	0x7d2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.long	.LASF16
	.byte	0x6
	.value	0x7d3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sbuf_flag"
	.byte	0x6
	.value	0x7d7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"sdram_flag"
	.byte	0x6
	.value	0x7d8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v1buf_flag"
	.byte	0x6
	.value	0x7d9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v2buf_flag"
	.byte	0x6
	.value	0x7da
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"v4buf_flag"
	.byte	0x6
	.value	0x7db
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"in_system_header_flag"
	.byte	0x6
	.value	0x7df
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"common_flag"
	.byte	0x6
	.value	0x7e0
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"defer_output"
	.byte	0x6
	.value	0x7e1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"transparent_union"
	.byte	0x6
	.value	0x7e2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_ctor_flag"
	.byte	0x6
	.value	0x7e3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"static_dtor_flag"
	.byte	0x6
	.value	0x7e4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"artificial_flag"
	.byte	0x6
	.value	0x7e5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"weak_flag"
	.byte	0x6
	.value	0x7e6
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"non_addr_const_p"
	.byte	0x6
	.value	0x7e8
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"no_instrument_function_entry_exit"
	.byte	0x6
	.value	0x7e9
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"comdat_flag"
	.byte	0x6
	.value	0x7ea
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"malloc_flag"
	.byte	0x6
	.value	0x7eb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"no_limit_stack"
	.byte	0x6
	.value	0x7ec
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF6
	.byte	0x6
	.value	0x7ed
	.long	0x2062
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"pure_flag"
	.byte	0x6
	.value	0x7ee
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF20
	.byte	0x6
	.value	0x7f0
	.long	0x3bd
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"non_addressable"
	.byte	0x6
	.value	0x7f1
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF21
	.byte	0x6
	.value	0x7f2
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"uninlinable"
	.byte	0x6
	.value	0x7f3
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"thread_local_flag"
	.byte	0x6
	.value	0x7f4
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"inlined_function_flag"
	.byte	0x6
	.value	0x7f5
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"threadprivate_flag"
	.byte	0x6
	.value	0x7f7
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0x6
	.value	0x7fa
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0x6
	.value	0x7fb
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x6
	.value	0x7fc
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x6
	.value	0x7fd
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x6
	.value	0x7fe
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x6
	.value	0x7ff
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x6
	.value	0x800
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF14
	.byte	0x6
	.value	0x801
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"syscall_linkage_flag"
	.byte	0x6
	.value	0x804
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"widen_retval_flag"
	.byte	0x6
	.value	0x805
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.string	"emitted_by_gxx"
	.byte	0x6
	.value	0x808
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x6
	.value	0x81b
	.long	0x4a25
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x6
	.value	0x81d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x81e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x81f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x6
	.value	0x820
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x6
	.value	0x821
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x6
	.value	0x822
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x6
	.value	0x824
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x6
	.value	0x825
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x6
	.value	0x829
	.long	0x459
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x6
	.value	0x82b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x6
	.value	0x82c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x6
	.value	0x82d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x6
	.value	0x82e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x82f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x830
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x6
	.value	0x83c
	.long	0x4a5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x6
	.value	0x83f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x6
	.value	0x843
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x6
	.value	0x845
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x846
	.long	0x459
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x6
	.value	0x848
	.long	0x5bec
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0x6
	.value	0x84b
	.long	0x3bd
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.string	"label_defined"
	.byte	0x6
	.value	0x84c
	.long	0x3bd
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x6
	.value	0x852
	.long	0x545e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x858
	.long	0x2016
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x6
	.value	0x85c
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5be0
	.uleb128 0x15
	.long	0x5e70
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xb
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
	.long	0x5ebf
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x864
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x865
	.long	0x3d5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x6
	.value	0x866
	.long	0x5bf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x867
	.long	0x4c0
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
	.long	0x1e7
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x428
	.uleb128 0x4
	.long	0x5f38
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x5
	.byte	0x35
	.long	0x5f38
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x5f38
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x5f3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5ee1
	.uleb128 0xf
	.long	0x5f4e
	.long	0x5ece
	.uleb128 0x10
	.long	0x3d4
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x5ee1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f4e
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x14d3
	.uleb128 0x4
	.long	0x5fd2
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xd
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xd
	.byte	0x21
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xd
	.byte	0x22
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xd
	.byte	0x23
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xd
	.byte	0x24
	.long	0x5fd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x5fe2
	.long	0x46a
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x5ff1
	.uleb128 0x3
	.byte	0x4
	.long	0x5f78
	.uleb128 0x4
	.long	0x602d
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x10
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x10
	.byte	0x32
	.long	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x10
	.byte	0x36
	.long	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x61c8
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x10
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
	.long	0x62c4
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x10
	.byte	0x55
	.uleb128 0x19
	.string	"c"
	.byte	0x10
	.byte	0x56
	.long	0x7cd
	.uleb128 0x19
	.string	"uc"
	.byte	0x10
	.byte	0x58
	.long	0x62c4
	.uleb128 0x19
	.string	"s"
	.byte	0x10
	.byte	0x5a
	.long	0x62d4
	.uleb128 0x19
	.string	"us"
	.byte	0x10
	.byte	0x5c
	.long	0x62e4
	.uleb128 0x19
	.string	"i"
	.byte	0x10
	.byte	0x5e
	.long	0x62f4
	.uleb128 0x19
	.string	"u"
	.byte	0x10
	.byte	0x60
	.long	0x6304
	.uleb128 0x19
	.string	"l"
	.byte	0x10
	.byte	0x62
	.long	0x6314
	.uleb128 0x19
	.string	"ul"
	.byte	0x10
	.byte	0x64
	.long	0x6324
	.uleb128 0x19
	.string	"hint"
	.byte	0x10
	.byte	0x66
	.long	0x6334
	.uleb128 0x19
	.string	"uhint"
	.byte	0x10
	.byte	0x68
	.long	0x5fd2
	.uleb128 0x19
	.string	"generic"
	.byte	0x10
	.byte	0x6a
	.long	0x6344
	.uleb128 0x19
	.string	"cptr"
	.byte	0x10
	.byte	0x6c
	.long	0x6354
	.uleb128 0x19
	.string	"rtx"
	.byte	0x10
	.byte	0x6e
	.long	0x6364
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x10
	.byte	0x70
	.long	0x6374
	.uleb128 0x19
	.string	"tree"
	.byte	0x10
	.byte	0x72
	.long	0x6384
	.uleb128 0x19
	.string	"bitmap"
	.byte	0x10
	.byte	0x74
	.long	0x6394
	.uleb128 0x19
	.string	"reg"
	.byte	0x10
	.byte	0x76
	.long	0x63a4
	.uleb128 0x19
	.string	"const_equiv"
	.byte	0x10
	.byte	0x78
	.long	0x63c9
	.uleb128 0x19
	.string	"bb"
	.byte	0x10
	.byte	0x7a
	.long	0x63d9
	.uleb128 0x19
	.string	"te"
	.byte	0x10
	.byte	0x7c
	.long	0x63e9
	.byte	0x0
	.uleb128 0xf
	.long	0x62d4
	.long	0x401
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62e4
	.long	0x44c
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62f4
	.long	0x412
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6304
	.long	0x2e4
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6314
	.long	0x3bd
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6324
	.long	0x4a3
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6334
	.long	0x428
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6344
	.long	0x459
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6354
	.long	0x4c0
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6364
	.long	0x4c2
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6374
	.long	0xa9
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6384
	.long	0x1ac
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6394
	.long	0x1f3
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x63a4
	.long	0x14d3
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x63b4
	.long	0x63c3
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x63b4
	.uleb128 0xf
	.long	0x63d9
	.long	0x5ff7
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x63e9
	.long	0x165e
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x63f9
	.long	0x6404
	.uleb128 0x10
	.long	0x3d4
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x63f9
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x10
	.byte	0x7e
	.long	0x61c8
	.uleb128 0x4
	.long	0x6492
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x10
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x10
	.byte	0x82
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x10
	.byte	0x83
	.long	0x3f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x10
	.byte	0x85
	.long	0x602d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x10
	.byte	0x86
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x10
	.byte	0x87
	.long	0x640a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x10
	.byte	0x8a
	.long	0x64a5
	.uleb128 0x3
	.byte	0x4
	.long	0x641d
	.uleb128 0x2
	.string	"regset"
	.byte	0xc
	.byte	0x22
	.long	0x5f6a
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xc
	.byte	0x75
	.long	0x459
	.uleb128 0x4
	.long	0x6575
	.string	"edge_def"
	.byte	0x28
	.byte	0xc
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0xc
	.byte	0x7a
	.long	0x6575
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0xc
	.byte	0x7a
	.long	0x6575
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0xc
	.byte	0x7d
	.long	0x165e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0xc
	.byte	0x7d
	.long	0x165e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0xc
	.byte	0x80
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0x83
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0xc
	.byte	0x85
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0xc
	.byte	0x86
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0x87
	.long	0x64b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x64ca
	.uleb128 0x2
	.string	"edge"
	.byte	0xc
	.byte	0x89
	.long	0x6575
	.uleb128 0x4
	.long	0x67f4
	.string	"loop"
	.byte	0x80
	.byte	0xc
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0xc
	.value	0x176
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0xc
	.value	0x179
	.long	0x67fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0xc
	.value	0x17c
	.long	0x67fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0xc
	.value	0x17f
	.long	0x67fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0xc
	.value	0x184
	.long	0x680d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0xc
	.value	0x187
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF5
	.byte	0xc
	.value	0x18b
	.long	0x67fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0xc
	.value	0x18f
	.long	0x67fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0xc
	.value	0x192
	.long	0x5fe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0xc
	.value	0x195
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0xc
	.value	0x198
	.long	0x680d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0xc
	.value	0x19b
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0xc
	.value	0x19e
	.long	0x680d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0xc
	.value	0x1a1
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0xc
	.value	0x1a4
	.long	0x5fe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0xc
	.value	0x1a7
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0xc
	.value	0x1aa
	.long	0x6813
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0xc
	.value	0x1ae
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0xc
	.value	0x1b1
	.long	0x67f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0xc
	.value	0x1b4
	.long	0x67f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1e
	.long	.LASF24
	.byte	0xc
	.value	0x1b7
	.long	0x67f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0xc
	.value	0x1ba
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0xc
	.value	0x1bd
	.long	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0xc
	.value	0x1c3
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0xc
	.value	0x1c7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0xc
	.value	0x1ca
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0xc
	.value	0x1cd
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0xc
	.value	0x1d1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0xc
	.value	0x1d4
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0xc
	.value	0x1d7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0xc
	.value	0x1e2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0xc
	.value	0x1e6
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6587
	.uleb128 0x2
	.string	"basic_block"
	.byte	0xc
	.byte	0xe6
	.long	0x165e
	.uleb128 0x3
	.byte	0x4
	.long	0x657b
	.uleb128 0x3
	.byte	0x4
	.long	0x67f4
	.uleb128 0x4
	.long	0x687e
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x9
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x9
	.byte	0x18
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x9
	.byte	0x19
	.long	0x813
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x9
	.byte	0x1a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x9
	.byte	0x1b
	.long	0x687e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6819
	.uleb128 0x13
	.long	0x68ca
	.long	.LASF25
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x9
	.byte	0x26
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x9
	.byte	0x27
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x9
	.byte	0x28
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x9
	.byte	0x29
	.long	0x68ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6884
	.uleb128 0x3
	.byte	0x4
	.long	0x427e
	.uleb128 0x4
	.long	0x6a25
	.string	"emit_status"
	.byte	0x34
	.byte	0x9
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x9
	.byte	0x3a
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x9
	.byte	0x3d
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x9
	.byte	0x44
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x9
	.byte	0x45
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x9
	.byte	0x4a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF25
	.byte	0x9
	.byte	0x50
	.long	0x68ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x9
	.byte	0x54
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x9
	.byte	0x58
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x9
	.byte	0x59
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x9
	.byte	0x5f
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x9
	.byte	0x65
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x9
	.byte	0x69
	.long	0x5ec8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x9
	.byte	0x70
	.long	0x1699
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x6b05
	.string	"expr_status"
	.byte	0x1c
	.byte	0x9
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x9
	.byte	0x80
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x9
	.byte	0x91
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x9
	.byte	0x97
	.long	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x9
	.byte	0x9c
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x9
	.byte	0x9f
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x9
	.byte	0xa2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x9
	.byte	0xa5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x27
	.long	0x6b6f
	.long	.LASF23
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
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6b6f
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6b81
	.uleb128 0x3
	.byte	0x4
	.long	0x6a25
	.uleb128 0x3
	.byte	0x4
	.long	0x68d6
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6ba1
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6bb7
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6bd4
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6be6
	.uleb128 0x1a
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6bff
	.uleb128 0x28
	.long	0x6c88
	.string	"unlink_insn_chain"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	0x9e
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.byte	0x42
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"last"
	.byte	0x1
	.byte	0x43
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"prevfirst"
	.byte	0x1
	.byte	0x45
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"nextlast"
	.byte	0x1
	.byte	0x46
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x28
	.long	0x6d0a
	.string	"skip_insns_after_block"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	0x9e
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2a
	.string	"bb"
	.byte	0x1
	.byte	0x5b
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.byte	0x5d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"last_insn"
	.byte	0x1
	.byte	0x5d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"next_head"
	.byte	0x1
	.byte	0x5d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"prev"
	.byte	0x1
	.byte	0x5d
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x28
	.long	0x6d4d
	.string	"label_for_bb"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.long	0x9e
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2a
	.string	"bb"
	.byte	0x1
	.byte	0xb3
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"label"
	.byte	0x1
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x6db6
	.string	"record_effective_endpoints"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2b
	.string	"next_insn"
	.byte	0x1
	.byte	0xc8
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.byte	0xc9
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.byte	0xcd
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x6e10
	.byte	0x1
	.string	"scope_to_insns_initialize"
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2c
	.long	.LASF1
	.byte	0x1
	.byte	0xe2
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.byte	0xe3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.byte	0xe3
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x6e57
	.string	"set_block_levels"
	.byte	0x1
	.value	0x10b
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x109
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"level"
	.byte	0x1
	.value	0x10a
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0x6ea1
	.byte	0x1
	.string	"choose_inner_scope"
	.byte	0x1
	.value	0x118
	.byte	0x1
	.long	0x1e7
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x32
	.string	"s1"
	.byte	0x1
	.value	0x117
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"s2"
	.byte	0x1
	.value	0x117
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x6f6c
	.string	"change_scope"
	.byte	0x1
	.value	0x128
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x32
	.string	"orig_insn"
	.byte	0x1
	.value	0x126
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"s1"
	.byte	0x1
	.value	0x127
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"s2"
	.byte	0x1
	.value	0x127
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF27
	.byte	0x1
	.value	0x129
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"com"
	.byte	0x1
	.value	0x12a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"ts1"
	.byte	0x1
	.value	0x12b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"ts2"
	.byte	0x1
	.value	0x12b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x12c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	0x6f5b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x35
	.string	"note"
	.byte	0x1
	.value	0x142
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	.LASF28
	.long	0x76e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11749
	.byte	0x0
	.uleb128 0x38
	.long	0x7016
	.byte	0x1
	.string	"scope_to_insns_finalize"
	.byte	0x1
	.value	0x156
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x35
	.string	"cur_block"
	.byte	0x1
	.value	0x157
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF27
	.byte	0x1
	.value	0x158
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"note"
	.byte	0x1
	.value	0x158
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x35
	.string	"this_block"
	.byte	0x1
	.value	0x15f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x166
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"body"
	.byte	0x1
	.value	0x167
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x715d
	.string	"fixup_reorder_chain"
	.byte	0x1
	.value	0x184
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x185
	.long	0x67fa
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.string	"prev_bb"
	.byte	0x1
	.value	0x185
	.long	0x67fa
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"index"
	.byte	0x1
	.value	0x186
	.long	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF27
	.byte	0x1
	.value	0x187
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	0x714c
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x35
	.string	"e_fall"
	.byte	0x1
	.value	0x1be
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"e_taken"
	.byte	0x1
	.value	0x1be
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x1be
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"bb_end_insn"
	.byte	0x1
	.value	0x1bf
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"nb"
	.byte	0x1
	.value	0x1c0
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	0x7131
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x35
	.string	"note"
	.byte	0x1
	.value	0x1e6
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"e_fake"
	.byte	0x1
	.value	0x1e7
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x35
	.string	"prob"
	.byte	0x1
	.value	0x1ee
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x35
	.string	"note"
	.byte	0x1
	.value	0x200
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF28
	.long	0x76d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11835
	.byte	0x0
	.uleb128 0x38
	.long	0x71ef
	.byte	0x1
	.string	"verify_insn_chain"
	.byte	0x1
	.value	0x276
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.value	0x277
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"prevx"
	.byte	0x1
	.value	0x277
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"nextx"
	.byte	0x1
	.value	0x277
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"insn_cnt1"
	.byte	0x1
	.value	0x278
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"insn_cnt2"
	.byte	0x1
	.value	0x278
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x37
	.long	.LASF28
	.long	0x76cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12075
	.byte	0x0
	.uleb128 0x30
	.long	0x729d
	.string	"cleanup_unconditional_jumps"
	.byte	0x1
	.value	0x294
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x295
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x34
	.long	.LASF27
	.byte	0x1
	.value	0x29f
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	0x7264
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x35
	.string	"prev"
	.byte	0x1
	.value	0x2a3
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	0x7282
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x35
	.string	"jump"
	.byte	0x1
	.value	0x2af
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x2bf
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x7305
	.string	"fixup_fallthru_exit_predecessor"
	.byte	0x1
	.value	0x2ce
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x2cf
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x2d0
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0x2d8
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x7368
	.byte	0x1
	.string	"cfg_layout_can_duplicate_bb_p"
	.byte	0x1
	.value	0x2eb
	.byte	0x1
	.long	0x5ebf
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x32
	.string	"bb"
	.byte	0x1
	.value	0x2ea
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF24
	.byte	0x1
	.value	0x2ec
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x2ed
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x39
	.long	0x7401
	.string	"duplicate_insn_chain"
	.byte	0x1
	.value	0x307
	.byte	0x1
	.long	0x9e
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x32
	.string	"from"
	.byte	0x1
	.value	0x306
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"to"
	.byte	0x1
	.value	0x306
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF27
	.byte	0x1
	.value	0x308
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"last"
	.byte	0x1
	.value	0x308
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	0x73f0
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x35
	.string	"new"
	.byte	0x1
	.value	0x312
	.long	0x9e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	.LASF28
	.long	0x76b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12282
	.byte	0x0
	.uleb128 0x38
	.long	0x749f
	.byte	0x1
	.string	"cfg_layout_redirect_edge"
	.byte	0x1
	.value	0x367
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.value	0x365
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"dest"
	.byte	0x1
	.value	0x366
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"src"
	.byte	0x1
	.value	0x368
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"old_next_bb"
	.byte	0x1
	.value	0x369
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	0x748e
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x37e
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	.LASF28
	.long	0x76a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12317
	.byte	0x0
	.uleb128 0x33
	.long	0x763e
	.byte	0x1
	.string	"cfg_layout_duplicate_bb"
	.byte	0x1
	.value	0x399
	.byte	0x1
	.long	0x67fa
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x32
	.string	"bb"
	.byte	0x1
	.value	0x397
	.long	0x67fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"e"
	.byte	0x1
	.value	0x398
	.long	0x657b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF27
	.byte	0x1
	.value	0x39a
	.long	0x9e
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x39b
	.long	0x657b
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.string	"n"
	.byte	0x1
	.value	0x39b
	.long	0x657b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"new_bb"
	.byte	0x1
	.value	0x39c
	.long	0x67fa
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"new_count"
	.byte	0x1
	.value	0x39d
	.long	0x64b9
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	0x75b7
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0x3c4
	.long	0x68d0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	0x758b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0x3c4
	.long	0x68d0
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.string	"__len"
	.byte	0x1
	.value	0x3c4
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x35
	.string	"__o1"
	.byte	0x1
	.value	0x3c4
	.long	0x68d0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"value"
	.byte	0x1
	.value	0x3c4
	.long	0x4c0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x762d
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0x3c5
	.long	0x68d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	0x7601
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0x3c5
	.long	0x68d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"__len"
	.byte	0x1
	.value	0x3c5
	.long	0x2e4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2e
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x35
	.string	"__o1"
	.byte	0x1
	.value	0x3c5
	.long	0x68d0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"value"
	.byte	0x1
	.value	0x3c5
	.long	0x4c0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF28
	.long	0x768c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12386
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.string	"cfg_layout_initialize"
	.byte	0x1
	.value	0x3f1
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x3a
	.byte	0x1
	.string	"cfg_layout_finalize"
	.byte	0x1
	.value	0x400
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0xa
	.long	0x7f3
	.uleb128 0xf
	.long	0x76a1
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x7691
	.uleb128 0xf
	.long	0x76b6
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x76a6
	.uleb128 0xf
	.long	0x76cb
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0x11
	.byte	0x0
	.uleb128 0xa
	.long	0x76bb
	.uleb128 0xa
	.long	0x803
	.uleb128 0xf
	.long	0x76e5
	.long	0x2dc
	.uleb128 0x10
	.long	0x3d4
	.byte	0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x76d5
	.uleb128 0x2b
	.string	"function_footer"
	.byte	0x1
	.byte	0x30
	.long	0x9e
	.byte	0x5
	.byte	0x3
	.long	function_footer
	.uleb128 0x3b
	.string	"n_basic_blocks"
	.byte	0xc
	.byte	0xf2
	.long	0x2e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"basic_block_info"
	.byte	0xc
	.byte	0xfe
	.long	0x6492
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"flow_obstack"
	.byte	0x1
	.byte	0x2d
	.long	0x427e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x775f
	.long	0x14d9
	.uleb128 0x10
	.long	0x3d4
	.byte	0x1
	.byte	0x0
	.uleb128 0x3c
	.string	"entry_exit_blocks"
	.byte	0xc
	.value	0x139
	.long	0x774f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"rtl_dump_file"
	.byte	0x12
	.value	0x1b8
	.long	0x7793
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4c8
	.uleb128 0x3c
	.string	"cfun"
	.byte	0x9
	.value	0x202
	.long	0x5458
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
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x35
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
	.long	0x102
	.value	0x2
	.long	.Ldebug_info0
	.long	0x77a9
	.long	0x6db6
	.string	"scope_to_insns_initialize"
	.long	0x6e57
	.string	"choose_inner_scope"
	.long	0x6f6c
	.string	"scope_to_insns_finalize"
	.long	0x715d
	.string	"verify_insn_chain"
	.long	0x7305
	.string	"cfg_layout_can_duplicate_bb_p"
	.long	0x7401
	.string	"cfg_layout_redirect_edge"
	.long	0x749f
	.string	"cfg_layout_duplicate_bb"
	.long	0x763e
	.string	"cfg_layout_initialize"
	.long	0x7666
	.string	"cfg_layout_finalize"
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
	.string	"next"
.LASF0:
	.string	"common"
.LASF6:
	.string	"built_in_class"
.LASF23:
	.string	"function_frequency"
.LASF20:
	.string	"pointer_depth"
.LASF15:
	.string	"ht_identifier"
.LASF5:
	.string	"first"
.LASF4:
	.string	"mem_attrs"
.LASF17:
	.string	"abstract_origin"
.LASF22:
	.string	"lang_specific"
.LASF18:
	.string	"size_unit"
.LASF27:
	.string	"insn"
.LASF25:
	.string	"sequence_stack"
.LASF28:
	.string	"__FUNCTION__"
.LASF3:
	.string	"_IO_FILE"
.LASF11:
	.string	"lang_flag_4"
.LASF13:
	.string	"lang_flag_6"
.LASF1:
	.string	"block"
.LASF9:
	.string	"lang_flag_2"
.LASF12:
	.string	"lang_flag_5"
.LASF14:
	.string	"lang_flag_7"
.LASF16:
	.string	"abstract_flag"
.LASF21:
	.string	"user_align"
.LASF19:
	.string	"attributes"
.LASF7:
	.string	"lang_flag_0"
.LASF8:
	.string	"lang_flag_1"
.LASF10:
	.string	"lang_flag_3"
.LASF26:
	.string	"sequence_rtl_expr"
.LASF2:
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
