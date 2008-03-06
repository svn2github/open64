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
	.file 1 "../../../kg++fe/gnu/cfgrtl.c"
	.loc 1 97 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$4, %esp
.LCFI2:
	.loc 1 98 0
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
	.loc 1 101 0
	leave
	ret
.LFE15:
	.size	can_delete_note_p, .-can_delete_note_p
	.type	can_delete_label_p, @function
can_delete_label_p:
.LFB16:
	.loc 1 108 0
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
	.loc 1 109 0
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
	.loc 1 114 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	can_delete_label_p, .-can_delete_label_p
	.section	.rodata
	.type	__FUNCTION__.12339, @object
	.size	__FUNCTION__.12339, 12
__FUNCTION__.12339:
	.string	"delete_insn"
.LC0:
	.string	"../../../kg++fe/gnu/cfgrtl.c"
	.text
.globl delete_insn
	.type	delete_insn, @function
delete_insn:
.LFB17:
	.loc 1 121 0
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
	.loc 1 122 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 124 0
	movb	$1, -5(%ebp)
	.loc 1 126 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L17
	.loc 1 131 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	can_delete_label_p
	testl	%eax, %eax
	jne	.L19
.LBB2:
	.loc 1 133 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 135 0
	movb	$0, -5(%ebp)
	.loc 1 136 0
	movl	8(%ebp), %eax
	movw	$47, (%eax)
	.loc 1 137 0
	movl	8(%ebp), %eax
	movl	$-88, 44(%eax)
	.loc 1 138 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 36(%edx)
.L19:
.LBE2:
	.loc 1 141 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$144, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_node_from_expr_list@PLT
.L17:
	.loc 1 144 0
	cmpb	$0, -5(%ebp)
	je	.L21
	.loc 1 147 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L23
	.loc 1 148 0
	leal	__FUNCTION__.12339@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$148, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L23:
	.loc 1 149 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_insn@PLT
	.loc 1 150 0
	movl	8(%ebp), %edx
	movzbl	3(%edx), %eax
	orl	$8, %eax
	movb	%al, 3(%edx)
.L21:
	.loc 1 155 0
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
	.loc 1 158 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	36(%edx), %eax
	subl	$1, %eax
	movl	%eax, 36(%edx)
	.loc 1 155 0
	jmp	.L29
.L25:
	.loc 1 161 0
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
	.loc 1 163 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	36(%edx), %eax
	subl	$1, %eax
	movl	%eax, 36(%edx)
.L29:
	.loc 1 165 0
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
	.loc 1 169 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 170 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 171 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 174 0
	movl	$0, -16(%ebp)
	jmp	.L36
.L37:
.LBB4:
	.loc 1 176 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 181 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L38
	.loc 1 182 0
	movl	-12(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 36(%eax)
.L38:
.LBE4:
	.loc 1 174 0
	addl	$1, -16(%ebp)
.L36:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L37
.L32:
.LBE3:
	.loc 1 186 0
	movl	-40(%ebp), %eax
	.loc 1 187 0
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
	.loc 1 193 0
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
	.loc 1 195 0
	movb	$0, -5(%ebp)
	.loc 1 197 0
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
	.loc 1 200 0
	movb	$1, -5(%ebp)
.L42:
	.loc 1 201 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	movl	%eax, -12(%ebp)
	.loc 1 202 0
	cmpb	$0, -5(%ebp)
	je	.L46
	.loc 1 203 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
.L46:
	.loc 1 204 0
	movl	-12(%ebp), %eax
	.loc 1 205 0
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
	.loc 1 213 0
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
	.loc 1 221 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 222 0
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
	.loc 1 225 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	movl	%eax, -8(%ebp)
.L54:
	.loc 1 227 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L57
	.loc 1 229 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 230 0
	jmp	.L50
.L57:
	.loc 1 231 0
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
	.loc 1 237 0
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
	.loc 1 238 0
	movb	$0, -5(%ebp)
	.loc 1 240 0
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
	.loc 1 243 0
	movb	$1, -5(%ebp)
.L59:
	.loc 1 244 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 245 0
	cmpb	$0, -5(%ebp)
	je	.L65
	.loc 1 246 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
.L65:
	.loc 1 247 0
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
	.loc 1 261 0
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
	.loc 1 264 0
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
	.loc 1 273 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L72
	.loc 1 274 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L74
.L72:
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 278 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%ebp)
.L74:
	.loc 1 281 0
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L78
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	je	.L78
	.loc 1 282 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	reorder_insns_nobb@PLT
	.loc 1 264 0
	jmp	.L78
.L67:
.LBE5:
	.loc 1 288 0
	call	alloc_block@PLT
	movl	%eax, -12(%ebp)
	.loc 1 290 0
	cmpl	$0, 8(%ebp)
	jne	.L79
	cmpl	$0, 12(%ebp)
	jne	.L79
	.loc 1 291 0
	call	get_last_insn@PLT
	movl	%eax, 4(%esp)
	movl	$-83, (%esp)
	call	emit_note_after@PLT
	movl	%eax, 16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 290 0
	jmp	.L82
.L79:
	.loc 1 293 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L83
	cmpl	$0, 12(%ebp)
	je	.L83
	.loc 1 295 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-83, (%esp)
	call	emit_note_after@PLT
	movl	%eax, 16(%ebp)
	.loc 1 296 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L82
	.loc 1 297 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 293 0
	jmp	.L82
.L83:
	.loc 1 301 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$-83, (%esp)
	call	emit_note_before@PLT
	movl	%eax, 16(%ebp)
	.loc 1 302 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 303 0
	cmpl	$0, 12(%ebp)
	jne	.L82
	.loc 1 304 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%ebp)
.L82:
	.loc 1 307 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 36(%edx)
.L78:
	.loc 1 311 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L89
	.loc 1 312 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
.L89:
	.loc 1 314 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 315 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 316 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 44(%eax)
	addl	$1, %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 317 0
	movl	-12(%ebp), %eax
	movl	$2, 76(%eax)
	.loc 1 318 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	link_block@PLT
	.loc 1 319 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 320 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	update_bb_for_insn@PLT
	.loc 1 324 0
	movl	-12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 326 0
	movl	-12(%ebp), %eax
	.loc 1 327 0
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
	.loc 1 338 0
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
	.loc 1 342 0
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
	.loc 1 344 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 346 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block_structure@PLT
	movl	%eax, -8(%ebp)
	.loc 1 347 0
	movl	-8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 348 0
	movl	-8(%ebp), %eax
	.loc 1 349 0
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
	.loc 1 362 0
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
	.loc 1 363 0
	movl	$0, -20(%ebp)
	.loc 1 376 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L95
.L96:
	.loc 1 378 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L97
	.loc 1 380 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-81, %eax
	je	.L99
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-94, %eax
	jne	.L101
.L99:
	.loc 1 382 0
	movl	-16(%ebp), %eax
	movl	$-99, 44(%eax)
.L101:
	.loc 1 376 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L95:
	cmpl	$0, -16(%ebp)
	jne	.L96
.L97:
	.loc 1 385 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 387 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	never_reached_warning@PLT
	.loc 1 389 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L102
	.loc 1 390 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_remove_eh_handler@PLT
.L102:
	.loc 1 393 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 394 0
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
	.loc 1 400 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L104:
	.loc 1 403 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 404 0
	cmpl	$0, -8(%ebp)
	je	.L111
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L111
	.loc 1 405 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L111:
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 409 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 413 0
	jmp	.L114
.L115:
	.loc 1 414 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L114:
	.loc 1 413 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L115
	.loc 1 415 0
	jmp	.L117
.L118:
	.loc 1 416 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L117:
	.loc 1 415 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L118
	.loc 1 418 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 419 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 421 0
	movl	-20(%ebp), %eax
	.loc 1 422 0
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
	.loc 1 427 0
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
	.loc 1 428 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_delete_block_noexpunge@PLT
	movl	%eax, -8(%ebp)
	.loc 1 431 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expunge_block@PLT
	.loc 1 433 0
	movl	-8(%ebp), %eax
	.loc 1 434 0
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
	.loc 1 440 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	subl	$16, %esp
.LCFI41:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 443 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L124
.L125:
.LBB6:
	.loc 1 445 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 448 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L126:
	.loc 1 450 0
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 28(%eax)
	.loc 1 451 0
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L127
	.loc 1 448 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 453 0
	jmp	.L126
.L127:
.LBE6:
	.loc 1 443 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L124:
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L125
	.loc 1 455 0
	leave
	ret
.LFE25:
	.size	compute_bb_for_insn, .-compute_bb_for_insn
.globl free_bb_for_insn
	.type	free_bb_for_insn, @function
free_bb_for_insn:
.LFB26:
	.loc 1 461 0
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
	.loc 1 463 0
	call	get_insns@PLT
	movl	%eax, -8(%ebp)
	jmp	.L132
.L133:
	.loc 1 464 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L134
	.loc 1 465 0
	movl	-8(%ebp), %eax
	movl	$0, 28(%eax)
.L134:
	.loc 1 463 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L132:
	cmpl	$0, -8(%ebp)
	jne	.L133
	.loc 1 466 0
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
	.loc 1 473 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	subl	$16, %esp
.LCFI48:
	.loc 1 476 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L139:
	.loc 1 478 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 479 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	je	.L142
	.loc 1 476 0
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 481 0
	jmp	.L139
.L142:
	.loc 1 482 0
	leave
	ret
.LFE27:
	.size	update_bb_for_insn, .-update_bb_for_insn
.globl split_block
	.type	split_block, @function
split_block:
.LFB28:
	.loc 1 493 0
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
	.loc 1 499 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L144
	.loc 1 500 0
	movl	$0, -76(%ebp)
	jmp	.L146
