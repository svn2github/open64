	.file	"cfganal.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	flow_active_insn_p, @function
flow_active_insn_p:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cfganal.c"
	.loc 1 65 0
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
	.loc 1 66 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	active_insn_p@PLT
	testl	%eax, %eax
	je	.L2
	.loc 1 67 0
	movl	$1, -8(%ebp)
	jmp	.L4
.L2:
	.loc 1 74 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L5
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L5
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L5
	.loc 1 77 0
	movl	$1, -8(%ebp)
	jmp	.L4
.L5:
	.loc 1 79 0
	movl	$0, -8(%ebp)
.L4:
	movl	-8(%ebp), %eax
	.loc 1 80 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	flow_active_insn_p, .-flow_active_insn_p
.globl forwarder_block_p
	.type	forwarder_block_p, @function
forwarder_block_p:
.LFB16:
	.loc 1 88 0
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
	.loc 1 91 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 8(%ebp)
	je	.L11
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	je	.L11
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L11
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L15
.L11:
	.loc 1 93 0
	movl	$0, -28(%ebp)
	jmp	.L16
.L15:
	.loc 1 95 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L17
.L18:
	.loc 1 96 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L19
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_active_insn_p
	testb	%al, %al
	je	.L19
	.loc 1 97 0
	movl	$0, -28(%ebp)
	jmp	.L16
.L19:
	.loc 1 95 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L17:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L18
	.loc 1 99 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L23
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L25
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L23
.L25:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_active_insn_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L27
.L23:
	movl	$1, -24(%ebp)
	jmp	.L28
.L27:
	movl	$0, -24(%ebp)
