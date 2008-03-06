	.file	"cfgrtl.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	can_delete_note_p, @function
can_delete_note_p:
.LFB15:
	.file 1 "../../../kgccfe/gnu/cfgrtl.c"
	.loc 1 93 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$4, %esp
.LCFI2:
	.loc 1 94 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L2
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	je	.L2
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-81, %eax
	jne	.L5
.L2:
	movl	$1, -4(%ebp)
	jmp	.L6
.L5:
	movl	$0, -4(%ebp)
.L6:
	movl	-4(%ebp), %eax
	.loc 1 97 0
	leave
	ret
.LFE15:
	.size	can_delete_note_p, .-can_delete_note_p
	.type	can_delete_label_p, @function
can_delete_label_p:
.LFB16:
	.loc 1 104 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	pushl	%ebx
.LCFI5:
	subl	$20, %esp
.LCFI6:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 105 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L9
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L9
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	in_expr_list_p@PLT
	testl	%eax, %eax
	jne	.L9
	movl	label_value_list@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	in_expr_list_p@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$1, -8(%ebp)
	jmp	.L14
.L9:
	movl	$0, -8(%ebp)
.L14:
	movl	-8(%ebp), %eax
	.loc 1 110 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	can_delete_label_p, .-can_delete_label_p
	.section	.rodata
	.type	__FUNCTION__.12278, @object
	.size	__FUNCTION__.12278, 12
__FUNCTION__.12278:
	.string	"delete_insn"
.LC0:
	.string	"../../../kgccfe/gnu/cfgrtl.c"
	.text
.globl delete_insn
	.type	delete_insn, @function
delete_insn:
.LFB17:
	.loc 1 117 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$68, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 118 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 120 0
	movb	$1, -5(%ebp)
	.loc 1 122 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L17
	.loc 1 127 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_delete_label_p
	testl	%eax, %eax
	jne	.L19
.LBB2:
	.loc 1 129 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 131 0
	movb	$0, -5(%ebp)
	.loc 1 132 0
	movl	8(%ebp), %eax
	movw	$47, (%eax)
	.loc 1 133 0
	movl	8(%ebp), %eax
	movl	$-88, 44(%eax)
	.loc 1 134 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 36(%edx)
.L19:
.LBE2:
	.loc 1 137 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_node_from_expr_list@PLT
.L17:
	.loc 1 140 0
	cmpb	$0, -5(%ebp)
	je	.L21
	.loc 1 143 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L23
	.loc 1 144 0
	leal	__FUNCTION__.12278@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$144, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L23:
	.loc 1 145 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_insn@PLT
	.loc 1 146 0
	movl	8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$8, %eax
	movb	%al, 3(%edx)
.L21:
	.loc 1 151 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L25
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L25
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L25
	.loc 1 154 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	36(%edx), %eax
	subl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 151 0
	jmp	.L29
.L25:
	.loc 1 157 0
	movl	$0, 8(%esp)
	movl	$13, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L29
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L29
	.loc 1 159 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	subl	$1, %eax
	movl	%eax, 36(%edx)
.L29:
	.loc 1 161 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L32
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L34
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L32
.L34:
.LBB3:
	.loc 1 165 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 166 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 167 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 170 0
	movl	$0, -16(%ebp)
	jmp	.L36
.L37:
.LBB4:
	.loc 1 172 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 177 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L38
	.loc 1 178 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
.L38:
.LBE4:
	.loc 1 170 0
	addl	$1, -16(%ebp)
.L36:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L37
.L32:
.LBE3:
	.loc 1 182 0
	movl	-40(%ebp), %eax
	.loc 1 183 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	delete_insn, .-delete_insn
.globl delete_insn_and_edges
	.type	delete_insn_and_edges, @function
delete_insn_and_edges:
.LFB18:
	.loc 1 189 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$20, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 191 0
	movb	$0, -5(%ebp)
	.loc 1 193 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L42
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L42
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L42
	.loc 1 196 0
	movb	$1, -5(%ebp)
.L42:
	.loc 1 197 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 198 0
	cmpb	$0, -5(%ebp)
	je	.L46
	.loc 1 199 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
.L46:
	.loc 1 200 0
	movl	-12(%ebp), %eax
	.loc 1 201 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	delete_insn_and_edges, .-delete_insn_and_edges
.globl delete_insn_chain
	.type	delete_insn_chain, @function
delete_insn_chain:
.LFB19:
	.loc 1 209 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$20, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L50:
	.loc 1 217 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 218 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L51
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_delete_note_p
	testl	%eax, %eax
	jne	.L51
	jmp	.L54
.L51:
	.loc 1 221 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	movl	%eax, -8(%ebp)
.L54:
	.loc 1 223 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L57
	.loc 1 225 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 226 0
	jmp	.L50
.L57:
	.loc 1 227 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	delete_insn_chain, .-delete_insn_chain
.globl delete_insn_chain_and_edges
	.type	delete_insn_chain_and_edges, @function
delete_insn_chain_and_edges:
.LFB20:
	.loc 1 233 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$36, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 234 0
	movb	$0, -5(%ebp)
	.loc 1 236 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L59
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L59
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L59
	.loc 1 239 0
	movb	$1, -5(%ebp)
.L59:
	.loc 1 240 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 241 0
	cmpb	$0, -5(%ebp)
	je	.L65
	.loc 1 242 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
.L65:
	.loc 1 243 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	delete_insn_chain_and_edges, .-delete_insn_chain_and_edges
.globl create_basic_block_structure
	.type	create_basic_block_structure, @function
create_basic_block_structure:
.LFB21:
	.loc 1 257 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$36, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 260 0
	cmpl	$0, 16(%ebp)
	je	.L67
	movl	16(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L67
	movl	16(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L67
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L67
.LBB5:
	.loc 1 269 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L72
	.loc 1 270 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L74
.L72:
	.loc 1 273 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 274 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%ebp)
.L74:
	.loc 1 277 0
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L78
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L78
	.loc 1 278 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns_nobb@PLT
	.loc 1 260 0
	jmp	.L78
.L67:
.LBE5:
	.loc 1 284 0
	call	alloc_block@PLT
	movl	%eax, -12(%ebp)
	.loc 1 286 0
	cmpl	$0, 8(%ebp)
	jne	.L79
	cmpl	$0, 12(%ebp)
	jne	.L79
	.loc 1 287 0
	call	get_last_insn@PLT
	movl	%eax, 4(%esp)
	movl	$-83, (%esp)
	call	emit_note_after@PLT
	movl	%eax, 16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 286 0
	jmp	.L82
.L79:
	.loc 1 289 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L83
	cmpl	$0, 12(%ebp)
	je	.L83
	.loc 1 291 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-83, (%esp)
	call	emit_note_after@PLT
	movl	%eax, 16(%ebp)
	.loc 1 292 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L82
	.loc 1 293 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 289 0
	jmp	.L82
.L83:
	.loc 1 297 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-83, (%esp)
	call	emit_note_before@PLT
	movl	%eax, 16(%ebp)
	.loc 1 298 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 299 0
	cmpl	$0, 12(%ebp)
	jne	.L82
	.loc 1 300 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%ebp)
.L82:
	.loc 1 303 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 36(%edx)
.L78:
	.loc 1 307 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L89
	.loc 1 308 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
.L89:
	.loc 1 310 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 311 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 312 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 44(%eax)
	addl	$1, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 313 0
	movl	-12(%ebp), %eax
	movl	$2, 76(%eax)
	.loc 1 314 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	link_block@PLT
	.loc 1 315 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 316 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	update_bb_for_insn@PLT
	.loc 1 320 0
	movl	-12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 322 0
	movl	-12(%ebp), %eax
	.loc 1 323 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	create_basic_block_structure, .-create_basic_block_structure
.globl create_basic_block
	.type	create_basic_block, @function
create_basic_block:
.LFB22:
	.loc 1 334 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$36, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 338 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 340 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 342 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block_structure@PLT
	movl	%eax, -8(%ebp)
	.loc 1 343 0
	movl	-8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 344 0
	movl	-8(%ebp), %eax
	.loc 1 345 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	create_basic_block, .-create_basic_block
.globl flow_delete_block_noexpunge
	.type	flow_delete_block_noexpunge, @function
flow_delete_block_noexpunge:
.LFB23:
	.loc 1 358 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$36, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 359 0
	movl	$0, -20(%ebp)
	.loc 1 372 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L95
.L96:
	.loc 1 374 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L97
	.loc 1 376 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-81, %eax
	je	.L99
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-94, %eax
	jne	.L101
.L99:
	.loc 1 378 0
	movl	-16(%ebp), %eax
	movl	$-99, 44(%eax)
.L101:
	.loc 1 372 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L95:
	cmpl	$0, -16(%ebp)
	jne	.L96
.L97:
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 383 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	never_reached_warning@PLT
	.loc 1 385 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L102
	.loc 1 386 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_remove_eh_handler@PLT
.L102:
	.loc 1 389 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 390 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L104
	movl	-12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L104
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L104
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L104
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L109
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L104
.L109:
	.loc 1 396 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L104:
	.loc 1 399 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 400 0
	cmpl	$0, -8(%ebp)
	je	.L111
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L111
	.loc 1 401 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L111:
	.loc 1 404 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 405 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 409 0
	jmp	.L114
.L115:
	.loc 1 410 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L114:
	.loc 1 409 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L115
	.loc 1 411 0
	jmp	.L117
.L118:
	.loc 1 412 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L117:
	.loc 1 411 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L118
	.loc 1 414 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 415 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 417 0
	movl	-20(%ebp), %eax
	.loc 1 418 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	flow_delete_block_noexpunge, .-flow_delete_block_noexpunge
.globl flow_delete_block
	.type	flow_delete_block, @function
flow_delete_block:
.LFB24:
	.loc 1 423 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$20, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 424 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block_noexpunge@PLT
	movl	%eax, -8(%ebp)
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expunge_block@PLT
	.loc 1 429 0
	movl	-8(%ebp), %eax
	.loc 1 430 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	flow_delete_block, .-flow_delete_block
.globl compute_bb_for_insn
	.type	compute_bb_for_insn, @function
compute_bb_for_insn:
.LFB25:
	.loc 1 436 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	subl	$16, %esp
.LCFI41:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 439 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L124
.L125:
.LBB6:
	.loc 1 441 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 444 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L126:
	.loc 1 446 0
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 28(%eax)
	.loc 1 447 0
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L127
	.loc 1 444 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 449 0
	jmp	.L126
.L127:
.LBE6:
	.loc 1 439 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L124:
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L125
	.loc 1 451 0
	leave
	ret
.LFE25:
	.size	compute_bb_for_insn, .-compute_bb_for_insn
.globl free_bb_for_insn
	.type	free_bb_for_insn, @function
free_bb_for_insn:
.LFB26:
	.loc 1 457 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$20, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 459 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	jmp	.L132
.L133:
	.loc 1 460 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L134
	.loc 1 461 0
	movl	-8(%ebp), %eax
	movl	$0, 28(%eax)
.L134:
	.loc 1 459 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L132:
	cmpl	$0, -8(%ebp)
	jne	.L133
	.loc 1 462 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	free_bb_for_insn, .-free_bb_for_insn
.globl update_bb_for_insn
	.type	update_bb_for_insn, @function
update_bb_for_insn:
.LFB27:
	.loc 1 469 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	subl	$16, %esp
.LCFI48:
	.loc 1 472 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L139:
	.loc 1 474 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 475 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	je	.L142
	.loc 1 472 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 477 0
	jmp	.L139
.L142:
	.loc 1 478 0
	leave
	ret
.LFE27:
	.size	update_bb_for_insn, .-update_bb_for_insn
.globl split_block
	.type	split_block, @function
split_block:
.LFB28:
	.loc 1 489 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%esi
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$96, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 495 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L144
	.loc 1 496 0
	movl	$0, -76(%ebp)
	jmp	.L146
.L144:
	.loc 1 499 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	create_basic_block@PLT
	movl	%eax, -60(%ebp)
	.loc 1 500 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 501 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 502 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 503 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 506 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 507 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 508 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L147