.L144:
	.loc 1 503 0
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
	.loc 1 504 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 505 0
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 72(%eax)
	.loc 1 506 0
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 507 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 510 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 511 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 512 0
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L147
.L148:
	.loc 1 513 0
	movl	-52(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 512 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L147:
	cmpl	$0, -52(%ebp)
	jne	.L148
	.loc 1 515 0
	movl	$1, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_single_succ_edge@PLT
	movl	%eax, -56(%ebp)
	.loc 1 517 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L150
.LBB7:
	.loc 1 519 0
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
	.loc 1 520 0
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
	.loc 1 521 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-60(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-60(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 529 0
	movl	-60(%ebp), %eax
	movl	32(%eax), %eax
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	propagate_block@PLT
	.loc 1 530 0
	movl	-60(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L150:
	.loc 1 543 0
	movl	-56(%ebp), %eax
	movl	%eax, -76(%ebp)
.L146:
	movl	-76(%ebp), %eax
	.loc 1 544 0
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
	.loc 1 552 0
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
	.loc 1 553 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 554 0
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 555 0
	movl	$0, -20(%ebp)
	.loc 1 559 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L166
	.loc 1 563 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L168
	.loc 1 564 0
	movl	$1, -20(%ebp)
.L168:
	.loc 1 566 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 567 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L166:
	.loc 1 572 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L170
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L170
	.loc 1 574 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L173
	.loc 1 575 0
	movl	$1, -20(%ebp)
.L173:
	.loc 1 576 0
	cmpl	$0, -24(%ebp)
	jne	.L175
	.loc 1 577 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
.L175:
	.loc 1 579 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 580 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L170:
	.loc 1 584 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L177
.LBB13:
	.loc 1 588 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L179:
	.loc 1 589 0
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
	.loc 1 588 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 594 0
	jmp	.L179
.L180:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 610 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L186
.L177:
.LBE13:
	.loc 1 612 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L186
	.loc 1 613 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 619 0
	jmp	.L186
.L187:
	.loc 1 620 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L186:
	.loc 1 619 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L187
	.loc 1 623 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L189
.L190:
	.loc 1 624 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 623 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L189:
	cmpl	$0, -16(%ebp)
	jne	.L190
	.loc 1 625 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 626 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 629 0
	movl	12(%ebp), %eax
	movl	$0, 20(%eax)
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 630 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 632 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	expunge_block@PLT
	.loc 1 636 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 639 0
	cmpl	$0, -20(%ebp)
	jne	.L192
.LBB14:
	.loc 1 643 0
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L194
.L195:
	.loc 1 644 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 643 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L194:
	movl	-8(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L195
	.loc 1 646 0
	movl	-36(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 28(%eax)
	.loc 1 648 0
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
.L192:
.LBE14:
	.loc 1 651 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 652 0
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
	.loc 1 660 0
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
	.loc 1 661 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L199
	.loc 1 662 0
	movl	$0, -12(%ebp)
	jmp	.L201
.L199:
	.loc 1 664 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L202
	.loc 1 666 0
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
	.loc 1 669 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L201:
	movl	-12(%ebp), %eax
	.loc 1 670 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE30:
	.size	block_label, .-block_label
	.section	.rodata
	.align 4
	.type	__FUNCTION__.12845, @object
	.size	__FUNCTION__.12845, 31
__FUNCTION__.12845:
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
	.loc 1 681 0
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
	.loc 1 682 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 683 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 686 0
	movl	$0, -28(%ebp)
	.loc 1 689 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L206
.L207:
	.loc 1 690 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L208
	movl	-40(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L210
.L208:
	.loc 1 689 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L206:
	cmpl	$0, -40(%ebp)
	jne	.L207
.L210:
	.loc 1 693 0
	cmpl	$0, -40(%ebp)
	jne	.L211
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	onlyjump_p@PLT
	testl	%eax, %eax
	jne	.L213
.L211:
	.loc 1 694 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L213:
	.loc 1 695 0
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
	.loc 1 700 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L215:
	.loc 1 703 0
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
	.loc 1 704 0
	cmpl	$0, -36(%ebp)
	je	.L228
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L230
.L228:
	.loc 1 705 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L230:
	.loc 1 709 0
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 716 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	can_fallthru@PLT
	testb	%al, %al
	je	.L231
	.loc 1 718 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L233
	.loc 1 719 0
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
	.loc 1 720 0
	movl	$1, -28(%ebp)
	.loc 1 723 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	jmp	.L258
.L231:
	.loc 1 727 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L236
	.loc 1 729 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L238
	.loc 1 730 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L238:
	.loc 1 731 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L240
	.loc 1 732 0
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
	.loc 1 734 0
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
	.loc 1 736 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L244
	.loc 1 737 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L244:
	.loc 1 738 0
	leal	__FUNCTION__.12845@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$738, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L236:
	.loc 1 743 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L246
	.loc 1 744 0
	movl	$0, -72(%ebp)
	jmp	.L214
.L246:
.LBB15:
	.loc 1 749 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, -24(%ebp)
	.loc 1 752 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	emit_jump_insn_after@PLT
	.loc 1 753 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 754 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 755 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L248
	.loc 1 756 0
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
	.loc 1 760 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
	.loc 1 765 0
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
	.loc 1 771 0
	movl	-48(%ebp), %eax
	movl	76(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	delete_insn_chain@PLT
.L250:
	.loc 1 774 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -20(%ebp)
	.loc 1 775 0
	cmpl	$0, -20(%ebp)
	je	.L256
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L258
.L256:
	.loc 1 776 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 780 0
	jmp	.L258
.L259:
.LBE15:
	.loc 1 781 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L258:
	.loc 1 780 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L259
	.loc 1 782 0
	movl	-52(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 783 0
	cmpl	$0, -28(%ebp)
	je	.L261
	.loc 1 784 0
	movl	8(%ebp), %eax
	movl	$1, 24(%eax)
	jmp	.L263
.L261:
	.loc 1 786 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
.L263:
	.loc 1 788 0
	movl	8(%ebp), %eax
	movl	$10000, 28(%eax)
	.loc 1 789 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 793 0
	jmp	.L264
.L265:
	.loc 1 795 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L264:
	.loc 1 793 0
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
	.loc 1 797 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L268
	.loc 1 798 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ@PLT
.L268:
	.loc 1 800 0
	movl	$1, -72(%ebp)
.L214:
	movl	-72(%ebp), %eax
	.loc 1 801 0
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
	.loc 1 814 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	subl	$16, %esp
.LCFI71:
	.loc 1 815 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 817 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	jmp	.L272
.L273:
	.loc 1 820 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L274
	.loc 1 821 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L274:
	.loc 1 819 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L272:
	.loc 1 817 0
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
	.loc 1 823 0
	movl	-4(%ebp), %eax
	.loc 1 824 0
	leave
	ret
.LFE32:
	.size	last_loop_beg_note, .-last_loop_beg_note
	.section	.rodata
	.type	__FUNCTION__.13022, @object
	.size	__FUNCTION__.13022, 25
__FUNCTION__.13022:
	.string	"redirect_edge_and_branch"
.LC4:
	.string	"Edge %i->%i redirected to %i\n"
	.text
.globl redirect_edge_and_branch
	.type	redirect_edge_and_branch, @function
redirect_edge_and_branch:
.LFB33:
	.loc 1 840 0
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
	.loc 1 842 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 843 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 844 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 846 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$12, %eax
	testl	%eax, %eax
	je	.L281
	.loc 1 847 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L281:
	.loc 1 849 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	try_redirect_by_replacing_jump
	testb	%al, %al
	je	.L284
	.loc 1 850 0
	movl	$1, -64(%ebp)
	jmp	.L283
.L284:
	.loc 1 855 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L286
	.loc 1 856 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L286:
	.loc 1 859 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L288
	.loc 1 860 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L288:
	.loc 1 861 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L290
	.loc 1 862 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L290:
	.loc 1 865 0
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
	.loc 1 873 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, -16(%ebp)
	.loc 1 875 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L298
	.loc 1 876 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L298:
	.loc 1 877 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	jne	.L300
	.loc 1 878 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L302
.L300:
	.loc 1 880 0
	movl	-40(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
.L302:
	.loc 1 882 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L303
.L304:
	.loc 1 883 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L305
	.loc 1 885 0
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
	.loc 1 886 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 887 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
.L305:
	.loc 1 882 0
	subl	$1, -20(%ebp)
.L303:
	cmpl	$0, -20(%ebp)
	jns	.L304
	.loc 1 891 0
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
	.loc 1 897 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	%eax, 20(%esi)
	.loc 1 899 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %eax
	leal	-1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 900 0
	movl	-16(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 865 0
	jmp	.L324
.L292:
.LBE16:
	.loc 1 908 0
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
	.loc 1 911 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L327:
	.loc 1 914 0
	movl	-28(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L328
	.loc 1 915 0
	leal	__FUNCTION__.13022@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$915, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L328:
	.loc 1 920 0
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
	.loc 1 922 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L331
	.loc 1 923 0
	movl	$0, -64(%ebp)
	jmp	.L283
.L331:
	.loc 1 924 0
	leal	__FUNCTION__.13022@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$924, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L324:
	.loc 1 928 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L333
	.loc 1 929 0
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
	.loc 1 932 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L335
	.loc 1 933 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
.L335:
	.loc 1 935 0
	movl	$1, -64(%ebp)
.L283:
	movl	-64(%ebp), %eax
	.loc 1 936 0
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
	.type	__FUNCTION__.13168, @object
	.size	__FUNCTION__.13168, 31
__FUNCTION__.13168:
	.string	"force_nonfallthru_and_redirect"
.globl __divdi3
	.text
	.type	force_nonfallthru_and_redirect, @function
force_nonfallthru_and_redirect:
.LFB34:
	.loc 1 945 0
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
	.loc 1 946 0
	movl	$0, -100(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 949 0
	movl	$0, -84(%ebp)
	.loc 1 954 0
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
	.loc 1 962 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	unchecked_make_edge@PLT
	movl	%eax, -76(%ebp)
	.loc 1 964 0
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
	.loc 1 965 0
	leal	__FUNCTION__.13168@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$965, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L345:
	.loc 1 966 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -80(%ebp)
	.loc 1 967 0
	cmpl	$0, -80(%ebp)
	je	.L339
.LBB18:
	.loc 1 969 0
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 971 0
	movl	-76(%ebp), %edx
	movl	-72(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 972 0
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
	.loc 1 973 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 974 0
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
	.loc 1 975 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jns	.L348
	.loc 1 976 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
.L348:
	.loc 1 977 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	testl	%edx, %edx
	jns	.L339
	.loc 1 978 0
	movl	8(%ebp), %eax
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
.L339:
.LBE18:
.LBE17:
	.loc 1 982 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L351
	.loc 1 989 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L353
	.loc 1 990 0
	leal	__FUNCTION__.13168@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$990, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L353:
	.loc 1 991 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$-66, %eax
	movl	%eax, -84(%ebp)
	.loc 1 992 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$65, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	jmp	.L355
.L351:
	.loc 1 994 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L356
	.loc 1 995 0
	leal	__FUNCTION__.13168@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$995, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L356:
	.loc 1 996 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L355
.LBB19:
	.loc 1 1001 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	create_basic_block@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1005 0
	movl	8(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1006 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	addl	$20, %eax
	movl	%eax, -68(%ebp)
	jmp	.L359
.L360:
	.loc 1 1007 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L361
	.loc 1 1009 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1010 0
	jmp	.L363
.L361:
	.loc 1 1006 0
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
	.loc 1 1012 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1013 0
	movl	-64(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1014 0
	movl	$1, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	make_single_succ_edge@PLT
.L355:
.LBE19:
	.loc 1 1017 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L364
	cmpl	$0, -84(%ebp)
	je	.L366
.L364:
	.loc 1 1022 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	last_loop_beg_note
	movl	%eax, -92(%ebp)
	.loc 1 1023 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1026 0
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
	.loc 1 1032 0
	movl	-92(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
.L367:
	.loc 1 1034 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block@PLT
	movl	%eax, -104(%ebp)
	.loc 1 1035 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-104(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 1036 0
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
	.loc 1 1037 0
	movl	12(%ebp), %eax
	movl	56(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 1039 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L374
.LBB20:
	.loc 1 1042 0
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
	.loc 1 1041 0
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 32(%eax)
.LBB23:
	.loc 1 1044 0
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
	.loc 1 1043 0
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 1045 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	-104(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1047 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	-104(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L374:
	.loc 1 1052 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	$1, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_edge@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1053 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 1054 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-88(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 1057 0
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_pred@PLT
	.loc 1 1058 0
	movl	8(%ebp), %eax
	movl	$10000, 28(%eax)
	.loc 1 1060 0
	movl	-104(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 1017 0
	jmp	.L388
.L366:
	.loc 1 1063 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -104(%ebp)
.L388:
	.loc 1 1065 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1066 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L389
	.loc 1 1068 0
	call	mips_can_use_return_insn@PLT
	testl	%eax, %eax
	je	.L391
	.loc 1 1069 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %esi
	call	gen_return@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_jump_insn_after@PLT
	jmp	.L393
.L391:
	.loc 1 1071 0
	leal	__FUNCTION__.13168@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1071, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L389:
.LBB26:
	.loc 1 1075 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	block_label@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1076 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %esi
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_jump@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	emit_jump_insn_after@PLT
	.loc 1 1077 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 76(%edx)
	.loc 1 1078 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 36(%eax)
.L393:
.LBE26:
	.loc 1 1081 0
	movl	-104(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 1082 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ_nodup@PLT
	.loc 1 1084 0
	cmpl	$0, -84(%ebp)
	je	.L394
	.loc 1 1085 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
.L394:
	.loc 1 1087 0
	movl	-100(%ebp), %eax
	.loc 1 1088 0
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
	.loc 1 1097 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	subl	$8, %esp
.LCFI86:
	.loc 1 1098 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_nonfallthru_and_redirect
	.loc 1 1099 0
	leave
	ret
.LFE35:
	.size	force_nonfallthru, .-force_nonfallthru
.globl redirect_edge_and_branch_force
	.type	redirect_edge_and_branch_force, @function
redirect_edge_and_branch_force:
.LFB36:
	.loc 1 1109 0
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
	.loc 1 1110 0
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
	.loc 1 1112 0
	movl	$0, -8(%ebp)
	jmp	.L403
.L402:
	.loc 1 1116 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_nonfallthru_and_redirect
	movl	%eax, -8(%ebp)
.L403:
	movl	-8(%ebp), %eax
	.loc 1 1117 0
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
	.loc 1 1126 0
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
	.loc 1 1139 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L406
.L407:
	.loc 1 1140 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L422
	.loc 1 1139 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L406:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L407
	.loc 1 1146 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1147 0
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
	.loc 1 1159 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1163 0
	jmp	.L417
.L418:
	.loc 1 1164 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L417:
	.loc 1 1163 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L411
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jns	.L418
.L411:
	.loc 1 1168 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L420
	.loc 1 1169 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	delete_insn_chain@PLT
.L420:
	.loc 1 1171 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L422:
	.loc 1 1172 0
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
	.loc 1 1181 0
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
	.loc 1 1184 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L435
	.loc 1 1187 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L426
.L427:
.LBB27:
	.loc 1 1191 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1205 0
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
	.loc 1 1212 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	tidy_fallthru_edge@PLT
.L428:
.LBE27:
	.loc 1 1187 0
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
	.loc 1 1214 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	tidy_fallthru_edges, .-tidy_fallthru_edges
	.type	back_edge_of_syntactic_loop_p, @function
back_edge_of_syntactic_loop_p:
.LFB39:
	.loc 1 1222 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	subl	$20, %esp
.LCFI101:
	.loc 1 1224 0
	movl	$0, -8(%ebp)
	.loc 1 1227 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L437
	.loc 1 1228 0
	movl	$1, -20(%ebp)
	jmp	.L439
.L437:
	.loc 1 1232 0
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
	.loc 1 1235 0
	cmpl	$0, -4(%ebp)
	jne	.L444
	.loc 1 1236 0
	movl	$0, -20(%ebp)
	jmp	.L439
.L444:
	.loc 1 1238 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L446
.L447:
	.loc 1 1240 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L448
	.loc 1 1242 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-96, %eax
	jne	.L450
	.loc 1 1243 0
	addl	$1, -8(%ebp)
	jmp	.L448
.L450:
	.loc 1 1244 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-95, %eax
	jne	.L448
	.loc 1 1245 0
	subl	$1, -8(%ebp)
.L448:
	.loc 1 1239 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L446:
	.loc 1 1238 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L453
	cmpl	$0, -8(%ebp)
	jns	.L447
.L453:
	.loc 1 1248 0
	movl	-8(%ebp), %eax
	notl	%eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -20(%ebp)
.L439:
	movl	-20(%ebp), %eax
	.loc 1 1249 0
	leave
	ret
.LFE39:
	.size	back_edge_of_syntactic_loop_p, .-back_edge_of_syntactic_loop_p
	.section	.rodata
	.type	__FUNCTION__.13556, @object
	.size	__FUNCTION__.13556, 11
__FUNCTION__.13556:
	.string	"split_edge"
	.text
.globl split_edge
	.type	split_edge, @function
split_edge:
.LFB40:
	.loc 1 1261 0
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
	.loc 1 1267 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L457
	.loc 1 1268 0
	leal	__FUNCTION__.13556@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1268, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L457:
	.loc 1 1272 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L459
.LBB28:
	.loc 1 1276 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L461
.L462:
	.loc 1 1277 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L463
	.loc 1 1276 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L461:
	cmpl	$0, -52(%ebp)
	jne	.L462
.L463:
	.loc 1 1280 0
	cmpl	$0, -52(%ebp)
	je	.L459
	.loc 1 1281 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	force_nonfallthru@PLT
.L459:
.LBE28:
	.loc 1 1302 0
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
	.loc 1 1308 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1302 0
	jmp	.L472
.L466:
	.loc 1 1309 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L473
	.loc 1 1310 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L472
.L473:
	.loc 1 1312 0
	movl	$0, -56(%ebp)
.L472:
	.loc 1 1314 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	create_basic_block@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1315 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-64(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	.loc 1 1316 0
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
	.loc 1 1319 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L475
.LBB29:
	.loc 1 1321 0
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
	.loc 1 1322 0
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
	.loc 1 1323 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	32(%eax), %edx
	movl	-64(%ebp), %eax
	movl	32(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 1325 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	32(%eax), %edx
	movl	-64(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
.L475:
	.loc 1 1329 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	make_single_succ_edge@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1333 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L489
	.loc 1 1335 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_and_branch@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L493
	.loc 1 1336 0
	leal	__FUNCTION__.13556@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1336, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L489:
	.loc 1 1339 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ@PLT
.L493:
	.loc 1 1341 0
	movl	-64(%ebp), %eax
	.loc 1 1342 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	split_edge, .-split_edge
	.section	.rodata
	.type	__FUNCTION__.13736, @object
	.size	__FUNCTION__.13736, 20
__FUNCTION__.13736:
	.string	"insert_insn_on_edge"
	.text
.globl insert_insn_on_edge
	.type	insert_insn_on_edge, @function
insert_insn_on_edge:
.LFB41:
	.loc 1 1352 0
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
	.loc 1 1355 0
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
	.loc 1 1356 0
	leal	__FUNCTION__.13736@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1356, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L496:
	.loc 1 1358 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L500
	.loc 1 1359 0
	call	start_sequence@PLT
	jmp	.L502
.L500:
	.loc 1 1361 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	push_to_sequence@PLT
.L502:
	.loc 1 1363 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn@PLT
	.loc 1 1365 0
	call	get_insns@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1366 0
	call	end_sequence@PLT
	.loc 1 1367 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	insert_insn_on_edge, .-insert_insn_on_edge
	.section	.rodata
	.type	__FUNCTION__.13774, @object
	.size	__FUNCTION__.13774, 26
__FUNCTION__.13774:
	.string	"commit_one_edge_insertion"
	.text
	.type	commit_one_edge_insertion, @function
commit_one_edge_insertion:
.LFB42:
	.loc 1 1375 0
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
	.loc 1 1376 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 1377 0
	movl	$0, -12(%ebp)
	.loc 1 1380 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1381 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1385 0
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
	.loc 1 1389 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1391 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1393 0
	jmp	.L511
.L512:
	.loc 1 1396 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1397 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_nonnote_insn@PLT
	movl	%eax, -8(%ebp)
.L511:
	.loc 1 1393 0
	cmpl	$0, -8(%ebp)
	je	.L513
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	keep_with_call_p@PLT
	testb	%al, %al
	jne	.L512
.L513:
	.loc 1 1399 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
.L505:
.LBE35:
	.loc 1 1401 0
	cmpl	$0, -32(%ebp)
	jne	.L515
	cmpl	$0, -28(%ebp)
	jne	.L515
	.loc 1 1405 0
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
	.loc 1 1407 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1411 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1412 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L521
	.loc 1 1413 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L521:
	.loc 1 1414 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L523
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L523
	.loc 1 1415 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L523:
	.loc 1 1416 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L526
	.loc 1 1417 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L515
.L526:
	.loc 1 1418 0
	cmpl	$0, -20(%ebp)
	je	.L529
	.loc 1 1419 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L515
.L529:
	.loc 1 1421 0
	call	get_last_insn@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1405 0
	jmp	.L515
.L518:
	.loc 1 1426 0
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
	.loc 1 1430 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1438 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L535
	.loc 1 1439 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1440 0
	jmp	.L537
.L538:
	.loc 1 1442 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L537:
	.loc 1 1440 0
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
	.loc 1 1447 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L542
	.loc 1 1448 0
	leal	__FUNCTION__.13774@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1448, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L542:
	.loc 1 1450 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1426 0
	jmp	.L515
.L531:
	.loc 1 1456 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	split_edge@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1457 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L515:
	.loc 1 1463 0
	cmpl	$0, -32(%ebp)
	je	.L544
	.loc 1 1465 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 1466 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, -16(%ebp)
	jmp	.L546
.L544:
	.loc 1 1469 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	movl	%eax, -16(%ebp)
.L546:
	.loc 1 1471 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	returnjump_p@PLT
	testl	%eax, %eax
	je	.L547
	.loc 1 1478 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1479 0
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
	.loc 1 1481 0
	leal	__FUNCTION__.13774@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1481, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L552:
	.loc 1 1483 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1484 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 1486 0
	cmpl	$0, -32(%ebp)
	je	.L555
	.loc 1 1487 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
	jmp	.L555
.L547:
	.loc 1 1489 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L555
	.loc 1 1490 0
	leal	__FUNCTION__.13774@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1490, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L555:
	.loc 1 1493 0
	movl	-12(%ebp), %edx
	addl	$40, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1494 0
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
	.loc 1 1500 0
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
	.loc 1 1503 0
	movb	$0, -17(%ebp)
	.loc 1 1509 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L559
.L560:
.LBB36:
	.loc 1 1513 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L561
.L562:
	.loc 1 1515 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1516 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L563
	.loc 1 1518 0
	movb	$1, -17(%ebp)
	.loc 1 1519 0
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	commit_one_edge_insertion
.L563:
	.loc 1 1513 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L561:
	cmpl	$0, -28(%ebp)
	jne	.L562
.LBE36:
	.loc 1 1509 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L559:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L560
	.loc 1 1524 0
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L574
	.loc 1 1527 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1528 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1529 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L569
.L570:
	.loc 1 1530 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L571
	.loc 1 1532 0
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
	.loc 1 1533 0
	movl	-36(%ebp), %eax
	movl	$0, 40(%eax)
.L571:
	.loc 1 1529 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L569:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L570
	.loc 1 1535 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_many_sub_basic_blocks@PLT
	.loc 1 1536 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L574:
	.loc 1 1537 0
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
	.loc 1 1544 0
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
	.loc 1 1547 0
	movb	$0, -17(%ebp)
	.loc 1 1553 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L577
.L578:
.LBB37:
	.loc 1 1557 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L579
.L580:
	.loc 1 1559 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1560 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L581
	.loc 1 1562 0
	movb	$1, -17(%ebp)
	.loc 1 1563 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	commit_one_edge_insertion
.L581:
	.loc 1 1557 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L579:
	cmpl	$0, -28(%ebp)
	jne	.L580
.LBE37:
	.loc 1 1553 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L577:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L578
	.loc 1 1568 0
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L592
	.loc 1 1571 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1572 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1573 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L587
.L588:
	.loc 1 1574 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L589
	.loc 1 1576 0
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
	.loc 1 1577 0
	movl	-36(%ebp), %eax
	movl	$0, 40(%eax)
.L589:
	.loc 1 1573 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L587:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L588
	.loc 1 1579 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	find_many_sub_basic_blocks@PLT
	.loc 1 1580 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L592:
	.loc 1 1581 0
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
	.loc 1 1589 0
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
	.loc 1 1594 0
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
	.loc 1 1596 0
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
	.loc 1 1597 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1599 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1600 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L595
.L596:
	.loc 1 1601 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_edge_info@PLT
	.loc 1 1600 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L595:
	cmpl	$0, -8(%ebp)
	jne	.L596
	.loc 1 1602 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1604 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1605 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 1606 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1608 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L598
.L599:
	.loc 1 1610 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl_single@PLT
	.loc 1 1609 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L598:
	.loc 1 1608 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L599
	.loc 1 1612 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1613 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 1614 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1616 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$15, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1617 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L601
.L602:
	.loc 1 1618 0
	movl	$1, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_edge_info@PLT
	.loc 1 1617 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L601:
	cmpl	$0, -8(%ebp)
	jne	.L602
	.loc 1 1619 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1620 0
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
	.loc 1 1625 0
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
	.loc 1 1626 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_bb@PLT
	.loc 1 1627 0
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
	.loc 1 1632 0
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
	.loc 1 1633 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_bb@PLT
	.loc 1 1634 0
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
	.loc 1 1643 0
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
	.loc 1 1646 0
	cmpl	$0, 12(%ebp)
	jne	.L610
	.loc 1 1647 0
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
	.loc 1 1651 0
	call	get_max_uid@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1653 0
	movl	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1655 0
	movl	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1657 0
	movl	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1661 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L613
.L614:
.LBB39:
	.loc 1 1665 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1666 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1667 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L615
.L616:
.LBB40:
	.loc 1 1669 0
	movl	$2, -12(%ebp)
	.loc 1 1671 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L617
	.loc 1 1672 0
	movl	$1, -12(%ebp)
.L617:
	.loc 1 1673 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1675 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L619
.LBE40:
	.loc 1 1667 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L615:
	cmpl	$0, -16(%ebp)
	jne	.L616
.L619:
.LBE39:
	.loc 1 1661 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
.L613:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L614
	.loc 1 1680 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L622
.L623:
.LBB41:
	.loc 1 1684 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L624
	.loc 1 1686 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1688 0
	movl	-20(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 1689 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L624:
	.loc 1 1692 0
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
	.loc 1 1695 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1692 0
	jmp	.L630
.L626:
	.loc 1 1696 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L630
	.loc 1 1697 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L630:
	.loc 1 1699 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl_single@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1701 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L632
	.loc 1 1703 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1705 0
	movl	-20(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 1706 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L632:
	.loc 1 1709 0
	cmpl	$0, -8(%ebp)
	je	.L634
	.loc 1 1710 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L634:
.LBE41:
	.loc 1 1680 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
.L622:
	cmpl	$0, -40(%ebp)
	jne	.L623
	.loc 1 1713 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1714 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1715 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L612:
.LBE38:
	.loc 1 1718 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	testl	%eax, %eax
	je	.L641
	.loc 1 1720 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1721 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L639
.L640:
	.loc 1 1723 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	print_rtl_single@PLT
	.loc 1 1722 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
.L639:
	.loc 1 1721 0
	cmpl	$0, -40(%ebp)
	jne	.L640
.L641:
	.loc 1 1725 0
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
	.loc 1 1730 0
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
	.loc 1 1732 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L654
	.loc 1 1734 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1735 0
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
	.loc 1 1736 0
	jmp	.L654
.L650:
	.loc 1 1737 0
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
	.loc 1 1738 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	update_br_prob_note, .-update_br_prob_note
	.section	.rodata
	.type	__FUNCTION__.14185, @object
	.size	__FUNCTION__.14185, 17
__FUNCTION__.14185:
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
	.loc 1 1762 0
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
	.loc 1 1763 0
	call	get_max_uid@PLT
	movl	%eax, -100(%ebp)
	.loc 1 1764 0
	call	get_insns@PLT
	movl	%eax, -96(%ebp)
	.loc 1 1765 0
	call	get_last_insn@PLT
	movl	%eax, -92(%ebp)
	.loc 1 1769 0
	movl	$0, -68(%ebp)
	.loc 1 1772 0
	movl	-100(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1773 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -84(%ebp)
	.loc 1 1775 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1778 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1779 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L656
.L657:
	.loc 1 1781 0
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
	.loc 1 1784 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1785 0
	movl	$1, -68(%ebp)
.L658:
	.loc 1 1788 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L661
	.loc 1 1790 0
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
	.loc 1 1792 0
	movl	$1, -68(%ebp)
.L661:
	.loc 1 1795 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1779 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
.L656:
	cmpl	$0, -64(%ebp)
	jne	.L657
	.loc 1 1798 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L664
.L665:
.LBB42:
	.loc 1 1800 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1801 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1804 0
	movl	-92(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L666
.L667:
	.loc 1 1805 0
	movl	-76(%ebp), %eax
	cmpl	-52(%ebp), %eax
	je	.L668
	.loc 1 1804 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
.L666:
	cmpl	$0, -76(%ebp)
	jne	.L667
.L668:
	.loc 1 1808 0
	cmpl	$0, -76(%ebp)
	jne	.L672
	.loc 1 1810 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1812 0
	movl	$1, -68(%ebp)
	.loc 1 1817 0
	jmp	.L672
.L673:
	.loc 1 1822 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-88(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L674
	.loc 1 1824 0
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
	.loc 1 1826 0
	movl	$1, -68(%ebp)
.L674:
	.loc 1 1829 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-88(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1831 0
	movl	-76(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L676
	.loc 1 1817 0
	movl	-76(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -76(%ebp)
.L672:
	cmpl	$0, -76(%ebp)
	jne	.L673
.L676:
	.loc 1 1834 0
	cmpl	$0, -76(%ebp)
	jne	.L678
	.loc 1 1836 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1838 0
	movl	$1, -68(%ebp)
.L678:
	.loc 1 1841 0
	movl	-76(%ebp), %eax
	movl	%eax, -92(%ebp)
.LBE42:
	.loc 1 1798 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -64(%ebp)
.L664:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -64(%ebp)
	jne	.L665
	.loc 1 1845 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L681
.L682:
.LBB43:
	.loc 1 1847 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	.loc 1 1851 0
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
	.loc 1 1856 0
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
	.loc 1 1858 0
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
	.loc 1 1860 0
	movl	$1, -68(%ebp)
.L683:
	.loc 1 1863 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	testl	%edx, %edx
	jns	.L696
	.loc 1 1865 0
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
	.loc 1 1867 0
	movl	$1, -68(%ebp)
.L696:
	.loc 1 1869 0
	movl	-64(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	jns	.L698
	.loc 1 1871 0
	movl	-64(%ebp), %eax
	movl	72(%eax), %edx
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1873 0
	movl	$1, -68(%ebp)
.L698:
	.loc 1 1875 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L700
.L701:
	.loc 1 1877 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-84(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L702
	.loc 1 1879 0
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
	.loc 1 1881 0
	movl	$1, -68(%ebp)
.L702:
	.loc 1 1883 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	js	.L704
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	$10000, %eax
	jle	.L706
.L704:
	.loc 1 1885 0
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
	.loc 1 1887 0
	movl	$1, -68(%ebp)
.L706:
	.loc 1 1889 0
	movl	-28(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	testl	%edx, %edx
	jns	.L707
	.loc 1 1891 0
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
	.loc 1 1893 0
	movl	$1, -68(%ebp)
.L707:
	.loc 1 1896 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-84(%ebp), %eax
	leal	8(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1898 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L709
	.loc 1 1899 0
	addl	$1, -48(%ebp)
.L709:
	.loc 1 1901 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$-33, %eax
	testl	%eax, %eax
	jne	.L711
	.loc 1 1902 0
	addl	$1, -32(%ebp)
.L711:
	.loc 1 1904 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L713
	.loc 1 1905 0
	addl	$1, -40(%ebp)
.L713:
	.loc 1 1907 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L715
	.loc 1 1908 0
	addl	$1, -44(%ebp)
	jmp	.L717
.L715:
	.loc 1 1909 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L717
	.loc 1 1910 0
	addl	$1, -36(%ebp)
.L717:
	.loc 1 1912 0
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
	.loc 1 1918 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	52(%eax), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	je	.L723
	.loc 1 1920 0
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
	.loc 1 1923 0
	movl	$1, -68(%ebp)
	jmp	.L719
.L723:
	.loc 1 1926 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L725
.L726:
	.loc 1 1928 0
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
	.loc 1 1936 0
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
	.loc 1 1938 0
	leal	__FUNCTION__.14185@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$1938, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L729:
	.loc 1 1927 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L725:
	.loc 1 1926 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L726
.L719:
.LBE44:
	.loc 1 1943 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L730
	.loc 1 1945 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1947 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1948 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_edge_info@PLT
	.loc 1 1949 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1950 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_edge_info@PLT
	.loc 1 1951 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 1952 0
	movl	$1, -68(%ebp)
.L730:
	.loc 1 1955 0
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
	.loc 1 1875 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L700:
	cmpl	$0, -28(%ebp)
	jne	.L701
	.loc 1 1958 0
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
	.loc 1 1961 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1962 0
	movl	$1, -68(%ebp)
.L733:
	.loc 1 1964 0
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
	.loc 1 1969 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1970 0
	movl	$1, -68(%ebp)
.L737:
	.loc 1 1972 0
	cmpl	$0, -48(%ebp)
	je	.L743
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L743
	.loc 1 1974 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1975 0
	movl	$1, -68(%ebp)
.L743:
	.loc 1 1977 0
	cmpl	$1, -32(%ebp)
	je	.L746
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_uncondjump_p@PLT
	testl	%eax, %eax
	je	.L746
	.loc 1 1979 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1980 0
	movl	$1, -68(%ebp)
.L746:
	.loc 1 1982 0
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
	.loc 1 1985 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1986 0
	movl	$1, -68(%ebp)
.L749:
	.loc 1 1988 0
	cmpl	$0, -40(%ebp)
	je	.L753
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L753
	.loc 1 1990 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1991 0
	movl	$1, -68(%ebp)
.L753:
	.loc 1 1993 0
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
	.loc 1 1999 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2000 0
	movl	$1, -68(%ebp)
.L756:
	.loc 1 2003 0
	cmpl	$0, -48(%ebp)
	jne	.L763
.LBB45:
	.loc 1 2008 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L765
.L766:
	.loc 1 2010 0
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
	.loc 1 2014 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2015 0
	movl	$1, -68(%ebp)
	.loc 1 2016 0
	jmp	.L763
.L769:
	.loc 1 2009 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L765:
	.loc 1 2008 0
	cmpl	$0, -16(%ebp)
	je	.L766
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L766
.L763:
.LBE45:
	.loc 1 2020 0
	movl	-64(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L772
.L773:
	.loc 1 2022 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L774
	.loc 1 2024 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2025 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2026 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_edge_info@PLT
	.loc 1 2027 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2028 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_edge_info@PLT
	.loc 1 2029 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 2030 0
	movl	$1, -68(%ebp)
.L774:
	.loc 1 2032 0
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
	.loc 1 2020 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L772:
	cmpl	$0, -28(%ebp)
	jne	.L773
	.loc 1 2035 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L777
.L778:
	.loc 1 2036 0
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L779
	.loc 1 2038 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	debug_rtx@PLT
	.loc 1 2039 0
	movl	-76(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L781
	.loc 1 2040 0
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
	.loc 1 2044 0
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
	.loc 1 2048 0
	movl	$1, -68(%ebp)
.L779:
	.loc 1 2035 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L777:
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	cmpl	-76(%ebp), %eax
	jne	.L778
	.loc 1 2054 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 2055 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L785
	.loc 1 2057 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-76(%ebp), %eax
	jne	.L787
	.loc 1 2059 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2061 0
	movl	$1, -68(%ebp)
.L787:
	.loc 1 2064 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L785:
	.loc 1 2067 0
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
	.loc 1 2069 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2071 0
	movl	$1, -68(%ebp)
.L792:
	.loc 1 2074 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-76(%ebp), %eax
	je	.L793
	.loc 1 2078 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L795
.L796:
	.loc 1 2080 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L797
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L797
	.loc 1 2082 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %edx
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2084 0
	movl	$1, -68(%ebp)
.L797:
	.loc 1 2087 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-76(%ebp), %eax
	je	.L793
	.loc 1 2090 0
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
	.loc 1 2094 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2095 0
	leal	__FUNCTION__.14185@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$2095, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L804:
	.loc 1 2078 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L795:
	cmpl	$0, -76(%ebp)
	jne	.L796
.L793:
.LBE43:
	.loc 1 1845 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -64(%ebp)
.L681:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -64(%ebp)
	jne	.L682
.LBB46:
	.loc 1 2104 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L806
.L807:
	.loc 1 2105 0
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
	.loc 1 2104 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L806:
	cmpl	$0, -12(%ebp)
	jne	.L807
	.loc 1 2107 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L809
.L810:
	.loc 1 2108 0
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
	.loc 1 2107 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L809:
	cmpl	$0, -12(%ebp)
	jne	.L810
.LBE46:
	.loc 1 2111 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -64(%ebp)
	jmp	.L812
.L813:
	.loc 1 2112 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L814
	.loc 1 2114 0
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2115 0
	movl	$1, -68(%ebp)
.L814:
	.loc 1 2111 0
	movl	-64(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -64(%ebp)
.L812:
	cmpl	$0, -64(%ebp)
	jne	.L813
	.loc 1 2118 0
	movl	$0, -72(%ebp)
	.loc 1 2119 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2121 0
	movl	-96(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L817
.L818:
	.loc 1 2123 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L819
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-83, %eax
	jne	.L819
	.loc 1 2125 0
	movl	-76(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2127 0
	addl	$1, -72(%ebp)
	.loc 1 2128 0
	movl	-60(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L822
	.loc 1 2129 0
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L822:
	.loc 1 2131 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
.L819:
	.loc 1 2134 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	addl	-88(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L824
	.loc 1 2136 0
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
	.loc 1 2144 0
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
	.loc 1 2148 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 2151 0
	jmp	.L824
.L826:
	.loc 1 2154 0
	leal	__FUNCTION__.14185@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$2154, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L824:
	.loc 1 2158 0
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
	.loc 1 2162 0
	leal	__FUNCTION__.14185@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$2162, 12(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L834:
	.loc 1 2121 0
	movl	-76(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -76(%ebp)
.L817:
	cmpl	$0, -76(%ebp)
	jne	.L818
	.loc 1 2165 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -72(%ebp)
	je	.L842
	.loc 1 2166 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L842:
	.loc 1 2170 0
	cmpl	$0, -68(%ebp)
	je	.L844
	.loc 1 2171 0
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L844:
	.loc 1 2174 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2175 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2176 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2177 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE50:
	.size	verify_flow_info, .-verify_flow_info
	.section	.rodata
	.type	__FUNCTION__.14779, @object
	.size	__FUNCTION__.14779, 17
__FUNCTION__.14779:
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
	.loc 1 2186 0
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
	.loc 1 2188 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2189 0
	movb	$0, -17(%ebp)
	.loc 1 2192 0
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
	.loc 1 2197 0
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
	.loc 1 2200 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L848:
.LBE47:
	.loc 1 2204 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L854
.L855:
	.loc 1 2206 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2207 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L856
	.loc 1 2209 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	jne	.L858
	.loc 1 2210 0
	jmp	.L860
.L856:
	.loc 1 2212 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L858
	.loc 1 2214 0
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
	.loc 1 2222 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
	.loc 1 2223 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2224 0
	movb	$1, -17(%ebp)
.L858:
	.loc 1 2204 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L854:
	cmpl	$0, -52(%ebp)
	jne	.L855
	.loc 1 2227 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L865
.LBB48:
	.loc 1 2233 0
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
	.loc 1 2236 0
	movzbl	-17(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L871
.L867:
	.loc 1 2240 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	je	.L872
	.loc 1 2242 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2243 0
	cmpl	$0, -32(%ebp)
	je	.L876
	.loc 1 2244 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
	.loc 1 2245 0
	jmp	.L876
.L877:
	.loc 1 2246 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_note@PLT
.L876:
	.loc 1 2245 0
	movl	$0, 8(%esp)
	movl	$19, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.L877
.L872:
	.loc 1 2249 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L878
.L879:
	.loc 1 2251 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2256 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-3, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 2259 0
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
	.loc 1 2263 0
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
	.loc 1 2268 0
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
	.loc 1 2272 0
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
	.loc 1 2278 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2279 0
	movb	$1, -17(%ebp)
	.loc 1 2280 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L882:
	.loc 1 2249 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L878:
	cmpl	$0, -52(%ebp)
	jne	.L879
	.loc 1 2283 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L890
	movzbl	-17(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L892
.L890:
	.loc 1 2284 0
	movzbl	-17(%ebp), %edx
	movl	%edx, -76(%ebp)
	jmp	.L871
.L892:
	.loc 1 2286 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L893
	.loc 1 2287 0
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
	.loc 1 2289 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L895
	.loc 1 2290 0
	movzbl	-17(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	jmp	.L871
.L895:
	.loc 1 2293 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L897
	.loc 1 2295 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$10000, 28(%eax)
	.loc 1 2296 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	jmp	.L899
.L897:
	.loc 1 2300 0
	movl	$0, 8(%esp)
	movl	$16, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2301 0
	cmpl	$0, -32(%ebp)
	jne	.L900
	.loc 1 2302 0
	movzbl	-17(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L871
.L900:
	.loc 1 2304 0
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
	.loc 1 2305 0
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
	.loc 1 2306 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2307 0
	movl	-28(%ebp), %eax
	movl	28(%eax), %edx
	movl	$10000, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 2308 0
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
	.loc 1 2309 0
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
	.loc 1 2312 0
	movzbl	-17(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	jmp	.L871
.L865:
.LBE48:
	.loc 1 2320 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L908
.L909:
	.loc 1 2321 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L908:
	.loc 1 2320 0
	cmpl	$0, -52(%ebp)
	je	.L910
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	.L909
.L910:
	.loc 1 2324 0
	cmpl	$0, -52(%ebp)
	jne	.L912
	.loc 1 2325 0
	movzbl	-17(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L871
.L912:
	.loc 1 2327 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L914
.L915:
	.loc 1 2329 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2330 0
	movl	-52(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L916
	.loc 1 2332 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 2333 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
	.loc 1 2334 0
	movb	$1, -17(%ebp)
.L916:
	.loc 1 2327 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L914:
	cmpl	$0, -52(%ebp)
	jne	.L915
	.loc 1 2338 0
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
	.loc 1 2339 0
	leal	__FUNCTION__.14779@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2339, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L921:
	.loc 1 2341 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$10000, 28(%eax)
	.loc 1 2342 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 2344 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L922
	.loc 1 2345 0
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
	.loc 1 2347 0
	movzbl	-17(%ebp), %edx
	movl	%edx, -76(%ebp)
.L871:
	movl	-76(%ebp), %eax
	.loc 1 2348 0
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
	.loc 1 2356 0
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
	.loc 1 2357 0
	movl	$0, -32(%ebp)
	.loc 1 2358 0
	movl	$0, -28(%ebp)
	.loc 1 2361 0
	cmpl	$0, 8(%ebp)
	je	.L926
	.loc 1 2363 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2364 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.L926:
	.loc 1 2367 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L928
.L929:
.LBB49:
	.loc 1 2369 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_dead_edges@PLT
	movb	%al, -17(%ebp)
	.loc 1 2371 0
	movzbl	-17(%ebp), %eax
	orl	%eax, -32(%ebp)
	.loc 1 2372 0
	cmpb	$0, -17(%ebp)
	je	.L930
	cmpl	$0, 8(%ebp)
	je	.L930
	.loc 1 2373 0
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
	.loc 1 2367 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L928:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L929
	.loc 1 2376 0
	cmpl	$0, 8(%ebp)
	je	.L934
	cmpl	$0, -32(%ebp)
	je	.L934
	.loc 1 2377 0
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	update_life_info@PLT
.L934:
	.loc 1 2381 0
	cmpl	$0, 8(%ebp)
	je	.L937
	.loc 1 2382 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L937:
	.loc 1 2383 0
	cmpl	$0, -32(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 2384 0
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
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 19 "../../../kg++fe/gnu/varray.h"
	.file 20 "../../../kg++fe/gnu/regs.h"
	.file 21 "../../../kg++fe/gnu/flags.h"
	.file 22 "../../../kg++fe/gnu/output.h"
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
	.long	0x8709
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cfgrtl.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
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
	.byte	0x84
	.long	0xa56
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.byte	0xce
	.long	0x1673
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
	.byte	0xf2
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x1683
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
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x6
	.value	0x887
	.long	0x3d58
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x6
	.value	0x888
	.long	0x4077
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x6
	.value	0x889
	.long	0x40bf
	.uleb128 0x9
	.string	"vector"
	.byte	0x6
	.value	0x88a
	.long	0x41e2
	.uleb128 0x9
	.string	"string"
	.byte	0x6
	.value	0x88b
	.long	0x4120
	.uleb128 0x9
	.string	"complex"
	.byte	0x6
	.value	0x88c
	.long	0x418d
	.uleb128 0x9
	.string	"identifier"
	.byte	0x6
	.value	0x88d
	.long	0x4417
	.uleb128 0x9
	.string	"decl"
	.byte	0x6
	.value	0x88e
	.long	0x5490
	.uleb128 0x9
	.string	"type"
	.byte	0x6
	.value	0x88f
	.long	0x467a
	.uleb128 0x9
	.string	"list"
	.byte	0x6
	.value	0x890
	.long	0x444e
	.uleb128 0x9
	.string	"vec"
	.byte	0x6
	.value	0x891
	.long	0x4493
	.uleb128 0x9
	.string	"exp"
	.byte	0x6
	.value	0x892
	.long	0x44e4
	.uleb128 0x9
	.string	"block"
	.byte	0x6
	.value	0x893
	.long	0x4530
	.uleb128 0x9
	.string	"omp"
	.byte	0x6
	.value	0x895
	.long	0x5e6a
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
	.uleb128 0x15
	.long	0x1225
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
	.long	0x12ff
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x58
	.long	0x1225
	.uleb128 0x13
	.long	0x1376
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF3
	.byte	0x3
	.byte	0x68
	.long	0x131a
	.uleb128 0x7
	.long	0x1453
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x458
	.uleb128 0x19
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x2e3
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x3bc
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x2d0
	.uleb128 0x19
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9b
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19c
	.uleb128 0x19
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x80d
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x12ff
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x1467
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x14cd
	.uleb128 0x19
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e4
	.uleb128 0x19
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x1658
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x165e
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1453
	.uleb128 0x4
	.long	0x14cd
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x5
	.byte	0x3d
	.long	0x5f5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x5f5e
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
	.long	0x146d
	.uleb128 0x4
	.long	0x1658
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
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
	.long	0x664c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0xc
	.byte	0xbc
	.long	0x664c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0xc
	.byte	0xc1
	.long	0x657c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0xc
	.byte	0xc5
	.long	0x657c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0xc
	.byte	0xcb
	.long	0x657c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0xc
	.byte	0xcd
	.long	0x657c
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
	.long	0x1658
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0xc
	.byte	0xd6
	.long	0x1658
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
	.long	0x68c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0xc
	.byte	0xdf
	.long	0x658a
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
	.long	0x14d3
	.uleb128 0x3
	.byte	0x4
	.long	0x1376
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x1381
	.uleb128 0xf
	.long	0x1683
	.long	0x1664
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1693
	.long	0x9b
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x4
	.long	0x16cb
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
	.long	0x1699
	.uleb128 0x15
	.long	0x1fff
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
	.long	0x3bc
	.uleb128 0x4
	.long	0x204f
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x6
	.byte	0x30
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x6
	.byte	0x30
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x34
	.long	0x2059
	.uleb128 0x1a
	.string	"st"
	.byte	0x1
	.uleb128 0x1c
	.long	0x20ae
	.long	.LASF5
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
	.long	0x3d58
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
	.long	0x403b
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x6
	.byte	0x8d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x6
	.byte	0x8e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x6
	.byte	0x90
	.long	0x16dd
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.long	0x4077
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x6
	.value	0x30b
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x6
	.value	0x30c
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x40bf
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x303
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x304
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x305
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x6
	.value	0x30d
	.long	0x403b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x410d
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x31f
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x320
	.long	0x3d58
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
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x322
	.long	0x411a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x410d
	.uleb128 0xc
	.long	0x4187
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x333
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x334
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x335
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x336
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x6
	.value	0x337
	.long	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x6
	.value	0x339
	.long	0x4187
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x204f
	.uleb128 0xc
	.long	0x41e2
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x342
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x343
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x344
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x6
	.value	0x345
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x6
	.value	0x346
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x422a
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x355
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x356
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x357
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x6
	.value	0x358
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x4274
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
	.long	0x4274
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
	.long	0x422a
	.uleb128 0xc
	.long	0x43a7
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
	.long	0x4274
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
	.long	0x43bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0xf
	.byte	0xb6
	.long	0x43d3
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
	.uleb128 0x1f
	.long	0x43bc
	.byte	0x1
	.long	0x4274
	.uleb128 0x20
	.long	0x4bf
	.uleb128 0x20
	.long	0x4a2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x43a7
	.uleb128 0x21
	.long	0x43d3
	.byte	0x1
	.uleb128 0x20
	.long	0x4bf
	.uleb128 0x20
	.long	0x4274
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x43c2
	.uleb128 0x13
	.long	0x4417
	.long	.LASF14
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
	.long	0x444e
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x376
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x377
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x6
	.value	0x378
	.long	0x43d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x4493
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x380
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x381
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x6
	.value	0x382
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x6
	.value	0x383
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x44d4
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x38e
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x38f
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"length"
	.byte	0x6
	.value	0x390
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x6
	.value	0x391
	.long	0x44d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x44e4
	.long	0x1e4
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x4530
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3d4
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x3d5
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x6
	.value	0x3d6
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x6
	.value	0x3d9
	.long	0x44d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4620
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x40a
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x40b
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x40d
	.long	0x3bc
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
	.long	0x3bc
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
	.value	0x411
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x6
	.value	0x412
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x6
	.value	0x413
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x6
	.value	0x414
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x6
	.value	0x415
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x6
	.value	0x416
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x24
	.long	0x4667
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x6
	.value	0x571
	.long	0x2e3
	.uleb128 0x9
	.string	"pointer"
	.byte	0x6
	.value	0x572
	.long	0x4c1
	.uleb128 0x9
	.string	"die"
	.byte	0x6
	.value	0x573
	.long	0x4674
	.byte	0x0
	.uleb128 0x1a
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4667
	.uleb128 0xc
	.long	0x49c8
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x551
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x552
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x6
	.value	0x553
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x554
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x6
	.value	0x555
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x6
	.value	0x556
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x557
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.string	"precision"
	.byte	0x6
	.value	0x559
	.long	0x3bc
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
	.long	0x80d
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF6
	.byte	0x6
	.value	0x564
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0x6
	.value	0x565
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0x6
	.value	0x566
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x6
	.value	0x567
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x6
	.value	0x568
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x6
	.value	0x569
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x6
	.value	0x56a
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x6
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x6
	.value	0x56f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x6
	.value	0x574
	.long	0x4620
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x576
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x6
	.value	0x577
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x6
	.value	0x578
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x6
	.value	0x579
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x6
	.value	0x57a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0x6
	.value	0x57b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x57c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x6
	.value	0x57d
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x6
	.value	0x57f
	.long	0x49d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x6
	.value	0x581
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x6
	.value	0x582
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x6
	.value	0x583
	.long	0x2010
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x6
	.value	0x58a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x49c8
	.uleb128 0xc
	.long	0x4a1f
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x817
	.uleb128 0x22
	.string	"align"
	.byte	0x6
	.value	0x818
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x24
	.long	0x4a54
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x811
	.long	0x20ae
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x814
	.long	0x458
	.uleb128 0x9
	.string	"a"
	.byte	0x6
	.value	0x81a
	.long	0x49da
	.byte	0x0
	.uleb128 0x24
	.long	0x4a93
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x6
	.value	0x838
	.long	0x5452
	.uleb128 0x9
	.string	"r"
	.byte	0x6
	.value	0x839
	.long	0x9b
	.uleb128 0x9
	.string	"t"
	.byte	0x6
	.value	0x83a
	.long	0x1e4
	.uleb128 0x9
	.string	"i"
	.byte	0x6
	.value	0x83b
	.long	0x2e3
	.byte	0x0
	.uleb128 0x25
	.long	0x5452
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x9
	.byte	0xb5
	.long	0x6c42
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x9
	.byte	0xb6
	.long	0x6c56
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x9
	.byte	0xb7
	.long	0x6c5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x9
	.byte	0xb8
	.long	0x6c62
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x9
	.byte	0xb9
	.long	0x6c78
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
	.long	0x5452
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
	.long	0x6c95
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
	.long	0x1693
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0x9
	.value	0x15a
	.long	0x6ca7
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
	.long	0x6946
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
	.long	0x6cc0
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
	.long	0x6cda
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x22
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
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x9
	.value	0x1fa
	.long	0x6bcc
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
	.long	0x4a93
	.uleb128 0x26
	.long	0x5490
	.byte	0x4
	.byte	0x6
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x6
	.value	0x84f
	.long	0x4187
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x6
	.value	0x850
	.long	0x1fff
	.uleb128 0x9
	.string	"field_id"
	.byte	0x6
	.value	0x851
	.long	0x3bc
	.byte	0x0
	.uleb128 0xc
	.long	0x5bda
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x6
	.value	0x7c5
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x7c6
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x6
	.value	0x7c7
	.long	0x16cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x6
	.value	0x7c8
	.long	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x6
	.value	0x7c9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.string	"mode"
	.byte	0x6
	.value	0x7ca
	.long	0x80d
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF5
	.byte	0x6
	.value	0x7ed
	.long	0x205e
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF6
	.byte	0x6
	.value	0x7fa
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF7
	.byte	0x6
	.value	0x7fb
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF8
	.byte	0x6
	.value	0x7fc
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF9
	.byte	0x6
	.value	0x7fd
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF10
	.byte	0x6
	.value	0x7fe
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF11
	.byte	0x6
	.value	0x7ff
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF12
	.byte	0x6
	.value	0x800
	.long	0x3bc
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.long	.LASF13
	.byte	0x6
	.value	0x801
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x4a1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1e
	.long	.LASF18
	.byte	0x6
	.value	0x81d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"name"
	.byte	0x6
	.value	0x81e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x6
	.value	0x81f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x6
	.value	0x820
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x6
	.value	0x821
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x6
	.value	0x822
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x6
	.value	0x824
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x6
	.value	0x825
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x6
	.value	0x829
	.long	0x458
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1e
	.long	.LASF17
	.byte	0x6
	.value	0x82b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x6
	.value	0x82c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x6
	.value	0x82d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1e
	.long	.LASF19
	.byte	0x6
	.value	0x82e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x6
	.value	0x82f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x830
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x6
	.value	0x83c
	.long	0x4a54
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x6
	.value	0x83f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x6
	.value	0x843
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x6
	.value	0x845
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x846
	.long	0x458
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x6
	.value	0x848
	.long	0x5be6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x22
	.string	"symtab_idx"
	.byte	0x6
	.value	0x84b
	.long	0x3bc
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
	.long	0x3bc
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
	.long	0x5458
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x858
	.long	0x2010
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x6
	.value	0x85c
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1a
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bda
	.uleb128 0x15
	.long	0x5e6a
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
	.long	0x5eb9
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x864
	.uleb128 0x1e
	.long	.LASF0
	.byte	0x6
	.value	0x865
	.long	0x3d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x6
	.value	0x866
	.long	0x5bec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x867
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
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x427
	.uleb128 0x4
	.long	0x5f32
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x5
	.byte	0x35
	.long	0x5f32
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x5f32
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
	.long	0x5f38
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5edb
	.uleb128 0xf
	.long	0x5f48
	.long	0x5ec8
	.uleb128 0x10
	.long	0x3d3
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x5edb
	.uleb128 0x3
	.byte	0x4
	.long	0x5f48
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x14cd
	.uleb128 0x4
	.long	0x5fcc
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
	.long	0x5fcc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x5fdc
	.long	0x469
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x5feb
	.uleb128 0x3
	.byte	0x4
	.long	0x5f72
	.uleb128 0x4
	.long	0x6027
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
	.long	0x61c2
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
	.long	0x62be
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x13
	.byte	0x55
	.uleb128 0x19
	.string	"c"
	.byte	0x13
	.byte	0x56
	.long	0x7d2
	.uleb128 0x19
	.string	"uc"
	.byte	0x13
	.byte	0x58
	.long	0x62be
	.uleb128 0x19
	.string	"s"
	.byte	0x13
	.byte	0x5a
	.long	0x62ce
	.uleb128 0x19
	.string	"us"
	.byte	0x13
	.byte	0x5c
	.long	0x62de
	.uleb128 0x19
	.string	"i"
	.byte	0x13
	.byte	0x5e
	.long	0x62ee
	.uleb128 0x19
	.string	"u"
	.byte	0x13
	.byte	0x60
	.long	0x62fe
	.uleb128 0x19
	.string	"l"
	.byte	0x13
	.byte	0x62
	.long	0x630e
	.uleb128 0x19
	.string	"ul"
	.byte	0x13
	.byte	0x64
	.long	0x631e
	.uleb128 0x19
	.string	"hint"
	.byte	0x13
	.byte	0x66
	.long	0x632e
	.uleb128 0x19
	.string	"uhint"
	.byte	0x13
	.byte	0x68
	.long	0x5fcc
	.uleb128 0x19
	.string	"generic"
	.byte	0x13
	.byte	0x6a
	.long	0x633e
	.uleb128 0x19
	.string	"cptr"
	.byte	0x13
	.byte	0x6c
	.long	0x634e
	.uleb128 0x19
	.string	"rtx"
	.byte	0x13
	.byte	0x6e
	.long	0x635e
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x13
	.byte	0x70
	.long	0x636e
	.uleb128 0x19
	.string	"tree"
	.byte	0x13
	.byte	0x72
	.long	0x637e
	.uleb128 0x19
	.string	"bitmap"
	.byte	0x13
	.byte	0x74
	.long	0x638e
	.uleb128 0x19
	.string	"reg"
	.byte	0x13
	.byte	0x76
	.long	0x639e
	.uleb128 0x19
	.string	"const_equiv"
	.byte	0x13
	.byte	0x78
	.long	0x649a
	.uleb128 0x19
	.string	"bb"
	.byte	0x13
	.byte	0x7a
	.long	0x64aa
	.uleb128 0x19
	.string	"te"
	.byte	0x13
	.byte	0x7c
	.long	0x64ba
	.byte	0x0
	.uleb128 0xf
	.long	0x62ce
	.long	0x400
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62de
	.long	0x44b
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62ee
	.long	0x411
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62fe
	.long	0x2e3
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x630e
	.long	0x3bc
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x631e
	.long	0x4a2
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x632e
	.long	0x427
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x633e
	.long	0x458
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x634e
	.long	0x4bf
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x635e
	.long	0x4c1
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x636e
	.long	0xa6
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x637e
	.long	0x1a9
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x638e
	.long	0x1f0
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x639e
	.long	0x14cd
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x63ae
	.long	0x6494
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x6494
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
	.uleb128 0x1b
	.long	.LASF25
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
	.long	0x63ae
	.uleb128 0xf
	.long	0x64aa
	.long	0x5ff1
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x64ba
	.long	0x1658
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x64ca
	.long	0x64d5
	.uleb128 0x10
	.long	0x3d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x64ca
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x13
	.byte	0x7e
	.long	0x61c2
	.uleb128 0x4
	.long	0x6563
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
	.long	0x6027
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
	.long	0x64db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x13
	.byte	0x8a
	.long	0x6576
	.uleb128 0x3
	.byte	0x4
	.long	0x64ee
	.uleb128 0x2
	.string	"regset"
	.byte	0xc
	.byte	0x22
	.long	0x5f64
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0xc
	.byte	0x75
	.long	0x458
	.uleb128 0x4
	.long	0x6646
	.string	"edge_def"
	.byte	0x28
	.byte	0xc
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0xc
	.byte	0x7a
	.long	0x6646
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0xc
	.byte	0x7a
	.long	0x6646
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0xc
	.byte	0x7d
	.long	0x1658
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0xc
	.byte	0x7d
	.long	0x1658
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
	.long	0x658a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x659b
	.uleb128 0x2
	.string	"edge"
	.byte	0xc
	.byte	0x89
	.long	0x6646
	.uleb128 0x4
	.long	0x68c4
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
	.long	0x68ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0xc
	.value	0x17c
	.long	0x68ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0xc
	.value	0x17f
	.long	0x68ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0xc
	.value	0x184
	.long	0x68d5
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
	.uleb128 0x1e
	.long	.LASF4
	.byte	0xc
	.value	0x18b
	.long	0x68ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.long	.LASF26
	.byte	0xc
	.value	0x18f
	.long	0x68ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0xc
	.value	0x192
	.long	0x5fdc
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
	.long	0x68d5
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
	.long	0x68d5
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
	.long	0x5fdc
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
	.long	0x68db
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
	.long	0x68c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0xc
	.value	0x1b4
	.long	0x68c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1e
	.long	.LASF24
	.byte	0xc
	.value	0x1b7
	.long	0x68c4
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
	.long	0x6658
	.uleb128 0x18
	.long	.LASF25
	.byte	0xc
	.byte	0xe6
	.long	0x1658
	.uleb128 0x3
	.byte	0x4
	.long	0x664c
	.uleb128 0x3
	.byte	0x4
	.long	0x68c4
	.uleb128 0x4
	.long	0x6946
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
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x9
	.byte	0x1b
	.long	0x6946
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68e1
	.uleb128 0x13
	.long	0x6991
	.long	.LASF27
	.byte	0x10
	.byte	0x9
	.byte	0x24
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x9
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x9
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF28
	.byte	0x9
	.byte	0x28
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x9
	.byte	0x29
	.long	0x6991
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x694c
	.uleb128 0x3
	.byte	0x4
	.long	0x427a
	.uleb128 0x4
	.long	0x6aec
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
	.uleb128 0x1b
	.long	.LASF28
	.byte	0x9
	.byte	0x4a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF27
	.byte	0x9
	.byte	0x50
	.long	0x6991
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
	.long	0x5ec2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x9
	.byte	0x70
	.long	0x1693
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x6bcc
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
	.long	0x6c36
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
	.long	0x6c36
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c48
	.uleb128 0x3
	.byte	0x4
	.long	0x6aec
	.uleb128 0x3
	.byte	0x4
	.long	0x699d
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c68
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c7e
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c9b
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6cad
	.uleb128 0x1a
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6cc6
	.uleb128 0x28
	.long	0x6d19
	.string	"can_delete_note_p"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	0x2e3
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x29
	.long	.LASF29
	.byte	0x1
	.byte	0x60
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x6d55
	.string	"can_delete_label_p"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	0x2e3
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2a
	.string	"label"
	.byte	0x1
	.byte	0x6b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x6e4f
	.byte	0x1
	.string	"delete_insn"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	0x9b
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x29
	.long	.LASF30
	.byte	0x1
	.byte	0x78
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.byte	0x7a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.byte	0x7b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"really_delete"
	.byte	0x1
	.byte	0x7c
	.long	0x5eb9
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x2e
	.long	0x6dd9
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2d
	.string	"name"
	.byte	0x1
	.byte	0x85
	.long	0x2d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2e
	.long	0x6e3e
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2d
	.string	"pat"
	.byte	0x1
	.byte	0xa9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"diff_vec_p"
	.byte	0x1
	.byte	0xaa
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.byte	0xab
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0xac
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
	.byte	0xb0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x856b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12339
	.byte	0x0
	.uleb128 0x2b
	.long	0x6ea9
	.byte	0x1
	.string	"delete_insn_and_edges"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.long	0x9b
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x29
	.long	.LASF30
	.byte	0x1
	.byte	0xc0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.byte	0xc2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"purge"
	.byte	0x1
	.byte	0xc3
	.long	0x5eb9
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x31
	.long	0x6f00
	.byte	0x1
	.string	"delete_insn_chain"
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2a
	.string	"start"
	.byte	0x1
	.byte	0xd4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"finish"
	.byte	0x1
	.byte	0xd4
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.byte	0xd6
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x6f5e
	.byte	0x1
	.string	"delete_insn_chain_and_edges"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.byte	0xec
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF26
	.byte	0x1
	.byte	0xec
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"purge"
	.byte	0x1
	.byte	0xee
	.long	0x5eb9
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x32
	.long	0x6ffe
	.byte	0x1
	.string	"create_basic_block_structure"
	.byte	0x1
	.value	0x105
	.byte	0x1
	.long	0x68ca
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x33
	.string	"head"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"bb_note"
	.byte	0x1
	.value	0x103
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF32
	.byte	0x1
	.value	0x104
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x106
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x36
	.long	.LASF32
	.byte	0x1
	.value	0x10f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7068
	.byte	0x1
	.string	"create_basic_block"
	.byte	0x1
	.value	0x152
	.byte	0x1
	.long	0x68ca
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x33
	.string	"head"
	.byte	0x1
	.value	0x150
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.value	0x150
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF32
	.byte	0x1
	.value	0x151
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x153
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x70e8
	.byte	0x1
	.string	"flow_delete_block_noexpunge"
	.byte	0x1
	.value	0x16a
	.byte	0x1
	.long	0x2e3
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x33
	.string	"b"
	.byte	0x1
	.value	0x169
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF33
	.byte	0x1
	.value	0x16b
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x16c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.value	0x16c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.value	0x16c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x7131
	.byte	0x1
	.string	"flow_delete_block"
	.byte	0x1
	.value	0x1ab
	.byte	0x1
	.long	0x2e3
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x33
	.string	"b"
	.byte	0x1
	.value	0x1aa
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF33
	.byte	0x1
	.value	0x1ac
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x7192
	.byte	0x1
	.string	"compute_bb_for_insn"
	.byte	0x1
	.value	0x1b8
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x1b9
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.value	0x1bd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x1be
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x71c9
	.byte	0x1
	.string	"free_bb_for_insn"
	.byte	0x1
	.value	0x1cd
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x1ce
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x7210
	.byte	0x1
	.string	"update_bb_for_insn"
	.byte	0x1
	.value	0x1d9
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x1d8
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x1da
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7361
	.byte	0x1
	.string	"split_block"
	.byte	0x1
	.value	0x1ed
	.byte	0x1
	.long	0x664c
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x1eb
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x1ec
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"new_bb"
	.byte	0x1
	.value	0x1ee
	.long	0x68ca
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.long	.LASF34
	.byte	0x1
	.value	0x1ef
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x1f0
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	0x72f3
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0x207
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	0x72ca
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0x207
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x207
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x207
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x207
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0x208
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x7337
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0x208
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x208
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x208
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x208
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x7458
	.byte	0x1
	.string	"merge_blocks_nomove"
	.byte	0x1
	.value	0x228
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x33
	.string	"a"
	.byte	0x1
	.value	0x227
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"b"
	.byte	0x1
	.value	0x227
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"b_head"
	.byte	0x1
	.value	0x229
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"b_end"
	.byte	0x1
	.value	0x229
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"a_end"
	.byte	0x1
	.value	0x229
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"del_first"
	.byte	0x1
	.value	0x22a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"del_last"
	.byte	0x1
	.value	0x22a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"b_empty"
	.byte	0x1
	.value	0x22b
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x22c
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	0x7440
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x35
	.string	"prev"
	.byte	0x1
	.value	0x24a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.value	0x281
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x7490
	.byte	0x1
	.string	"block_label"
	.byte	0x1
	.value	0x294
	.byte	0x1
	.long	0x9b
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x33
	.string	"block"
	.byte	0x1
	.value	0x293
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x75b3
	.string	"try_redirect_by_replacing_jump"
	.byte	0x1
	.value	0x2a9
	.byte	0x1
	.long	0x5eb9
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x2a7
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF37
	.byte	0x1
	.value	0x2a8
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"src"
	.byte	0x1
	.value	0x2aa
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x2ab
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"kill_from"
	.byte	0x1
	.value	0x2ab
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.value	0x2ac
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"set"
	.byte	0x1
	.value	0x2ad
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"table"
	.byte	0x1
	.value	0x2ad
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"fallthru"
	.byte	0x1
	.value	0x2ae
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x75a2
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x35
	.string	"target_label"
	.byte	0x1
	.value	0x2ed
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"barrier"
	.byte	0x1
	.value	0x2ee
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.value	0x2ee
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x8556
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12845
	.byte	0x0
	.uleb128 0x38
	.long	0x75fe
	.string	"last_loop_beg_note"
	.byte	0x1
	.value	0x32e
	.byte	0x1
	.long	0x9b
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x32d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x32f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x76df
	.byte	0x1
	.string	"redirect_edge_and_branch"
	.byte	0x1
	.value	0x348
	.byte	0x1
	.long	0x5eb9
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x346
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF37
	.byte	0x1
	.value	0x347
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.value	0x349
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"old_label"
	.byte	0x1
	.value	0x34a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"src"
	.byte	0x1
	.value	0x34b
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x34c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x76ce
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x35
	.string	"vec"
	.byte	0x1
	.value	0x367
	.long	0x19c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"j"
	.byte	0x1
	.value	0x368
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x35
	.string	"new_label"
	.byte	0x1
	.value	0x369
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x8551
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13022
	.byte	0x0
	.uleb128 0x38
	.long	0x7934
	.string	"force_nonfallthru_and_redirect"
	.byte	0x1
	.value	0x3b1
	.byte	0x1
	.long	0x68ca
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x3af
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF37
	.byte	0x1
	.value	0x3b0
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"jump_block"
	.byte	0x1
	.value	0x3b2
	.long	0x68ca
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.string	"new_bb"
	.byte	0x1
	.value	0x3b2
	.long	0x68ca
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x35
	.string	"src"
	.byte	0x1
	.value	0x3b2
	.long	0x68ca
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x3b3
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.long	.LASF34
	.byte	0x1
	.value	0x3b4
	.long	0x664c
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.string	"abnormal_edge_flags"
	.byte	0x1
	.value	0x3b5
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.long	0x77f4
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x3c1
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.string	"b"
	.byte	0x1
	.value	0x3c2
	.long	0x664c
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x35
	.string	"prob"
	.byte	0x1
	.value	0x3c9
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7821
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x35
	.string	"pe1"
	.byte	0x1
	.value	0x3e8
	.long	0x68d5
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x3e9
	.long	0x68ca
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x2e
	.long	0x7893
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0x412
	.long	0x6997
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	0x786a
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0x412
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x412
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x412
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x412
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7904
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0x414
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	0x78db
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0x414
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x414
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x414
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x414
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7923
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x35
	.string	"label"
	.byte	0x1
	.value	0x433
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x853c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13168
	.byte	0x0
	.uleb128 0x32
	.long	0x796e
	.byte	0x1
	.string	"force_nonfallthru"
	.byte	0x1
	.value	0x449
	.byte	0x1
	.long	0x68ca
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x448
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x79c4
	.byte	0x1
	.string	"redirect_edge_and_branch_force"
	.byte	0x1
	.value	0x455
	.byte	0x1
	.long	0x68ca
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x453
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF37
	.byte	0x1
	.value	0x454
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x7a22
	.byte	0x1
	.string	"tidy_fallthru_edge"
	.byte	0x1
	.value	0x466
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x464
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"b"
	.byte	0x1
	.value	0x465
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.value	0x465
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"q"
	.byte	0x1
	.value	0x467
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x7a7e
	.byte	0x1
	.string	"tidy_fallthru_edges"
	.byte	0x1
	.value	0x49d
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x35
	.string	"b"
	.byte	0x1
	.value	0x49e
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0x49e
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x4a5
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x7b02
	.string	"back_edge_of_syntactic_loop_p"
	.byte	0x1
	.value	0x4c6
	.byte	0x1
	.long	0x5eb9
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x33
	.string	"bb1"
	.byte	0x1
	.value	0x4c5
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"bb2"
	.byte	0x1
	.value	0x4c5
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x4c7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"count"
	.byte	0x1
	.value	0x4c8
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x4c9
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7c7e
	.byte	0x1
	.string	"split_edge"
	.byte	0x1
	.value	0x4ed
	.byte	0x1
	.long	0x68ca
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x33
	.string	"edge_in"
	.byte	0x1
	.value	0x4ec
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x4ee
	.long	0x68ca
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"edge_out"
	.byte	0x1
	.value	0x4ef
	.long	0x664c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.string	"before"
	.byte	0x1
	.value	0x4f0
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	0x7b8b
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x4fa
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2e
	.long	0x7bfc
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0x529
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	0x7bd3
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0x529
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x529
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x529
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x529
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x7c6d
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x35
	.string	"__h"
	.byte	0x1
	.value	0x52a
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	0x7c44
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x35
	.string	"__o"
	.byte	0x1
	.value	0x52a
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x52a
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x52a
	.long	0x6997
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x52a
	.long	0x4bf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x8527
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13556
	.byte	0x0
	.uleb128 0x37
	.long	0x7cd9
	.byte	0x1
	.string	"insert_insn_on_edge"
	.byte	0x1
	.value	0x548
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x33
	.string	"pattern"
	.byte	0x1
	.value	0x546
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x547
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF31
	.long	0x8512
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13736
	.byte	0x0
	.uleb128 0x39
	.long	0x7db8
	.string	"commit_one_edge_insertion"
	.byte	0x1
	.value	0x55f
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x55d
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"watch_calls"
	.byte	0x1
	.value	0x55e
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"before"
	.byte	0x1
	.value	0x560
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF32
	.byte	0x1
	.value	0x560
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"insns"
	.byte	0x1
	.value	0x560
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.value	0x560
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x560
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x561
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	0x7da7
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x56d
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x850d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13774
	.byte	0x0
	.uleb128 0x37
	.long	0x7e3c
	.byte	0x1
	.string	"commit_edge_insertions"
	.byte	0x1
	.value	0x5dc
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x5dd
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0x5de
	.long	0x5fdc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"changed"
	.byte	0x1
	.value	0x5df
	.long	0x5eb9
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2f
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x5e7
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x5e7
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x7ecc
	.byte	0x1
	.string	"commit_edge_insertions_watch_calls"
	.byte	0x1
	.value	0x608
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x609
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0x60a
	.long	0x5fdc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"changed"
	.byte	0x1
	.value	0x60b
	.long	0x5eb9
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2f
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x613
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x613
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x7f34
	.byte	0x1
	.string	"dump_bb"
	.byte	0x1
	.value	0x635
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x633
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"outf"
	.byte	0x1
	.value	0x634
	.long	0x7f34
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x636
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x637
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x638
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4c7
	.uleb128 0x37
	.long	0x7f68
	.byte	0x1
	.string	"debug_bb"
	.byte	0x1
	.value	0x659
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x658
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x7f97
	.byte	0x1
	.string	"debug_bb_n"
	.byte	0x1
	.value	0x660
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x33
	.string	"n"
	.byte	0x1
	.value	0x65f
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x80e2
	.byte	0x1
	.string	"print_rtl_with_bb"
	.byte	0x1
	.value	0x66b
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x33
	.string	"outf"
	.byte	0x1
	.value	0x669
	.long	0x7f34
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF39
	.byte	0x1
	.value	0x66a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"tmp_rtx"
	.byte	0x1
	.value	0x66c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x3a
	.long	0x8036
	.string	"bb_state"
	.byte	0x4
	.byte	0x1
	.value	0x672
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
	.uleb128 0x35
	.string	"max_uid"
	.byte	0x1
	.value	0x673
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"start"
	.byte	0x1
	.value	0x674
	.long	0x80e2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.value	0x676
	.long	0x80e2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"in_bb_p"
	.byte	0x1
	.value	0x678
	.long	0x80e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x67b
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	0x80c0
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.value	0x67f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x35
	.string	"state"
	.byte	0x1
	.value	0x685
	.long	0x7ffa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x35
	.string	"did_output"
	.byte	0x1
	.value	0x692
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x68ca
	.uleb128 0x3
	.byte	0x4
	.long	0x7ffa
	.uleb128 0x37
	.long	0x8136
	.byte	0x1
	.string	"update_br_prob_note"
	.byte	0x1
	.value	0x6c2
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x6c1
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x6c3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0x8358
	.byte	0x1
	.string	"verify_flow_info"
	.byte	0x1
	.value	0x6e2
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x35
	.string	"max_uid"
	.byte	0x1
	.value	0x6e3
	.long	0x808
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x36
	.long	.LASF39
	.byte	0x1
	.value	0x6e4
	.long	0x8358
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.string	"last_head"
	.byte	0x1
	.value	0x6e5
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x35
	.string	"bb_info"
	.byte	0x1
	.value	0x6e6
	.long	0x80e2
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.string	"last_visited"
	.byte	0x1
	.value	0x6e6
	.long	0x80e2
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x35
	.string	"edge_checksum"
	.byte	0x1
	.value	0x6e7
	.long	0x76f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.value	0x6e8
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.string	"num_bb_notes"
	.byte	0x1
	.value	0x6e9
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.string	"err"
	.byte	0x1
	.value	0x6e9
	.long	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x6ea
	.long	0x68ca
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"last_bb_seen"
	.byte	0x1
	.value	0x6ea
	.long	0x68ca
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	0x826a
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x35
	.string	"head"
	.byte	0x1
	.value	0x708
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.string	"end"
	.byte	0x1
	.value	0x709
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2e
	.long	0x832c
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x35
	.string	"n_fallthru"
	.byte	0x1
	.value	0x737
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"n_eh"
	.byte	0x1
	.value	0x737
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"n_call"
	.byte	0x1
	.value	0x737
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"n_abnormal"
	.byte	0x1
	.value	0x737
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.string	"n_branch"
	.byte	0x1
	.value	0x737
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x738
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x739
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	0x8312
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x77c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x7d5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x8347
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x836
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x84f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14185
	.byte	0x0
	.uleb128 0xa
	.long	0x9b
	.uleb128 0x32
	.long	0x844a
	.byte	0x1
	.string	"purge_dead_edges"
	.byte	0x1
	.value	0x88a
	.byte	0x1
	.long	0x5eb9
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x889
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x88b
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x88b
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x88c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x88c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"purged"
	.byte	0x1
	.value	0x88d
	.long	0x5eb9
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2e
	.long	0x8402
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x35
	.string	"eqnote"
	.byte	0x1
	.value	0x893
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2e
	.long	0x8439
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.value	0x8b5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"b"
	.byte	0x1
	.value	0x8b6
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.value	0x8b6
	.long	0x664c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x84f3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14779
	.byte	0x0
	.uleb128 0x32
	.long	0x84e3
	.byte	0x1
	.string	"purge_all_dead_edges"
	.byte	0x1
	.value	0x934
	.byte	0x1
	.long	0x5eb9
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x33
	.string	"update_life_p"
	.byte	0x1
	.value	0x933
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"purged"
	.byte	0x1
	.value	0x935
	.long	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF38
	.byte	0x1
	.value	0x936
	.long	0x5fdc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"bb"
	.byte	0x1
	.value	0x937
	.long	0x68ca
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x35
	.string	"purged_here"
	.byte	0x1
	.value	0x941
	.long	0x5eb9
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x84f3
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x84e3
	.uleb128 0xa
	.long	0x84e3
	.uleb128 0xf
	.long	0x850d
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x19
	.byte	0x0
	.uleb128 0xa
	.long	0x84fd
	.uleb128 0xa
	.long	0x7f8
	.uleb128 0xf
	.long	0x8527
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0x8517
	.uleb128 0xf
	.long	0x853c
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x1e
	.byte	0x0
	.uleb128 0xa
	.long	0x852c
	.uleb128 0xf
	.long	0x8551
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x8541
	.uleb128 0xa
	.long	0x852c
	.uleb128 0xf
	.long	0x856b
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x855b
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
	.long	0x85a6
	.long	0x2db
	.uleb128 0x10
	.long	0x3d3
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3b
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x85b9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x8596
	.uleb128 0xf
	.long	0x85ce
	.long	0x9b
	.uleb128 0x10
	.long	0x3d3
	.byte	0xa
	.byte	0x0
	.uleb128 0x3c
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x85be
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flow2_completed"
	.byte	0x3
	.value	0x758
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
	.long	0x6563
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"label_value_list"
	.byte	0x1
	.byte	0x50
	.long	0x9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	label_value_list
	.uleb128 0x3d
	.string	"tail_recursion_label_list"
	.byte	0x1
	.byte	0x51
	.long	0x9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tail_recursion_label_list
	.uleb128 0x3c
	.string	"flow_obstack"
	.byte	0xc
	.value	0x11b
	.long	0x427a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x86b7
	.long	0x14d3
	.uleb128 0x10
	.long	0x3d3
	.byte	0x1
	.byte	0x0
	.uleb128 0x3c
	.string	"entry_exit_blocks"
	.byte	0xc
	.value	0x139
	.long	0x86a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"optimize"
	.byte	0x15
	.byte	0x41
	.long	0x2e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"rtl_dump_file"
	.byte	0x16
	.value	0x1b8
	.long	0x7f34
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"cfun"
	.byte	0x9
	.value	0x202
	.long	0x5452
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
	.long	0x870d
	.long	0x6d55
	.string	"delete_insn"
	.long	0x6e4f
	.string	"delete_insn_and_edges"
	.long	0x6ea9
	.string	"delete_insn_chain"
	.long	0x6f00
	.string	"delete_insn_chain_and_edges"
	.long	0x6f5e
	.string	"create_basic_block_structure"
	.long	0x6ffe
	.string	"create_basic_block"
	.long	0x7068
	.string	"flow_delete_block_noexpunge"
	.long	0x70e8
	.string	"flow_delete_block"
	.long	0x7131
	.string	"compute_bb_for_insn"
	.long	0x7192
	.string	"free_bb_for_insn"
	.long	0x71c9
	.string	"update_bb_for_insn"
	.long	0x7210
	.string	"split_block"
	.long	0x7361
	.string	"merge_blocks_nomove"
	.long	0x7458
	.string	"block_label"
	.long	0x75fe
	.string	"redirect_edge_and_branch"
	.long	0x7934
	.string	"force_nonfallthru"
	.long	0x796e
	.string	"redirect_edge_and_branch_force"
	.long	0x79c4
	.string	"tidy_fallthru_edge"
	.long	0x7a22
	.string	"tidy_fallthru_edges"
	.long	0x7b02
	.string	"split_edge"
	.long	0x7c7e
	.string	"insert_insn_on_edge"
	.long	0x7db8
	.string	"commit_edge_insertions"
	.long	0x7e3c
	.string	"commit_edge_insertions_watch_calls"
	.long	0x7ecc
	.string	"dump_bb"
	.long	0x7f3a
	.string	"debug_bb"
	.long	0x7f68
	.string	"debug_bb_n"
	.long	0x7f97
	.string	"print_rtl_with_bb"
	.long	0x80ee
	.string	"update_br_prob_note"
	.long	0x8136
	.string	"verify_flow_info"
	.long	0x835d
	.string	"purge_dead_edges"
	.long	0x844a
	.string	"purge_all_dead_edges"
	.long	0x8649
	.string	"label_value_list"
	.long	0x8668
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
.LASF24:
	.string	"next"
.LASF0:
	.string	"common"
.LASF38:
	.string	"blocks"
.LASF5:
	.string	"built_in_class"
.LASF23:
	.string	"function_frequency"
.LASF36:
	.string	"__o1"
.LASF35:
	.string	"__len"
.LASF20:
	.string	"pointer_depth"
.LASF25:
	.string	"basic_block"
.LASF14:
	.string	"ht_identifier"
.LASF4:
	.string	"first"
.LASF3:
	.string	"mem_attrs"
.LASF15:
	.string	"value"
.LASF34:
	.string	"new_edge"
.LASF39:
	.string	"rtx_first"
.LASF17:
	.string	"abstract_origin"
.LASF22:
	.string	"lang_specific"
.LASF18:
	.string	"size_unit"
.LASF33:
	.string	"deleted_handler"
.LASF30:
	.string	"insn"
.LASF27:
	.string	"sequence_stack"
.LASF26:
	.string	"last"
.LASF2:
	.string	"_IO_FILE"
.LASF10:
	.string	"lang_flag_4"
.LASF12:
	.string	"lang_flag_6"
.LASF8:
	.string	"lang_flag_2"
.LASF11:
	.string	"lang_flag_5"
.LASF32:
	.string	"after"
.LASF13:
	.string	"lang_flag_7"
.LASF16:
	.string	"abstract_flag"
.LASF21:
	.string	"user_align"
.LASF19:
	.string	"attributes"
.LASF6:
	.string	"lang_flag_0"
.LASF7:
	.string	"lang_flag_1"
.LASF9:
	.string	"lang_flag_3"
.LASF37:
	.string	"target"
.LASF31:
	.string	"__FUNCTION__"
.LASF28:
	.string	"sequence_rtl_expr"
.LASF1:
	.string	"unsigned int"
.LASF29:
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