.L28:
	movzbl	-24(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L16:
	movl	-28(%ebp), %eax
	.loc 1 102 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	forwarder_block_p, .-forwarder_block_p
.globl can_fallthru
	.type	can_fallthru, @function
can_fallthru:
.LFB17:
	.loc 1 109 0
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
	.loc 1 110 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 111 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 113 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L31
	.loc 1 114 0
	movl	$0, -24(%ebp)
	jmp	.L33
.L31:
	.loc 1 116 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	active_insn_p@PLT
	testl	%eax, %eax
	jne	.L34
	.loc 1 117 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	movl	%eax, -8(%ebp)
.L34:
	.loc 1 120 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	next_active_insn@PLT
	cmpl	-8(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L33:
	movl	-24(%ebp), %eax
	.loc 1 121 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	can_fallthru, .-can_fallthru
.globl mark_dfs_back_edges
	.type	mark_dfs_back_edges, @function
mark_dfs_back_edges:
.LFB18:
	.loc 1 135 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%edi
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$76, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 140 0
	movl	$1, -44(%ebp)
	.loc 1 141 0
	movl	$1, -40(%ebp)
	.loc 1 143 0
	movb	$0, -17(%ebp)
	.loc 1 146 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 147 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -52(%ebp)
	.loc 1 150 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -60(%ebp)
	.loc 1 151 0
	movl	$0, -48(%ebp)
	.loc 1 154 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 157 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 160 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-60(%ebp), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -48(%ebp)
	.loc 1 162 0
	jmp	.L58
.L39:
.LBB2:
	.loc 1 169 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 170 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 171 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 172 0
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-33, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 175 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	je	.L40
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L60
	movl	%edi, %esi
	xorl	%edi, %edi
.L60:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L40
	.loc 1 178 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
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
	je	.L59
	movl	%esi, %edi
	xorl	%esi, %esi
.L59:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 180 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -44(%ebp)
	.loc 1 181 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L43
	.loc 1 185 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-60(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -48(%ebp)
	jmp	.L38
.L43:
	.loc 1 188 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-52(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
	.loc 1 175 0
	jmp	.L38
.L40:
	.loc 1 192 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	je	.L46
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	je	.L46
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-56(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jl	.L46
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L46
	.loc 1 195 0
	movl	-32(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	orl	$32, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 24(%eax)
	movb	$1, -17(%ebp)
.L46:
	.loc 1 197 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L51
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -28(%ebp)
	je	.L51
	.loc 1 198 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-52(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
.L51:
	.loc 1 200 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L54
	.loc 1 201 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	-60(%ebp), %eax
	leal	-4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L38
.L54:
	.loc 1 203 0
	subl	$1, -48(%ebp)
.L38:
.L58:
.LBE2:
	.loc 1 162 0
	cmpl	$0, -48(%ebp)
	jne	.L39
	.loc 1 207 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 208 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 209 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 210 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 212 0
	movzbl	-17(%ebp), %eax
	.loc 1 213 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	mark_dfs_back_edges, .-mark_dfs_back_edges
.globl set_edge_can_fallthru_flag
	.type	set_edge_can_fallthru_flag, @function
set_edge_can_fallthru_flag:
.LFB19:
	.loc 1 219 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$36, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 222 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L62
.L63:
.LBB3:
	.loc 1 226 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L64
.L65:
	.loc 1 228 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	andl	$-65, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 231 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L66
	.loc 1 232 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	orl	$64, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
.L66:
	.loc 1 226 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L64:
	cmpl	$0, -8(%ebp)
	jne	.L65
	.loc 1 237 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L69
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L69
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L69
	.loc 1 239 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	any_condjump_p@PLT
	testl	%eax, %eax
	je	.L69
	.loc 1 241 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invert_jump@PLT
	testl	%eax, %eax
	je	.L69
	.loc 1 243 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	76(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	invert_jump@PLT
	.loc 1 244 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	orl	$64, %eax
	movl	%eax, 24(%edx)
	.loc 1 245 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	24(%eax), %eax
	orl	$64, %eax
	movl	%eax, 24(%edx)
.L69:
.LBE3:
	.loc 1 222 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L62:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L63
	.loc 1 247 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	set_edge_can_fallthru_flag, .-set_edge_can_fallthru_flag
	.type	need_fake_edge_p, @function
need_fake_edge_p:
.LFB20:
	.loc 1 255 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$20, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 256 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L78
	.loc 1 257 0
	movl	$0, -12(%ebp)
	jmp	.L80
.L78:
	.loc 1 259 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L81
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L81
	movl	$0, 8(%esp)
	movl	$25, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$0, 8(%esp)
	movl	$28, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L81
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L81
	.loc 1 264 0
	movl	$1, -12(%ebp)
	jmp	.L80
.L81:
	.loc 1 266 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L87
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L89
.L87:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L90
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	cmpl	$-1, %eax
	je	.L90
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L89
.L90:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	jne	.L93
.L89:
	movl	$1, -8(%ebp)
	jmp	.L94
.L93:
	movl	$0, -8(%ebp)
.L94:
	movzbl	-8(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L80:
	movl	-12(%ebp), %eax
	.loc 1 272 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	need_fake_edge_p, .-need_fake_edge_p
.globl flow_call_edges_add
	.type	flow_call_edges_add, @function
flow_call_edges_add:
.LFB21:
	.loc 1 285 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%edi
.LCFI28:
	pushl	%esi
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$76, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 287 0
	movl	$0, -56(%ebp)
	.loc 1 288 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 289 0
	movb	$0, -13(%ebp)
	.loc 1 291 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L97
	.loc 1 292 0
	movl	$0, -64(%ebp)
	jmp	.L99
.L97:
	.loc 1 294 0
	cmpl	$0, 8(%ebp)
	jne	.L100
	.loc 1 295 0
	movb	$1, -13(%ebp)
	jmp	.L102
.L100:
	.loc 1 297 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L137
	movl	%edi, %esi
	xorl	%edi, %edi
.L137:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	movb	%al, -13(%ebp)
.L102:
	.loc 1 311 0
	cmpb	$0, -13(%ebp)
	je	.L103
.LBB4:
	.loc 1 313 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 314 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 317 0
	jmp	.L105
.L106:
	.loc 1 319 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
.L105:
	.loc 1 317 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L107
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	keep_with_call_p@PLT
	testb	%al, %al
	jne	.L106
.L107:
	.loc 1 321 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	need_fake_edge_p
	testb	%al, %al
	je	.L103
.LBB5:
	.loc 1 325 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L110
.L111:
	.loc 1 326 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L112
	.loc 1 328 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$58, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	insert_insn_on_edge@PLT
	.loc 1 329 0
	call	commit_edge_insertions@PLT
	.loc 1 330 0
	jmp	.L103
.L112:
	.loc 1 325 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
.L110:
	cmpl	$0, -40(%ebp)
	jne	.L111
.L103:
.LBE5:
.LBE4:
	.loc 1 339 0
	movl	$0, -60(%ebp)
	jmp	.L114
.L115:
.LBB6:
	.loc 1 341 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 345 0
	cmpl	$0, -36(%ebp)
	je	.L116
	.loc 1 348 0
	cmpl	$0, 8(%ebp)
	je	.L118
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-60(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L136
	movl	%edi, %esi
	xorl	%edi, %edi
.L136:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L116
.L118:
	.loc 1 351 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L120:
	.loc 1 353 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 354 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	need_fake_edge_p
	testb	%al, %al
	je	.L121
.LBB7:
	.loc 1 357 0
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 361 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L123
	.loc 1 362 0
	jmp	.L125
.L126:
	.loc 1 364 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L125:
	.loc 1 362 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L123
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	keep_with_call_p@PLT
	testb	%al, %al
	jne	.L126
.L123:
	.loc 1 380 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-20(%ebp), %eax
	je	.L128
	.loc 1 382 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	split_block@PLT
	movl	%eax, -24(%ebp)
	.loc 1 383 0
	cmpl	$0, -24(%ebp)
	je	.L128
	.loc 1 384 0
	addl	$1, -56(%ebp)
.L128:
	.loc 1 387 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
.L121:
.LBE7:
	.loc 1 390 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L116
	.loc 1 351 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 392 0
	jmp	.L120
.L116:
.LBE6:
	.loc 1 339 0
	addl	$1, -60(%ebp)
.L114:
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	.L115
	.loc 1 395 0
	cmpl	$0, -56(%ebp)
	je	.L133
	.loc 1 396 0
	call	verify_flow_info@PLT
.L133:
	.loc 1 398 0
	movl	-56(%ebp), %eax
	movl	%eax, -64(%ebp)
.L99:
	movl	-64(%ebp), %eax
	.loc 1 399 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	flow_call_edges_add, .-flow_call_edges_add
.globl find_unreachable_blocks
	.type	find_unreachable_blocks, @function
find_unreachable_blocks:
.LFB22:
	.loc 1 407 0
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
	.loc 1 411 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 416 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L139
.L140:
	.loc 1 417 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	andl	$-5, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 416 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L139:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L140
	.loc 1 423 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L142
.L143:
	.loc 1 425 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -20(%ebp)
	.loc 1 428 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	76(%eax), %eax
	orl	$4, %eax
	movl	%eax, 76(%edx)
	.loc 1 423 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L142:
	cmpl	$0, -24(%ebp)
	jne	.L143
	.loc 1 433 0
	jmp	.L145
.L146:
.LBB8:
	.loc 1 435 0
	subl	$4, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 437 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L147
.L148:
	.loc 1 438 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	76(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L149
	.loc 1 440 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -20(%ebp)
	.loc 1 441 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	76(%eax), %eax
	orl	$4, %eax
	movl	%eax, 76(%edx)
.L149:
	.loc 1 437 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L147:
	cmpl	$0, -24(%ebp)
	jne	.L148
.L145:
.LBE8:
	.loc 1 433 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L146
	.loc 1 445 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 446 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	find_unreachable_blocks, .-find_unreachable_blocks
.globl create_edge_list
	.type	create_edge_list, @function
create_edge_list:
.LFB23:
	.loc 1 463 0
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
	.loc 1 470 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, -12(%ebp)
	.loc 1 472 0
	movl	$0, -16(%ebp)
	.loc 1 476 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L154
.L155:
	.loc 1 478 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L156
.L157:
	.loc 1 479 0
	addl	$1, -16(%ebp)
	.loc 1 478 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L156:
	cmpl	$0, -20(%ebp)
	jne	.L157
	.loc 1 476 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L154:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L155
	.loc 1 482 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 483 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 484 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 485 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 487 0
	movl	$0, -16(%ebp)
	.loc 1 490 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L160
.L161:
	.loc 1 491 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L162
.L163:
	.loc 1 492 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -16(%ebp)
	.loc 1 491 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L162:
	cmpl	$0, -20(%ebp)
	jne	.L163
	.loc 1 490 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L160:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L161
	.loc 1 494 0
	movl	-24(%ebp), %eax
	.loc 1 495 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	create_edge_list, .-create_edge_list
.globl free_edge_list
	.type	free_edge_list, @function
free_edge_list:
.LFB24:
	.loc 1 502 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$4, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 503 0
	cmpl	$0, 8(%ebp)
	je	.L170
	.loc 1 505 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 506 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L170:
	.loc 1 508 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	free_edge_list, .-free_edge_list
	.section	.rodata
	.align 4
.LC0:
	.string	"Compressed edge list, %d BBs + entry & exit, and %d edges\n"
.LC1:
	.string	" %-4d - edge("
.LC2:
	.string	"entry,"
.LC3:
	.string	"%d,"
.LC4:
	.string	"exit)\n"
.LC5:
	.string	"%d)\n"
	.text
.globl print_edge_list
	.type	print_edge_list, @function
print_edge_list:
.LFB25:
	.loc 1 516 0
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
	.loc 1 519 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	$2, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 522 0
	movl	$0, -8(%ebp)
	jmp	.L172
.L173:
	.loc 1 524 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 525 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L174
	.loc 1 526 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L176
.L174:
	.loc 1 528 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L176:
	.loc 1 530 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L177
	.loc 1 531 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L179
.L177:
	.loc 1 533 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L179:
	.loc 1 522 0
	addl	$1, -8(%ebp)
.L172:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L173
	.loc 1 535 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	print_edge_list, .-print_edge_list
	.section	.rodata
	.align 4
.LC6:
	.string	"*p* No index for edge from %d to %d\n"
	.align 4
.LC7:
	.string	"*p* Pred for index %d should be %d not %d\n"
	.align 4
.LC8:
	.string	"*p* Succ for index %d should be %d not %d\n"
	.align 4
.LC9:
	.string	"*** Edge (%d, %d) appears to not have an index\n"
	.align 4
.LC10:
	.string	"*** Edge (%d, %d) has index %d, but there is no edge\n"
	.text
.globl verify_edge_list
	.type	verify_edge_list, @function
verify_edge_list:
.LFB26:
	.loc 1 545 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$52, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 550 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L183
.L184:
	.loc 1 552 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L185
.L186:
	.loc 1 554 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 555 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 556 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_edge_index@PLT
	movl	%eax, -28(%ebp)
	.loc 1 557 0
	cmpl	$-1, -28(%ebp)
	jne	.L187
	.loc 1 559 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 560 0
	jmp	.L189
.L187:
	.loc 1 563 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L190
	.loc 1 564 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L190:
	.loc 1 566 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	cmpl	-32(%ebp), %eax
	je	.L189
	.loc 1 567 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L189:
	.loc 1 552 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L185:
	cmpl	$0, -24(%ebp)
	jne	.L186
	.loc 1 550 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L183:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L184
	.loc 1 575 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L195
.L196:
	.loc 1 576 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L197
.L198:
.LBB9:
	.loc 1 578 0
	movl	$0, -8(%ebp)
	.loc 1 580 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L199
.L200:
	.loc 1 581 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L201
	.loc 1 583 0
	movl	$1, -8(%ebp)
	.loc 1 584 0
	jmp	.L203
.L201:
	.loc 1 580 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L199:
	cmpl	$0, -24(%ebp)
	jne	.L200
.L203:
	.loc 1 587 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L204
.L205:
	.loc 1 588 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L206
	.loc 1 590 0
	movl	$1, -8(%ebp)
	.loc 1 591 0
	jmp	.L208
.L206:
	.loc 1 587 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L204:
	cmpl	$0, -24(%ebp)
	jne	.L205
.L208:
	.loc 1 594 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_edge_index@PLT
	cmpl	$-1, %eax
	jne	.L209
	cmpl	$0, -8(%ebp)
	je	.L209
	.loc 1 596 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L209:
	.loc 1 598 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_edge_index@PLT
	cmpl	$-1, %eax
	je	.L212
	cmpl	$0, -8(%ebp)
	jne	.L212
	.loc 1 600 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	find_edge_index@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L212:
.LBE9:
	.loc 1 576 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L197:
	cmpl	$0, -12(%ebp)
	jne	.L198
	.loc 1 575 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L195:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L196
	.loc 1 603 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	verify_edge_list, .-verify_edge_list
.globl find_edge_index
	.type	find_edge_index, @function
find_edge_index:
.LFB27:
	.loc 1 612 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	subl	$20, %esp
.LCFI54:
	.loc 1 615 0
	movl	$0, -4(%ebp)
	jmp	.L219
.L220:
	.loc 1 616 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L221
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L221
	.loc 1 618 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L224
.L221:
	.loc 1 615 0
	addl	$1, -4(%ebp)
.L219:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-4(%ebp), %eax
	jg	.L220
	.loc 1 620 0
	movl	$-1, -20(%ebp)
.L224:
	movl	-20(%ebp), %eax
	.loc 1 621 0
	leave
	ret
.LFE27:
	.size	find_edge_index, .-find_edge_index
	.section	.rodata
.LC11:
	.string	"%s { "
.LC12:
	.string	"%d "
.LC13:
	.string	"}\n"
	.text
.globl flow_nodes_print
	.type	flow_nodes_print, @function
flow_nodes_print:
.LFB28:
	.loc 1 630 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%edi
.LCFI57:
	pushl	%esi
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$76, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 633 0
	cmpl	$0, 12(%ebp)
	je	.L239
	.loc 1 636 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.LBB10:
	.loc 1 637 0
	movl	$0, -28(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L230
.L231:
.LBB11:
	movl	-32(%ebp), %eax
	sall	$3, %eax
	addl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L232
	jmp	.L234
.L235:
.LBB12:
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L240
	movl	%eax, %edx
	xorl	%eax, %eax
.L240:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L236
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-32(%ebp), %eax
	sall	$6, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L232
.L236:
.LBE12:
	addl	$1, -28(%ebp)
.L234:
	cmpl	$63, -28(%ebp)
	jbe	.L235
.L232:
.LBE11:
	addl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
.L230:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L231
.LBE10:
	.loc 1 638 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L239:
	.loc 1 639 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	flow_nodes_print, .-flow_nodes_print
	.section	.rodata
.LC14:
	.string	"%d->%d "
	.text
.globl flow_edge_list_print
	.type	flow_edge_list_print, @function
flow_edge_list_print:
.LFB29:
	.loc 1 649 0
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
	.loc 1 652 0
	cmpl	$0, 12(%ebp)
	je	.L247
	.loc 1 655 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 656 0
	movl	$0, -8(%ebp)
	jmp	.L244
.L245:
	.loc 1 657 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 656 0
	addl	$1, -8(%ebp)
.L244:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L245
	.loc 1 660 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L247:
	.loc 1 661 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	flow_edge_list_print, .-flow_edge_list_print
	.type	remove_fake_successors, @function
remove_fake_successors:
.LFB30:
	.loc 1 671 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$20, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 674 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L254
.L250:
.LBB13:
	.loc 1 676 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 678 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 679 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L249
	.loc 1 680 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L249:
.L254:
.LBE13:
	.loc 1 674 0
	cmpl	$0, -12(%ebp)
	jne	.L250
	.loc 1 682 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	remove_fake_successors, .-remove_fake_successors
.globl remove_fake_edges
	.type	remove_fake_edges, @function
remove_fake_edges:
.LFB31:
	.loc 1 690 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$20, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 693 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L256
.L257:
	.loc 1 694 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_fake_successors
	.loc 1 693 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L256:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L257
	.loc 1 695 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	remove_fake_edges, .-remove_fake_edges
.globl add_noreturn_fake_exit_edges
	.type	add_noreturn_fake_exit_edges, @function
add_noreturn_fake_exit_edges:
.LFB32:
	.loc 1 703 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$36, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 706 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L261
.L262:
	.loc 1 707 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L263
	.loc 1 708 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_single_succ_edge@PLT
.L263:
	.loc 1 706 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L261:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L262
	.loc 1 709 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	add_noreturn_fake_exit_edges, .-add_noreturn_fake_exit_edges
.globl connect_infinite_loops_to_exit
	.type	connect_infinite_loops_to_exit, @function
connect_infinite_loops_to_exit:
.LFB33:
	.loc 1 724 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$36, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 730 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_dfs_compute_reverse_init
	.loc 1 731 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_dfs_compute_reverse_add_bb
.L268:
	.loc 1 736 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_dfs_compute_reverse_execute
	movl	%eax, -8(%ebp)
	.loc 1 737 0
	cmpl	$0, -8(%ebp)
	je	.L269
	.loc 1 740 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
	.loc 1 741 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_dfs_compute_reverse_add_bb
	.loc 1 742 0
	jmp	.L268
.L269:
	.loc 1 744 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_dfs_compute_reverse_finish
	.loc 1 746 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	connect_infinite_loops_to_exit, .-connect_infinite_loops_to_exit
.globl flow_reverse_top_sort_order_compute
	.type	flow_reverse_top_sort_order_compute, @function
flow_reverse_top_sort_order_compute:
.LFB34:
	.loc 1 753 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%edi
.LCFI83:
	pushl	%esi
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$60, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 756 0
	movl	$0, -36(%ebp)
	.loc 1 760 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -44(%ebp)
	.loc 1 761 0
	movl	$0, -40(%ebp)
	.loc 1 764 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 767 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 770 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
	.loc 1 772 0
	jmp	.L288
.L274:
.LBB14:
	.loc 1 779 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 780 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 781 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 784 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	.L275
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L290
	movl	%edi, %esi
	xorl	%edi, %edi
.L290:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L275
	.loc 1 787 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-20(%ebp), %eax
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
	je	.L289
	movl	%esi, %edi
	xorl	%esi, %esi
.L289:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 789 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L278
	.loc 1 792 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
	jmp	.L273
.L278:
	.loc 1 794 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -36(%ebp)
	.loc 1 784 0
	jmp	.L273
.L275:
	.loc 1 798 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L281
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	je	.L281
	.loc 1 799 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -36(%ebp)
.L281:
	.loc 1 801 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L284
	.loc 1 802 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-44(%ebp), %eax
	leal	-4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L273
.L284:
	.loc 1 804 0
	subl	$1, -40(%ebp)
.L273:
.L288:
.LBE14:
	.loc 1 772 0
	cmpl	$0, -40(%ebp)
	jne	.L274
	.loc 1 808 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 809 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 810 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	flow_reverse_top_sort_order_compute, .-flow_reverse_top_sort_order_compute
	.section	.rodata
	.align 4
	.type	__FUNCTION__.10394, @object
	.size	__FUNCTION__.10394, 31
__FUNCTION__.10394:
	.string	"flow_depth_first_order_compute"
.LC15:
	.string	"../../../kg++fe/gnu/cfganal.c"
	.text
.globl flow_depth_first_order_compute
	.type	flow_depth_first_order_compute, @function
flow_depth_first_order_compute:
.LFB35:
	.loc 1 823 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%edi
.LCFI89:
	pushl	%esi
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$76, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 826 0
	movl	$0, -40(%ebp)
	.loc 1 827 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 831 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 832 0
	movl	$0, -44(%ebp)
	.loc 1 835 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 838 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 841 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-48(%ebp), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -44(%ebp)
	.loc 1 843 0
	jmp	.L315
.L293:
.LBB15:
	.loc 1 850 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 851 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 852 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 855 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	.L294
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L317
	movl	%edi, %esi
	xorl	%edi, %edi
.L317:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L294
	.loc 1 858 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-20(%ebp), %eax
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
	je	.L316
	movl	%esi, %edi
	xorl	%esi, %esi
.L316:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-32(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 860 0
	cmpl	$0, 8(%ebp)
	je	.L297
	.loc 1 861 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
.L297:
	.loc 1 863 0
	addl	$1, -40(%ebp)
	.loc 1 865 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L299
	.loc 1 868 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-48(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -44(%ebp)
	jmp	.L292
.L299:
	.loc 1 869 0
	cmpl	$0, 12(%ebp)
	je	.L292
	.loc 1 872 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	subl	$1, -36(%ebp)
	.loc 1 855 0
	jmp	.L292
.L294:
	.loc 1 876 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L303
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	je	.L303
	cmpl	$0, 12(%ebp)
	je	.L303
	.loc 1 880 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	subl	$1, -36(%ebp)
.L303:
	.loc 1 882 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L307
	.loc 1 883 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	leal	-4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L292
.L307:
	.loc 1 885 0
	subl	$1, -44(%ebp)
.L292:
.L315:
.LBE15:
	.loc 1 843 0
	cmpl	$0, -44(%ebp)
	jne	.L293
	.loc 1 889 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 890 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 894 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jle	.L310
	.loc 1 895 0
	leal	__FUNCTION__.10394@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$895, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L310:
	.loc 1 898 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jge	.L312
	.loc 1 899 0
	leal	__FUNCTION__.10394@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$899, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L312:
	.loc 1 901 0
	movl	-40(%ebp), %eax
	.loc 1 902 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	flow_depth_first_order_compute, .-flow_depth_first_order_compute
.globl flow_preorder_transversal_compute
	.type	flow_preorder_transversal_compute, @function
flow_preorder_transversal_compute:
.LFB36:
	.loc 1 925 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%edi
.LCFI95:
	pushl	%esi
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$92, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 937 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 938 0
	movl	$0, -44(%ebp)
	.loc 1 941 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 944 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L319
.L320:
	.loc 1 946 0
	movl	$0, -48(%ebp)
	.loc 1 947 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L321
.L322:
	.loc 1 948 0
	addl	$1, -48(%ebp)
	.loc 1 947 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L321:
	cmpl	$0, -60(%ebp)
	jne	.L322
	.loc 1 950 0
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	-32(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -84(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L324
	movl	-48(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -80(%ebp)
	jmp	.L326
.L324:
	movl	$0, -80(%ebp)
.L326:
	movl	-80(%ebp), %edi
	movl	-84(%ebp), %esi
	movl	%edi, 4(%esi)
	.loc 1 944 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L319:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L320
	.loc 1 958 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 961 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 964 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -44(%ebp)
	.loc 1 966 0
	jmp	.L351
.L329:
.LBB16:
	.loc 1 972 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-56(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 973 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 974 0
	movl	-60(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 977 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	je	.L330
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L354
	movl	%edi, %esi
	xorl	%edi, %edi
.L354:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L330
	.loc 1 980 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-20(%ebp), %eax
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
	je	.L353
	movl	%esi, %edi
	xorl	%esi, %esi
.L353:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 983 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	je	.L333
	.loc 1 985 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	4(%eax), %esi
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edi
	addl	-32(%ebp), %edi
	movl	(%edi), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %esi
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, (%esi)
	leal	1(%ecx), %eax
	movl	%eax, (%edi)
	.loc 1 987 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-32(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, 8(%ecx)
.L333:
	.loc 1 990 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L328
	.loc 1 993 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -44(%ebp)
	.loc 1 977 0
	jmp	.L328
.L330:
	.loc 1 996 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L337
	.loc 1 997 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-56(%ebp), %eax
	leal	-4(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L328
.L337:
	.loc 1 999 0
	subl	$1, -44(%ebp)
.L328:
.L351:
.LBE16:
	.loc 1 966 0
	cmpl	$0, -44(%ebp)
	jne	.L329
	.loc 1 1002 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1003 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1008 0
	movl	$0, -52(%ebp)
	.loc 1 1009 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1010 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	$0, (%eax)
	addl	$1, -52(%ebp)
	.loc 1 1012 0
	jmp	.L352
.L341:
	.loc 1 1014 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L342
	.loc 1 1016 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1017 0
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	8(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	sarl	$2, %eax
	imull	$-1431655765, %eax, %eax
	movl	%eax, (%ecx)
	addl	$1, -52(%ebp)
	jmp	.L340
.L342:
	.loc 1 1020 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
.L340:
.L352:
	.loc 1 1012 0
	cmpl	$0, -36(%ebp)
	jne	.L341
	.loc 1 1025 0
	movl	$0, -52(%ebp)
	jmp	.L345
.L346:
	.loc 1 1026 0
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L347
	.loc 1 1027 0
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L347:
	.loc 1 1025 0
	addl	$1, -52(%ebp)
.L345:
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -52(%ebp)
	jl	.L346
	.loc 1 1029 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1030 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	flow_preorder_transversal_compute, .-flow_preorder_transversal_compute
	.type	flow_dfs_compute_reverse_init, @function
flow_dfs_compute_reverse_init:
.LFB37:
	.loc 1 1065 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$4, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1067 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1069 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 1072 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1075 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1078 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	flow_dfs_compute_reverse_init, .-flow_dfs_compute_reverse_init
	.type	flow_dfs_compute_reverse_add_bb, @function
flow_dfs_compute_reverse_add_bb:
.LFB38:
	.loc 1 1088 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%edi
.LCFI105:
	pushl	%esi
.LCFI106:
	subl	$16, %esp
.LCFI107:
	.loc 1 1089 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	leal	0(,%ecx,4), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1090 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -20(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -16(%ebp)
	movl	%edi, -12(%ebp)
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L359
	movl	%esi, %edi
	xorl	%esi, %esi
.L359:
	movl	-16(%ebp), %eax
	orl	%esi, %eax
	movl	-12(%ebp), %edx
	orl	%edi, %edx
	movl	-20(%ebp), %edi
	movl	-24(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1091 0
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	flow_dfs_compute_reverse_add_bb, .-flow_dfs_compute_reverse_add_bb
	.type	flow_dfs_compute_reverse_execute, @function
flow_dfs_compute_reverse_execute:
.LFB39:
	.loc 1 1101 0
	pushl	%ebp
.LCFI108:
	movl	%esp, %ebp
.LCFI109:
	pushl	%edi
.LCFI110:
	pushl	%esi
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$28, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1105 0
	jmp	.L361
.L362:
	.loc 1 1107 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1110 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L363
.L364:
	.loc 1 1111 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L376
	movl	%edi, %esi
	xorl	%edi, %edi
.L376:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L365
	.loc 1 1113 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_dfs_compute_reverse_add_bb
.L365:
	.loc 1 1110 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L363:
	cmpl	$0, -16(%ebp)
	jne	.L364
.L361:
	.loc 1 1105 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L362
	.loc 1 1117 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L368
.L369:
	.loc 1 1118 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L375
	movl	%edi, %esi
	xorl	%edi, %edi
.L375:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L370
	.loc 1 1119 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L372
.L370:
	.loc 1 1117 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
.L368:
	cmpl	$0, -20(%ebp)
	jne	.L369
	.loc 1 1121 0
	movl	$0, -32(%ebp)
.L372:
	movl	-32(%ebp), %eax
	.loc 1 1122 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	flow_dfs_compute_reverse_execute, .-flow_dfs_compute_reverse_execute
	.type	flow_dfs_compute_reverse_finish, @function
flow_dfs_compute_reverse_finish:
.LFB40:
	.loc 1 1130 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$4, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1131 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1132 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1133 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	flow_dfs_compute_reverse_finish, .-flow_dfs_compute_reverse_finish
	.section	.rodata
	.type	__FUNCTION__.10783, @object
	.size	__FUNCTION__.10783, 19
__FUNCTION__.10783:
	.string	"dfs_enumerate_from"
	.text
.globl dfs_enumerate_from
	.type	dfs_enumerate_from, @function
dfs_enumerate_from:
.LFB41:
	.loc 1 1146 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$52, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1148 0
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 1150 0
	movl	24(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1151 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	addl	$1, -12(%ebp)
	addl	$1, -16(%ebp)
	.loc 1 1152 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, %edx
	orl	$8, %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 1153 0
	jmp	.L404
.L381:
.LBB17:
	.loc 1 1156 0
	subl	$1, -16(%ebp)
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1157 0
	cmpl	$0, 12(%ebp)
	je	.L382
	.loc 1 1159 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L384
.L385:
	.loc 1 1160 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	76(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L386
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	16(%ebp), %eax
	call	*%eax
	testb	%al, %al
	je	.L386
	.loc 1 1162 0
	movl	-12(%ebp), %eax
	cmpl	24(%ebp), %eax
	jne	.L389
	.loc 1 1163 0
	leal	__FUNCTION__.10783@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1163, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L389:
	.loc 1 1164 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%edx)
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	addl	$1, -12(%ebp)
	addl	$1, -16(%ebp)
	.loc 1 1165 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	76(%eax), %eax
	orl	$8, %eax
	movl	%eax, 76(%edx)
.L386:
	.loc 1 1159 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L384:
	cmpl	$0, -8(%ebp)
	jne	.L385
	jmp	.L380
.L382:
	.loc 1 1170 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L392
.L393:
	.loc 1 1171 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	76(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L394
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	16(%ebp), %eax
	call	*%eax
	testb	%al, %al
	je	.L394
	.loc 1 1173 0
	movl	-12(%ebp), %eax
	cmpl	24(%ebp), %eax
	jne	.L397
	.loc 1 1174 0
	leal	__FUNCTION__.10783@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1174, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L397:
	.loc 1 1175 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	20(%ebp), %ecx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%edx)
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	addl	$1, -12(%ebp)
	addl	$1, -16(%ebp)
	.loc 1 1176 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	76(%eax), %eax
	orl	$8, %eax
	movl	%eax, 76(%edx)
.L394:
	.loc 1 1170 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L392:
	cmpl	$0, -8(%ebp)
	jne	.L393
.L380:
.L404:
.LBE17:
	.loc 1 1153 0
	cmpl	$0, -16(%ebp)
	jne	.L381
	.loc 1 1180 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1181 0
	movl	$0, -16(%ebp)
	jmp	.L400
.L401:
	.loc 1 1182 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	76(%eax), %eax
	andl	$-9, %eax
	movl	%eax, 76(%edx)
	.loc 1 1181 0
	addl	$1, -16(%ebp)
.L400:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L401
	.loc 1 1183 0
	movl	-12(%ebp), %eax
	.loc 1 1184 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	dfs_enumerate_from, .-dfs_enumerate_from
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
	.long	.LCFI17-.LCFI13
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI21-.LCFI19
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
	.long	.LCFI22-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI26-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI27
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.byte	0x4
	.long	.LCFI39-.LCFI37
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
	.long	.LCFI40-.LFB24
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
	.long	.LCFI47-.LCFI45
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
	.long	.LCFI48-.LFB26
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI52-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
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
	.long	.LCFI55-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI56
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI64-.LCFI62
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
	.long	.LCFI65-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI66
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
	.long	.LCFI69-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI70
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
	.long	.LCFI73-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI74
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
	.long	.LCFI77-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI81-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI82
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
	.long	.LCFI87-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI88
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI93-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI98-.LCFI94
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
	.long	.LCFI99-.LFB37
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
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI103-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI104
	.byte	0x86
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
	.long	.LCFI108-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI109-.LCFI108
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI109
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI114-.LFB40
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
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI118-.LFB41
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
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/basic-block.h"
	.file 7 "../../../kg++fe/gnu/sbitmap.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 12 "../../../kg++fe/gnu/varray.h"
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI55-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI56-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x2e21
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cfganal.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x84
	.long	0x859
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
	.long	0x610
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x1478
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x1488
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f1
	.uleb128 0x3
	.byte	0x4
	.long	0x1f7
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x8
	.long	0x20e
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xb
	.byte	0xd6
	.long	0x21d
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
	.byte	0xa
	.byte	0x3b
	.long	0x291
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xa
	.byte	0x90
	.long	0x2db
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xa
	.byte	0x91
	.long	0x2bc
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20e
	.uleb128 0x2
	.string	"FILE"
	.byte	0x8
	.byte	0x2e
	.long	0x30c
	.uleb128 0xc
	.long	0x587
	.long	.LASF1
	.byte	0x94
	.byte	0x8
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x9
	.value	0x10c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x9
	.value	0x111
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x9
	.value	0x112
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x9
	.value	0x113
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x9
	.value	0x114
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x9
	.value	0x115
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x9
	.value	0x116
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x9
	.value	0x117
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x9
	.value	0x118
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x9
	.value	0x11a
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x9
	.value	0x11b
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x9
	.value	0x11c
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x9
	.value	0x11e
	.long	0x5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x9
	.value	0x120
	.long	0x5de
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x9
	.value	0x122
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x9
	.value	0x126
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x9
	.value	0x128
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x9
	.value	0x12c
	.long	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x9
	.value	0x12d
	.long	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x9
	.value	0x12e
	.long	0x5e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x9
	.value	0x132
	.long	0x5f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x9
	.value	0x13b
	.long	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x9
	.value	0x144
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x9
	.value	0x145
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x9
	.value	0x146
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x9
	.value	0x147
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x9
	.value	0x148
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x9
	.value	0x14a
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x9
	.value	0x14c
	.long	0x5fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x9
	.byte	0xb0
	.uleb128 0x4
	.long	0x5d8
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x9
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x9
	.byte	0xb7
	.long	0x5d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x9
	.byte	0xb8
	.long	0x5de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x9
	.byte	0xbc
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x595
	.uleb128 0x3
	.byte	0x4
	.long	0x30c
	.uleb128 0xf
	.long	0x5f4
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x587
	.uleb128 0xf
	.long	0x60a
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x216
	.uleb128 0x11
	.long	0x859
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x12
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x12
	.string	"BImode"
	.sleb128 1
	.uleb128 0x12
	.string	"QImode"
	.sleb128 2
	.uleb128 0x12
	.string	"HImode"
	.sleb128 3
	.uleb128 0x12
	.string	"SImode"
	.sleb128 4
	.uleb128 0x12
	.string	"DImode"
	.sleb128 5
	.uleb128 0x12
	.string	"TImode"
	.sleb128 6
	.uleb128 0x12
	.string	"OImode"
	.sleb128 7
	.uleb128 0x12
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x12
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x12
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x12
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x12
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x12
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x12
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x12
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x12
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x12
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x12
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x12
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x12
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x12
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x12
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x12
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x12
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x12
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x12
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x12
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x12
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x12
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x12
	.string	"COImode"
	.sleb128 30
	.uleb128 0x12
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x12
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x12
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x12
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x12
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x12
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x12
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x12
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x12
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x12
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x12
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x12
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x12
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x12
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x12
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x12
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x12
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x12
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x12
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x12
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x12
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x12
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x12
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x12
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x11
	.long	0x1028
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0x12
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x12
	.string	"NIL"
	.sleb128 1
	.uleb128 0x12
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x12
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x12
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x12
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x12
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x12
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x12
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x12
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x12
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x12
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x12
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x12
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x12
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x12
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x12
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x12
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x12
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x12
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x12
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x12
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x12
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x12
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x12
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x12
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x12
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x12
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x12
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x12
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x12
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x12
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x12
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x12
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x12
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x12
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x12
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x12
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x12
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x12
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x12
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x12
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x12
	.string	"INSN"
	.sleb128 42
	.uleb128 0x12
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x12
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x12
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x12
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x12
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x12
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x12
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x12
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x12
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x12
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x12
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x12
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x12
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x12
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x12
	.string	"SET"
	.sleb128 57
	.uleb128 0x12
	.string	"USE"
	.sleb128 58
	.uleb128 0x12
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x12
	.string	"CALL"
	.sleb128 60
	.uleb128 0x12
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x12
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x12
	.string	"RESX"
	.sleb128 63
	.uleb128 0x12
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x12
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x12
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x12
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x12
	.string	"CONST"
	.sleb128 68
	.uleb128 0x12
	.string	"PC"
	.sleb128 69
	.uleb128 0x12
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x12
	.string	"REG"
	.sleb128 71
	.uleb128 0x12
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x12
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x12
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x12
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x12
	.string	"MEM"
	.sleb128 76
	.uleb128 0x12
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x12
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x12
	.string	"CC0"
	.sleb128 79
	.uleb128 0x12
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x12
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x12
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x12
	.string	"COND"
	.sleb128 83
	.uleb128 0x12
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x12
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x12
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x12
	.string	"NEG"
	.sleb128 87
	.uleb128 0x12
	.string	"MULT"
	.sleb128 88
	.uleb128 0x12
	.string	"DIV"
	.sleb128 89
	.uleb128 0x12
	.string	"MOD"
	.sleb128 90
	.uleb128 0x12
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x12
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x12
	.string	"AND"
	.sleb128 93
	.uleb128 0x12
	.string	"IOR"
	.sleb128 94
	.uleb128 0x12
	.string	"XOR"
	.sleb128 95
	.uleb128 0x12
	.string	"NOT"
	.sleb128 96
	.uleb128 0x12
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x12
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x12
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x12
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x12
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x12
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x12
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x12
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x12
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x12
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x12
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x12
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x12
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x12
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x12
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x12
	.string	"NE"
	.sleb128 112
	.uleb128 0x12
	.string	"EQ"
	.sleb128 113
	.uleb128 0x12
	.string	"GE"
	.sleb128 114
	.uleb128 0x12
	.string	"GT"
	.sleb128 115
	.uleb128 0x12
	.string	"LE"
	.sleb128 116
	.uleb128 0x12
	.string	"LT"
	.sleb128 117
	.uleb128 0x12
	.string	"GEU"
	.sleb128 118
	.uleb128 0x12
	.string	"GTU"
	.sleb128 119
	.uleb128 0x12
	.string	"LEU"
	.sleb128 120
	.uleb128 0x12
	.string	"LTU"
	.sleb128 121
	.uleb128 0x12
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x12
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x12
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x12
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x12
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x12
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x12
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x12
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x12
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x12
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x12
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x12
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x12
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x12
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x12
	.string	"FIX"
	.sleb128 136
	.uleb128 0x12
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x12
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x12
	.string	"ABS"
	.sleb128 139
	.uleb128 0x12
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x12
	.string	"FFS"
	.sleb128 141
	.uleb128 0x12
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x12
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x12
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x12
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x12
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x12
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x12
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x12
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x12
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x12
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x12
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x12
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x12
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x12
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x12
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x12
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x12
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x12
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x12
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x12
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x12
	.string	"PHI"
	.sleb128 162
	.uleb128 0x12
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x13
	.long	0x1102
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x21d
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
	.long	0x1028
	.uleb128 0xc
	.long	0x1179
	.long	.LASF2
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x291
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x65
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x3
	.byte	0x66
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x3
	.byte	0x67
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x3
	.byte	0x68
	.long	0x111d
	.uleb128 0x15
	.long	0x1256
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x291
	.uleb128 0x16
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x216
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x21d
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x203
	.uleb128 0x16
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9c
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19d
	.uleb128 0x16
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x610
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x1102
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x126a
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x12d2
	.uleb128 0x16
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e5
	.uleb128 0x16
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x145d
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x1463
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1256
	.uleb128 0x4
	.long	0x12d2
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x152f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x152f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1270
	.uleb128 0x4
	.long	0x145d
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x3
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x6
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x6
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1b4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1b4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1a7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1a7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1a7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1a7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x6
	.byte	0xd3
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x145d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x145d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x1dc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1a89
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0xe5
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12d8
	.uleb128 0x3
	.byte	0x4
	.long	0x1179
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x1184
	.uleb128 0xf
	.long	0x1488
	.long	0x1469
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1498
	.long	0x9c
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x260
	.uleb128 0x4
	.long	0x1503
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x5
	.byte	0x35
	.long	0x1503
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x1503
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1509
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14ab
	.uleb128 0xf
	.long	0x1519
	.long	0x1498
	.uleb128 0x10
	.long	0x224
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x14ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1519
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x12d2
	.uleb128 0x4
	.long	0x159d
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x159d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x15ad
	.long	0x2a2
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x15bc
	.uleb128 0x3
	.byte	0x4
	.long	0x1543
	.uleb128 0x3
	.byte	0x4
	.long	0x2a2
	.uleb128 0x4
	.long	0x15fe
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.long	0x1799
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xc
	.byte	0x3c
	.uleb128 0x12
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x12
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x12
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x12
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x12
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x12
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x12
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x12
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x12
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x12
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x12
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x12
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x12
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x12
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x12
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x12
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x12
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x12
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x12
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x12
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x12
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x15
	.long	0x1895
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xc
	.byte	0x55
	.uleb128 0x16
	.string	"c"
	.byte	0xc
	.byte	0x56
	.long	0x5e4
	.uleb128 0x16
	.string	"uc"
	.byte	0xc
	.byte	0x58
	.long	0x1895
	.uleb128 0x16
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x18a5
	.uleb128 0x16
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x18b5
	.uleb128 0x16
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x18c5
	.uleb128 0x16
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x18d5
	.uleb128 0x16
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x18e5
	.uleb128 0x16
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x18f5
	.uleb128 0x16
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x1905
	.uleb128 0x16
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x159d
	.uleb128 0x16
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x1915
	.uleb128 0x16
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x1925
	.uleb128 0x16
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x1935
	.uleb128 0x16
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x1945
	.uleb128 0x16
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x1955
	.uleb128 0x16
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x1965
	.uleb128 0x16
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x1975
	.uleb128 0x16
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x199a
	.uleb128 0x16
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x19aa
	.uleb128 0x16
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x19ba
	.byte	0x0
	.uleb128 0xf
	.long	0x18a5
	.long	0x239
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18b5
	.long	0x284
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18c5
	.long	0x24a
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18d5
	.long	0x216
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18e5
	.long	0x21d
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18f5
	.long	0x2db
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1905
	.long	0x260
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1915
	.long	0x291
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1925
	.long	0x2f8
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1935
	.long	0x2fa
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1945
	.long	0xa7
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1955
	.long	0x1aa
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1965
	.long	0x1f1
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1975
	.long	0x12d2
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1985
	.long	0x1994
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1985
	.uleb128 0xf
	.long	0x19aa
	.long	0x15c8
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x19ba
	.long	0x145d
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x19ca
	.long	0x19d5
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x19ca
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x1799
	.uleb128 0x4
	.long	0x1a62
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xc
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xc
	.byte	0x82
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xc
	.byte	0x83
	.long	0x22b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xc
	.byte	0x85
	.long	0x15fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xc
	.byte	0x86
	.long	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.long	.LASF3
	.byte	0xc
	.byte	0x87
	.long	0x19db
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x1a75
	.uleb128 0x3
	.byte	0x4
	.long	0x19ee
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1535
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x291
	.uleb128 0x4
	.long	0x1b45
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1b45
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1b45
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x145d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x145d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x6
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x83
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x6
	.byte	0x85
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1a89
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a9a
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1b45
	.uleb128 0x4
	.long	0x1dc7
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x1dcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x1dcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x1dcd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x1de0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x1dcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x1dcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x15ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x1de0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x1de0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x15ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x1de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x1dc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x1dc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x6
	.value	0x1b7
	.long	0x1dc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b57
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x145d
	.uleb128 0x3
	.byte	0x4
	.long	0x1b4b
	.uleb128 0x3
	.byte	0x4
	.long	0x1dc7
	.uleb128 0x19
	.long	0x1e38
	.long	.LASF4
	.byte	0xc
	.byte	0x6
	.value	0x23b
	.uleb128 0xd
	.string	"num_blocks"
	.byte	0x6
	.value	0x23c
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x6
	.value	0x23d
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"index_to_edge"
	.byte	0x6
	.value	0x23e
	.long	0x1de0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x1e8c
	.string	"depth_first_search_dsS"
	.byte	0xc
	.byte	0x1
	.byte	0x22
	.uleb128 0x18
	.long	.LASF6
	.byte	0x1
	.byte	0x24
	.long	0x1e8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sp"
	.byte	0x1
	.byte	0x28
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"visited_blocks"
	.byte	0x1
	.byte	0x2b
	.long	0x15ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dcd
	.uleb128 0x2
	.string	"depth_first_search_ds"
	.byte	0x1
	.byte	0x2d
	.long	0x1eaf
	.uleb128 0x3
	.byte	0x4
	.long	0x1e38
	.uleb128 0x1b
	.long	0x1eef
	.string	"flow_active_insn_p"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0x1eef
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x1
	.byte	0x40
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x1d
	.long	0x1f3f
	.byte	0x1
	.string	"forwarder_block_p"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x1eef
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1e
	.string	"bb"
	.byte	0x1
	.byte	0x57
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x1
	.byte	0x59
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0x1fa3
	.byte	0x1
	.string	"can_fallthru"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x1eef
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1e
	.string	"src"
	.byte	0x1
	.byte	0x6c
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"target"
	.byte	0x1
	.byte	0x6c
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x1
	.byte	0x6e
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.string	"insn2"
	.byte	0x1
	.byte	0x6f
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0x207e
	.byte	0x1
	.string	"mark_dfs_back_edges"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0x1eef
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x1
	.byte	0x88
	.long	0x1de0
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.string	"pre"
	.byte	0x1
	.byte	0x89
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"post"
	.byte	0x1
	.byte	0x8a
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.string	"sp"
	.byte	0x1
	.byte	0x8b
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"prenum"
	.byte	0x1
	.byte	0x8c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.string	"postnum"
	.byte	0x1
	.byte	0x8d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x1
	.byte	0x8e
	.long	0x15ad
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.string	"found"
	.byte	0x1
	.byte	0x8f
	.long	0x1eef
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x21
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x20
	.string	"e"
	.byte	0x1
	.byte	0xa4
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"src"
	.byte	0x1
	.byte	0xa5
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.string	"dest"
	.byte	0x1
	.byte	0xa6
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x20d2
	.byte	0x1
	.string	"set_edge_can_fallthru_flag"
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x20
	.string	"bb"
	.byte	0x1
	.byte	0xdc
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x20
	.string	"e"
	.byte	0x1
	.byte	0xe0
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x210a
	.string	"need_fake_edge_p"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.long	0x1eef
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x1
	.byte	0xfe
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.long	0x224e
	.byte	0x1
	.string	"flow_call_edges_add"
	.byte	0x1
	.value	0x11d
	.byte	0x1
	.long	0x216
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x24
	.string	"blocks"
	.byte	0x1
	.value	0x11c
	.long	0x15ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x11e
	.long	0x216
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.string	"blocks_split"
	.byte	0x1
	.value	0x11f
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"last_bb"
	.byte	0x1
	.value	0x120
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.string	"check_last_block"
	.byte	0x1
	.value	0x121
	.long	0x1eef
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x26
	.long	0x21e1
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x139
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x13a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x143
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x155
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x156
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"prev_insn"
	.byte	0x1
	.value	0x157
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x164
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"split_at_insn"
	.byte	0x1
	.value	0x165
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x22d2
	.byte	0x1
	.string	"find_unreachable_blocks"
	.byte	0x1
	.value	0x197
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x198
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"tos"
	.byte	0x1
	.value	0x199
	.long	0x1e8c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"worklist"
	.byte	0x1
	.value	0x199
	.long	0x1e8c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x199
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x1b3
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x234e
	.byte	0x1
	.string	"create_edge_list"
	.byte	0x1
	.value	0x1cf
	.byte	0x1
	.long	0x234e
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x27
	.long	.LASF9
	.byte	0x1
	.value	0x1d0
	.long	0x234e
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x1d1
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.value	0x1d2
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"block_count"
	.byte	0x1
	.value	0x1d3
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x1d4
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1dec
	.uleb128 0x28
	.long	0x2389
	.byte	0x1
	.string	"free_edge_list"
	.byte	0x1
	.value	0x1f6
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x29
	.long	.LASF9
	.byte	0x1
	.value	0x1f5
	.long	0x234e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x23d9
	.byte	0x1
	.string	"print_edge_list"
	.byte	0x1
	.value	0x204
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x24
	.string	"f"
	.byte	0x1
	.value	0x202
	.long	0x23d9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF9
	.byte	0x1
	.value	0x203
	.long	0x234e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x205
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x300
	.uleb128 0x28
	.long	0x24a9
	.byte	0x1
	.string	"verify_edge_list"
	.byte	0x1
	.value	0x221
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x24
	.string	"f"
	.byte	0x1
	.value	0x21f
	.long	0x23d9
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF9
	.byte	0x1
	.value	0x220
	.long	0x234e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"pred"
	.byte	0x1
	.value	0x222
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"succ"
	.byte	0x1
	.value	0x222
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"index"
	.byte	0x1
	.value	0x222
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x223
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x224
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.value	0x224
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x224
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x25
	.string	"found_edge"
	.byte	0x1
	.value	0x242
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x2510
	.byte	0x1
	.string	"find_edge_index"
	.byte	0x1
	.value	0x264
	.byte	0x1
	.long	0x216
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.value	0x262
	.long	0x234e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"pred"
	.byte	0x1
	.value	0x263
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"succ"
	.byte	0x1
	.value	0x263
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x265
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x28
	.long	0x2602
	.byte	0x1
	.string	"flow_nodes_print"
	.byte	0x1
	.value	0x276
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x24
	.string	"str"
	.byte	0x1
	.value	0x273
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"nodes"
	.byte	0x1
	.value	0x274
	.long	0x2602
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"file"
	.byte	0x1
	.value	0x275
	.long	0x23d9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"node"
	.byte	0x1
	.value	0x277
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x25
	.string	"word_num_"
	.byte	0x1
	.value	0x27d
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bit_num_"
	.byte	0x1
	.value	0x27d
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"size_"
	.byte	0x1
	.value	0x27d
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"ptr_"
	.byte	0x1
	.value	0x27d
	.long	0x15c2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x25
	.string	"word_"
	.byte	0x1
	.value	0x27d
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x25
	.string	"_mask"
	.byte	0x1
	.value	0x27d
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.long	0x15ad
	.uleb128 0x28
	.long	0x267d
	.byte	0x1
	.string	"flow_edge_list_print"
	.byte	0x1
	.value	0x289
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x24
	.string	"str"
	.byte	0x1
	.value	0x285
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF4
	.byte	0x1
	.value	0x286
	.long	0x267d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF5
	.byte	0x1
	.value	0x287
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"file"
	.byte	0x1
	.value	0x288
	.long	0x23d9
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x28a
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2683
	.uleb128 0x8
	.long	0x1b4b
	.uleb128 0x2a
	.long	0x26e9
	.string	"remove_fake_successors"
	.byte	0x1
	.value	0x29f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x29e
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x2a0
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x25
	.string	"tmp"
	.byte	0x1
	.value	0x2a4
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x2720
	.byte	0x1
	.string	"remove_fake_edges"
	.byte	0x1
	.value	0x2b2
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x2b3
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x28
	.long	0x2762
	.byte	0x1
	.string	"add_noreturn_fake_exit_edges"
	.byte	0x1
	.value	0x2bf
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x2c0
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x28
	.long	0x27c5
	.byte	0x1
	.string	"connect_infinite_loops_to_exit"
	.byte	0x1
	.value	0x2d4
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x25
	.string	"unvisited_block"
	.byte	0x1
	.value	0x2d5
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.string	"dfs_ds"
	.byte	0x1
	.value	0x2d6
	.long	0x1e38
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x28
	.long	0x288a
	.byte	0x1
	.string	"flow_reverse_top_sort_order_compute"
	.byte	0x1
	.value	0x2f1
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x24
	.string	"rts_order"
	.byte	0x1
	.value	0x2f0
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x2f2
	.long	0x1de0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x2f3
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"postnum"
	.byte	0x1
	.value	0x2f4
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x2f5
	.long	0x15ad
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x306
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.value	0x307
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"dest"
	.byte	0x1
	.value	0x308
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x2986
	.byte	0x1
	.string	"flow_depth_first_order_compute"
	.byte	0x1
	.value	0x337
	.byte	0x1
	.long	0x216
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x24
	.string	"dfs_order"
	.byte	0x1
	.value	0x335
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"rc_order"
	.byte	0x1
	.value	0x336
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x338
	.long	0x1de0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x339
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"dfsnum"
	.byte	0x1
	.value	0x33a
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"rcnum"
	.byte	0x1
	.value	0x33b
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x33c
	.long	0x15ad
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	0x2975
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x34d
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.value	0x34e
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"dest"
	.byte	0x1
	.value	0x34f
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF10
	.long	0x2d57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10394
	.byte	0x0
	.uleb128 0x2c
	.long	0x29ca
	.string	"dfst_node"
	.byte	0xc
	.byte	0x1
	.value	0x389
	.uleb128 0xd
	.string	"nnodes"
	.byte	0x1
	.value	0x38a
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"node"
	.byte	0x1
	.value	0x38b
	.long	0x29ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"up"
	.byte	0x1
	.value	0x38c
	.long	0x29d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x29d0
	.uleb128 0x3
	.byte	0x4
	.long	0x2986
	.uleb128 0x28
	.long	0x2adc
	.byte	0x1
	.string	"flow_preorder_transversal_compute"
	.byte	0x1
	.value	0x39d
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x24
	.string	"pot_order"
	.byte	0x1
	.value	0x39c
	.long	0x60a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x39e
	.long	0x1b4b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x39f
	.long	0x1de0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x3a0
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.string	"max_successors"
	.byte	0x1
	.value	0x3a1
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x3a2
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF8
	.byte	0x1
	.value	0x3a3
	.long	0x15ad
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"node"
	.byte	0x1
	.value	0x3a4
	.long	0x29d0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"dfst"
	.byte	0x1
	.value	0x3a5
	.long	0x29d0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x3a6
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.value	0x3c8
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"dest"
	.byte	0x1
	.value	0x3c9
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x2b1f
	.string	"flow_dfs_compute_reverse_init"
	.byte	0x1
	.value	0x429
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x29
	.long	.LASF3
	.byte	0x1
	.value	0x428
	.long	0x1e92
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x2b72
	.string	"flow_dfs_compute_reverse_add_bb"
	.byte	0x1
	.value	0x440
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x29
	.long	.LASF3
	.byte	0x1
	.value	0x43e
	.long	0x1e92
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x43f
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x2bd7
	.string	"flow_dfs_compute_reverse_execute"
	.byte	0x1
	.value	0x44d
	.byte	0x1
	.long	0x1dcd
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x29
	.long	.LASF3
	.byte	0x1
	.value	0x44c
	.long	0x1e92
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x44e
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x44f
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2a
	.long	0x2c1c
	.string	"flow_dfs_compute_reverse_finish"
	.byte	0x1
	.value	0x46a
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x29
	.long	.LASF3
	.byte	0x1
	.value	0x469
	.long	0x1e92
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.long	0x2d17
	.byte	0x1
	.string	"dfs_enumerate_from"
	.byte	0x1
	.value	0x47a
	.byte	0x1
	.long	0x216
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x474
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"reverse"
	.byte	0x1
	.value	0x475
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"predicate"
	.byte	0x1
	.value	0x476
	.long	0x2d2c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"rslt"
	.byte	0x1
	.value	0x477
	.long	0x1e8c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"rslt_max"
	.byte	0x1
	.value	0x478
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	.LASF3
	.byte	0x1
	.value	0x479
	.long	0x2f8
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.string	"st"
	.byte	0x1
	.value	0x47b
	.long	0x1e8c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"lbb"
	.byte	0x1
	.value	0x47b
	.long	0x1dcd
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x47c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"tv"
	.byte	0x1
	.value	0x47c
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	0x2d06
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x483
	.long	0x1b4b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF10
	.long	0x2d42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10783
	.byte	0x0
	.uleb128 0x2e
	.long	0x2d2c
	.byte	0x1
	.long	0x1eef
	.uleb128 0x2f
	.long	0x1dcd
	.uleb128 0x2f
	.long	0x2f8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d17
	.uleb128 0xf
	.long	0x2d42
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x2d32
	.uleb128 0xf
	.long	0x2d57
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x1e
	.byte	0x0
	.uleb128 0x8
	.long	0x2d47
	.uleb128 0xf
	.long	0x2d6c
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x2d7f
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x2d5c
	.uleb128 0xf
	.long	0x2d94
	.long	0x9c
	.uleb128 0x10
	.long	0x224
	.byte	0x80
	.byte	0x0
	.uleb128 0x31
	.string	"const_int_rtx"
	.byte	0x3
	.value	0x69e
	.long	0x2d84
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"n_basic_blocks"
	.byte	0x6
	.byte	0xf2
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"last_basic_block"
	.byte	0x6
	.byte	0xf6
	.long	0x216
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"basic_block_info"
	.byte	0x6
	.byte	0xfe
	.long	0x1a62
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x2e08
	.long	0x12d8
	.uleb128 0x10
	.long	0x224
	.byte	0x1
	.byte	0x0
	.uleb128 0x31
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x2df8
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x215
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2e25
	.long	0x1ef8
	.string	"forwarder_block_p"
	.long	0x1f3f
	.string	"can_fallthru"
	.long	0x1fa3
	.string	"mark_dfs_back_edges"
	.long	0x207e
	.string	"set_edge_can_fallthru_flag"
	.long	0x210a
	.string	"flow_call_edges_add"
	.long	0x224e
	.string	"find_unreachable_blocks"
	.long	0x22d2
	.string	"create_edge_list"
	.long	0x2354
	.string	"free_edge_list"
	.long	0x2389
	.string	"print_edge_list"
	.long	0x23df
	.string	"verify_edge_list"
	.long	0x24a9
	.string	"find_edge_index"
	.long	0x2510
	.string	"flow_nodes_print"
	.long	0x2607
	.string	"flow_edge_list_print"
	.long	0x26e9
	.string	"remove_fake_edges"
	.long	0x2720
	.string	"add_noreturn_fake_exit_edges"
	.long	0x2762
	.string	"connect_infinite_loops_to_exit"
	.long	0x27c5
	.string	"flow_reverse_top_sort_order_compute"
	.long	0x288a
	.string	"flow_depth_first_order_compute"
	.long	0x29d6
	.string	"flow_preorder_transversal_compute"
	.long	0x2c1c
	.string	"dfs_enumerate_from"
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
.LASF5:
	.string	"num_edges"
.LASF7:
	.string	"insn"
.LASF6:
	.string	"stack"
.LASF4:
	.string	"edge_list"
.LASF2:
	.string	"mem_attrs"
.LASF10:
	.string	"__FUNCTION__"
.LASF9:
	.string	"elist"
.LASF1:
	.string	"_IO_FILE"
.LASF8:
	.string	"visited"
.LASF3:
	.string	"data"
.LASF0:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