.L148:
	.loc 1 509 0
	movl	-52(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 508 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L147:
	cmpl	$0, -52(%ebp)
	jne	.L148
	.loc 1 511 0
	movl	$1, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_single_succ_edge@PLT
	movl	%eax, -56(%ebp)
	.loc 1 513 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L150
.LBB7:
	.loc 1 515 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -48(%ebp)
.LBB8:
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	$16, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-40(%ebp), %eax
	jge	.L152
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L152:
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE8:
.LBB9:
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L154
	movl	-36(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L154:
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L156
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
.L156:
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-32(%ebp), %eax
.LBE9:
.LBE7:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 32(%eax)
.LBB10:
	.loc 1 516 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB11:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$16, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L158
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L158:
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
	jne	.L160
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L160:
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
	jle	.L162
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L162:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE12:
.LBE10:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 517 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-60(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 524 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-60(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 525 0
	movl	-60(%ebp), %eax
	movl	32(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block@PLT
	.loc 1 526 0
	movl	-60(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L150:
	.loc 1 539 0
	movl	-56(%ebp), %eax
	movl	%eax, -76(%ebp)
.L146:
	movl	-76(%ebp), %eax
	.loc 1 540 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	split_block, .-split_block
.globl merge_blocks_nomove
	.type	merge_blocks_nomove, @function
merge_blocks_nomove:
.LFB29:
	.loc 1 548 0
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
	.loc 1 549 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 550 0
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 551 0
	movl	$0, -20(%ebp)
	.loc 1 555 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L166
	.loc 1 559 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L168
	.loc 1 560 0
	movl	$1, -20(%ebp)
.L168:
	.loc 1 562 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 563 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L166:
	.loc 1 568 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L170
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L170
	.loc 1 570 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L173
	.loc 1 571 0
	movl	$1, -20(%ebp)
.L173:
	.loc 1 572 0
	cmpl	$0, -24(%ebp)
	jne	.L175
	.loc 1 573 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
.L175:
	.loc 1 575 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 576 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L170:
	.loc 1 580 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L177
.LBB13:
	.loc 1 584 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L179:
	.loc 1 585 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L180
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	je	.L180
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L180
	.loc 1 584 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 590 0
	jmp	.L179
.L180:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 606 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L186
.L177:
.LBE13:
	.loc 1 608 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L186
	.loc 1 609 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 615 0
	jmp	.L186
.L187:
	.loc 1 616 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L186:
	.loc 1 615 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L187
	.loc 1 619 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L189
.L190:
	.loc 1 620 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 619 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L189:
	cmpl	$0, -16(%ebp)
	jne	.L190
	.loc 1 621 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 622 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 625 0
	movl	12(%ebp), %eax
	movl	$0, 20(%eax)
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 626 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 628 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expunge_block@PLT
	.loc 1 632 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 635 0
	cmpl	$0, -20(%ebp)
	jne	.L192
.LBB14:
	.loc 1 639 0
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L194
.L195:
	.loc 1 640 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 639 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L194:
	movl	-8(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L195
	.loc 1 642 0
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 28(%eax)
	.loc 1 644 0
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
.L192:
.LBE14:
	.loc 1 647 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 648 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	merge_blocks_nomove, .-merge_blocks_nomove
.globl block_label
	.type	block_label, @function
block_label:
.LFB30:
	.loc 1 656 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%esi
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$16, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 657 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L199
	.loc 1 658 0
	movl	$0, -12(%ebp)
	jmp	.L201
.L199:
	.loc 1 660 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L202
	.loc 1 662 0
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	call	gen_label_rtx@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_label_before@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.L202:
	.loc 1 665 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L201:
	movl	-12(%ebp), %eax
	.loc 1 666 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE30:
	.size	block_label, .-block_label
	.section	.rodata
	.align 4
	.type	__FUNCTION__.12784, @object
	.size	__FUNCTION__.12784, 31
__FUNCTION__.12784:
	.string	"try_redirect_by_replacing_jump"
.LC1:
	.string	"Removing jump %i.\n"
	.align 4
.LC2:
	.string	"Redirecting jump %i from %i to %i.\n"
.LC3:
	.string	"Replacing insn %i by jump %i\n"
	.text
	.type	try_redirect_by_replacing_jump, @function
try_redirect_by_replacing_jump:
.LFB31:
	.loc 1 677 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%edi
.LCFI65:
	pushl	%esi
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$92, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 678 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 679 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 682 0
	movl	$0, -28(%ebp)
	.loc 1 685 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L206
.L207:
	.loc 1 686 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L208
	movl	-40(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L210
.L208:
	.loc 1 685 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L206:
	cmpl	$0, -40(%ebp)
	jne	.L207
.L210:
	.loc 1 689 0
	cmpl	$0, -40(%ebp)
	jne	.L211
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L213
.L211:
	.loc 1 690 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L213:
	.loc 1 691 0
	movl	flow2_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L215
	movl	-48(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L215
	movl	-48(%ebp), %eax
	movl	76(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L215
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L215
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L220
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L215
.L220:
	.loc 1 696 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L215:
	.loc 1 699 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L222
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L224
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L226
.L224:
	movl	-48(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -64(%ebp)
.L226:
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L227
.L222:
	movl	$0, -68(%ebp)
.L227:
	movl	-68(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 700 0
	cmpl	$0, -36(%ebp)
	je	.L228
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L230
.L228:
	.loc 1 701 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L230:
	.loc 1 705 0
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 712 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	can_fallthru@PLT
	testb	%al, %al
	je	.L231
	.loc 1 714 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L233
	.loc 1 715 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L233:
	.loc 1 716 0
	movl	$1, -28(%ebp)
	.loc 1 719 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	jmp	.L258
.L231:
	.loc 1 723 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L236
	.loc 1 725 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L238
	.loc 1 726 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L238:
	.loc 1 727 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L240
	.loc 1 728 0
	movl	12(%ebp), %eax
	movl	44(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %esi
	movl	-48(%ebp), %eax
	movl	4(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
.L240:
	.loc 1 730 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	testl	%eax, %eax
	jne	.L258
	.loc 1 732 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L244
	.loc 1 733 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L244:
	.loc 1 734 0
	leal	__FUNCTION__.12784@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$734, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L236:
	.loc 1 739 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L246
	.loc 1 740 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L246:
.LBB15:
	.loc 1 745 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, -24(%ebp)
	.loc 1 748 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_after@PLT
	.loc 1 749 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 750 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 751 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L248
	.loc 1 752 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %ecx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L248:
	.loc 1 756 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 761 0
	movl	-48(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L250
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L250
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L250
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L254
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L250
.L254:
	.loc 1 767 0
	movl	-48(%ebp), %eax
	movl	76(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_insn_chain@PLT
.L250:
	.loc 1 770 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 771 0
	cmpl	$0, -20(%ebp)
	je	.L256
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L258
.L256:
	.loc 1 772 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 776 0
	jmp	.L258
.L259:
.LBE15:
	.loc 1 777 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L258:
	.loc 1 776 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L259
	.loc 1 778 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 779 0
	cmpl	$0, -28(%ebp)
	je	.L261
	.loc 1 780 0
	movl	8(%ebp), %eax
	movl	$1, 24(%eax)
	jmp	.L263
.L261:
	.loc 1 782 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
.L263:
	.loc 1 784 0
	movl	8(%ebp), %eax
	movl	$10000, 28(%eax)
	.loc 1 785 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 789 0
	jmp	.L264
.L265:
	.loc 1 791 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L264:
	.loc 1 789 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L266
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L265
.L266:
	.loc 1 793 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L268
	.loc 1 794 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ@PLT
.L268:
	.loc 1 796 0
	movl	$1, -72(%ebp)
.L214:
	movl	-72(%ebp), %eax
	.loc 1 797 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	try_redirect_by_replacing_jump, .-try_redirect_by_replacing_jump
	.type	last_loop_beg_note, @function
last_loop_beg_note:
.LFB32:
	.loc 1 810 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	subl	$16, %esp
.LCFI71:
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 813 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L272
.L273:
	.loc 1 816 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L274
	.loc 1 817 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L274:
	.loc 1 815 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L272:
	.loc 1 813 0
	cmpl	$0, 8(%ebp)
	je	.L276
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L276
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L273
.L276:
	.loc 1 819 0
	movl	-4(%ebp), %eax
	.loc 1 820 0
	leave
	ret
.LFE32:
	.size	last_loop_beg_note, .-last_loop_beg_note
	.section	.rodata
	.type	__FUNCTION__.12961, @object
	.size	__FUNCTION__.12961, 25
__FUNCTION__.12961:
	.string	"redirect_edge_and_branch"
.LC4:
	.string	"Edge %i->%i redirected to %i\n"
	.text
.globl redirect_edge_and_branch
	.type	redirect_edge_and_branch, @function
redirect_edge_and_branch:
.LFB33:
	.loc 1 836 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%edi
.LCFI74:
	pushl	%esi
.LCFI75:
	pushl	%ebx
.LCFI76:
	subl	$76, %esp
.LCFI77:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 838 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 839 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 840 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 842 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$12, %eax
	testl	%eax, %eax
	je	.L281
	.loc 1 843 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L281:
	.loc 1 845 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_redirect_by_replacing_jump
	testb	%al, %al
	je	.L284
	.loc 1 846 0
	movl	$1, -64(%ebp)
	jmp	.L283
.L284:
	.loc 1 851 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L286
	.loc 1 852 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L286:
	.loc 1 855 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L288
	.loc 1 856 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L288:
	.loc 1 857 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L290
	.loc 1 858 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L290:
	.loc 1 861 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L292
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L292
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L292
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L296
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L292
.L296:
.LBB16:
	.loc 1 869 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, -16(%ebp)
	.loc 1 871 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L298
	.loc 1 872 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L298:
	.loc 1 873 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	jne	.L300
	.loc 1 874 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L302
.L300:
	.loc 1 876 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L302:
	.loc 1 878 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L303
.L304:
	.loc 1 879 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L305
	.loc 1 881 0
	movl	-20(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L307
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L307
	movl	$5, -56(%ebp)
	jmp	.L310
.L307:
	movl	$4, -56(%ebp)
.L310:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 882 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 883 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
.L305:
	.loc 1 878 0
	subl	$1, -20(%ebp)
.L303:
	cmpl	$0, -20(%ebp)
	jns	.L304
	.loc 1 887 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L312
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L314
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L316
.L314:
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -48(%ebp)
.L316:
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L317
.L312:
	movl	$0, -52(%ebp)
.L317:
	movl	-52(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L324
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L324
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	jne	.L324
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L324
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L324
	.loc 1 893 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, 20(%esi)
	.loc 1 895 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 896 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 861 0
	jmp	.L324
.L292:
.LBE16:
	.loc 1 904 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	computed_jump_p@PLT
	testl	%eax, %eax
	jne	.L325
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L327
.L325:
	.loc 1 907 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L327:
	.loc 1 910 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L328
	.loc 1 911 0
	leal	__FUNCTION__.12961@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$911, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L328:
	.loc 1 916 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	testl	%eax, %eax
	jne	.L324
	.loc 1 918 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L331
	.loc 1 919 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L331:
	.loc 1 920 0
	leal	__FUNCTION__.12961@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$920, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L324:
	.loc 1 924 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L333
	.loc 1 925 0
	movl	12(%ebp), %eax
	movl	44(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edi
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	fprintf@PLT
.L333:
	.loc 1 928 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L335
	.loc 1 929 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
.L335:
	.loc 1 931 0
	movl	$1, -64(%ebp)
.L283:
	movl	-64(%ebp), %eax
	.loc 1 932 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	redirect_edge_and_branch, .-redirect_edge_and_branch
	.section	.rodata
	.align 4
	.type	__FUNCTION__.13107, @object
	.size	__FUNCTION__.13107, 31
__FUNCTION__.13107:
	.string	"force_nonfallthru_and_redirect"
.globl __divdi3
	.text
	.type	force_nonfallthru_and_redirect, @function
force_nonfallthru_and_redirect:
.LFB34:
	.loc 1 941 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	pushl	%edi
.LCFI80:
	pushl	%esi
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$140, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 942 0
	movl	$0, -100(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 945 0
	movl	$0, -84(%ebp)
	.loc 1 950 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L339
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L339
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L339
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L339
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L339
.LBB17:
	.loc 1 958 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	unchecked_make_edge@PLT
	movl	%eax, -76(%ebp)
	.loc 1 960 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	redirect_jump@PLT
	testl	%eax, %eax
	jne	.L345
	.loc 1 961 0
	leal	__FUNCTION__.13107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$961, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L345:
	.loc 1 962 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -80(%ebp)
	.loc 1 963 0
	cmpl	$0, -80(%ebp)
	je	.L339
.LBB18:
	.loc 1 965 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 967 0
	movl	-76(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 968 0
	movl	8(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	-72(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -132(%ebp)
	movl	-136(%ebp), %ecx
	imull	%edi, %ecx
	movl	-132(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -116(%ebp)
	addl	-116(%ebp), %ecx
	movl	-136(%ebp), %eax
	mull	%esi
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	addl	-132(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__divdi3@PLT
	movl	-76(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 969 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 970 0
	movl	8(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-76(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 971 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jns	.L348
	.loc 1 972 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L348:
	.loc 1 973 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	testl	%edx, %edx
	jns	.L339
	.loc 1 974 0
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
.L339:
.LBE18:
.LBE17:
	.loc 1 978 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L351
	.loc 1 985 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L353
	.loc 1 986 0
	leal	__FUNCTION__.13107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$986, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L353:
	.loc 1 987 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$-66, %eax
	movl	%eax, -84(%ebp)
	.loc 1 988 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$65, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L355
.L351:
	.loc 1 990 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L356
	.loc 1 991 0
	leal	__FUNCTION__.13107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$991, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L356:
	.loc 1 992 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L355
.LBB19:
	.loc 1 997 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	create_basic_block@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1001 0
	movl	8(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1002 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	addl	$20, %eax
	movl	%eax, -68(%ebp)
	jmp	.L359
.L360:
	.loc 1 1003 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L361
	.loc 1 1005 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1006 0
	jmp	.L363
.L361:
	.loc 1 1002 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -68(%ebp)
.L359:
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L360
.L363:
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1009 0
	movl	-64(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1010 0
	movl	$1, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	make_single_succ_edge@PLT
.L355:
.LBE19:
	.loc 1 1013 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L364
	cmpl	$0, -84(%ebp)
	je	.L366
.L364:
	.loc 1 1018 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	last_loop_beg_note
	movl	%eax, -92(%ebp)
	.loc 1 1019 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1022 0
	cmpl	$0, -92(%ebp)
	je	.L367
	movl	-92(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L367
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L367
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L367
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L372
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	jne	.L367
.L372:
	.loc 1 1028 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
.L367:
	.loc 1 1030 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1031 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-104(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 1032 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -136(%ebp)
	movl	-136(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 1033 0
	movl	12(%ebp), %eax
	movl	56(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 1035 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L374
.LBB20:
	.loc 1 1038 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -60(%ebp)
.LBB21:
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	$16, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-52(%ebp), %eax
	jge	.L376
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L376:
	movl	-56(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	addl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE21:
.LBB22:
	movl	-60(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L378
	movl	-48(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L378:
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-48(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L380
	movl	-48(%ebp), %eax
	movl	16(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 12(%eax)
.L380:
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-44(%ebp), %eax
.LBE22:
.LBE20:
	.loc 1 1037 0
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 32(%eax)
.LBB23:
	.loc 1 1040 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -40(%ebp)
.LBB24:
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$16, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpl	-32(%ebp), %eax
	jge	.L382
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L382:
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE24:
.LBB25:
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L384
	movl	-28(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L384:
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L386
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.L386:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-24(%ebp), %eax
.LBE25:
.LBE23:
	.loc 1 1039 0
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1041 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	-104(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1043 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	-104(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L374:
	.loc 1 1048 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	$1, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_edge@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1049 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1050 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-88(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 1053 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_pred@PLT
	.loc 1 1054 0
	movl	8(%ebp), %eax
	movl	$10000, 28(%eax)
	.loc 1 1056 0
	movl	-104(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 1013 0
	jmp	.L388
.L366:
	.loc 1 1059 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -104(%ebp)
.L388:
	.loc 1 1061 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1062 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L389
	.loc 1 1064 0
	call	mips_can_use_return_insn@PLT
	testl	%eax, %eax
	je	.L391
	.loc 1 1065 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %esi
	call	gen_return@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_jump_insn_after@PLT
	jmp	.L393
.L391:
	.loc 1 1067 0
	leal	__FUNCTION__.13107@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1067, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L389:
.LBB26:
	.loc 1 1071 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1072 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %esi
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_jump_insn_after@PLT
	.loc 1 1073 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 1074 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 36(%eax)
.L393:
.LBE26:
	.loc 1 1077 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 1078 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
	.loc 1 1080 0
	cmpl	$0, -84(%ebp)
	je	.L394
	.loc 1 1081 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
.L394:
	.loc 1 1083 0
	movl	-100(%ebp), %eax
	.loc 1 1084 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	force_nonfallthru_and_redirect, .-force_nonfallthru_and_redirect
.globl force_nonfallthru
	.type	force_nonfallthru, @function
force_nonfallthru:
.LFB35:
	.loc 1 1093 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	subl	$8, %esp
.LCFI86:
	.loc 1 1094 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_nonfallthru_and_redirect
	.loc 1 1095 0
	leave
	ret
.LFE35:
	.size	force_nonfallthru, .-force_nonfallthru
.globl redirect_edge_and_branch_force
	.type	redirect_edge_and_branch_force, @function
redirect_edge_and_branch_force:
.LFB36:
	.loc 1 1105 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$20, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1106 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch@PLT
	testb	%al, %al
	jne	.L400
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L402
.L400:
	.loc 1 1108 0
	movl	$0, -8(%ebp)
	jmp	.L403
.L402:
	.loc 1 1112 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_nonfallthru_and_redirect
	movl	%eax, -8(%ebp)
.L403:
	movl	-8(%ebp), %eax
	.loc 1 1113 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	redirect_edge_and_branch_force, .-redirect_edge_and_branch_force
.globl tidy_fallthru_edge
	.type	tidy_fallthru_edge, @function
tidy_fallthru_edge:
.LFB37:
	.loc 1 1122 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$36, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1135 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L406
.L407:
	.loc 1 1136 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L422
	.loc 1 1135 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L406:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L407
	.loc 1 1142 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1143 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L411
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L411
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	jne	.L414
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L411
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L411
.L414:
	.loc 1 1155 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1159 0
	jmp	.L417
.L418:
	.loc 1 1160 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L417:
	.loc 1 1159 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L411
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L418
.L411:
	.loc 1 1164 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L420
	.loc 1 1165 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
.L420:
	.loc 1 1167 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L422:
	.loc 1 1168 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	tidy_fallthru_edge, .-tidy_fallthru_edge
.globl tidy_fallthru_edges
	.type	tidy_fallthru_edges, @function
tidy_fallthru_edges:
.LFB38:
	.loc 1 1177 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$36, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1180 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L435
	.loc 1 1183 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L426
.L427:
.LBB27:
	.loc 1 1187 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1201 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L428
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$14, %eax
	testl	%eax, %eax
	jne	.L428
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L428
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L428
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L433
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	je	.L428
.L433:
	.loc 1 1208 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tidy_fallthru_edge@PLT
.L428:
.LBE27:
	.loc 1 1183 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L426:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L427
.L435:
	.loc 1 1210 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	tidy_fallthru_edges, .-tidy_fallthru_edges
	.type	back_edge_of_syntactic_loop_p, @function
back_edge_of_syntactic_loop_p:
.LFB39:
	.loc 1 1218 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	subl	$20, %esp
.LCFI101:
	.loc 1 1220 0
	movl	$0, -8(%ebp)
	.loc 1 1223 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L437
	.loc 1 1224 0
	movl	$1, -20(%ebp)
	jmp	.L439
.L437:
	.loc 1 1228 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L440
.L441:
	movl	-4(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -4(%ebp)
.L440:
	cmpl	$0, -4(%ebp)
	je	.L442
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L441
.L442:
	.loc 1 1231 0
	cmpl	$0, -4(%ebp)
	jne	.L444
	.loc 1 1232 0
	movl	$0, -20(%ebp)
	jmp	.L439
.L444:
	.loc 1 1234 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L446
.L447:
	.loc 1 1236 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L448
	.loc 1 1238 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L450
	.loc 1 1239 0
	addl	$1, -8(%ebp)
	jmp	.L448
.L450:
	.loc 1 1240 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L448
	.loc 1 1241 0
	subl	$1, -8(%ebp)
.L448:
	.loc 1 1235 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L446:
	.loc 1 1234 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L453
	cmpl	$0, -8(%ebp)
	jns	.L447
.L453:
	.loc 1 1244 0
	movl	-8(%ebp), %eax
	notl	%eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -20(%ebp)
.L439:
	movl	-20(%ebp), %eax
	.loc 1 1245 0
	leave
	ret
.LFE39:
	.size	back_edge_of_syntactic_loop_p, .-back_edge_of_syntactic_loop_p
	.section	.rodata
	.type	__FUNCTION__.13495, @object
	.size	__FUNCTION__.13495, 11
__FUNCTION__.13495:
	.string	"split_edge"
	.text
.globl split_edge
	.type	split_edge, @function
split_edge:
.LFB40:
	.loc 1 1257 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	pushl	%esi
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$80, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1263 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L457
	.loc 1 1264 0
	leal	__FUNCTION__.13495@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1264, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L457:
	.loc 1 1268 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L459
.LBB28:
	.loc 1 1272 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L461
.L462:
	.loc 1 1273 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L463
	.loc 1 1272 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L461:
	cmpl	$0, -52(%ebp)
	jne	.L462
.L463:
	.loc 1 1276 0
	cmpl	$0, -52(%ebp)
	je	.L459
	.loc 1 1277 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	force_nonfallthru@PLT
.L459:
.LBE28:
	.loc 1 1298 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L466
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L466
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L466
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L466
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	back_edge_of_syntactic_loop_p
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L466
	.loc 1 1304 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1298 0
	jmp	.L472
.L466:
	.loc 1 1305 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L473
	.loc 1 1306 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L472
.L473:
	.loc 1 1308 0
	movl	$0, -56(%ebp)
.L472:
	.loc 1 1310 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1311 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-64(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 1312 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -76(%ebp)
	movl	-76(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 1315 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L475
.LBB29:
	.loc 1 1317 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -48(%ebp)
.LBB30:
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	$16, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-40(%ebp), %eax
	jge	.L477
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L477:
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE30:
.LBB31:
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L479
	movl	-36(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L479:
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L481
	movl	-36(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
.L481:
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-32(%ebp), %eax
.LBE31:
.LBE29:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%edx, 32(%eax)
.LBB32:
	.loc 1 1318 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB33:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$16, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L483
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L483:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE33:
.LBB34:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L485
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L485:
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
	jle	.L487
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L487:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE34:
.LBE32:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1319 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	32(%eax), %edx
	movl	-64(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1321 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	32(%eax), %edx
	movl	-64(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L475:
	.loc 1 1325 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	make_single_succ_edge@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1329 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L489
	.loc 1 1331 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L493
	.loc 1 1332 0
	leal	__FUNCTION__.13495@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1332, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L489:
	.loc 1 1335 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ@PLT
.L493:
	.loc 1 1337 0
	movl	-64(%ebp), %eax
	.loc 1 1338 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	split_edge, .-split_edge
	.section	.rodata
	.type	__FUNCTION__.13675, @object
	.size	__FUNCTION__.13675, 20
__FUNCTION__.13675:
	.string	"insert_insn_on_edge"
	.text
.globl insert_insn_on_edge
	.type	insert_insn_on_edge, @function
insert_insn_on_edge:
.LFB41:
	.loc 1 1348 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$20, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1351 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L496
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L496
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L496
	.loc 1 1352 0
	leal	__FUNCTION__.13675@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1352, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L496:
	.loc 1 1354 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L500
	.loc 1 1355 0
	call	start_sequence@PLT
	jmp	.L502
.L500:
	.loc 1 1357 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
.L502:
	.loc 1 1359 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1361 0
	call	get_insns@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1362 0
	call	end_sequence@PLT
	.loc 1 1363 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	insert_insn_on_edge, .-insert_insn_on_edge
	.section	.rodata
	.type	__FUNCTION__.13713, @object
	.size	__FUNCTION__.13713, 26
__FUNCTION__.13713:
	.string	"commit_one_edge_insertion"
	.text
	.type	commit_one_edge_insertion, @function
commit_one_edge_insertion:
.LFB42:
	.loc 1 1371 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$52, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1372 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 1373 0
	movl	$0, -12(%ebp)
	.loc 1 1376 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1377 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1381 0
	cmpl	$0, 12(%ebp)
	je	.L505
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L505
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L505
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L505
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L505
.LBB35:
	.loc 1 1385 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1387 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1389 0
	jmp	.L511
.L512:
	.loc 1 1392 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1393 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
.L511:
	.loc 1 1389 0
	cmpl	$0, -8(%ebp)
	je	.L513
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	keep_with_call_p@PLT
	testb	%al, %al
	jne	.L512
.L513:
	.loc 1 1395 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L505:
.LBE35:
	.loc 1 1397 0
	cmpl	$0, -32(%ebp)
	jne	.L515
	cmpl	$0, -28(%ebp)
	jne	.L515
	.loc 1 1401 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L518
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L518
	.loc 1 1403 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1407 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1408 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L521
	.loc 1 1409 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L521:
	.loc 1 1410 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L523
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L523
	.loc 1 1411 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L523:
	.loc 1 1412 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L526
	.loc 1 1413 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L515
.L526:
	.loc 1 1414 0
	cmpl	$0, -20(%ebp)
	je	.L529
	.loc 1 1415 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L515
.L529:
	.loc 1 1417 0
	call	get_last_insn@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1401 0
	jmp	.L515
.L518:
	.loc 1 1422 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L531
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L531
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L531
	.loc 1 1426 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1434 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L535
	.loc 1 1435 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1436 0
	jmp	.L537
.L538:
	.loc 1 1438 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L537:
	.loc 1 1436 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L515
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	je	.L538
	jmp	.L515
.L535:
	.loc 1 1443 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L542
	.loc 1 1444 0
	leal	__FUNCTION__.13713@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1444, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L542:
	.loc 1 1446 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1422 0
	jmp	.L515
.L531:
	.loc 1 1452 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_edge@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1453 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L515:
	.loc 1 1459 0
	cmpl	$0, -32(%ebp)
	je	.L544
	.loc 1 1461 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 1462 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	jmp	.L546
.L544:
	.loc 1 1465 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -16(%ebp)
.L546:
	.loc 1 1467 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L547
	.loc 1 1474 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1475 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L549
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L549
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L552
.L549:
	.loc 1 1477 0
	leal	__FUNCTION__.13713@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1477, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L552:
	.loc 1 1479 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1480 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 1482 0
	cmpl	$0, -32(%ebp)
	je	.L555
	.loc 1 1483 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	jmp	.L555
.L547:
	.loc 1 1485 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L555
	.loc 1 1486 0
	leal	__FUNCTION__.13713@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1486, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L555:
	.loc 1 1489 0
	movl	-12(%ebp), %edx
	addl	$40, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1490 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	commit_one_edge_insertion, .-commit_one_edge_insertion
.globl commit_edge_insertions
	.type	commit_edge_insertions, @function
commit_edge_insertions:
.LFB43:
	.loc 1 1496 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%edi
.LCFI117:
	pushl	%esi
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$60, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1499 0
	movb	$0, -17(%ebp)
	.loc 1 1505 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L559
.L560:
.LBB36:
	.loc 1 1509 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L561
.L562:
	.loc 1 1511 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1512 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L563
	.loc 1 1514 0
	movb	$1, -17(%ebp)
	.loc 1 1515 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	commit_one_edge_insertion
.L563:
	.loc 1 1509 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L561:
	cmpl	$0, -28(%ebp)
	jne	.L562
.LBE36:
	.loc 1 1505 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L559:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L560
	.loc 1 1520 0
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L574
	.loc 1 1523 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1524 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1525 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L569
.L570:
	.loc 1 1526 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L571
	.loc 1 1528 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L575
	movl	%esi, %edi
	xorl	%esi, %esi
.L575:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1529 0
	movl	-36(%ebp), %eax
	movl	$0, 40(%eax)
.L571:
	.loc 1 1525 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L569:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L570
	.loc 1 1531 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_many_sub_basic_blocks@PLT
	.loc 1 1532 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L574:
	.loc 1 1533 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	commit_edge_insertions, .-commit_edge_insertions
.globl commit_edge_insertions_watch_calls
	.type	commit_edge_insertions_watch_calls, @function
commit_edge_insertions_watch_calls:
.LFB44:
	.loc 1 1540 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%edi
.LCFI123:
	pushl	%esi
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$60, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1543 0
	movb	$0, -17(%ebp)
	.loc 1 1549 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L577
.L578:
.LBB37:
	.loc 1 1553 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L579
.L580:
	.loc 1 1555 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1556 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L581
	.loc 1 1558 0
	movb	$1, -17(%ebp)
	.loc 1 1559 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	commit_one_edge_insertion
.L581:
	.loc 1 1553 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L579:
	cmpl	$0, -28(%ebp)
	jne	.L580
.LBE37:
	.loc 1 1549 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L577:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L578
	.loc 1 1564 0
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L592
	.loc 1 1567 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1568 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1569 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L587
.L588:
	.loc 1 1570 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L589
	.loc 1 1572 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L593
	movl	%esi, %edi
	xorl	%esi, %esi
.L593:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1573 0
	movl	-36(%ebp), %eax
	movl	$0, 40(%eax)
.L589:
	.loc 1 1569 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L587:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L588
	.loc 1 1575 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_many_sub_basic_blocks@PLT
	.loc 1 1576 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L592:
	.loc 1 1577 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	commit_edge_insertions_watch_calls, .-commit_edge_insertions_watch_calls
	.section	.rodata
	.align 4
.LC5:
	.string	";; Basic block %d, loop depth %d, count "
.LC6:
	.string	"%lld"
.LC7:
	.string	";; Predecessors: "
.LC8:
	.string	";; Registers live at start:"
.LC9:
	.string	";; Registers live at end:"
.LC10:
	.string	";; Successors: "
	.text
.globl dump_bb
	.type	dump_bb, @function
dump_bb:
.LFB45:
	.loc 1 1585 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$36, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1590 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1592 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1593 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1595 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1596 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L595
.L596:
	.loc 1 1597 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_edge_info@PLT
	.loc 1 1596 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L595:
	cmpl	$0, -8(%ebp)
	jne	.L596
	.loc 1 1598 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1600 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1601 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 1602 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1604 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L598
.L599:
	.loc 1 1606 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl_single@PLT
	.loc 1 1605 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L598:
	.loc 1 1604 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L599
	.loc 1 1608 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1609 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 1610 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1612 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1613 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L601
.L602:
	.loc 1 1614 0
	movl	$1, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_edge_info@PLT
	.loc 1 1613 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L601:
	cmpl	$0, -8(%ebp)
	jne	.L602
	.loc 1 1615 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1616 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	dump_bb, .-dump_bb
.globl debug_bb
	.type	debug_bb, @function
debug_bb:
.LFB46:
	.loc 1 1621 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$20, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1622 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_bb@PLT
	.loc 1 1623 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	debug_bb, .-debug_bb
.globl debug_bb_n
	.type	debug_bb_n, @function
debug_bb_n:
.LFB47:
	.loc 1 1628 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$20, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1629 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_bb@PLT
	.loc 1 1630 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	debug_bb_n, .-debug_bb_n
	.section	.rodata
.LC11:
	.string	"(nil)\n"
	.align 4
.LC12:
	.string	";; Start of basic block %d, registers live:"
	.align 4
.LC13:
	.string	";; Insn is not within a basic block\n"
	.align 4
.LC14:
	.string	";; Insn is in multiple basic blocks\n"
	.align 4
.LC15:
	.string	";; End of basic block %d, registers live:\n"
	.align 4
.LC16:
	.string	"\n;; Insns in epilogue delay list:\n\n"
	.text
.globl print_rtl_with_bb
	.type	print_rtl_with_bb, @function
print_rtl_with_bb:
.LFB48:
	.loc 1 1639 0
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
	.loc 1 1642 0
	cmpl	$0, 12(%ebp)
	jne	.L610
	.loc 1 1643 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L612
.L610:
.LBB38:
	.loc 1 1647 0
	call	get_max_uid@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1649 0
	movl	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1651 0
	movl	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1653 0
	movl	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1657 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L613
.L614:
.LBB39:
	.loc 1 1661 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1662 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1663 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L615
.L616:
.LBB40:
	.loc 1 1665 0
	movl	$2, -12(%ebp)
	.loc 1 1667 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L617
	.loc 1 1668 0
	movl	$1, -12(%ebp)
.L617:
	.loc 1 1669 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1671 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L619
.LBE40:
	.loc 1 1663 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L615:
	cmpl	$0, -16(%ebp)
	jne	.L616
.L619:
.LBE39:
	.loc 1 1657 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
.L613:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L614
	.loc 1 1676 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L622
.L623:
.LBB41:
	.loc 1 1680 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L624
	.loc 1 1682 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1684 0
	movl	-20(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 1685 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L624:
	.loc 1 1688 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L626
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L626
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L626
	.loc 1 1691 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1688 0
	jmp	.L630
.L626:
	.loc 1 1692 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L630
	.loc 1 1693 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L630:
	.loc 1 1695 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl_single@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1697 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L632
	.loc 1 1699 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1701 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 1702 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L632:
	.loc 1 1705 0
	cmpl	$0, -8(%ebp)
	je	.L634
	.loc 1 1706 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L634:
.LBE41:
	.loc 1 1676 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L622:
	cmpl	$0, -40(%ebp)
	jne	.L623
	.loc 1 1709 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1710 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1711 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L612:
.LBE38:
	.loc 1 1714 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	testl	%eax, %eax
	je	.L641
	.loc 1 1716 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1717 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L639
.L640:
	.loc 1 1719 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl_single@PLT
	.loc 1 1718 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L639:
	.loc 1 1717 0
	cmpl	$0, -40(%ebp)
	jne	.L640
.L641:
	.loc 1 1721 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	print_rtl_with_bb, .-print_rtl_with_bb
.globl update_br_prob_note
	.type	update_br_prob_note, @function
update_br_prob_note:
.LFB49:
	.loc 1 1726 0
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
	.loc 1 1728 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L654
	.loc 1 1730 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1731 0
	cmpl	$0, -12(%ebp)
	je	.L654
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L647
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L649
.L647:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L649:
	movl	-32(%ebp), %ecx
	movl	28(%ecx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-36(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-40(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L650
	.loc 1 1732 0
	jmp	.L654
.L650:
	.loc 1 1733 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L651
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L653
.L651:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L653:
	movl	-28(%ebp), %edx
	movl	28(%edx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
.L654:
	.loc 1 1734 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	update_br_prob_note, .-update_br_prob_note
	.section	.rodata
	.type	__FUNCTION__.14124, @object
	.size	__FUNCTION__.14124, 17
__FUNCTION__.14124:
	.string	"verify_flow_info"
.LC17:
	.string	"bb %d on wrong place"
	.align 4
.LC18:
	.string	"prev_bb of %d should be %d, not %d"
	.align 4
.LC19:
	.string	"end insn %d for block %d not found in the insn stream"
	.align 4
.LC20:
	.string	"insn %d is in multiple basic blocks (%d and %d)"
	.align 4
.LC21:
	.string	"head insn %d for block %d not found in the insn stream"
	.align 4
.LC22:
	.string	"verify_flow_info: REG_BR_PROB does not match cfg %i %i"
	.align 4
.LC23:
	.string	"verify_flow_info: Wrong count of block %i %i"
	.align 4
.LC24:
	.string	"verify_flow_info: Wrong frequency of block %i %i"
	.align 4
.LC25:
	.string	"verify_flow_info: Duplicate edge %i->%i"
	.align 4
.LC26:
	.string	"verify_flow_info: Wrong probability of edge %i->%i %i"
	.align 4
.LC27:
	.string	"verify_flow_info: Wrong count of edge %i->%i %i"
	.align 4
.LC28:
	.string	"verify_flow_info: Incorrect blocks for fallthru %i->%i"
	.align 4
.LC29:
	.string	"verify_flow_info: Incorrect fallthru %i->%i"
	.align 4
.LC30:
	.string	"wrong insn in the fallthru edge"
	.align 4
.LC31:
	.string	"verify_flow_info: Basic block %d succ edge is corrupted"
.LC32:
	.string	"Predecessor: "
.LC33:
	.string	"\nSuccessor: "
	.align 4
.LC34:
	.string	"Missing REG_EH_REGION note in the end of bb %i"
	.align 4
.LC35:
	.string	"Too many outgoing branch edges from bb %i"
	.align 4
.LC36:
	.string	"Fallthru edge after unconditional jump %i"
	.align 4
.LC37:
	.string	"Wrong amount of branch edges after unconditional jump %i"
	.align 4
.LC38:
	.string	"Wrong amount of branch edges after conditional jump %i"
	.align 4
.LC39:
	.string	"Call edges for non-call insn in bb %i"
	.align 4
.LC40:
	.string	"Abnormal edges for no purpose in bb %i"
	.align 4
.LC41:
	.string	"missing barrier after block %i"
	.align 4
.LC42:
	.string	"basic block %d pred edge is corrupted"
	.align 4
.LC43:
	.string	"insn %d inside basic block %d but block_for_insn is NULL"
	.align 4
.LC44:
	.string	"insn %d inside basic block %d but block_for_insn is %i"
	.align 4
.LC45:
	.string	"NOTE_INSN_BASIC_BLOCK is missing for block %d"
	.align 4
.LC46:
	.string	"NOTE_INSN_BASIC_BLOCK %d in middle of basic block %d"
.LC47:
	.string	"in basic block %d:"
	.align 4
.LC48:
	.string	"flow control insn inside a basic block"
	.align 4
.LC49:
	.string	"basic block %i edge lists are corrupted"
	.align 4
.LC50:
	.string	"basic blocks not numbered consecutively"
.LC51:
	.string	"insn outside basic block"
	.align 4
.LC52:
	.string	"return not followed by barrier"
	.align 4
.LC53:
	.string	"number of bb notes in insn chain (%d) != n_basic_blocks (%d)"
.LC54:
	.string	"verify_flow_info failed"
	.text
.globl verify_flow_info
	.type	verify_flow_info, @function
verify_flow_info:
.LFB50:
	.loc 1 1758 0
	pushl	%ebp
.LCFI147:
	movl	%esp, %ebp
.LCFI148:
	pushl	%esi
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$144, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1759 0
	call	get_max_uid@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1760 0
	call	get_insns@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1761 0
	call	get_last_insn@PLT
	movl	%eax, -92(%ebp)
	.loc 1 1765 0
	movl	$0, -68(%ebp)
	.loc 1 1768 0
	movl	-100(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1769 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -84(%ebp)
	.loc 1 1771 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1774 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1775 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L656
.L657:
	.loc 1 1777 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -64(%ebp)
	je	.L658
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	cmpl	-64(%ebp), %eax
	je	.L658
	.loc 1 1780 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1781 0
	movl	$1, -68(%ebp)
.L658:
	.loc 1 1784 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L661
	.loc 1 1786 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	movl	44(%eax), %edx
	movl	-60(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1788 0
	movl	$1, -68(%ebp)
.L661:
	.loc 1 1791 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1775 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
.L656:
	cmpl	$0, -64(%ebp)
	jne	.L657
	.loc 1 1794 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L664
.L665:
.LBB42:
	.loc 1 1796 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1797 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1800 0
	movl	-92(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L666
.L667:
	.loc 1 1801 0
	movl	-76(%ebp), %eax
	cmpl	-52(%ebp), %eax
	je	.L668
	.loc 1 1800 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
.L666:
	cmpl	$0, -76(%ebp)
	jne	.L667
.L668:
	.loc 1 1804 0
	cmpl	$0, -76(%ebp)
	jne	.L672
	.loc 1 1806 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1808 0
	movl	$1, -68(%ebp)
	.loc 1 1813 0
	jmp	.L672
.L673:
	.loc 1 1818 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-88(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L674
	.loc 1 1820 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	44(%eax), %edx
	movl	-64(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1822 0
	movl	$1, -68(%ebp)
.L674:
	.loc 1 1825 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-88(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1827 0
	movl	-76(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L676
	.loc 1 1813 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
.L672:
	cmpl	$0, -76(%ebp)
	jne	.L673
.L676:
	.loc 1 1830 0
	cmpl	$0, -76(%ebp)
	jne	.L678
	.loc 1 1832 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1834 0
	movl	$1, -68(%ebp)
.L678:
	.loc 1 1837 0
	movl	-76(%ebp), %eax
	movl	%eax, -92(%ebp)
.LBE42:
	.loc 1 1794 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -64(%ebp)
.L664:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -64(%ebp)
	jne	.L665
	.loc 1 1841 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L681
.L682:
.LBB43:
	.loc 1 1843 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	.loc 1 1847 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L683
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L683
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L683
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L683
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L683
	.loc 1 1852 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L689
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L691
.L689:
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -116(%ebp)
.L691:
	movl	-116(%ebp), %ecx
	movl	28(%ecx), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	-124(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-128(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L683
	.loc 1 1854 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L693
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L695
.L693:
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -112(%ebp)
.L695:
	movl	-112(%ebp), %esi
	movl	28(%esi), %ecx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1856 0
	movl	$1, -68(%ebp)
.L683:
	.loc 1 1859 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	testl	%edx, %edx
	jns	.L696
	.loc 1 1861 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1863 0
	movl	$1, -68(%ebp)
.L696:
	.loc 1 1865 0
	movl	-64(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jns	.L698
	.loc 1 1867 0
	movl	-64(%ebp), %eax
	movl	72(%eax), %edx
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1869 0
	movl	$1, -68(%ebp)
.L698:
	.loc 1 1871 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L700
.L701:
	.loc 1 1873 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-84(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L702
	.loc 1 1875 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1877 0
	movl	$1, -68(%ebp)
.L702:
	.loc 1 1879 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L704
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	$10000, %eax
	jle	.L706
.L704:
	.loc 1 1881 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1883 0
	movl	$1, -68(%ebp)
.L706:
	.loc 1 1885 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	testl	%edx, %edx
	jns	.L707
	.loc 1 1887 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1889 0
	movl	$1, -68(%ebp)
.L707:
	.loc 1 1892 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-84(%ebp), %eax
	leal	8(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1894 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L709
	.loc 1 1895 0
	addl	$1, -48(%ebp)
.L709:
	.loc 1 1897 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$-33, %eax
	testl	%eax, %eax
	jne	.L711
	.loc 1 1898 0
	addl	$1, -32(%ebp)
.L711:
	.loc 1 1900 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L713
	.loc 1 1901 0
	addl	$1, -40(%ebp)
.L713:
	.loc 1 1903 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L715
	.loc 1 1904 0
	addl	$1, -44(%ebp)
	jmp	.L717
.L715:
	.loc 1 1905 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L717
	.loc 1 1906 0
	addl	$1, -36(%ebp)
.L717:
	.loc 1 1908 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L719
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L719
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L719
.LBB44:
	.loc 1 1914 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	52(%eax), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L723
	.loc 1 1916 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1919 0
	movl	$1, -68(%ebp)
	jmp	.L719
.L723:
	.loc 1 1922 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L725
.L726:
	.loc 1 1924 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L727
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L729
.L727:
	.loc 1 1932 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1934 0
	leal	__FUNCTION__.14124@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$1934, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L729:
	.loc 1 1923 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L725:
	.loc 1 1922 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L726
.L719:
.LBE44:
	.loc 1 1939 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L730
	.loc 1 1941 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1943 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1944 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_edge_info@PLT
	.loc 1 1945 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1946 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_edge_info@PLT
	.loc 1 1947 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1948 0
	movl	$1, -68(%ebp)
.L730:
	.loc 1 1951 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	leal	8(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 1871 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L700:
	cmpl	$0, -28(%ebp)
	jne	.L701
	.loc 1 1954 0
	cmpl	$0, -44(%ebp)
	je	.L733
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$63, %ax
	je	.L733
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L733
	.loc 1 1957 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1958 0
	movl	$1, -68(%ebp)
.L733:
	.loc 1 1960 0
	cmpl	$0, -32(%ebp)
	je	.L737
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L739
	cmpl	$1, -32(%ebp)
	jle	.L737
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	jne	.L739
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L737
.L739:
	.loc 1 1965 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1966 0
	movl	$1, -68(%ebp)
.L737:
	.loc 1 1968 0
	cmpl	$0, -48(%ebp)
	je	.L743
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L743
	.loc 1 1970 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1971 0
	movl	$1, -68(%ebp)
.L743:
	.loc 1 1973 0
	cmpl	$1, -32(%ebp)
	je	.L746
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L746
	.loc 1 1975 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1976 0
	movl	$1, -68(%ebp)
.L746:
	.loc 1 1978 0
	cmpl	$1, -32(%ebp)
	je	.L749
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L749
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L749
	.loc 1 1981 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1982 0
	movl	$1, -68(%ebp)
.L749:
	.loc 1 1984 0
	cmpl	$0, -40(%ebp)
	je	.L753
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L753
	.loc 1 1986 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1987 0
	movl	$1, -68(%ebp)
.L753:
	.loc 1 1989 0
	cmpl	$0, -36(%ebp)
	je	.L756
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L756
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L756
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L760
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L760
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L756
.L760:
	.loc 1 1995 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1996 0
	movl	$1, -68(%ebp)
.L756:
	.loc 1 1999 0
	cmpl	$0, -48(%ebp)
	jne	.L763
.LBB45:
	.loc 1 2004 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L765
.L766:
	.loc 1 2006 0
	cmpl	$0, -16(%ebp)
	je	.L767
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L769
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L769
.L767:
	.loc 1 2010 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2011 0
	movl	$1, -68(%ebp)
	.loc 1 2012 0
	jmp	.L763
.L769:
	.loc 1 2005 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L765:
	.loc 1 2004 0
	cmpl	$0, -16(%ebp)
	je	.L766
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L766
.L763:
.LBE45:
	.loc 1 2016 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L772
.L773:
	.loc 1 2018 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L774
	.loc 1 2020 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2021 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2022 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_edge_info@PLT
	.loc 1 2023 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2024 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_edge_info@PLT
	.loc 1 2025 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 2026 0
	movl	$1, -68(%ebp)
.L774:
	.loc 1 2028 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	leal	8(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, (%ecx)
	.loc 1 2016 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L772:
	cmpl	$0, -28(%ebp)
	jne	.L773
	.loc 1 2031 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L777
.L778:
	.loc 1 2032 0
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L779
	.loc 1 2034 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_rtx@PLT
	.loc 1 2035 0
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L781
	.loc 1 2036 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L783
.L781:
	.loc 1 2040 0
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %edx
	movl	-64(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L783:
	.loc 1 2044 0
	movl	$1, -68(%ebp)
.L779:
	.loc 1 2031 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L777:
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-76(%ebp), %eax
	jne	.L778
	.loc 1 2050 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 2051 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L785
	.loc 1 2053 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-76(%ebp), %eax
	jne	.L787
	.loc 1 2055 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2057 0
	movl	$1, -68(%ebp)
.L787:
	.loc 1 2060 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L785:
	.loc 1 2063 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L789
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L789
	movl	-76(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L792
.L789:
	.loc 1 2065 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2067 0
	movl	$1, -68(%ebp)
.L792:
	.loc 1 2070 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-76(%ebp), %eax
	je	.L793
	.loc 1 2074 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L795
.L796:
	.loc 1 2076 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L797
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L797
	.loc 1 2078 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2080 0
	movl	$1, -68(%ebp)
.L797:
	.loc 1 2083 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-76(%ebp), %eax
	je	.L793
	.loc 1 2086 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L801
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L801
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L804
.L801:
	.loc 1 2090 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2091 0
	leal	__FUNCTION__.14124@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$2091, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L804:
	.loc 1 2074 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L795:
	cmpl	$0, -76(%ebp)
	jne	.L796
.L793:
.LBE43:
	.loc 1 1841 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -64(%ebp)
.L681:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -64(%ebp)
	jne	.L682
.LBB46:
	.loc 1 2100 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L806
.L807:
	.loc 1 2101 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	leal	8(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 2100 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L806:
	cmpl	$0, -12(%ebp)
	jne	.L807
	.loc 1 2103 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L809
.L810:
	.loc 1 2104 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	leal	8(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, (%ecx)
	.loc 1 2103 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L809:
	cmpl	$0, -12(%ebp)
	jne	.L810
.LBE46:
	.loc 1 2107 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L812
.L813:
	.loc 1 2108 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L814
	.loc 1 2110 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2111 0
	movl	$1, -68(%ebp)
.L814:
	.loc 1 2107 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
.L812:
	cmpl	$0, -64(%ebp)
	jne	.L813
	.loc 1 2114 0
	movl	$0, -72(%ebp)
	.loc 1 2115 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2117 0
	movl	-96(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L817
.L818:
	.loc 1 2119 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L819
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L819
	.loc 1 2121 0
	movl	-76(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2123 0
	addl	$1, -72(%ebp)
	.loc 1 2124 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L822
	.loc 1 2125 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L822:
	.loc 1 2127 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
.L819:
	.loc 1 2130 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-88(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L824
	.loc 1 2132 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -108(%ebp)
	cmpl	$46, -108(%ebp)
	je	.L828
	cmpl	$47, -108(%ebp)
	je	.L824
	cmpl	$45, -108(%ebp)
	je	.L824
	jmp	.L826
.L828:
	.loc 1 2140 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L824
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L824
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L832
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	jne	.L824
.L832:
	.loc 1 2144 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 2147 0
	jmp	.L824
.L826:
	.loc 1 2150 0
	leal	__FUNCTION__.14124@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$2150, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L824:
	.loc 1 2154 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L834
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L834
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L834
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	jne	.L834
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L839
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L834
.L839:
	.loc 1 2158 0
	leal	__FUNCTION__.14124@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$2158, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L834:
	.loc 1 2117 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L817:
	cmpl	$0, -76(%ebp)
	jne	.L818
	.loc 1 2161 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -72(%ebp)
	je	.L842
	.loc 1 2162 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L842:
	.loc 1 2166 0
	cmpl	$0, -68(%ebp)
	je	.L844
	.loc 1 2167 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L844:
	.loc 1 2170 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2171 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2172 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2173 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE50:
	.size	verify_flow_info, .-verify_flow_info
	.section	.rodata
	.type	__FUNCTION__.14718, @object
	.size	__FUNCTION__.14718, 17
__FUNCTION__.14718:
	.string	"purge_dead_edges"
.LC55:
	.string	"Purged edges from bb %i\n"
	.align 4
.LC56:
	.string	"Purged non-fallthru edges from bb %i\n"
	.text
.globl purge_dead_edges
	.type	purge_dead_edges, @function
purge_dead_edges:
.LFB51:
	.loc 1 2182 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%edi
.LCFI154:
	pushl	%esi
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$108, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2184 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2185 0
	movb	$0, -17(%ebp)
	.loc 1 2188 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L848
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L848
.LBB47:
	.loc 1 2193 0
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	je	.L851
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_equal_equiv_note@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L848
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	may_trap_p@PLT
	testl	%eax, %eax
	jne	.L848
.L851:
	.loc 1 2196 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L848:
.LBE47:
	.loc 1 2200 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L854
.L855:
	.loc 1 2202 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2203 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L856
	.loc 1 2205 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	jne	.L858
	.loc 1 2206 0
	jmp	.L860
.L856:
	.loc 1 2208 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L858
	.loc 1 2210 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L860
	movl	$0, 8(%esp)
	movl	$22, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L858
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L858
.L860:
	.loc 1 2218 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
	.loc 1 2219 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2220 0
	movb	$1, -17(%ebp)
.L858:
	.loc 1 2200 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L854:
	cmpl	$0, -52(%ebp)
	jne	.L855
	.loc 1 2223 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L865
.LBB48:
	.loc 1 2229 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L867
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	jne	.L867
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L867
	.loc 1 2232 0
	movzbl	-17(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L871
.L867:
	.loc 1 2236 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L872
	.loc 1 2238 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2239 0
	cmpl	$0, -32(%ebp)
	je	.L876
	.loc 1 2240 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 2241 0
	jmp	.L876
.L877:
	.loc 1 2242 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L876:
	.loc 1 2241 0
	movl	$0, 8(%esp)
	movl	$19, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.L877
.L872:
	.loc 1 2245 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L878
.L879:
	.loc 1 2247 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2252 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-3, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 2255 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L880
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	jne	.L882
.L880:
	.loc 1 2259 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L883
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	%eax, %edx
	je	.L882
.L883:
	.loc 1 2264 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L885
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	jne	.L882
.L885:
	.loc 1 2268 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L887
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	jne	.L882
.L887:
	.loc 1 2274 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2275 0
	movb	$1, -17(%ebp)
	.loc 1 2276 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L882:
	.loc 1 2245 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L878:
	cmpl	$0, -52(%ebp)
	jne	.L879
	.loc 1 2279 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L890
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L892
.L890:
	.loc 1 2280 0
	movzbl	-17(%ebp), %edx
	movl	%edx, -76(%ebp)
	jmp	.L871
.L892:
	.loc 1 2282 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L893
	.loc 1 2283 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L893:
	.loc 1 2285 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L895
	.loc 1 2286 0
	movzbl	-17(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	jmp	.L871
.L895:
	.loc 1 2289 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L897
	.loc 1 2291 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$10000, 28(%eax)
	.loc 1 2292 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	jmp	.L899
.L897:
	.loc 1 2296 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2297 0
	cmpl	$0, -32(%ebp)
	jne	.L900
	.loc 1 2298 0
	movzbl	-17(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L871
.L900:
	.loc 1 2300 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L902
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L904
.L902:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
.L904:
	movl	-72(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 2301 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L905
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L907
.L905:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -68(%ebp)
.L907:
	movl	-68(%ebp), %ecx
	movl	%ecx, -24(%ebp)
	.loc 1 2302 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2303 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %edx
	movl	$10000, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2304 0
	movl	8(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -92(%ebp)
	movl	-96(%ebp), %ecx
	imull	%edi, %ecx
	movl	-92(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -80(%ebp)
	addl	-80(%ebp), %ecx
	movl	-96(%ebp), %eax
	mull	%esi
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	addl	-92(%ebp), %ecx
	movl	%ecx, -92(%ebp)
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__divdi3@PLT
	movl	-28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 2305 0
	movl	8(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -92(%ebp)
	movl	-96(%ebp), %ecx
	imull	%edi, %ecx
	movl	-92(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -84(%ebp)
	addl	-84(%ebp), %ecx
	movl	-96(%ebp), %eax
	mull	%esi
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	addl	-92(%ebp), %ecx
	movl	%ecx, -92(%ebp)
	movl	$10000, 8(%esp)
	movl	$0, 12(%esp)
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__divdi3@PLT
	movl	-24(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
.L899:
	.loc 1 2308 0
	movzbl	-17(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	jmp	.L871
.L865:
.LBE48:
	.loc 1 2316 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L908
.L909:
	.loc 1 2317 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L908:
	.loc 1 2316 0
	cmpl	$0, -52(%ebp)
	je	.L910
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	.L909
.L910:
	.loc 1 2320 0
	cmpl	$0, -52(%ebp)
	jne	.L912
	.loc 1 2321 0
	movzbl	-17(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L871
.L912:
	.loc 1 2323 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L914
.L915:
	.loc 1 2325 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2326 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L916
	.loc 1 2328 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2329 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
	.loc 1 2330 0
	movb	$1, -17(%ebp)
.L916:
	.loc 1 2323 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L914:
	cmpl	$0, -52(%ebp)
	jne	.L915
	.loc 1 2334 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L919
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L921
.L919:
	.loc 1 2335 0
	leal	__FUNCTION__.14718@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2335, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L921:
	.loc 1 2337 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$10000, 28(%eax)
	.loc 1 2338 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 2340 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L922
	.loc 1 2341 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L922:
	.loc 1 2343 0
	movzbl	-17(%ebp), %edx
	movl	%edx, -76(%ebp)
.L871:
	movl	-76(%ebp), %eax
	.loc 1 2344 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	purge_dead_edges, .-purge_dead_edges
.globl purge_all_dead_edges
	.type	purge_all_dead_edges, @function
purge_all_dead_edges:
.LFB52:
	.loc 1 2352 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%edi
.LCFI160:
	pushl	%esi
.LCFI161:
	pushl	%ebx
.LCFI162:
	subl	$60, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2353 0
	movl	$0, -32(%ebp)
	.loc 1 2354 0
	movl	$0, -28(%ebp)
	.loc 1 2357 0
	cmpl	$0, 8(%ebp)
	je	.L926
	.loc 1 2359 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2360 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.L926:
	.loc 1 2363 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L928
.L929:
.LBB49:
	.loc 1 2365 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
	movb	%al, -17(%ebp)
	.loc 1 2367 0
	movzbl	-17(%ebp), %eax
	orl	%eax, -32(%ebp)
	.loc 1 2368 0
	cmpb	$0, -17(%ebp)
	je	.L930
	cmpl	$0, 8(%ebp)
	je	.L930
	.loc 1 2369 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L940
	movl	%esi, %edi
	xorl	%esi, %esi
.L940:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L930:
.LBE49:
	.loc 1 2363 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L928:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L929
	.loc 1 2372 0
	cmpl	$0, 8(%ebp)
	je	.L934
	cmpl	$0, -32(%ebp)
	je	.L934
	.loc 1 2373 0
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	update_life_info@PLT
.L934:
	.loc 1 2377 0
	cmpl	$0, 8(%ebp)
	je	.L937
	.loc 1 2378 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L937:
	.loc 1 2379 0
	cmpl	$0, -32(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 2380 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	purge_all_dead_edges, .-purge_all_dead_edges
	.comm	label_value_list,4,4
	.comm	tail_recursion_label_list,4,4
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
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
	.long	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
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
	.long	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
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
	.long	.LCFI19-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
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
	.long	.LCFI23-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI26-.LCFI24
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
	.long	.LCFI38-.LCFI36
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
	.long	.LCFI39-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
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
	.long	.LCFI42-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI43
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
	.long	.LCFI46-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
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
	.long	.LCFI49-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI50
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
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
	.long	.LCFI62-.LCFI59
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI63-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI64
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
	.long	.LCFI69-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
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
	.long	.LCFI77-.LCFI73
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
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI78-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI79
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
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI87-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI88
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
	.long	.LCFI94-.LCFI92
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
	.long	.LCFI95-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI98-.LCFI96
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
	.long	.LCFI99-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xd
	.uleb128 0x5
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
	.long	.LCFI106-.LCFI103
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI107-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI108
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
	.long	.LCFI111-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI114-.LCFI112
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
	.long	.LCFI120-.LCFI116
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI121-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI126-.LCFI122
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI151-.LCFI148
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI152-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI153
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
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI158-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI159
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE74:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/rtl.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "../../../kgccfe/gnu/bitmap.h"
	.file 6 "../../../kgccfe/gnu/tree.h"
	.file 7 "../../../kgccfe/gnu/hashtable.h"
	.file 8 "../../../kgccfe/gnu/location.h"
	.file 9 "../../../kgccfe/gnu/function.h"
	.file 10 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 11 "../../../kgccfe/omp_types.h"
	.file 12 "../../../kgccfe/gnu/basic-block.h"
	.file 13 "../../../kgccfe/gnu/sbitmap.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "../../../include/gnu/obstack.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 19 "../../../kgccfe/gnu/varray.h"
	.file 20 "../../../kgccfe/gnu/regs.h"
	.file 21 "../../../kgccfe/gnu/flags.h"
	.file 22 "../../../kgccfe/gnu/output.h"
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
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
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
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
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
.LLST15:
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
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI78-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI79-.Ltext0
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
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
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
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI95-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI96-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI107-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI108-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI111-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI112-.Ltext0
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
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI122-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x8297
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cfgrtl.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19c
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x8a
	.long	0x4e16
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x3
	.byte	0x8d
	.long	0x80d
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x3
	.byte	0x94
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x3
	.byte	0x97
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x3
	.byte	0x9f
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x3
	.byte	0xa8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x3
	.byte	0xba
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x3
	.byte	0xc1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x3
	.byte	0xc6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x3
	.byte	0xcf
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x3
	.byte	0xd4
	.long	0x5a33
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x4
	.long	0x1e4
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf8
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf9
	.long	0x5a43
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6
	.uleb128 0x7
	.long	0x2d0
	.string	"tree_node"
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x6
	.value	0x855
	.long	0x2cc9
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x6
	.value	0x856
	.long	0x2fe3
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x6
	.value	0x857
	.long	0x302b
	.uleb128 0x9
	.string	"vector"
	.byte	0x6
	.value	0x858
	.long	0x314e
	.uleb128 0x9
	.string	"string"
	.byte	0x6
	.value	0x859
	.long	0x308c
	.uleb128 0x9
	.string	"complex"
	.byte	0x6
	.value	0x85a
	.long	0x30f9
	.uleb128 0x9
	.string	"identifier"
	.byte	0x6
	.value	0x85b
	.long	0x3383
	.uleb128 0x9
	.string	"decl"
	.byte	0x6
	.value	0x85c
	.long	0x4418
	.uleb128 0x9
	.string	"type"
	.byte	0x6
	.value	0x85d
	.long	0x35e6
	.uleb128 0x9
	.string	"list"
	.byte	0x6
	.value	0x85e
	.long	0x33ba
	.uleb128 0x9
	.string	"vec"
	.byte	0x6
	.value	0x85f
	.long	0x33ff
	.uleb128 0x9
	.string	"exp"
	.byte	0x6
	.value	0x860
	.long	0x3450
	.uleb128 0x9
	.string	"block"
	.byte	0x6
	.value	0x861
	.long	0x349c
	.uleb128 0x9
	.string	"omp"
	.byte	0x6
	.value	0x863
	.long	0x4db8
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
	.byte	0xa
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xa
	.value	0xaad
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xa
	.value	0xab0
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xa
	.value	0xab5
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xa
	.value	0xab8
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xa
	.value	0xabb
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xa
	.value	0xac8
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xa
	.value	0xacb
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xa
	.value	0xad3
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xa
	.value	0xad4
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d3
	.long	0x9b
	.uleb128 0x10
	.long	0x3d3
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xa
	.value	0xad5
	.long	0x2ea
	.uleb128 0x2
	.string	"size_t"
	.byte	0x12
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
	.byte	0x11
	.byte	0x3b
	.long	0x458
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x11
	.byte	0x90
	.long	0x4a2
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x11
	.byte	0x91
	.long	0x483
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2db
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x4d3
	.uleb128 0x13
	.long	0x74e
	.long	.LASF2
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x10
	.value	0x10c
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x10
	.value	0x111
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x10
	.value	0x112
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x10
	.value	0x113
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x10
	.value	0x114
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x10
	.value	0x115
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x10
	.value	0x116
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x10
	.value	0x117
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x10
	.value	0x118
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x10
	.value	0x11a
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x10
	.value	0x11b
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x10
	.value	0x11c
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x10
	.value	0x11e
	.long	0x7c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x10
	.value	0x120
	.long	0x7cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x10
	.value	0x122
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x10
	.value	0x126
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x10
	.value	0x128
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x10
	.value	0x12c
	.long	0x411
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x10
	.value	0x12d
	.long	0x43c
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x10
	.value	0x12e
	.long	0x7d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x10
	.value	0x132
	.long	0x7e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x10
	.value	0x13b
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x10
	.value	0x144
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x10
	.value	0x145
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x10
	.value	0x146
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x10
	.value	0x147
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x10
	.value	0x148
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x10
	.value	0x14a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x10
	.value	0x14c
	.long	0x7e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.long	0x75e
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x764
	.uleb128 0xa
	.long	0x400
	.uleb128 0x3
	.byte	0x4
	.long	0x400
	.uleb128 0x3
	.byte	0x4
	.long	0x3f2
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x10
	.byte	0xb0
	.uleb128 0x4
	.long	0x7c6
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x10
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x10
	.byte	0xb7
	.long	0x7c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x10
	.byte	0xb8
	.long	0x7cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x10
	.byte	0xbc
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x783
	.uleb128 0x3
	.byte	0x4
	.long	0x4d3
	.uleb128 0xf
	.long	0x7e2
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x775
	.uleb128 0xf
	.long	0x7f8
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x808
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x2e3
	.uleb128 0x15
	.long	0xa56
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
	.uleb128 0x4
	.long	0xa88
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0xa56
	.uleb128 0x15
	.long	0x13bc
	.string	"tree_code"
	.byte	0x4
	.byte	0x6
	.byte	0x27
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
	.byte	0x31
	.long	0x3bc
	.uleb128 0x4
	.long	0x140c
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x32
	.uleb128 0x6
	.string	"block"
	.byte	0x6
	.byte	0x32
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x6
	.byte	0x32
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x36
	.long	0x1416
	.uleb128 0x17
	.string	"st"
	.byte	0x1
	.uleb128 0x18
	.long	0x146b
	.long	.LASF3
	.byte	0x4
	.byte	0x6
	.byte	0x5a
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
	.long	0x2cc9
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
	.byte	0x69
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
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x16
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x16
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x16
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x16
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x16
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x16
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x16
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x16
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x16
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x16
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x16
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x16
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x16
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x16
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x16
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x16
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x16
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x16
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x16
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x16
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x16
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x16
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x16
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x16
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x16
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x16
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x16
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x16
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x16
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x16
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x16
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x16
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x16
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x16
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x16
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x16
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x16
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x16
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x16
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x16
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x16
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x16
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x16
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x16
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x16
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x16
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x16
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x16
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x16
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x16
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x16
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x16
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x16
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x16
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x16
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x16
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x16
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x16
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x16
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x16
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x16
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x16
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x16
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x16
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x16
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x16
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x16
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x16
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x16
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x16
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x16
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x16
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x16
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x16
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x16
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x16
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x16
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x16
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x16
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x16
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x16
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x16
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x16
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x16
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x16
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x16
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x16
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x16
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x16
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x16
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x16
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x16
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x16
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x16
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x16
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x16
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x16
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x16
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x16
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x16
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x16
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x16
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x16
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x16
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x16
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x16
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x16
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x16
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x16
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x16
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x16
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x16
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x16
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x16
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x16
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x16
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x16
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x16
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x16
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x16
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x16
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x16
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x16
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x16
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x16
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x16
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x16
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x16
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x16
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x16
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x16
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x16
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x16
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x16
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x16
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x16
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x16
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x16
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x16
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x16
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x16
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x16
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x16
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x16
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x16
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x16
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x16
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x16
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x16
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x16
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x16
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x16
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x16
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x16
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x16
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x16
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x16
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x16
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x16
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x16
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x16
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x16
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x16
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x16
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x16
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x16
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x16
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x16
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x16
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x16
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x16
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x16
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x16
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x16
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x2fa7
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8e
	.uleb128 0x6
	.string	"chain"
	.byte	0x6
	.byte	0x8f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x6
	.byte	0x90
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x6
	.byte	0x92
	.long	0xa9a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x6
	.byte	0x94
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x6
	.byte	0x95
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x6
	.byte	0x96
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x6
	.byte	0x97
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x6
	.byte	0x98
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x6
	.byte	0x99
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x6
	.byte	0x9a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_0"
	.byte	0x6
	.byte	0x9b
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x6
	.byte	0x9d
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x6
	.byte	0x9e
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x6
	.byte	0x9f
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x6
	.byte	0xa0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x6
	.byte	0xa1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x6
	.byte	0xa2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x6
	.byte	0xa3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x6
	.byte	0xa4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF4
	.byte	0x6
	.byte	0xa6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF5
	.byte	0x6
	.byte	0xa7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF6
	.byte	0x6
	.byte	0xa8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF7
	.byte	0x6
	.byte	0xa9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF8
	.byte	0x6
	.byte	0xaa
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF9
	.byte	0x6
	.byte	0xab
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.long	.LASF10
	.byte	0x6
	.byte	0xac
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_1"
	.byte	0x6
	.byte	0xad
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x6
	.byte	0xaf
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x6
	.byte	0xb0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x6
	.byte	0xb1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x6
	.byte	0xb2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x6
	.byte	0xb3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x2fe3
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x2f6
	.uleb128 0xd
	.string	"low"
	.byte	0x6
	.value	0x2f7
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x6
	.value	0x2f8
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x302b
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x2ef
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x2f0
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x2f1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x6
	.value	0x2f9
	.long	0x2fa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3079
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x30b
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x30c
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x30d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x30e
	.long	0x3086
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3079
	.uleb128 0xc
	.long	0x30f3
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x31f
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x320
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x322
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x6
	.value	0x323
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x6
	.value	0x325
	.long	0x30f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x140c
	.uleb128 0xc
	.long	0x314e
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x32e
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x32f
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x330
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x6
	.value	0x331
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x6
	.value	0x332
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x3196
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x340
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x341
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x342
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x6
	.value	0x343
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x31e0
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xf
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0xf
	.byte	0xa3
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0xf
	.byte	0xa4
	.long	0x31e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0xf
	.byte	0xa5
	.long	0x74e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3196
	.uleb128 0xc
	.long	0x3313
	.string	"obstack"
	.byte	0x2c
	.byte	0xe
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0xf
	.byte	0xaa
	.long	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0xf
	.byte	0xab
	.long	0x31e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0xf
	.byte	0xac
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0xf
	.byte	0xad
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0xf
	.byte	0xae
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0xf
	.byte	0xaf
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0xf
	.byte	0xb0
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0xf
	.byte	0xb5
	.long	0x3328
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0xf
	.byte	0xb6
	.long	0x333f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0xf
	.byte	0xb7
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0xf
	.byte	0xbd
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1b
	.long	0x3328
	.byte	0x1
	.long	0x31e0
	.uleb128 0x1c
	.long	0x4bf
	.uleb128 0x1c
	.long	0x4a2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3313
	.uleb128 0x1d
	.long	0x333f
	.byte	0x1
	.uleb128 0x1c
	.long	0x4bf
	.uleb128 0x1c
	.long	0x31e0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x332e
	.uleb128 0x13
	.long	0x3383
	.long	.LASF11
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x75e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x33ba
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x35f
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x360
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x6
	.value	0x361
	.long	0x3345
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x33ff
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x369
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x36a
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x6
	.value	0x36b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x6
	.value	0x36c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3440
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x377
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x378
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x379
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x6
	.value	0x37a
	.long	0x3440
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x3450
	.long	0x1e4
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x349c
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3bd
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x3be
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x6
	.value	0x3bf
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x6
	.value	0x3c2
	.long	0x3440
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x358c
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x3f3
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x3f4
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x3f6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x6
	.value	0x3f7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.string	"block_num"
	.byte	0x6
	.value	0x3f8
	.long	0x3bc
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x6
	.value	0x3fa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x6
	.value	0x3fb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x6
	.value	0x3fc
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x6
	.value	0x3fd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x6
	.value	0x3fe
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x6
	.value	0x3ff
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x20
	.long	0x35d3
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x562
	.uleb128 0x9
	.string	"address"
	.byte	0x6
	.value	0x563
	.long	0x2e3
	.uleb128 0x9
	.string	"pointer"
	.byte	0x6
	.value	0x564
	.long	0x4c1
	.uleb128 0x9
	.string	"die"
	.byte	0x6
	.value	0x565
	.long	0x35e0
	.byte	0x0
	.uleb128 0x17
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x35d3
	.uleb128 0xc
	.long	0x3939
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x53f
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x540
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x6
	.value	0x541
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x542
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x6
	.value	0x543
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x6
	.value	0x544
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x545
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"precision"
	.byte	0x6
	.value	0x547
	.long	0x3bc
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"mode"
	.byte	0x6
	.value	0x548
	.long	0x80d
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"string_flag"
	.byte	0x6
	.value	0x54a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_force_blk_flag"
	.byte	0x6
	.value	0x54b
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"needs_constructing_flag"
	.byte	0x6
	.value	0x54c
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"transparent_union_flag"
	.byte	0x6
	.value	0x54d
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"packed_flag"
	.byte	0x6
	.value	0x54e
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"restrict_flag"
	.byte	0x6
	.value	0x54f
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x6
	.value	0x550
	.long	0x3bc
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x6
	.value	0x552
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x6
	.value	0x553
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x6
	.value	0x554
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x6
	.value	0x555
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x6
	.value	0x556
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x6
	.value	0x557
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x6
	.value	0x558
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x6
	.value	0x559
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"defer_expansion"
	.byte	0x6
	.value	0x55c
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"align"
	.byte	0x6
	.value	0x55f
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x6
	.value	0x560
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x6
	.value	0x561
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"symtab"
	.byte	0x6
	.value	0x566
	.long	0x358c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x568
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"minval"
	.byte	0x6
	.value	0x569
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"maxval"
	.byte	0x6
	.value	0x56a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x6
	.value	0x56b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x6
	.value	0x56c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"binfo"
	.byte	0x6
	.value	0x56d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x6
	.value	0x56f
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1a
	.long	.LASF19
	.byte	0x6
	.value	0x571
	.long	0x3945
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x6
	.value	0x573
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x6
	.value	0x574
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x6
	.value	0x575
	.long	0x13cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x17
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3939
	.uleb128 0xc
	.long	0x3990
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x7f0
	.uleb128 0x1e
	.string	"align"
	.byte	0x6
	.value	0x7f1
	.long	0x3bc
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"off_align"
	.byte	0x6
	.value	0x7f2
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x39c5
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x7e7
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x7ea
	.long	0x146b
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x7ed
	.long	0x458
	.uleb128 0x9
	.string	"a"
	.byte	0x6
	.value	0x7f3
	.long	0x394b
	.byte	0x0
	.uleb128 0x20
	.long	0x3a04
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x808
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x809
	.long	0x43c4
	.uleb128 0x9
	.string	"r"
	.byte	0x6
	.value	0x80a
	.long	0x9b
	.uleb128 0x9
	.string	"t"
	.byte	0x6
	.value	0x80b
	.long	0x1e4
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x80c
	.long	0x2e3
	.byte	0x0
	.uleb128 0x21
	.long	0x43c4
	.string	"function"
	.value	0x134
	.byte	0x6
	.value	0x79d
	.uleb128 0x6
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x67d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x67e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x9
	.byte	0xb7
	.long	0x67ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x67f3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x6809
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x9
	.byte	0xbe
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x9
	.byte	0xc1
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x9
	.byte	0xc4
	.long	0x43c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x9
	.byte	0xc9
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x9
	.byte	0xce
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x9
	.byte	0xd3
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x9
	.byte	0xd7
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x9
	.byte	0xdb
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x9
	.byte	0xdf
	.long	0x3da
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x9
	.byte	0xe5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x9
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x9
	.byte	0xec
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x9
	.byte	0xf0
	.long	0x6826
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x9
	.byte	0xf3
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x9
	.byte	0xf8
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x9
	.byte	0xfe
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x9
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x9
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0x9
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0x9
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0x9
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0x9
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0x9
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0x9
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0x9
	.value	0x121
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0x9
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0x9
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0x9
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0x9
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0x9
	.value	0x138
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0x9
	.value	0x13d
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0x9
	.value	0x146
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0x9
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0x9
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0x9
	.value	0x151
	.long	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0x9
	.value	0x157
	.long	0x5a53
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x9
	.value	0x15a
	.long	0x6838
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0x9
	.value	0x15d
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0x9
	.value	0x160
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0x9
	.value	0x166
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0x9
	.value	0x16a
	.long	0x64d7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0x9
	.value	0x16d
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0x9
	.value	0x16e
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0x9
	.value	0x16f
	.long	0x19c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0x9
	.value	0x170
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0x9
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0x9
	.value	0x175
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0x9
	.value	0x178
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0x9
	.value	0x17d
	.long	0x6851
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0x9
	.value	0x17f
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0x9
	.value	0x181
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0x9
	.value	0x184
	.long	0x686b
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0x9
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
	.string	"returns_struct"
	.byte	0x9
	.value	0x190
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pcc_struct"
	.byte	0x9
	.value	0x194
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pointer"
	.byte	0x9
	.value	0x197
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"needs_context"
	.byte	0x9
	.value	0x19a
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_setjmp"
	.byte	0x9
	.value	0x19d
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_longjmp"
	.byte	0x9
	.value	0x1a0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_alloca"
	.byte	0x9
	.value	0x1a4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_eh_return"
	.byte	0x9
	.value	0x1a7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_label"
	.byte	0x9
	.value	0x1ab
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_goto"
	.byte	0x9
	.value	0x1af
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"contains_functions"
	.byte	0x9
	.value	0x1b2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_computed_jump"
	.byte	0x9
	.value	0x1b5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"is_thunk"
	.byte	0x9
	.value	0x1ba
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"all_throwers_are_sibcalls"
	.byte	0x9
	.value	0x1c1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"instrument_entry_exit"
	.byte	0x9
	.value	0x1c5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arc_profile"
	.byte	0x9
	.value	0x1c8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"profile"
	.byte	0x9
	.value	0x1cb
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"limit_stack"
	.byte	0x9
	.value	0x1cf
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"stdarg"
	.byte	0x9
	.value	0x1d2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_whole_function_mode_p"
	.byte	0x9
	.value	0x1d8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x9
	.value	0x1e1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_const_pool"
	.byte	0x9
	.value	0x1e4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_pic_offset_table"
	.byte	0x9
	.value	0x1e7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_eh_lsda"
	.byte	0x9
	.value	0x1ea
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arg_pointer_save_area_init"
	.byte	0x9
	.value	0x1ed
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x9
	.value	0x1fa
	.long	0x675d
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0x9
	.value	0x1fe
	.long	0x2e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3a04
	.uleb128 0x22
	.long	0x4402
	.byte	0x4
	.byte	0x6
	.value	0x81e
	.uleb128 0x9
	.string	"st"
	.byte	0x6
	.value	0x81f
	.long	0x30f3
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x6
	.value	0x820
	.long	0x13bc
	.uleb128 0x9
	.string	"field_id"
	.byte	0x6
	.value	0x821
	.long	0x3bc
	.byte	0x0
	.uleb128 0x22
	.long	0x4418
	.byte	0x4
	.byte	0x6
	.value	0x823
	.uleb128 0x9
	.string	"st2"
	.byte	0x6
	.value	0x824
	.long	0x30f3
	.byte	0x0
	.uleb128 0xc
	.long	0x4b55
	.string	"tree_decl"
	.byte	0x94
	.byte	0x6
	.value	0x7a0
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x7a1
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x6
	.value	0x7a2
	.long	0xa88
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x7a3
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x7a4
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.string	"mode"
	.byte	0x6
	.value	0x7a5
	.long	0x80d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"external_flag"
	.byte	0x6
	.value	0x7a7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"nonlocal_flag"
	.byte	0x6
	.value	0x7a8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"regdecl_flag"
	.byte	0x6
	.value	0x7a9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"inline_flag"
	.byte	0x6
	.value	0x7aa
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"bit_field_flag"
	.byte	0x6
	.value	0x7ab
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"virtual_flag"
	.byte	0x6
	.value	0x7ac
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"ignored_flag"
	.byte	0x6
	.value	0x7ad
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x6
	.value	0x7ae
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sbuf_flag"
	.byte	0x6
	.value	0x7b2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sdram_flag"
	.byte	0x6
	.value	0x7b3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v1buf_flag"
	.byte	0x6
	.value	0x7b4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v2buf_flag"
	.byte	0x6
	.value	0x7b5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v4buf_flag"
	.byte	0x6
	.value	0x7b6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"in_system_header_flag"
	.byte	0x6
	.value	0x7ba
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"common_flag"
	.byte	0x6
	.value	0x7bb
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"defer_output"
	.byte	0x6
	.value	0x7bc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"transparent_union"
	.byte	0x6
	.value	0x7bd
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_ctor_flag"
	.byte	0x6
	.value	0x7be
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_dtor_flag"
	.byte	0x6
	.value	0x7bf
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"artificial_flag"
	.byte	0x6
	.value	0x7c0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"weak_flag"
	.byte	0x6
	.value	0x7c1
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"non_addr_const_p"
	.byte	0x6
	.value	0x7c3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"no_instrument_function_entry_exit"
	.byte	0x6
	.value	0x7c4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"comdat_flag"
	.byte	0x6
	.value	0x7c5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"malloc_flag"
	.byte	0x6
	.value	0x7c6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_limit_stack"
	.byte	0x6
	.value	0x7c7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF3
	.byte	0x6
	.value	0x7c8
	.long	0x141b
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"pure_flag"
	.byte	0x6
	.value	0x7c9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x6
	.value	0x7cb
	.long	0x3bc
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"non_addressable"
	.byte	0x6
	.value	0x7cc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x6
	.value	0x7cd
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"uninlinable"
	.byte	0x6
	.value	0x7ce
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"thread_local_flag"
	.byte	0x6
	.value	0x7cf
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"inlined_function_flag"
	.byte	0x6
	.value	0x7d0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"noinline_attrib"
	.byte	0x6
	.value	0x7d2
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x6
	.value	0x7d5
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x6
	.value	0x7d6
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x6
	.value	0x7d7
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x6
	.value	0x7d8
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x6
	.value	0x7d9
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x6
	.value	0x7da
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x6
	.value	0x7db
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"lang_flag_7"
	.byte	0x6
	.value	0x7dc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"syscall_linkage_flag"
	.byte	0x6
	.value	0x7df
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"widen_retval_flag"
	.byte	0x6
	.value	0x7e0
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"promote_static"
	.byte	0x6
	.value	0x7e3
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"always_inline_attrib"
	.byte	0x6
	.value	0x7e4
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x6
	.value	0x7f4
	.long	0x3990
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x6
	.value	0x7f6
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x7f7
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x7f8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x6
	.value	0x7f9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x6
	.value	0x7fa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x6
	.value	0x7fb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x6
	.value	0x7fc
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x6
	.value	0x7fd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x6
	.value	0x7fe
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x6
	.value	0x7ff
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x800
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x801
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"u2"
	.byte	0x6
	.value	0x80d
	.long	0x39c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x6
	.value	0x810
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x6
	.value	0x814
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"vindex"
	.byte	0x6
	.value	0x816
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x817
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1a
	.long	.LASF19
	.byte	0x6
	.value	0x819
	.long	0x4b61
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1e
	.string	"symtab_idx"
	.byte	0x6
	.value	0x81b
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x1e
	.string	"label_defined"
	.byte	0x6
	.value	0x81c
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x6
	.value	0x822
	.long	0x43ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"sgi_u2"
	.byte	0x6
	.value	0x825
	.long	0x4402
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x826
	.long	0x13cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x6
	.value	0x82a
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x17
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4b55
	.uleb128 0x15
	.long	0x4db8
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xb
	.byte	0x1e
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
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x16
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x16
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x16
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x16
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x16
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x16
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x16
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x16
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x16
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x16
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xc
	.long	0x4e07
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x832
	.uleb128 0x1a
	.long	.LASF0
	.byte	0x6
	.value	0x833
	.long	0x2cc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x6
	.value	0x834
	.long	0x4b67
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x835
	.long	0x4bf
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
	.long	0x1e4
	.uleb128 0x15
	.long	0x55e5
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x2f
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
	.uleb128 0x23
	.long	0x56bf
	.byte	0x4
	.byte	0x3
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x4f
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x3
	.byte	0x51
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x3
	.byte	0x52
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x3
	.byte	0x54
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x3
	.byte	0x56
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x3
	.byte	0x58
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x3
	.byte	0x5b
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x3
	.byte	0x5d
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
	.byte	0x3
	.byte	0x5e
	.long	0x55e5
	.uleb128 0x13
	.long	0x5736
	.long	.LASF21
	.byte	0x18
	.byte	0x3
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x69
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x6a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x6b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x6c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x6d
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x24
	.long	.LASF21
	.byte	0x3
	.byte	0x6e
	.long	0x56da
	.uleb128 0x7
	.long	0x5813
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x73
	.uleb128 0x25
	.string	"rtwint"
	.byte	0x3
	.byte	0x74
	.long	0x458
	.uleb128 0x25
	.string	"rtint"
	.byte	0x3
	.byte	0x75
	.long	0x2e3
	.uleb128 0x25
	.string	"rtuint"
	.byte	0x3
	.byte	0x76
	.long	0x3bc
	.uleb128 0x25
	.string	"rtstr"
	.byte	0x3
	.byte	0x77
	.long	0x2d0
	.uleb128 0x25
	.string	"rtx"
	.byte	0x3
	.byte	0x78
	.long	0x9b
	.uleb128 0x25
	.string	"rtvec"
	.byte	0x3
	.byte	0x79
	.long	0x19c
	.uleb128 0x25
	.string	"rttype"
	.byte	0x3
	.byte	0x7a
	.long	0x80d
	.uleb128 0x25
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x7b
	.long	0x56bf
	.uleb128 0x25
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x7c
	.long	0x5827
	.uleb128 0x25
	.string	"rtbit"
	.byte	0x3
	.byte	0x7d
	.long	0x588d
	.uleb128 0x25
	.string	"rttree"
	.byte	0x3
	.byte	0x7e
	.long	0x1e4
	.uleb128 0x25
	.string	"bb"
	.byte	0x3
	.byte	0x7f
	.long	0x5a18
	.uleb128 0x25
	.string	"rtmem"
	.byte	0x3
	.byte	0x80
	.long	0x5a1e
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5813
	.uleb128 0x4
	.long	0x588d
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x7d
	.uleb128 0x26
	.long	.LASF22
	.byte	0x5
	.byte	0x3d
	.long	0x5aef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x5aef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x582d
	.uleb128 0x4
	.long	0x5a18
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0xc
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0xc
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0xc
	.byte	0xb8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0xc
	.byte	0xb9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0xc
	.byte	0xbc
	.long	0x61dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0xc
	.byte	0xbc
	.long	0x61dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0xc
	.byte	0xc1
	.long	0x610d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0xc
	.byte	0xc5
	.long	0x610d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0xc
	.byte	0xcb
	.long	0x610d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0xc
	.byte	0xcd
	.long	0x610d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0xd0
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0xc
	.byte	0xd3
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x5a18
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x5a18
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0xc
	.byte	0xd9
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0xc
	.byte	0xdc
	.long	0x6455
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0xdf
	.long	0x611b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0xc
	.byte	0xe2
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0xc
	.byte	0xe5
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5893
	.uleb128 0x3
	.byte	0x4
	.long	0x5736
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x82
	.long	0x5741
	.uleb128 0xf
	.long	0x5a43
	.long	0x5a24
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5a53
	.long	0x9b
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x427
	.uleb128 0x4
	.long	0x5ac3
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x26
	.long	.LASF23
	.byte	0x5
	.byte	0x35
	.long	0x5ac3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x5ac3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x5ac9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a6c
	.uleb128 0xf
	.long	0x5ad9
	.long	0x5a59
	.uleb128 0x10
	.long	0x3d3
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x5a6c
	.uleb128 0x3
	.byte	0x4
	.long	0x5ad9
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x588d
	.uleb128 0x4
	.long	0x5b5d
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xd
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xd
	.byte	0x21
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xd
	.byte	0x22
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xd
	.byte	0x23
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xd
	.byte	0x24
	.long	0x5b5d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x5b6d
	.long	0x469
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x5b7c
	.uleb128 0x3
	.byte	0x4
	.long	0x5b03
	.uleb128 0x4
	.long	0x5bb8
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x13
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x13
	.byte	0x32
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x13
	.byte	0x36
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	0x5d53
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x13
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
	.long	0x5e4f
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x13
	.byte	0x55
	.uleb128 0x25
	.string	"c"
	.byte	0x13
	.byte	0x56
	.long	0x7d2
	.uleb128 0x25
	.string	"uc"
	.byte	0x13
	.byte	0x58
	.long	0x5e4f
	.uleb128 0x25
	.string	"s"
	.byte	0x13
	.byte	0x5a
	.long	0x5e5f
	.uleb128 0x25
	.string	"us"
	.byte	0x13
	.byte	0x5c
	.long	0x5e6f
	.uleb128 0x25
	.string	"i"
	.byte	0x13
	.byte	0x5e
	.long	0x5e7f
	.uleb128 0x25
	.string	"u"
	.byte	0x13
	.byte	0x60
	.long	0x5e8f
	.uleb128 0x25
	.string	"l"
	.byte	0x13
	.byte	0x62
	.long	0x5e9f
	.uleb128 0x25
	.string	"ul"
	.byte	0x13
	.byte	0x64
	.long	0x5eaf
	.uleb128 0x25
	.string	"hint"
	.byte	0x13
	.byte	0x66
	.long	0x5ebf
	.uleb128 0x25
	.string	"uhint"
	.byte	0x13
	.byte	0x68
	.long	0x5b5d
	.uleb128 0x25
	.string	"generic"
	.byte	0x13
	.byte	0x6a
	.long	0x5ecf
	.uleb128 0x25
	.string	"cptr"
	.byte	0x13
	.byte	0x6c
	.long	0x5edf
	.uleb128 0x25
	.string	"rtx"
	.byte	0x13
	.byte	0x6e
	.long	0x5eef
	.uleb128 0x25
	.string	"rtvec"
	.byte	0x13
	.byte	0x70
	.long	0x5eff
	.uleb128 0x25
	.string	"tree"
	.byte	0x13
	.byte	0x72
	.long	0x5f0f
	.uleb128 0x25
	.string	"bitmap"
	.byte	0x13
	.byte	0x74
	.long	0x5f1f
	.uleb128 0x25
	.string	"reg"
	.byte	0x13
	.byte	0x76
	.long	0x5f2f
	.uleb128 0x25
	.string	"const_equiv"
	.byte	0x13
	.byte	0x78
	.long	0x602b
	.uleb128 0x25
	.string	"bb"
	.byte	0x13
	.byte	0x7a
	.long	0x603b
	.uleb128 0x25
	.string	"te"
	.byte	0x13
	.byte	0x7c
	.long	0x604b
	.byte	0x0
	.uleb128 0xf
	.long	0x5e5f
	.long	0x400
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e6f
	.long	0x44b
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e7f
	.long	0x411
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e8f
	.long	0x2e3
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e9f
	.long	0x3bc
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5eaf
	.long	0x4a2
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ebf
	.long	0x427
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ecf
	.long	0x458
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5edf
	.long	0x4bf
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5eef
	.long	0x4c1
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5eff
	.long	0xa6
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f0f
	.long	0x1a9
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f1f
	.long	0x1f0
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f2f
	.long	0x588d
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f3f
	.long	0x6025
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x6025
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x13
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x14
	.byte	0x31
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x14
	.byte	0x32
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x14
	.byte	0x33
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x14
	.byte	0x36
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x14
	.byte	0x39
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x14
	.byte	0x3a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x14
	.byte	0x3b
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x14
	.byte	0x3c
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x14
	.byte	0x3d
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x26
	.long	.LASF24
	.byte	0x14
	.byte	0x3e
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x14
	.byte	0x3f
	.long	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5f3f
	.uleb128 0xf
	.long	0x603b
	.long	0x5b82
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x604b
	.long	0x5a18
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x605b
	.long	0x6066
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x605b
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x13
	.byte	0x7e
	.long	0x5d53
	.uleb128 0x4
	.long	0x60f4
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x13
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x13
	.byte	0x82
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x13
	.byte	0x83
	.long	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x13
	.byte	0x85
	.long	0x5bb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x13
	.byte	0x86
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x13
	.byte	0x87
	.long	0x606c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x13
	.byte	0x8a
	.long	0x6107
	.uleb128 0x3
	.byte	0x4
	.long	0x607f
	.uleb128 0x2
	.string	"regset"
	.byte	0xc
	.byte	0x22
	.long	0x5af5
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xc
	.byte	0x75
	.long	0x458
	.uleb128 0x4
	.long	0x61d7
	.string	"edge_def"
	.byte	0x28
	.byte	0xc
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0xc
	.byte	0x7a
	.long	0x61d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0xc
	.byte	0x7a
	.long	0x61d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0xc
	.byte	0x7d
	.long	0x5a18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0xc
	.byte	0x7d
	.long	0x5a18
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0xc
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0xc
	.byte	0x83
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0xc
	.byte	0x85
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0xc
	.byte	0x86
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0x87
	.long	0x611b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x612c
	.uleb128 0x2
	.string	"edge"
	.byte	0xc
	.byte	0x89
	.long	0x61d7
	.uleb128 0x4
	.long	0x6455
	.string	"loop"
	.byte	0x80
	.byte	0xc
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0xc
	.value	0x176
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0xc
	.value	0x179
	.long	0x645b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0xc
	.value	0x17c
	.long	0x645b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0xc
	.value	0x17f
	.long	0x645b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0xc
	.value	0x184
	.long	0x6466
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0xc
	.value	0x187
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1a
	.long	.LASF22
	.byte	0xc
	.value	0x18b
	.long	0x645b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1a
	.long	.LASF25
	.byte	0xc
	.value	0x18f
	.long	0x645b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0xc
	.value	0x192
	.long	0x5b6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0xc
	.value	0x195
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0xc
	.value	0x198
	.long	0x6466
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0xc
	.value	0x19b
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0xc
	.value	0x19e
	.long	0x6466
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0xc
	.value	0x1a1
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0xc
	.value	0x1a4
	.long	0x5b6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0xc
	.value	0x1a7
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0xc
	.value	0x1aa
	.long	0x646c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0xc
	.value	0x1ae
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0xc
	.value	0x1b1
	.long	0x6455
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0xc
	.value	0x1b4
	.long	0x6455
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1a
	.long	.LASF23
	.byte	0xc
	.value	0x1b7
	.long	0x6455
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0xc
	.value	0x1ba
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0xc
	.value	0x1bd
	.long	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0xc
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0xc
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0xc
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0xc
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0xc
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0xc
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0xc
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0xc
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0xc
	.value	0x1e6
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x61e9
	.uleb128 0x24
	.long	.LASF24
	.byte	0xc
	.byte	0xe6
	.long	0x5a18
	.uleb128 0x3
	.byte	0x4
	.long	0x61dd
	.uleb128 0x3
	.byte	0x4
	.long	0x6455
	.uleb128 0x4
	.long	0x64d7
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x9
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x9
	.byte	0x18
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x9
	.byte	0x19
	.long	0x80d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x9
	.byte	0x1a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x26
	.long	.LASF23
	.byte	0x9
	.byte	0x1b
	.long	0x64d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6472
	.uleb128 0x13
	.long	0x6522
	.long	.LASF26
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.uleb128 0x26
	.long	.LASF22
	.byte	0x9
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x26
	.long	.LASF25
	.byte	0x9
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x26
	.long	.LASF27
	.byte	0x9
	.byte	0x28
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x26
	.long	.LASF23
	.byte	0x9
	.byte	0x29
	.long	0x6522
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x64dd
	.uleb128 0x3
	.byte	0x4
	.long	0x31e6
	.uleb128 0x4
	.long	0x667d
	.string	"emit_status"
	.byte	0x34
	.byte	0x9
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x9
	.byte	0x3a
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x9
	.byte	0x3d
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x9
	.byte	0x44
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x9
	.byte	0x45
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x26
	.long	.LASF27
	.byte	0x9
	.byte	0x4a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x26
	.long	.LASF26
	.byte	0x9
	.byte	0x50
	.long	0x6522
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x9
	.byte	0x54
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x9
	.byte	0x58
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x9
	.byte	0x59
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x9
	.byte	0x5f
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x9
	.byte	0x65
	.long	0x769
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x9
	.byte	0x69
	.long	0x4e10
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x9
	.byte	0x70
	.long	0x5a53
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x675d
	.string	"expr_status"
	.byte	0x1c
	.byte	0x9
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x9
	.byte	0x80
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x9
	.byte	0x91
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x9
	.byte	0x97
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x9
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x9
	.byte	0x9f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x9
	.byte	0xa2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x9
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x27
	.long	0x67c7
	.long	.LASF20
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
	.long	0x67c7
	.uleb128 0x17
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x67d9
	.uleb128 0x3
	.byte	0x4
	.long	0x667d
	.uleb128 0x3
	.byte	0x4
	.long	0x652e
	.uleb128 0x17
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x67f9
	.uleb128 0x17
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x680f
	.uleb128 0x17
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x682c
	.uleb128 0x17
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x683e
	.uleb128 0x17
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6857
	.uleb128 0x28
	.long	0x68aa
	.string	"can_delete_note_p"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0x2e3
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x29
	.long	.LASF28
	.byte	0x1
	.byte	0x5c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x68e6
	.string	"can_delete_label_p"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.long	0x2e3
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2a
	.string	"label"
	.byte	0x1
	.byte	0x67
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x69e0
	.byte	0x1
	.string	"delete_insn"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0x9b
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF29
	.byte	0x1
	.byte	0x74
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.byte	0x76
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.byte	0x77
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"really_delete"
	.byte	0x1
	.byte	0x78
	.long	0x4e07
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2e
	.long	0x696a
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2d
	.string	"name"
	.byte	0x1
	.byte	0x81
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2e
	.long	0x69cf
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2d
	.string	"pat"
	.byte	0x1
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"diff_vec_p"
	.byte	0x1
	.byte	0xa6
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.byte	0xa7
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2d
	.string	"label"
	.byte	0x1
	.byte	0xac
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x80f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12278
	.byte	0x0
	.uleb128 0x2b
	.long	0x6a3a
	.byte	0x1
	.string	"delete_insn_and_edges"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	0x9b
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x29
	.long	.LASF29
	.byte	0x1
	.byte	0xbc
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.byte	0xbe
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"purge"
	.byte	0x1
	.byte	0xbf
	.long	0x4e07
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x31
	.long	0x6a91
	.byte	0x1
	.string	"delete_insn_chain"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2a
	.string	"start"
	.byte	0x1
	.byte	0xd0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"finish"
	.byte	0x1
	.byte	0xd0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.byte	0xd2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x6aef
	.byte	0x1
	.string	"delete_insn_chain_and_edges"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x29
	.long	.LASF22
	.byte	0x1
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF25
	.byte	0x1
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"purge"
	.byte	0x1
	.byte	0xea
	.long	0x4e07
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x32
	.long	0x6b8c
	.byte	0x1
	.string	"create_basic_block_structure"
	.byte	0x1
	.value	0x101
	.byte	0x1
	.long	0x645b
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2a
	.string	"head"
	.byte	0x1
	.byte	0xff
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"end"
	.byte	0x1
	.byte	0xff
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"bb_note"
	.byte	0x1
	.byte	0xff
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0x100
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x102
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x10b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x6bf6
	.byte	0x1
	.string	"create_basic_block"
	.byte	0x1
	.value	0x14e
	.byte	0x1
	.long	0x645b
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x36
	.string	"head"
	.byte	0x1
	.value	0x14c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"end"
	.byte	0x1
	.value	0x14c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF31
	.byte	0x1
	.value	0x14d
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x14f
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x6c76
	.byte	0x1
	.string	"flow_delete_block_noexpunge"
	.byte	0x1
	.value	0x166
	.byte	0x1
	.long	0x2e3
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x36
	.string	"b"
	.byte	0x1
	.value	0x165
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x167
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x168
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"end"
	.byte	0x1
	.value	0x168
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"tmp"
	.byte	0x1
	.value	0x168
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x6cbf
	.byte	0x1
	.string	"flow_delete_block"
	.byte	0x1
	.value	0x1a7
	.byte	0x1
	.long	0x2e3
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x36
	.string	"b"
	.byte	0x1
	.value	0x1a6
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x1a8
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x6d20
	.byte	0x1
	.string	"compute_bb_for_insn"
	.byte	0x1
	.value	0x1b4
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x1b5
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x34
	.string	"end"
	.byte	0x1
	.value	0x1b9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x1ba
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x6d57
	.byte	0x1
	.string	"free_bb_for_insn"
	.byte	0x1
	.value	0x1c9
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x6d9e
	.byte	0x1
	.string	"update_bb_for_insn"
	.byte	0x1
	.value	0x1d5
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x1d4
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x1d6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x6eef
	.byte	0x1
	.string	"split_block"
	.byte	0x1
	.value	0x1e9
	.byte	0x1
	.long	0x61dd
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x1e7
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF29
	.byte	0x1
	.value	0x1e8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"new_bb"
	.byte	0x1
	.value	0x1ea
	.long	0x645b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.long	.LASF33
	.byte	0x1
	.value	0x1eb
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x1ec
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	0x6e81
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x34
	.string	"__h"
	.byte	0x1
	.value	0x203
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	0x6e58
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x34
	.string	"__o"
	.byte	0x1
	.value	0x203
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x203
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x35
	.long	.LASF35
	.byte	0x1
	.value	0x203
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x203
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x34
	.string	"__h"
	.byte	0x1
	.value	0x204
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x6ec5
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x34
	.string	"__o"
	.byte	0x1
	.value	0x204
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x204
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x35
	.long	.LASF35
	.byte	0x1
	.value	0x204
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x204
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x6fe6
	.byte	0x1
	.string	"merge_blocks_nomove"
	.byte	0x1
	.value	0x224
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x36
	.string	"a"
	.byte	0x1
	.value	0x223
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"b"
	.byte	0x1
	.value	0x223
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"b_head"
	.byte	0x1
	.value	0x225
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"b_end"
	.byte	0x1
	.value	0x225
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"a_end"
	.byte	0x1
	.value	0x225
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"del_first"
	.byte	0x1
	.value	0x226
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"del_last"
	.byte	0x1
	.value	0x226
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"b_empty"
	.byte	0x1
	.value	0x227
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x228
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	0x6fce
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x34
	.string	"prev"
	.byte	0x1
	.value	0x246
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x34
	.string	"x"
	.byte	0x1
	.value	0x27d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x701e
	.byte	0x1
	.string	"block_label"
	.byte	0x1
	.value	0x290
	.byte	0x1
	.long	0x9b
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x36
	.string	"block"
	.byte	0x1
	.value	0x28f
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x7141
	.string	"try_redirect_by_replacing_jump"
	.byte	0x1
	.value	0x2a5
	.byte	0x1
	.long	0x4e07
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x2a3
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF36
	.byte	0x1
	.value	0x2a4
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x2a6
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x2a7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"kill_from"
	.byte	0x1
	.value	0x2a7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"tmp"
	.byte	0x1
	.value	0x2a8
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"set"
	.byte	0x1
	.value	0x2a9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"table"
	.byte	0x1
	.value	0x2a9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"fallthru"
	.byte	0x1
	.value	0x2aa
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x7130
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x34
	.string	"target_label"
	.byte	0x1
	.value	0x2e9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"barrier"
	.byte	0x1
	.value	0x2ea
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"tmp"
	.byte	0x1
	.value	0x2ea
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x80e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12784
	.byte	0x0
	.uleb128 0x38
	.long	0x718c
	.string	"last_loop_beg_note"
	.byte	0x1
	.value	0x32a
	.byte	0x1
	.long	0x9b
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x33
	.long	.LASF29
	.byte	0x1
	.value	0x329
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x32b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x726d
	.byte	0x1
	.string	"redirect_edge_and_branch"
	.byte	0x1
	.value	0x344
	.byte	0x1
	.long	0x4e07
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x342
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF36
	.byte	0x1
	.value	0x343
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"tmp"
	.byte	0x1
	.value	0x345
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"old_label"
	.byte	0x1
	.value	0x346
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x347
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x348
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x725c
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x34
	.string	"vec"
	.byte	0x1
	.value	0x363
	.long	0x19c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"j"
	.byte	0x1
	.value	0x364
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.string	"new_label"
	.byte	0x1
	.value	0x365
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x80df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12961
	.byte	0x0
	.uleb128 0x38
	.long	0x74c2
	.string	"force_nonfallthru_and_redirect"
	.byte	0x1
	.value	0x3ad
	.byte	0x1
	.long	0x645b
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x3ab
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF36
	.byte	0x1
	.value	0x3ac
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"jump_block"
	.byte	0x1
	.value	0x3ae
	.long	0x645b
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x34
	.string	"new_bb"
	.byte	0x1
	.value	0x3ae
	.long	0x645b
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x3ae
	.long	0x645b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x3af
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x35
	.long	.LASF33
	.byte	0x1
	.value	0x3b0
	.long	0x61dd
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.string	"abnormal_edge_flags"
	.byte	0x1
	.value	0x3b1
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.long	0x7382
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x3bd
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.string	"b"
	.byte	0x1
	.value	0x3be
	.long	0x61dd
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x34
	.string	"prob"
	.byte	0x1
	.value	0x3c5
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x73af
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x34
	.string	"pe1"
	.byte	0x1
	.value	0x3e4
	.long	0x6466
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x3e5
	.long	0x645b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2e
	.long	0x7421
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x34
	.string	"__h"
	.byte	0x1
	.value	0x40e
	.long	0x6528
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	0x73f8
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x34
	.string	"__o"
	.byte	0x1
	.value	0x40e
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x40e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x35
	.long	.LASF35
	.byte	0x1
	.value	0x40e
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x40e
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7492
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x34
	.string	"__h"
	.byte	0x1
	.value	0x410
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	0x7469
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x34
	.string	"__o"
	.byte	0x1
	.value	0x410
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x410
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x35
	.long	.LASF35
	.byte	0x1
	.value	0x410
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x410
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x74b1
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x34
	.string	"label"
	.byte	0x1
	.value	0x42f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x80ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13107
	.byte	0x0
	.uleb128 0x32
	.long	0x74fc
	.byte	0x1
	.string	"force_nonfallthru"
	.byte	0x1
	.value	0x445
	.byte	0x1
	.long	0x645b
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x444
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x7552
	.byte	0x1
	.string	"redirect_edge_and_branch_force"
	.byte	0x1
	.value	0x451
	.byte	0x1
	.long	0x645b
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x44f
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF36
	.byte	0x1
	.value	0x450
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x75b0
	.byte	0x1
	.string	"tidy_fallthru_edge"
	.byte	0x1
	.value	0x462
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x460
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"b"
	.byte	0x1
	.value	0x461
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"c"
	.byte	0x1
	.value	0x461
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"q"
	.byte	0x1
	.value	0x463
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x760c
	.byte	0x1
	.string	"tidy_fallthru_edges"
	.byte	0x1
	.value	0x499
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x34
	.string	"b"
	.byte	0x1
	.value	0x49a
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"c"
	.byte	0x1
	.value	0x49a
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x34
	.string	"s"
	.byte	0x1
	.value	0x4a1
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x7690
	.string	"back_edge_of_syntactic_loop_p"
	.byte	0x1
	.value	0x4c2
	.byte	0x1
	.long	0x4e07
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x36
	.string	"bb1"
	.byte	0x1
	.value	0x4c1
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"bb2"
	.byte	0x1
	.value	0x4c1
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x4c3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"count"
	.byte	0x1
	.value	0x4c4
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x4c5
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x780c
	.byte	0x1
	.string	"split_edge"
	.byte	0x1
	.value	0x4e9
	.byte	0x1
	.long	0x645b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x36
	.string	"edge_in"
	.byte	0x1
	.value	0x4e8
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x4ea
	.long	0x645b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.string	"edge_out"
	.byte	0x1
	.value	0x4eb
	.long	0x61dd
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.string	"before"
	.byte	0x1
	.value	0x4ec
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	0x7719
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x4f6
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2e
	.long	0x778a
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x34
	.string	"__h"
	.byte	0x1
	.value	0x525
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	0x7761
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x34
	.string	"__o"
	.byte	0x1
	.value	0x525
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x525
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x35
	.long	.LASF35
	.byte	0x1
	.value	0x525
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x525
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x77fb
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x34
	.string	"__h"
	.byte	0x1
	.value	0x526
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x77d2
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x34
	.string	"__o"
	.byte	0x1
	.value	0x526
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF34
	.byte	0x1
	.value	0x526
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x35
	.long	.LASF35
	.byte	0x1
	.value	0x526
	.long	0x6528
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF12
	.byte	0x1
	.value	0x526
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x80b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13495
	.byte	0x0
	.uleb128 0x37
	.long	0x7867
	.byte	0x1
	.string	"insert_insn_on_edge"
	.byte	0x1
	.value	0x544
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x36
	.string	"pattern"
	.byte	0x1
	.value	0x542
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x543
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF30
	.long	0x80a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13675
	.byte	0x0
	.uleb128 0x39
	.long	0x7946
	.string	"commit_one_edge_insertion"
	.byte	0x1
	.value	0x55b
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.value	0x559
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"watch_calls"
	.byte	0x1
	.value	0x55a
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"before"
	.byte	0x1
	.value	0x55c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF31
	.byte	0x1
	.value	0x55c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"insns"
	.byte	0x1
	.value	0x55c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"tmp"
	.byte	0x1
	.value	0x55c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x55c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x55d
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	0x7935
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x569
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x809b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13713
	.byte	0x0
	.uleb128 0x37
	.long	0x79ca
	.byte	0x1
	.string	"commit_edge_insertions"
	.byte	0x1
	.value	0x5d8
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x5d9
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF37
	.byte	0x1
	.value	0x5da
	.long	0x5b6d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"changed"
	.byte	0x1
	.value	0x5db
	.long	0x4e07
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2f
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x5e3
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x5e3
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x7a5a
	.byte	0x1
	.string	"commit_edge_insertions_watch_calls"
	.byte	0x1
	.value	0x604
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x605
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF37
	.byte	0x1
	.value	0x606
	.long	0x5b6d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"changed"
	.byte	0x1
	.value	0x607
	.long	0x4e07
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2f
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x60f
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x60f
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x7ac2
	.byte	0x1
	.string	"dump_bb"
	.byte	0x1
	.value	0x631
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x62f
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.string	"outf"
	.byte	0x1
	.value	0x630
	.long	0x7ac2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x632
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x633
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x634
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c7
	.uleb128 0x37
	.long	0x7af6
	.byte	0x1
	.string	"debug_bb"
	.byte	0x1
	.value	0x655
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x654
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x7b25
	.byte	0x1
	.string	"debug_bb_n"
	.byte	0x1
	.value	0x65c
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x36
	.string	"n"
	.byte	0x1
	.value	0x65b
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x7c70
	.byte	0x1
	.string	"print_rtl_with_bb"
	.byte	0x1
	.value	0x667
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x36
	.string	"outf"
	.byte	0x1
	.value	0x665
	.long	0x7ac2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF38
	.byte	0x1
	.value	0x666
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"tmp_rtx"
	.byte	0x1
	.value	0x668
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x3a
	.long	0x7bc4
	.string	"bb_state"
	.byte	0x4
	.byte	0x1
	.value	0x66e
	.uleb128 0x16
	.string	"NOT_IN_BB"
	.sleb128 0
	.uleb128 0x16
	.string	"IN_ONE_BB"
	.sleb128 1
	.uleb128 0x16
	.string	"IN_MULTIPLE_BB"
	.sleb128 2
	.byte	0x0
	.uleb128 0x34
	.string	"max_uid"
	.byte	0x1
	.value	0x66f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"start"
	.byte	0x1
	.value	0x670
	.long	0x7c70
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"end"
	.byte	0x1
	.value	0x672
	.long	0x7c70
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"in_bb_p"
	.byte	0x1
	.value	0x674
	.long	0x7c76
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x677
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	0x7c4e
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x34
	.string	"x"
	.byte	0x1
	.value	0x67b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x34
	.string	"state"
	.byte	0x1
	.value	0x681
	.long	0x7b88
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x34
	.string	"did_output"
	.byte	0x1
	.value	0x68e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x645b
	.uleb128 0x3
	.byte	0x4
	.long	0x7b88
	.uleb128 0x37
	.long	0x7cc4
	.byte	0x1
	.string	"update_br_prob_note"
	.byte	0x1
	.value	0x6be
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x6bd
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x6bf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0x7ee6
	.byte	0x1
	.string	"verify_flow_info"
	.byte	0x1
	.value	0x6de
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x34
	.string	"max_uid"
	.byte	0x1
	.value	0x6df
	.long	0x808
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x35
	.long	.LASF38
	.byte	0x1
	.value	0x6e0
	.long	0x7ee6
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.string	"last_head"
	.byte	0x1
	.value	0x6e1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x34
	.string	"bb_info"
	.byte	0x1
	.value	0x6e2
	.long	0x7c70
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.string	"last_visited"
	.byte	0x1
	.value	0x6e2
	.long	0x7c70
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x34
	.string	"edge_checksum"
	.byte	0x1
	.value	0x6e3
	.long	0x76f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.string	"x"
	.byte	0x1
	.value	0x6e4
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x34
	.string	"num_bb_notes"
	.byte	0x1
	.value	0x6e5
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.string	"err"
	.byte	0x1
	.value	0x6e5
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x6e6
	.long	0x645b
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.string	"last_bb_seen"
	.byte	0x1
	.value	0x6e6
	.long	0x645b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	0x7df8
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x34
	.string	"head"
	.byte	0x1
	.value	0x704
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.string	"end"
	.byte	0x1
	.value	0x705
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2e
	.long	0x7eba
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x34
	.string	"n_fallthru"
	.byte	0x1
	.value	0x733
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"n_eh"
	.byte	0x1
	.value	0x733
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"n_call"
	.byte	0x1
	.value	0x733
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"n_abnormal"
	.byte	0x1
	.value	0x733
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"n_branch"
	.byte	0x1
	.value	0x733
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x734
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x735
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x7ea0
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x778
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x7d1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7ed5
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x832
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x8086
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14124
	.byte	0x0
	.uleb128 0xa
	.long	0x9b
	.uleb128 0x32
	.long	0x7fd8
	.byte	0x1
	.string	"purge_dead_edges"
	.byte	0x1
	.value	0x886
	.byte	0x1
	.long	0x4e07
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x36
	.string	"bb"
	.byte	0x1
	.value	0x885
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x887
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x887
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF29
	.byte	0x1
	.value	0x888
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x888
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"purged"
	.byte	0x1
	.value	0x889
	.long	0x4e07
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2e
	.long	0x7f90
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x34
	.string	"eqnote"
	.byte	0x1
	.value	0x88f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2e
	.long	0x7fc7
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x35
	.long	.LASF28
	.byte	0x1
	.value	0x8b1
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"b"
	.byte	0x1
	.value	0x8b2
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"f"
	.byte	0x1
	.value	0x8b2
	.long	0x61dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LASF30
	.long	0x8081
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14718
	.byte	0x0
	.uleb128 0x32
	.long	0x8071
	.byte	0x1
	.string	"purge_all_dead_edges"
	.byte	0x1
	.value	0x930
	.byte	0x1
	.long	0x4e07
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x36
	.string	"update_life_p"
	.byte	0x1
	.value	0x92f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"purged"
	.byte	0x1
	.value	0x931
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF37
	.byte	0x1
	.value	0x932
	.long	0x5b6d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x933
	.long	0x645b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x34
	.string	"purged_here"
	.byte	0x1
	.value	0x93d
	.long	0x4e07
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x8081
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x8071
	.uleb128 0xa
	.long	0x8071
	.uleb128 0xf
	.long	0x809b
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x19
	.byte	0x0
	.uleb128 0xa
	.long	0x808b
	.uleb128 0xa
	.long	0x7f8
	.uleb128 0xf
	.long	0x80b5
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0x80a5
	.uleb128 0xf
	.long	0x80ca
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x1e
	.byte	0x0
	.uleb128 0xa
	.long	0x80ba
	.uleb128 0xf
	.long	0x80df
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x80cf
	.uleb128 0xa
	.long	0x80ba
	.uleb128 0xf
	.long	0x80f9
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x80e9
	.uleb128 0x3b
	.string	"target_flags"
	.byte	0xa
	.byte	0x21
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"stderr"
	.byte	0xe
	.byte	0x90
	.long	0x7cc
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x8134
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3b
	.string	"rtx_class"
	.byte	0x3
	.byte	0x45
	.long	0x8147
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x8124
	.uleb128 0xf
	.long	0x815c
	.long	0x9b
	.uleb128 0x10
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0x3c
	.string	"global_rtl"
	.byte	0x3
	.value	0x6e5
	.long	0x814c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flow2_completed"
	.byte	0x3
	.value	0x75e
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"n_basic_blocks"
	.byte	0xc
	.byte	0xf2
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"last_basic_block"
	.byte	0xc
	.byte	0xf6
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"basic_block_info"
	.byte	0xc
	.byte	0xfe
	.long	0x60f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"label_value_list"
	.byte	0x1
	.byte	0x4c
	.long	0x9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	label_value_list
	.uleb128 0x3d
	.string	"tail_recursion_label_list"
	.byte	0x1
	.byte	0x4d
	.long	0x9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tail_recursion_label_list
	.uleb128 0x3c
	.string	"flow_obstack"
	.byte	0xc
	.value	0x11b
	.long	0x31e6
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x8245
	.long	0x5893
	.uleb128 0x10
	.long	0x3d3
	.byte	0x1
	.byte	0x0
	.uleb128 0x3c
	.string	"entry_exit_blocks"
	.byte	0xc
	.value	0x139
	.long	0x8235
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"optimize"
	.byte	0x15
	.byte	0x43
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"rtl_dump_file"
	.byte	0x16
	.value	0x1b8
	.long	0x7ac2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"cfun"
	.byte	0x9
	.value	0x202
	.long	0x43c4
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0x24
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x32
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x312
	.value	0x2
	.long	.Ldebug_info0
	.long	0x829b
	.long	0x68e6
	.string	"delete_insn"
	.long	0x69e0
	.string	"delete_insn_and_edges"
	.long	0x6a3a
	.string	"delete_insn_chain"
	.long	0x6a91
	.string	"delete_insn_chain_and_edges"
	.long	0x6aef
	.string	"create_basic_block_structure"
	.long	0x6b8c
	.string	"create_basic_block"
	.long	0x6bf6
	.string	"flow_delete_block_noexpunge"
	.long	0x6c76
	.string	"flow_delete_block"
	.long	0x6cbf
	.string	"compute_bb_for_insn"
	.long	0x6d20
	.string	"free_bb_for_insn"
	.long	0x6d57
	.string	"update_bb_for_insn"
	.long	0x6d9e
	.string	"split_block"
	.long	0x6eef
	.string	"merge_blocks_nomove"
	.long	0x6fe6
	.string	"block_label"
	.long	0x718c
	.string	"redirect_edge_and_branch"
	.long	0x74c2
	.string	"force_nonfallthru"
	.long	0x74fc
	.string	"redirect_edge_and_branch_force"
	.long	0x7552
	.string	"tidy_fallthru_edge"
	.long	0x75b0
	.string	"tidy_fallthru_edges"
	.long	0x7690
	.string	"split_edge"
	.long	0x780c
	.string	"insert_insn_on_edge"
	.long	0x7946
	.string	"commit_edge_insertions"
	.long	0x79ca
	.string	"commit_edge_insertions_watch_calls"
	.long	0x7a5a
	.string	"dump_bb"
	.long	0x7ac8
	.string	"debug_bb"
	.long	0x7af6
	.string	"debug_bb_n"
	.long	0x7b25
	.string	"print_rtl_with_bb"
	.long	0x7c7c
	.string	"update_br_prob_note"
	.long	0x7cc4
	.string	"verify_flow_info"
	.long	0x7eeb
	.string	"purge_dead_edges"
	.long	0x7fd8
	.string	"purge_all_dead_edges"
	.long	0x81d7
	.string	"label_value_list"
	.long	0x81f6
	.string	"tail_recursion_label_list"
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
	.string	"next"
.LASF0:
	.string	"common"
.LASF37:
	.string	"blocks"
.LASF20:
	.string	"function_frequency"
.LASF35:
	.string	"__o1"
.LASF21:
	.string	"mem_attrs"
.LASF32:
	.string	"deleted_handler"
.LASF24:
	.string	"basic_block"
.LASF11:
	.string	"ht_identifier"
.LASF36:
	.string	"target"
.LASF12:
	.string	"value"
.LASF33:
	.string	"new_edge"
.LASF14:
	.string	"abstract_origin"
.LASF19:
	.string	"lang_specific"
.LASF15:
	.string	"size_unit"
.LASF18:
	.string	"user_align"
.LASF34:
	.string	"__len"
.LASF29:
	.string	"insn"
.LASF26:
	.string	"sequence_stack"
.LASF25:
	.string	"last"
.LASF22:
	.string	"first"
.LASF2:
	.string	"_IO_FILE"
.LASF38:
	.string	"rtx_first"
.LASF5:
	.string	"lang_flag_1"
.LASF6:
	.string	"lang_flag_2"
.LASF9:
	.string	"lang_flag_5"
.LASF31:
	.string	"after"
.LASF16:
	.string	"attributes"
.LASF4:
	.string	"lang_flag_0"
.LASF3:
	.string	"built_in_class"
.LASF7:
	.string	"lang_flag_3"
.LASF8:
	.string	"lang_flag_4"
.LASF10:
	.string	"lang_flag_6"
.LASF17:
	.string	"pointer_depth"
.LASF30:
	.string	"__FUNCTION__"
.LASF27:
	.string	"sequence_rtl_expr"
.LASF13:
	.string	"abstract_flag"
.LASF1:
	.string	"unsigned int"
.LASF28:
	.string	"note"
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
