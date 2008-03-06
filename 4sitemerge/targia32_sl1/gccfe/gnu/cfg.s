	.file	"cfg.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl entry_exit_blocks
	.section	.data.rel,"aw",@progbits
	.align 32
	.type	entry_exit_blocks, @object
	.size	entry_exit_blocks, 160
entry_exit_blocks:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	0
	.long	entry_exit_blocks+80
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	entry_exit_blocks
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.local	initialized.12231
	.comm	initialized.12231,4,4
	.text
.globl init_flow
	.type	init_flow, @function
init_flow:
.LFB15:
	.file 1 "../../../kgccfe/gnu/cfg.c"
	.loc 1 144 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%esi
.LCFI2:
	pushl	%ebx
.LCFI3:
	subl	$64, %esp
.LCFI4:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 147 0
	movl	first_deleted_edge@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 148 0
	movl	$0, first_deleted_block@GOTOFF(%ebx)
	.loc 1 149 0
	movl	n_edges@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 151 0
	movl	initialized.12231@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 153 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
.LBB2:
	.loc 1 154 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -56(%ebp)
.LBB3:
	movl	-56(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-48(%ebp), %eax
	jge	.L4
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L4:
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE3:
.LBB4:
	movl	-56(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-44(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-40(%ebp), %eax
	jne	.L6
	movl	-44(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L6:
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
	jle	.L8
	movl	-44(%ebp), %eax
	movl	16(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
.L8:
	movl	-44(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
.LBE4:
.LBE2:
	movl	%eax, flow_firstobj@GOTOFF(%ebx)
	.loc 1 155 0
	movl	$1, initialized.12231@GOTOFF(%ebx)
	jmp	.L21
.L2:
.LBB5:
	.loc 1 159 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -36(%ebp)
	movl	flow_firstobj@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	jae	.L11
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-32(%ebp), %eax
	jbe	.L11
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-36(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L14
.L11:
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L14:
.LBE5:
.LBB6:
	.loc 1 160 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB7:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L15
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L15:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE7:
.LBB8:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L17
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L17:
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
	jle	.L19
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L19:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE8:
.LBE6:
	movl	%eax, flow_firstobj@GOTOFF(%ebx)
.L21:
	.loc 1 162 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	init_flow, .-init_flow
	.type	free_edge, @function
free_edge:
.LFB16:
	.loc 1 170 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%ebx
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 171 0
	movl	n_edges@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	n_edges@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 172 0
	movl	8(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 173 0
	movl	first_deleted_edge@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 174 0
	movl	first_deleted_edge@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 175 0
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	free_edge, .-free_edge
	.section	.rodata
	.type	__FUNCTION__.12356, @object
	.size	__FUNCTION__.12356, 12
__FUNCTION__.12356:
	.string	"clear_edges"
.LC0:
	.string	"../../../kgccfe/gnu/cfg.c"
	.text
.globl clear_edges
	.type	clear_edges, @function
clear_edges:
.LFB17:
	.loc 1 181 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$52, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 185 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L25
.L26:
.LBB9:
	.loc 1 187 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 189 0
	jmp	.L27
.L28:
.LBB10:
	.loc 1 191 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 193 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free_edge
	.loc 1 194 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L27:
.LBE10:
	.loc 1 189 0
	cmpl	$0, -16(%ebp)
	jne	.L28
	.loc 1 197 0
	movl	-24(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 198 0
	movl	-24(%ebp), %eax
	movl	$0, 16(%eax)
.LBE9:
	.loc 1 185 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
.L25:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L26
	.loc 1 201 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 202 0
	jmp	.L31
.L32:
.LBB11:
	.loc 1 204 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 206 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free_edge
	.loc 1 207 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L31:
.LBE11:
	.loc 1 202 0
	cmpl	$0, -20(%ebp)
	jne	.L32
	.loc 1 210 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	$0, 16(%eax)
	.loc 1 211 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	$0, 20(%eax)
	.loc 1 213 0
	movl	n_edges@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L36
	.loc 1 214 0
	leal	__FUNCTION__.12356@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$214, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L36:
	.loc 1 215 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	clear_edges, .-clear_edges
.globl alloc_block
	.type	alloc_block, @function
alloc_block:
.LFB18:
	.loc 1 221 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$48, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 224 0
	movl	first_deleted_block@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 226 0
	movl	first_deleted_block@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 227 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, first_deleted_block@GOTOFF(%ebx)
	.loc 1 228 0
	movl	-32(%ebp), %eax
	movl	$0, 20(%eax)
	jmp	.L40
.L38:
.LBB12:
	.loc 1 232 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB13:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$80, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L41
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L41:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE13:
.LBB14:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L43
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L43:
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
	jle	.L45
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L45:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE14:
.LBE12:
	movl	%eax, -32(%ebp)
	.loc 1 233 0
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	movl	$80, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
.L40:
	.loc 1 235 0
	movl	-32(%ebp), %eax
	.loc 1 236 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	alloc_block, .-alloc_block
.globl link_block
	.type	link_block, @function
link_block:
.LFB19:
	.loc 1 242 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	.loc 1 243 0
	movl	12(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 244 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 245 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 246 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 247 0
	popl	%ebp
	ret
.LFE19:
	.size	link_block, .-link_block
.globl unlink_block
	.type	unlink_block, @function
unlink_block:
.LFB20:
	.loc 1 253 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, 48(%edx)
	.loc 1 255 0
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 52(%edx)
	.loc 1 256 0
	popl	%ebp
	ret
.LFE20:
	.size	unlink_block, .-unlink_block
	.section	.rodata
	.type	__FUNCTION__.12439, @object
	.size	__FUNCTION__.12439, 15
__FUNCTION__.12439:
	.string	"compact_blocks"
	.text
.globl compact_blocks
	.type	compact_blocks, @function
compact_blocks:
.LFB21:
	.loc 1 261 0
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
	.loc 1 265 0
	movl	$0, -12(%ebp)
	.loc 1 266 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L53
.L54:
	.loc 1 268 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 269 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 270 0
	addl	$1, -12(%ebp)
	.loc 1 266 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L53:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L54
	.loc 1 273 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	je	.L56
	.loc 1 274 0
	leal	__FUNCTION__.12439@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$274, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L56:
	.loc 1 276 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 277 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	compact_blocks, .-compact_blocks
.globl expunge_block
	.type	expunge_block, @function
expunge_block:
.LFB22:
	.loc 1 285 0
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
	.loc 1 286 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unlink_block@PLT
	.loc 1 287 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	$0, 16(%edx,%eax,4)
	.loc 1 288 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 291 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	$80, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 292 0
	movl	8(%ebp), %eax
	movl	$-3, 44(%eax)
	.loc 1 293 0
	movl	first_deleted_block@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	%eax, first_deleted_block@GOTOFF(%ebx)
	.loc 1 295 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	expunge_block, .-expunge_block
.globl unchecked_make_edge
	.type	unchecked_make_edge, @function
unchecked_make_edge:
.LFB23:
	.loc 1 305 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%edi
.LCFI32:
	pushl	%esi
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$44, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 308 0
	movl	first_deleted_edge@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L62
	.loc 1 310 0
	movl	first_deleted_edge@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 311 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	first_deleted_edge@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L64
.L62:
.LBB15:
	.loc 1 315 0
	movl	flow_obstack@GOT(%ebx), %eax
	movl	%eax, -32(%ebp)
.LBB16:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$40, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-24(%ebp), %eax
	jge	.L65
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L65:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE16:
.LBB17:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L67
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L67:
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
	jle	.L69
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L69:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE17:
.LBE15:
	movl	%eax, -36(%ebp)
	.loc 1 316 0
	movl	-36(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
.L64:
	.loc 1 318 0
	movl	n_edges@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	n_edges@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 320 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 321 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 322 0
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 323 0
	movl	-36(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 324 0
	movl	-36(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 326 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 327 0
	movl	12(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 329 0
	movl	-36(%ebp), %eax
	.loc 1 330 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	unchecked_make_edge, .-unchecked_make_edge
.globl cached_make_edge
	.type	cached_make_edge, @function
cached_make_edge:
.LFB24:
	.loc 1 339 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%edi
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$60, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 345 0
	cmpl	$0, 8(%ebp)
	je	.L73
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, 12(%ebp)
	je	.L73
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, 16(%ebp)
	je	.L73
	movl	$1, -56(%ebp)
	jmp	.L77
.L73:
	movl	$0, -56(%ebp)
.L77:
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 349 0
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L79
	.loc 1 353 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L92
	movl	%edi, %esi
	xorl	%edi, %edi
.L92:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L80
	.loc 1 357 0
	cmpl	$0, 20(%ebp)
	jne	.L79
	.loc 1 358 0
	movl	$0, -52(%ebp)
	jmp	.L83
.L79:
	.loc 1 362 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L84
.L85:
	.loc 1 363 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L86
	.loc 1 365 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	orl	20(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 366 0
	movl	$0, -52(%ebp)
	jmp	.L83
.L86:
	.loc 1 362 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L84:
	cmpl	$0, -20(%ebp)
	jne	.L85
.L80:
	.loc 1 371 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	unchecked_make_edge@PLT
	movl	%eax, -20(%ebp)
	.loc 1 373 0
	cmpl	$0, -24(%ebp)
	je	.L88
	.loc 1 374 0
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	16(%ebp), %eax
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
	je	.L91
	movl	%esi, %edi
	xorl	%esi, %esi
.L91:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L88:
	.loc 1 376 0
	movl	-20(%ebp), %esi
	movl	%esi, -52(%ebp)
.L83:
	movl	-52(%ebp), %eax
	.loc 1 377 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	cached_make_edge, .-cached_make_edge
.globl make_edge
	.type	make_edge, @function
make_edge:
.LFB25:
	.loc 1 386 0
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
	.loc 1 387 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	cached_make_edge@PLT
	.loc 1 388 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	make_edge, .-make_edge
.globl make_single_succ_edge
	.type	make_single_succ_edge, @function
make_single_succ_edge:
.LFB26:
	.loc 1 397 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$36, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 398 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_edge@PLT
	movl	%eax, -8(%ebp)
	.loc 1 400 0
	movl	-8(%ebp), %eax
	movl	$10000, 28(%eax)
	.loc 1 401 0
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 402 0
	movl	-8(%ebp), %eax
	.loc 1 403 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	make_single_succ_edge, .-make_single_succ_edge
	.section	.rodata
	.type	__FUNCTION__.12617, @object
	.size	__FUNCTION__.12617, 12
__FUNCTION__.12617:
	.string	"remove_edge"
	.text
.globl remove_edge
	.type	remove_edge, @function
remove_edge:
.LFB27:
	.loc 1 410 0
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
	.loc 1 411 0
	movl	$0, -24(%ebp)
	.loc 1 412 0
	movl	$0, -20(%ebp)
	.loc 1 416 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 417 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 418 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L98
.L99:
	.loc 1 419 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 418 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L98:
	cmpl	$0, -16(%ebp)
	je	.L100
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L99
.L100:
	.loc 1 421 0
	cmpl	$0, -16(%ebp)
	jne	.L102
	.loc 1 422 0
	leal	__FUNCTION__.12617@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$422, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L102:
	.loc 1 423 0
	cmpl	$0, -20(%ebp)
	je	.L104
	.loc 1 424 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L106
.L104:
	.loc 1 426 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 20(%eax)
.L106:
	.loc 1 428 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L107
.L108:
	.loc 1 429 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 428 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L107:
	cmpl	$0, -16(%ebp)
	je	.L109
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L108
.L109:
	.loc 1 431 0
	cmpl	$0, -16(%ebp)
	jne	.L111
	.loc 1 432 0
	leal	__FUNCTION__.12617@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$432, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L111:
	.loc 1 433 0
	cmpl	$0, -24(%ebp)
	je	.L113
	.loc 1 434 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L115
.L113:
	.loc 1 436 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
.L115:
	.loc 1 438 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free_edge
	.loc 1 439 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	remove_edge, .-remove_edge
.globl redirect_edge_succ
	.type	redirect_edge_succ, @function
redirect_edge_succ:
.LFB28:
	.loc 1 447 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	subl	$16, %esp
.LCFI56:
	.loc 1 451 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	addl	$16, %eax
	movl	%eax, -4(%ebp)
	jmp	.L118
.L119:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L118:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L119
	.loc 1 453 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 456 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 457 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 458 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 459 0
	leave
	ret
.LFE28:
	.size	redirect_edge_succ, .-redirect_edge_succ
.globl redirect_edge_succ_nodup
	.type	redirect_edge_succ_nodup, @function
redirect_edge_succ_nodup:
.LFB29:
	.loc 1 467 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%edi
.LCFI59:
	pushl	%esi
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$28, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 471 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L123
.L124:
	.loc 1 472 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L125
	movl	-16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L127
.L125:
	.loc 1 471 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L123:
	cmpl	$0, -16(%ebp)
	jne	.L124
.L127:
	.loc 1 475 0
	cmpl	$0, -16(%ebp)
	je	.L128
	.loc 1 477 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	orl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 478 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 479 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	$10000, %eax
	jle	.L130
	.loc 1 480 0
	movl	-16(%ebp), %eax
	movl	$10000, 28(%eax)
.L130:
	.loc 1 481 0
	movl	-16(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-16(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	.loc 1 482 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
	.loc 1 483 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%ebp)
	jmp	.L132
.L128:
	.loc 1 486 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	redirect_edge_succ@PLT
.L132:
	.loc 1 488 0
	movl	8(%ebp), %eax
	.loc 1 489 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	redirect_edge_succ_nodup, .-redirect_edge_succ_nodup
.globl redirect_edge_pred
	.type	redirect_edge_pred, @function
redirect_edge_pred:
.LFB30:
	.loc 1 497 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	subl	$16, %esp
.LCFI65:
	.loc 1 501 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	addl	$20, %eax
	movl	%eax, -4(%ebp)
	jmp	.L135
.L136:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -4(%ebp)
.L135:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L136
	.loc 1 504 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 507 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 508 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 509 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 510 0
	leave
	ret
.LFE30:
	.size	redirect_edge_pred, .-redirect_edge_pred
.globl clear_bb_flags
	.type	clear_bb_flags, @function
clear_bb_flags:
.LFB31:
	.loc 1 514 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	subl	$16, %esp
.LCFI68:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 517 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L140
.L141:
	.loc 1 518 0
	movl	-4(%ebp), %eax
	movl	$0, 76(%eax)
	.loc 1 517 0
	movl	-4(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -4(%ebp)
.L140:
	cmpl	$0, -4(%ebp)
	jne	.L141
	.loc 1 519 0
	leave
	ret
.LFE31:
	.size	clear_bb_flags, .-clear_bb_flags
	.section	.rodata
.LC1:
	.string	"NO_REGS"
.LC2:
	.string	"M16_NA_REGS"
.LC3:
	.string	"M16_REGS"
.LC4:
	.string	"T_REG"
.LC5:
	.string	"M16_T_REGS"
.LC6:
	.string	"GR_REGS"
.LC7:
	.string	"FP_REGS"
.LC8:
	.string	"HI_REG"
.LC9:
	.string	"LO_REG"
.LC10:
	.string	"HILO_REG"
.LC11:
	.string	"MD_REGS"
.LC12:
	.string	"COP0_REGS"
.LC13:
	.string	"COP2_REGS"
.LC14:
	.string	"COP3_REGS"
.LC15:
	.string	"HI_AND_GR_REGS"
.LC16:
	.string	"LO_AND_GR_REGS"
.LC17:
	.string	"HILO_AND_GR_REGS"
.LC18:
	.string	"HI_AND_FP_REGS"
.LC19:
	.string	"COP0_AND_GR_REGS"
.LC20:
	.string	"COP2_AND_GR_REGS"
.LC21:
	.string	"COP3_AND_GR_REGS"
.LC22:
	.string	"ALL_COP_REGS"
.LC23:
	.string	"ALL_COP_AND_GR_REGS"
.LC24:
	.string	"ST_REGS"
.LC25:
	.string	"ALL_REGS"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	reg_class_names.12709, @object
	.size	reg_class_names.12709, 100
reg_class_names.12709:
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.section	.rodata
.LC26:
	.string	"%d registers.\n"
	.align 4
.LC27:
	.string	"\nRegister %d used %d times across %d insns"
.LC28:
	.string	" in block %d"
.LC29:
	.string	""
.LC30:
	.string	"s"
.LC31:
	.string	"; set %d time%s"
.LC32:
	.string	"; user var"
.LC33:
	.string	"; dies in %d places"
.LC34:
	.string	"; crosses 1 call"
.LC35:
	.string	"; crosses %d calls"
.LC36:
	.string	"; %d bytes"
.LC37:
	.string	"; pref %s"
.LC38:
	.string	"; %s or none"
.LC39:
	.string	"; pref %s, else %s"
.LC40:
	.string	"; pointer"
.LC41:
	.string	".\n"
.LC42:
	.string	"\n%d basic blocks, %d edges.\n"
	.align 4
.LC43:
	.string	"\nBasic block %d: first insn %d, last %d, "
.LC44:
	.string	"prev %d, next %d, "
.LC45:
	.string	"loop_depth %d, count "
.LC46:
	.string	"%lld"
.LC47:
	.string	", freq %i"
.LC48:
	.string	", maybe hot"
.LC49:
	.string	", probably never executed"
.LC50:
	.string	"Predecessors: "
.LC51:
	.string	"\nSuccessors: "
.LC52:
	.string	"\nRegisters live at start:"
.LC53:
	.string	"\nRegisters live at end:"
	.align 4
.LC56:
	.string	"Invalid sum of outgoing probabilities %.1f%%\n"
	.align 4
.LC57:
	.string	"Invalid sum of incomming frequencies %i, should be %i\n"
	.align 4
.LC58:
	.string	"Invalid sum of incomming counts %i, should be %i\n"
	.align 8
.LC54:
	.long	0
	.long	1079574528
	.align 8
.LC55:
	.long	0
	.long	1086556160
	.text
.globl dump_flow_info
	.type	dump_flow_info, @function
dump_flow_info:
.LFB32:
	.loc 1 524 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%edi
.LCFI71:
	pushl	%esi
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$140, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 526 0
	call	max_reg_num@PLT
	movl	%eax, -40(%ebp)
	.loc 1 530 0
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 531 0
	movl	$176, -44(%ebp)
	jmp	.L145
.L146:
	.loc 1 532 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L147
.LBB18:
	.loc 1 536 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	28(%eax), %ecx
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 538 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	js	.L149
	.loc 1 539 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	36(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L149:
	.loc 1 540 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L151
	.loc 1 541 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L153
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, -108(%ebp)
	jmp	.L155
.L153:
	leal	.LC30@GOTOFF(%ebx), %edx
	movl	%edx, -108(%ebp)
.L155:
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	12(%eax), %eax
	movl	-108(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L151:
	.loc 1 543 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L156
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L156
	.loc 1 544 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$10, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L156:
	.loc 1 545 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	24(%eax), %eax
	cmpl	$1, %eax
	je	.L159
	.loc 1 546 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L159:
	.loc 1 547 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	cmpl	$1, %eax
	jne	.L161
	.loc 1 548 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$16, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	jmp	.L163
.L161:
	.loc 1 549 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L163
	.loc 1 550 0
	movl	reg_n_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	32(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L163:
	.loc 1 551 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L165
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -104(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L167
	movl	$8, -100(%ebp)
	jmp	.L169
.L167:
	movl	$4, -100(%ebp)
.L169:
	movl	-100(%ebp), %eax
	cmpl	%eax, -104(%ebp)
	je	.L165
	.loc 1 553 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L165:
	.loc 1 555 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, -32(%ebp)
	.loc 1 556 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_alternate_class@PLT
	movl	%eax, -28(%ebp)
	.loc 1 557 0
	cmpl	$5, -32(%ebp)
	jne	.L171
	cmpl	$24, -28(%ebp)
	je	.L173
.L171:
	.loc 1 559 0
	cmpl	$24, -28(%ebp)
	je	.L174
	cmpl	$24, -32(%ebp)
	jne	.L176
.L174:
	.loc 1 560 0
	movl	-32(%ebp), %eax
	movl	reg_class_names.12709@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 559 0
	jmp	.L173
.L176:
	.loc 1 561 0
	cmpl	$0, -28(%ebp)
	jne	.L177
	.loc 1 562 0
	movl	-32(%ebp), %eax
	movl	reg_class_names.12709@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L173
.L177:
	.loc 1 564 0
	movl	-28(%ebp), %eax
	movl	reg_class_names.12709@GOTOFF(%ebx,%eax,4), %edx
	movl	-32(%ebp), %eax
	movl	reg_class_names.12709@GOTOFF(%ebx,%eax,4), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L173:
	.loc 1 569 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L179
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L179
	.loc 1 570 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L179:
	.loc 1 571 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L147:
.LBE18:
	.loc 1 531 0
	addl	$1, -44(%ebp)
.L145:
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L146
	.loc 1 574 0
	movl	n_edges@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 575 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L183
.L184:
.LBB19:
	.loc 1 581 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 583 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	44(%eax), %edx
	movl	-36(%ebp), %eax
	movl	48(%eax), %eax
	movl	44(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 585 0
	movl	-36(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 586 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 587 0
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 588 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_hot_bb_p@PLT
	testb	%al, %al
	je	.L185
	.loc 1 589 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L185:
	.loc 1 590 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	probably_never_executed_bb_p@PLT
	testb	%al, %al
	je	.L187
	.loc 1 591 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L187:
	.loc 1 592 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 594 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 595 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L189
.L190:
	.loc 1 596 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_edge_info@PLT
	.loc 1 595 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L189:
	cmpl	$0, -24(%ebp)
	jne	.L190
	.loc 1 598 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 599 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L192
.L193:
	.loc 1 600 0
	movl	$1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_edge_info@PLT
	.loc 1 599 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L192:
	cmpl	$0, -24(%ebp)
	jne	.L193
	.loc 1 602 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$25, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 603 0
	movl	-36(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$23, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 606 0
	movl	-36(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_regset@PLT
	.loc 1 608 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 615 0
	movl	$0, -20(%ebp)
	.loc 1 616 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L195
.L196:
	.loc 1 617 0
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	addl	%eax, -20(%ebp)
	.loc 1 616 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L195:
	cmpl	$0, -24(%ebp)
	jne	.L196
	.loc 1 618 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L198
	movl	-20(%ebp), %eax
	subl	$10000, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$100, %eax
	jle	.L198
	.loc 1 619 0
	fildl	-20(%ebp)
	fldl	.LC54@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fldl	.LC55@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstpl	8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L198:
	.loc 1 621 0
	movl	$0, -20(%ebp)
	.loc 1 622 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L201
.L202:
	.loc 1 623 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -116(%ebp)
	movl	-116(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, -20(%ebp)
	.loc 1 622 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L201:
	cmpl	$0, -24(%ebp)
	jne	.L202
	.loc 1 624 0
	movl	-36(%ebp), %eax
	movl	72(%eax), %edx
	movl	-20(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$100, %eax
	jle	.L204
	.loc 1 625 0
	movl	-36(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L204:
	.loc 1 628 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 1 629 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L206
.L207:
	.loc 1 630 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%eax, -56(%ebp)
	adcl	%edx, -52(%ebp)
	.loc 1 629 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L206:
	cmpl	$0, -24(%ebp)
	jne	.L207
	.loc 1 631 0
	movl	-36(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-128(%ebp), %edx
	movl	-124(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	cmpl	$0, -92(%ebp)
	jg	.L209
	cmpl	$0, -92(%ebp)
	js	.L211
	cmpl	$100, -96(%ebp)
	ja	.L209
.L211:
	movl	-36(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-128(%ebp), %edx
	movl	-124(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	cmpl	$-1, -84(%ebp)
	jg	.L212
	cmpl	$-1, -84(%ebp)
	jl	.L209
	cmpl	$-100, -88(%ebp)
	jae	.L212
.L209:
	.loc 1 632 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	-56(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L212:
	.loc 1 634 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	.loc 1 635 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L214
.L215:
	.loc 1 636 0
	movl	-24(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	addl	%eax, -56(%ebp)
	adcl	%edx, -52(%ebp)
	.loc 1 635 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L214:
	cmpl	$0, -24(%ebp)
	jne	.L215
	.loc 1 637 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L217
	movl	-36(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-128(%ebp), %edx
	movl	-124(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	cmpl	$0, -76(%ebp)
	jg	.L219
	cmpl	$0, -76(%ebp)
	js	.L221
	cmpl	$100, -80(%ebp)
	ja	.L219
.L221:
	movl	-36(%ebp), %eax
	movl	64(%eax), %esi
	movl	68(%eax), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-128(%ebp), %edx
	movl	-124(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	cmpl	$-1, -68(%ebp)
	jg	.L217
	cmpl	$-1, -68(%ebp)
	jl	.L219
	cmpl	$-100, -72(%ebp)
	jae	.L217
.L219:
	.loc 1 638 0
	movl	-36(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	-56(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L217:
.LBE19:
	.loc 1 575 0
	movl	-36(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
.L183:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L184
	.loc 1 642 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 643 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	dump_flow_info, .-dump_flow_info
.globl debug_flow_info
	.type	debug_flow_info, @function
debug_flow_info:
.LFB33:
	.loc 1 647 0
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
	.loc 1 648 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
	.loc 1 649 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	debug_flow_info, .-debug_flow_info
	.section	.rodata
.LC59:
	.string	"fallthru"
.LC60:
	.string	"ab"
.LC61:
	.string	"abcall"
.LC62:
	.string	"eh"
.LC63:
	.string	"fake"
.LC64:
	.string	"dfs_back"
.LC65:
	.string	"can_fallthru"
	.section	.data.rel.ro.local
	.align 4
	.type	bitnames.12995, @object
	.size	bitnames.12995, 28
bitnames.12995:
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.section	.rodata
.LC66:
	.string	" ENTRY"
.LC67:
	.string	" EXIT"
.LC68:
	.string	" %d"
.LC71:
	.string	" [%.1f%%] "
.LC72:
	.string	" count:"
.LC73:
	.string	" ("
.LC74:
	.string	"%d"
	.align 8
.LC69:
	.long	0
	.long	1079574528
	.align 8
.LC70:
	.long	0
	.long	1086556160
	.text
.globl dump_edge_info
	.type	dump_edge_info, @function
dump_edge_info:
.LFB34:
	.loc 1 656 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$36, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 657 0
	cmpl	$0, 16(%ebp)
	je	.L228
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L230
.L228:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
.L230:
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 659 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L231
	.loc 1 660 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L233
.L231:
	.loc 1 661 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L234
	.loc 1 662 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$5, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	jmp	.L233
.L234:
	.loc 1 664 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L233:
	.loc 1 666 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L236
	.loc 1 667 0
	movl	12(%ebp), %eax
	movl	28(%eax), %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	.LC69@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fldl	.LC70@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstpl	8(%esp)
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L236:
	.loc 1 669 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L238
	.loc 1 671 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 672 0
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L238:
	.loc 1 675 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L252
.LBB20:
	.loc 1 679 0
	movl	$0, -16(%ebp)
	.loc 1 680 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 682 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC73@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 683 0
	movl	$0, -12(%ebp)
	jmp	.L242
.L243:
	.loc 1 684 0
	movl	-12(%ebp), %ecx
	movl	-8(%ebp), %eax
	sarl	%cl, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L244
	.loc 1 686 0
	movl	-12(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	notl	%eax
	andl	%eax, -8(%ebp)
	.loc 1 688 0
	cmpl	$0, -16(%ebp)
	je	.L246
	.loc 1 689 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$44, (%esp)
	call	fputc_unlocked@PLT
.L246:
	.loc 1 690 0
	cmpl	$6, -12(%ebp)
	jg	.L248
	.loc 1 691 0
	movl	-12(%ebp), %eax
	movl	bitnames.12995@GOTOFF(%ebx,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	jmp	.L250
.L248:
	.loc 1 693 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC74@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L250:
	.loc 1 694 0
	movl	$1, -16(%ebp)
.L244:
	.loc 1 683 0
	addl	$1, -12(%ebp)
.L242:
	cmpl	$0, -8(%ebp)
	jne	.L243
	.loc 1 697 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	fputc_unlocked@PLT
.L252:
.LBE20:
	.loc 1 699 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	dump_edge_info, .-dump_edge_info
	.local	first_block_aux_obj
	.comm	first_block_aux_obj,4,4
	.local	first_edge_aux_obj
	.comm	first_edge_aux_obj,4,4
	.section	.rodata
	.type	__FUNCTION__.13050, @object
	.size	__FUNCTION__.13050, 20
__FUNCTION__.13050:
	.string	"alloc_aux_for_block"
	.text
.globl alloc_aux_for_block
	.type	alloc_aux_for_block, @function
alloc_aux_for_block:
.LFB35:
	.loc 1 715 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%edi
.LCFI85:
	pushl	%esi
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$44, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 717 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L254
	movl	first_block_aux_obj@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L256
.L254:
	.loc 1 718 0
	leal	__FUNCTION__.13050@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$718, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L256:
.LBB21:
	.loc 1 719 0
	leal	block_aux_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.LBB22:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
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
	jge	.L257
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L257:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE22:
.LBB23:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L259
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L259:
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
	jle	.L261
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L261:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE23:
	movl	%eax, %edx
.LBE21:
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 720 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 721 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	alloc_aux_for_block, .-alloc_aux_for_block
	.section	.rodata
	.type	__FUNCTION__.13105, @object
	.size	__FUNCTION__.13105, 21
__FUNCTION__.13105:
	.string	"alloc_aux_for_blocks"
	.local	initialized.13104
	.comm	initialized.13104,4,4
	.text
.globl alloc_aux_for_blocks
	.type	alloc_aux_for_blocks, @function
alloc_aux_for_blocks:
.LFB36:
	.loc 1 729 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%esi
.LCFI91:
	pushl	%ebx
.LCFI92:
	subl	$48, %esp
.LCFI93:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 732 0
	movl	initialized.13104@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L265
	.loc 1 734 0
	leal	block_aux_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 735 0
	movl	$1, initialized.13104@GOTOFF(%ebx)
	jmp	.L267
.L265:
	.loc 1 739 0
	movl	first_block_aux_obj@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L267
	.loc 1 740 0
	leal	__FUNCTION__.13105@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$740, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L267:
.LBB24:
	.loc 1 741 0
	leal	block_aux_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.LBB25:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-24(%ebp), %eax
	jge	.L269
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L269:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE25:
.LBB26:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L271
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L271:
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
	jle	.L273
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L273:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE26:
.LBE24:
	movl	%eax, first_block_aux_obj@GOTOFF(%ebx)
	.loc 1 742 0
	cmpl	$0, 8(%ebp)
	je	.L279
.LBB27:
	.loc 1 746 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L277
.L278:
	.loc 1 747 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_aux_for_block@PLT
	.loc 1 746 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L277:
	cmpl	$0, -12(%ebp)
	jne	.L278
.L279:
.LBE27:
	.loc 1 749 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE36:
	.size	alloc_aux_for_blocks, .-alloc_aux_for_blocks
.globl clear_aux_for_blocks
	.type	clear_aux_for_blocks, @function
clear_aux_for_blocks:
.LFB37:
	.loc 1 755 0
	pushl	%ebp
.LCFI94:
	movl	%esp, %ebp
.LCFI95:
	subl	$16, %esp
.LCFI96:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 758 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L281
.L282:
	.loc 1 759 0
	movl	-4(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 758 0
	movl	-4(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -4(%ebp)
.L281:
	cmpl	$0, -4(%ebp)
	jne	.L282
	.loc 1 760 0
	leave
	ret
.LFE37:
	.size	clear_aux_for_blocks, .-clear_aux_for_blocks
	.section	.rodata
	.type	__FUNCTION__.13170, @object
	.size	__FUNCTION__.13170, 20
__FUNCTION__.13170:
	.string	"free_aux_for_blocks"
	.text
.globl free_aux_for_blocks
	.type	free_aux_for_blocks, @function
free_aux_for_blocks:
.LFB38:
	.loc 1 767 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$36, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 768 0
	movl	first_block_aux_obj@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L286
	.loc 1 769 0
	leal	__FUNCTION__.13170@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$769, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L286:
.LBB28:
	.loc 1 770 0
	leal	block_aux_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	first_block_aux_obj@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L288
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L288
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L291
.L288:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L291:
.LBE28:
	.loc 1 771 0
	movl	$0, first_block_aux_obj@GOTOFF(%ebx)
	.loc 1 773 0
	call	clear_aux_for_blocks@PLT
	.loc 1 774 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	free_aux_for_blocks, .-free_aux_for_blocks
	.section	.rodata
	.type	__FUNCTION__.13188, @object
	.size	__FUNCTION__.13188, 19
__FUNCTION__.13188:
	.string	"alloc_aux_for_edge"
	.text
.globl alloc_aux_for_edge
	.type	alloc_aux_for_edge, @function
alloc_aux_for_edge:
.LFB39:
	.loc 1 783 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%edi
.LCFI103:
	pushl	%esi
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$44, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 785 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L294
	movl	first_edge_aux_obj@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L296
.L294:
	.loc 1 786 0
	leal	__FUNCTION__.13188@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$786, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L296:
.LBB29:
	.loc 1 787 0
	leal	edge_aux_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.LBB30:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
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
	jge	.L297
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L297:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE30:
.LBB31:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L299
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L299:
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
	jle	.L301
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L301:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE31:
	movl	%eax, %edx
.LBE29:
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 788 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 789 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	alloc_aux_for_edge, .-alloc_aux_for_edge
	.section	.rodata
	.type	__FUNCTION__.13243, @object
	.size	__FUNCTION__.13243, 20
__FUNCTION__.13243:
	.string	"alloc_aux_for_edges"
	.local	initialized.13242
	.comm	initialized.13242,4,4
	.text
.globl alloc_aux_for_edges
	.type	alloc_aux_for_edges, @function
alloc_aux_for_edges:
.LFB40:
	.loc 1 797 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%esi
.LCFI109:
	pushl	%ebx
.LCFI110:
	subl	$48, %esp
.LCFI111:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 800 0
	movl	initialized.13242@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L305
	.loc 1 802 0
	leal	edge_aux_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 803 0
	movl	$1, initialized.13242@GOTOFF(%ebx)
	jmp	.L307
.L305:
	.loc 1 807 0
	movl	first_edge_aux_obj@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L307
	.loc 1 808 0
	leal	__FUNCTION__.13243@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$808, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L307:
.LBB32:
	.loc 1 810 0
	leal	edge_aux_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
.LBB33:
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-28(%ebp), %eax
	jge	.L309
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L309:
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE33:
.LBB34:
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	jne	.L311
	movl	-24(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L311:
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
	jle	.L313
	movl	-24(%ebp), %eax
	movl	16(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.L313:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-20(%ebp), %eax
.LBE34:
.LBE32:
	movl	%eax, first_edge_aux_obj@GOTOFF(%ebx)
	.loc 1 811 0
	cmpl	$0, 8(%ebp)
	je	.L322
.LBB35:
	.loc 1 815 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L317
.L318:
.LBB36:
	.loc 1 819 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L319
.L320:
	.loc 1 820 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_aux_for_edge@PLT
	.loc 1 819 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L319:
	cmpl	$0, -12(%ebp)
	jne	.L320
.LBE36:
	.loc 1 815 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L317:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L318
.L322:
.LBE35:
	.loc 1 823 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	alloc_aux_for_edges, .-alloc_aux_for_edges
.globl clear_aux_for_edges
	.type	clear_aux_for_edges, @function
clear_aux_for_edges:
.LFB41:
	.loc 1 829 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	subl	$16, %esp
.LCFI114:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 833 0
	movl	entry_exit_blocks@GOT(%ecx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L324
.L325:
	.loc 1 835 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L326
.L327:
	.loc 1 836 0
	movl	-4(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 835 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.L326:
	cmpl	$0, -4(%ebp)
	jne	.L327
	.loc 1 833 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L324:
	movl	entry_exit_blocks@GOT(%ecx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L325
	.loc 1 838 0
	leave
	ret
.LFE41:
	.size	clear_aux_for_edges, .-clear_aux_for_edges
	.section	.rodata
	.type	__FUNCTION__.13318, @object
	.size	__FUNCTION__.13318, 19
__FUNCTION__.13318:
	.string	"free_aux_for_edges"
	.text
.globl free_aux_for_edges
	.type	free_aux_for_edges, @function
free_aux_for_edges:
.LFB42:
	.loc 1 845 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$36, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 846 0
	movl	first_edge_aux_obj@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L332
	.loc 1 847 0
	leal	__FUNCTION__.13318@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$847, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L332:
.LBB37:
	.loc 1 848 0
	leal	edge_aux_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	first_edge_aux_obj@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L334
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L334
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L337
.L334:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L337:
.LBE37:
	.loc 1 849 0
	movl	$0, first_edge_aux_obj@GOTOFF(%ebx)
	.loc 1 851 0
	call	clear_aux_for_edges@PLT
	.loc 1 852 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	free_aux_for_edges, .-free_aux_for_edges
	.local	flow_firstobj
	.comm	flow_firstobj,4,4
	.local	first_deleted_block
	.comm	first_deleted_block,4,4
	.local	block_aux_obstack
	.comm	block_aux_obstack,44,32
	.local	edge_aux_obstack
	.comm	edge_aux_obstack,44,32
	.comm	n_basic_blocks,4,4
	.comm	last_basic_block,4,4
	.comm	n_edges,4,4
	.comm	basic_block_info,4,4
	.comm	flow_obstack,44,32
	.comm	first_deleted_edge,4,4
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
	.long	.LCFI17-.LCFI14
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
	.long	.LCFI18-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
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
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI22-.LFB21
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI30-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI31
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI36-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI37
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
	.long	.LCFI42-.LFB25
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
	.long	.LCFI62-.LCFI58
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
	.long	.LCFI63-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI66-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
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
	.byte	0x4
	.long	.LCFI74-.LCFI70
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
	.long	.LCFI82-.LCFI80
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
	.long	.LCFI83-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI84
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
	.long	.LCFI89-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI93-.LCFI90
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI94-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI95-.LCFI94
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
	.long	.LCFI100-.LCFI98
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
	.long	.LCFI101-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI106-.LCFI102
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
	.long	.LCFI107-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI111-.LCFI108
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
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI115-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI118-.LCFI116
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE54:
	.file 2 "/usr/include/stdio.h"
	.file 3 "../../../include/gnu/obstack.h"
	.file 4 "../../../kgccfe/gnu/basic-block.h"
	.file 5 "../../../kgccfe/gnu/rtl.h"
	.file 6 "../../../kgccfe/gnu/MIPS/config.h"
	.file 7 "../../../kgccfe/gnu/machmode.h"
	.file 8 "../../../kgccfe/gnu/bitmap.h"
	.file 9 "../../../kgccfe/gnu/tree.h"
	.file 10 "../../../kgccfe/gnu/hashtable.h"
	.file 11 "../../../kgccfe/gnu/location.h"
	.file 12 "../../../kgccfe/gnu/function.h"
	.file 13 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 14 "../../../kgccfe/omp_types.h"
	.file 15 "../../../kgccfe/gnu/sbitmap.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 19 "../../../kgccfe/gnu/varray.h"
	.file 20 "../../../kgccfe/gnu/regs.h"
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI83-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI84-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI94-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI95-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
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
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI101-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI102-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
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
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7a9f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cfg.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x6
	.byte	0xc
	.long	0xa3
	.uleb128 0x3
	.byte	0x4
	.long	0xa9
	.uleb128 0x4
	.long	0x199
	.string	"rtx_def"
	.byte	0xc
	.byte	0x6
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x5
	.byte	0x8a
	.long	0x4f7c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x5
	.byte	0x8d
	.long	0x975
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x5
	.byte	0x94
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x5
	.byte	0x97
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x5
	.byte	0x9f
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x5
	.byte	0xa8
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x5
	.byte	0xba
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x5
	.byte	0xc1
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x5
	.byte	0xc6
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x5
	.byte	0xcf
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x5
	.byte	0xd4
	.long	0x5b98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x6
	.byte	0xe
	.long	0x1a6
	.uleb128 0x3
	.byte	0x4
	.long	0x1ac
	.uleb128 0x4
	.long	0x1e1
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x6
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x5
	.byte	0xf8
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x5
	.byte	0xf9
	.long	0x5ba8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x6
	.byte	0x10
	.long	0x1ed
	.uleb128 0x3
	.byte	0x4
	.long	0x1f3
	.uleb128 0x7
	.long	0x2cd
	.string	"tree_node"
	.byte	0x94
	.byte	0x6
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x9
	.value	0x855
	.long	0x2e31
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x9
	.value	0x856
	.long	0x314b
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x9
	.value	0x857
	.long	0x3193
	.uleb128 0x9
	.string	"vector"
	.byte	0x9
	.value	0x858
	.long	0x32b6
	.uleb128 0x9
	.string	"string"
	.byte	0x9
	.value	0x859
	.long	0x31f4
	.uleb128 0x9
	.string	"complex"
	.byte	0x9
	.value	0x85a
	.long	0x3261
	.uleb128 0x9
	.string	"identifier"
	.byte	0x9
	.value	0x85b
	.long	0x34eb
	.uleb128 0x9
	.string	"decl"
	.byte	0x9
	.value	0x85c
	.long	0x457f
	.uleb128 0x9
	.string	"type"
	.byte	0x9
	.value	0x85d
	.long	0x374e
	.uleb128 0x9
	.string	"list"
	.byte	0x9
	.value	0x85e
	.long	0x3522
	.uleb128 0x9
	.string	"vec"
	.byte	0x9
	.value	0x85f
	.long	0x3567
	.uleb128 0x9
	.string	"exp"
	.byte	0x9
	.value	0x860
	.long	0x35b8
	.uleb128 0x9
	.string	"block"
	.byte	0x9
	.value	0x861
	.long	0x3604
	.uleb128 0x9
	.string	"omp"
	.byte	0x9
	.value	0x863
	.long	0x4f1e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d3
	.uleb128 0xa
	.long	0x2d8
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x45d
	.string	"reg_class"
	.byte	0x4
	.byte	0xd
	.value	0x7ec
	.uleb128 0xd
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xd
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xd
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xd
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xd
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xd
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xd
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xd
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xd
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xd
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xd
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xd
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xd
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xd
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xd
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xd
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xd
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xd
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xd
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xd
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xd
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xd
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xd
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xd
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xd
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xd
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xe
	.long	0x52f
	.string	"mips_args"
	.byte	0x40
	.byte	0xd
	.value	0xaaa
	.uleb128 0xf
	.string	"gp_reg_found"
	.byte	0xd
	.value	0xaad
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"arg_number"
	.byte	0xd
	.value	0xab0
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"num_gprs"
	.byte	0xd
	.value	0xab5
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"num_fprs"
	.byte	0xd
	.value	0xab8
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"stack_words"
	.byte	0xd
	.value	0xabb
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"fp_code"
	.byte	0xd
	.value	0xac8
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"prototype"
	.byte	0xd
	.value	0xacb
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"num_adjusts"
	.byte	0xd
	.value	0xad3
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"adjust"
	.byte	0xd
	.value	0xad4
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x10
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.long	0x546
	.long	0x98
	.uleb128 0x12
	.long	0x546
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x13
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x45d
	.uleb128 0x2
	.string	"size_t"
	.byte	0x12
	.byte	0xd6
	.long	0x52f
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
	.long	0x5cb
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x11
	.byte	0x90
	.long	0x615
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x11
	.byte	0x91
	.long	0x5f6
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d8
	.uleb128 0x2
	.string	"FILE"
	.byte	0x2
	.byte	0x2e
	.long	0x646
	.uleb128 0x15
	.long	0x8c1
	.long	.LASF2
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0xf
	.string	"_flags"
	.byte	0x10
	.value	0x10c
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"_IO_read_ptr"
	.byte	0x10
	.value	0x111
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"_IO_read_end"
	.byte	0x10
	.value	0x112
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"_IO_read_base"
	.byte	0x10
	.value	0x113
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"_IO_write_base"
	.byte	0x10
	.value	0x114
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"_IO_write_ptr"
	.byte	0x10
	.value	0x115
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"_IO_write_end"
	.byte	0x10
	.value	0x116
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"_IO_buf_base"
	.byte	0x10
	.value	0x117
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"_IO_buf_end"
	.byte	0x10
	.value	0x118
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"_IO_save_base"
	.byte	0x10
	.value	0x11a
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"_IO_backup_base"
	.byte	0x10
	.value	0x11b
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"_IO_save_end"
	.byte	0x10
	.value	0x11c
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"_markers"
	.byte	0x10
	.value	0x11e
	.long	0x933
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"_chain"
	.byte	0x10
	.value	0x120
	.long	0x939
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"_fileno"
	.byte	0x10
	.value	0x122
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"_flags2"
	.byte	0x10
	.value	0x126
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"_old_offset"
	.byte	0x10
	.value	0x128
	.long	0x606
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"_cur_column"
	.byte	0x10
	.value	0x12c
	.long	0x584
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"_vtable_offset"
	.byte	0x10
	.value	0x12d
	.long	0x5af
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xf
	.string	"_shortbuf"
	.byte	0x10
	.value	0x12e
	.long	0x93f
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xf
	.string	"_lock"
	.byte	0x10
	.value	0x132
	.long	0x94f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"_offset"
	.byte	0x10
	.value	0x13b
	.long	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"__pad1"
	.byte	0x10
	.value	0x144
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"__pad2"
	.byte	0x10
	.value	0x145
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"__pad3"
	.byte	0x10
	.value	0x146
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"__pad4"
	.byte	0x10
	.value	0x147
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"__pad5"
	.byte	0x10
	.value	0x148
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"_mode"
	.byte	0x10
	.value	0x14a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"_unused2"
	.byte	0x10
	.value	0x14c
	.long	0x955
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x11
	.long	0x8d1
	.long	0x2d8
	.uleb128 0x12
	.long	0x546
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8d7
	.uleb128 0xa
	.long	0x573
	.uleb128 0x3
	.byte	0x4
	.long	0x573
	.uleb128 0x16
	.string	"_IO_lock_t"
	.byte	0x10
	.byte	0xb0
	.uleb128 0x4
	.long	0x933
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x10
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x10
	.byte	0xb7
	.long	0x933
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x10
	.byte	0xb8
	.long	0x939
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x10
	.byte	0xbc
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8f0
	.uleb128 0x3
	.byte	0x4
	.long	0x646
	.uleb128 0x11
	.long	0x94f
	.long	0x2d8
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8e2
	.uleb128 0x11
	.long	0x965
	.long	0x2d8
	.uleb128 0x12
	.long	0x546
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0x975
	.long	0x2d8
	.uleb128 0x12
	.long	0x546
	.byte	0x13
	.byte	0x0
	.uleb128 0x17
	.long	0xbbe
	.string	"machine_mode"
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.uleb128 0xd
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xd
	.string	"BImode"
	.sleb128 1
	.uleb128 0xd
	.string	"QImode"
	.sleb128 2
	.uleb128 0xd
	.string	"HImode"
	.sleb128 3
	.uleb128 0xd
	.string	"SImode"
	.sleb128 4
	.uleb128 0xd
	.string	"DImode"
	.sleb128 5
	.uleb128 0xd
	.string	"TImode"
	.sleb128 6
	.uleb128 0xd
	.string	"OImode"
	.sleb128 7
	.uleb128 0xd
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xd
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xd
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xd
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xd
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xd
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xd
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xd
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xd
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xd
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xd
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xd
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xd
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xd
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xd
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xd
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xd
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xd
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xd
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xd
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xd
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xd
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xd
	.string	"COImode"
	.sleb128 30
	.uleb128 0xd
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xd
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xd
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xd
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xd
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xd
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xd
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xd
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xd
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xd
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xd
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xd
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xd
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xd
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xd
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xd
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xd
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xd
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xd
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xd
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xd
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xd
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xd
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xd
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x4
	.long	0xbf0
	.string	"location_s"
	.byte	0x8
	.byte	0xb
	.byte	0x1c
	.uleb128 0x6
	.string	"file"
	.byte	0xb
	.byte	0x1e
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0xb
	.byte	0x21
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xb
	.byte	0x23
	.long	0xbbe
	.uleb128 0x17
	.long	0x1524
	.string	"tree_code"
	.byte	0x4
	.byte	0x9
	.byte	0x27
	.uleb128 0xd
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0xd
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0xd
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0xd
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0xd
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0xd
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0xd
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0xd
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0xd
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0xd
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0xd
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0xd
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0xd
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0xd
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0xd
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0xd
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0xd
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0xd
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0xd
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0xd
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0xd
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0xd
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0xd
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0xd
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0xd
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0xd
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0xd
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0xd
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0xd
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0xd
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0xd
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0xd
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0xd
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0xd
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0xd
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0xd
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0xd
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0xd
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0xd
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0xd
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0xd
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0xd
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0xd
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0xd
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0xd
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0xd
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0xd
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0xd
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0xd
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0xd
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0xd
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0xd
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0xd
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0xd
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0xd
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0xd
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0xd
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0xd
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0xd
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0xd
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0xd
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0xd
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0xd
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0xd
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0xd
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0xd
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0xd
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0xd
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0xd
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0xd
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0xd
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0xd
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0xd
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0xd
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0xd
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0xd
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0xd
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0xd
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0xd
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0xd
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0xd
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0xd
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0xd
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0xd
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0xd
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0xd
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0xd
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0xd
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0xd
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0xd
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0xd
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0xd
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0xd
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0xd
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0xd
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0xd
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0xd
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0xd
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0xd
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0xd
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0xd
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0xd
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0xd
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0xd
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0xd
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0xd
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0xd
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0xd
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0xd
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0xd
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0xd
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0xd
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0xd
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0xd
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0xd
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0xd
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0xd
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0xd
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0xd
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0xd
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0xd
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0xd
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0xd
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0xd
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0xd
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0xd
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0xd
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0xd
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0xd
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0xd
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0xd
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0xd
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0xd
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0xd
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0xd
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0xd
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0xd
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0xd
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0xd
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0xd
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0xd
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0xd
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0xd
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0xd
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0xd
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0xd
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0xd
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0xd
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0xd
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0xd
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0xd
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0xd
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x9
	.byte	0x31
	.long	0x52f
	.uleb128 0x4
	.long	0x1574
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x9
	.byte	0x32
	.uleb128 0x6
	.string	"block"
	.byte	0x9
	.byte	0x32
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x9
	.byte	0x32
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x9
	.byte	0x36
	.long	0x157e
	.uleb128 0x18
	.string	"st"
	.byte	0x1
	.uleb128 0x19
	.long	0x15d3
	.long	.LASF3
	.byte	0x4
	.byte	0x9
	.byte	0x5a
	.uleb128 0xd
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0xd
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0xd
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0xd
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x17
	.long	0x2e31
	.string	"built_in_function"
	.byte	0x4
	.byte	0x9
	.byte	0x69
	.uleb128 0xd
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0xd
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0xd
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0xd
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0xd
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0xd
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0xd
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0xd
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0xd
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0xd
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0xd
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0xd
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0xd
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0xd
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0xd
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0xd
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0xd
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0xd
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0xd
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0xd
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0xd
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0xd
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0xd
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0xd
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0xd
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0xd
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0xd
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0xd
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0xd
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0xd
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0xd
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0xd
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0xd
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0xd
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0xd
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0xd
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0xd
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0xd
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0xd
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0xd
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0xd
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0xd
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0xd
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0xd
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0xd
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0xd
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0xd
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0xd
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0xd
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0xd
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0xd
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0xd
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0xd
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0xd
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0xd
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0xd
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0xd
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0xd
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0xd
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0xd
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0xd
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0xd
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0xd
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0xd
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0xd
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0xd
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0xd
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0xd
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0xd
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0xd
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0xd
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0xd
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0xd
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0xd
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0xd
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0xd
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0xd
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0xd
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0xd
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0xd
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0xd
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0xd
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0xd
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0xd
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0xd
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0xd
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0xd
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0xd
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0xd
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0xd
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0xd
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0xd
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0xd
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0xd
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0xd
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0xd
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0xd
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0xd
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0xd
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0xd
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0xd
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0xd
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0xd
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0xd
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0xd
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0xd
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0xd
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0xd
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0xd
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0xd
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0xd
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0xd
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0xd
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0xd
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0xd
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0xd
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0xd
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0xd
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0xd
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0xd
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0xd
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0xd
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0xd
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0xd
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0xd
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0xd
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0xd
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0xd
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0xd
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0xd
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0xd
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0xd
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0xd
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0xd
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0xd
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0xd
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0xd
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0xd
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0xd
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0xd
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0xd
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0xd
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0xd
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0xd
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0xd
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0xd
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0xd
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0xd
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0xd
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0xd
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0xd
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0xd
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0xd
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0xd
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0xd
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0xd
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0xd
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0xd
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0xd
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0xd
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0xd
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0xd
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0xd
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0xd
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0xd
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0xd
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0xd
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0xd
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0xd
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0xd
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0xd
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0xd
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0xd
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0xd
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0xd
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0xd
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0xd
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0xd
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0xd
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0xd
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0xd
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0xd
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0xd
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0xd
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0xd
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0xd
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0xd
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0xd
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0xd
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0xd
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0xd
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0xd
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0xd
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0xd
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0xd
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0xd
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0xd
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0xd
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0xd
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0xd
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0xd
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0xd
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0xd
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0xd
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0xd
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0xd
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0xd
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0xd
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0xd
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0xd
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0xd
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0xd
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0xd
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0xd
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0xd
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0xd
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0xd
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0xd
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0xd
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0xd
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0xd
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0xd
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0xd
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0xd
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0xd
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0xd
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0xd
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0xd
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0xd
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0xd
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0xd
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0xd
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0xd
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0xd
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0xd
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0xd
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0xd
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0xd
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0xd
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0xd
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0xd
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0xd
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0xd
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0xd
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0xd
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0xd
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0xd
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0xd
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0xd
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0xd
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0xd
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0xd
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0xd
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0xd
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0xd
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0xd
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0xd
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0xd
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0xd
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0xd
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0xd
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0xd
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0xd
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0xd
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0xd
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0xd
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0xd
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0xd
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0xd
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0xd
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0xd
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0xd
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0xd
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0xd
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0xd
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0xd
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0xd
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0xd
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0xd
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0xd
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0xd
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0xd
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0xd
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0xd
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0xd
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0xd
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0xd
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0xd
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0xd
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x310f
	.string	"tree_common"
	.byte	0x10
	.byte	0x9
	.byte	0x8e
	.uleb128 0x6
	.string	"chain"
	.byte	0x9
	.byte	0x8f
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x9
	.byte	0x90
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x9
	.byte	0x92
	.long	0xc02
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x9
	.byte	0x94
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x9
	.byte	0x95
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x9
	.byte	0x96
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x9
	.byte	0x97
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x9
	.byte	0x98
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x9
	.byte	0x99
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x9
	.byte	0x9a
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_0"
	.byte	0x9
	.byte	0x9b
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x9
	.byte	0x9d
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x9
	.byte	0x9e
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x9
	.byte	0x9f
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x9
	.byte	0xa0
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x9
	.byte	0xa1
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x9
	.byte	0xa2
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x9
	.byte	0xa3
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x9
	.byte	0xa4
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x9
	.byte	0xa6
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x9
	.byte	0xa7
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x9
	.byte	0xa8
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x9
	.byte	0xa9
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x9
	.byte	0xaa
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x9
	.byte	0xab
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x9
	.byte	0xac
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_1"
	.byte	0x9
	.byte	0xad
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x9
	.byte	0xaf
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x9
	.byte	0xb0
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x9
	.byte	0xb1
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x9
	.byte	0xb2
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x9
	.byte	0xb3
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xe
	.long	0x314b
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x9
	.value	0x2f6
	.uleb128 0xf
	.string	"low"
	.byte	0x9
	.value	0x2f7
	.long	0x5dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"high"
	.byte	0x9
	.value	0x2f8
	.long	0x5cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xe
	.long	0x3193
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x9
	.value	0x2ef
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x2f0
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x9
	.value	0x2f1
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"int_cst"
	.byte	0x9
	.value	0x2f9
	.long	0x310f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xe
	.long	0x31e1
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x9
	.value	0x30b
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x30c
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x9
	.value	0x30d
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real_cst_ptr"
	.byte	0x9
	.value	0x30e
	.long	0x31ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x31e1
	.uleb128 0xe
	.long	0x325b
	.string	"tree_string"
	.byte	0x20
	.byte	0x9
	.value	0x31f
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x320
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x9
	.value	0x321
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"length"
	.byte	0x9
	.value	0x322
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"pointer"
	.byte	0x9
	.value	0x323
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"st"
	.byte	0x9
	.value	0x325
	.long	0x325b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1574
	.uleb128 0xe
	.long	0x32b6
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x9
	.value	0x32e
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x32f
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x9
	.value	0x330
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"real"
	.byte	0x9
	.value	0x331
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"imag"
	.byte	0x9
	.value	0x332
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xe
	.long	0x32fe
	.string	"tree_vector"
	.byte	0x18
	.byte	0x9
	.value	0x340
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x341
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"rtl"
	.byte	0x9
	.value	0x342
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"elements"
	.byte	0x9
	.value	0x343
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x3348
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x3
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x3
	.byte	0xa3
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x3
	.byte	0xa4
	.long	0x3348
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x3
	.byte	0xa5
	.long	0x8c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x32fe
	.uleb128 0xe
	.long	0x347b
	.string	"obstack"
	.byte	0x2c
	.byte	0x2
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x3
	.byte	0xaa
	.long	0x615
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x3
	.byte	0xab
	.long	0x3348
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x3
	.byte	0xac
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x3
	.byte	0xad
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x3
	.byte	0xae
	.long	0x634
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x3
	.byte	0xaf
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x3
	.byte	0xb0
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x3
	.byte	0xb5
	.long	0x3490
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x3
	.byte	0xb6
	.long	0x34a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x3
	.byte	0xb7
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x3
	.byte	0xbd
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x3
	.byte	0xbe
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x3
	.byte	0xc2
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1c
	.long	0x3490
	.byte	0x1
	.long	0x3348
	.uleb128 0x1d
	.long	0x632
	.uleb128 0x1d
	.long	0x615
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x347b
	.uleb128 0x1e
	.long	0x34a7
	.byte	0x1
	.uleb128 0x1d
	.long	0x632
	.uleb128 0x1d
	.long	0x3348
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3496
	.uleb128 0x15
	.long	0x34eb
	.long	.LASF11
	.byte	0xc
	.byte	0xa
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0xa
	.byte	0x1c
	.long	0x8d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0xa
	.byte	0x1d
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0xa
	.byte	0x1e
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xe
	.long	0x3522
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x9
	.value	0x35f
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x360
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"id"
	.byte	0x9
	.value	0x361
	.long	0x34ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xe
	.long	0x3567
	.string	"tree_list"
	.byte	0x18
	.byte	0x9
	.value	0x369
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x36a
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"purpose"
	.byte	0x9
	.value	0x36b
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x9
	.value	0x36c
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xe
	.long	0x35a8
	.string	"tree_vec"
	.byte	0x18
	.byte	0x9
	.value	0x377
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x378
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"length"
	.byte	0x9
	.value	0x379
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"a"
	.byte	0x9
	.value	0x37a
	.long	0x35a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x11
	.long	0x35b8
	.long	0x1e1
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x3604
	.string	"tree_exp"
	.byte	0x18
	.byte	0x9
	.value	0x3bd
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x3be
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"complexity"
	.byte	0x9
	.value	0x3bf
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"operands"
	.byte	0x9
	.value	0x3c2
	.long	0x35a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xe
	.long	0x36f4
	.string	"tree_block"
	.byte	0x2c
	.byte	0x9
	.value	0x3f3
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x3f4
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x9
	.value	0x3f6
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF13
	.byte	0x9
	.value	0x3f7
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.string	"block_num"
	.byte	0x9
	.value	0x3f8
	.long	0x52f
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"vars"
	.byte	0x9
	.value	0x3fa
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"subblocks"
	.byte	0x9
	.value	0x3fb
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"supercontext"
	.byte	0x9
	.value	0x3fc
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.long	.LASF14
	.byte	0x9
	.value	0x3fd
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"fragment_origin"
	.byte	0x9
	.value	0x3fe
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"fragment_chain"
	.byte	0x9
	.value	0x3ff
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x373b
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x9
	.value	0x562
	.uleb128 0x9
	.string	"address"
	.byte	0x9
	.value	0x563
	.long	0x2e0
	.uleb128 0x9
	.string	"pointer"
	.byte	0x9
	.value	0x564
	.long	0x634
	.uleb128 0x9
	.string	"die"
	.byte	0x9
	.value	0x565
	.long	0x3748
	.byte	0x0
	.uleb128 0x18
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x373b
	.uleb128 0xe
	.long	0x3aa0
	.string	"tree_type"
	.byte	0x74
	.byte	0x9
	.value	0x53f
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x540
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"values"
	.byte	0x9
	.value	0x541
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF15
	.byte	0x9
	.value	0x542
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1b
	.long	.LASF16
	.byte	0x9
	.value	0x543
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x9
	.value	0x544
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"uid"
	.byte	0x9
	.value	0x545
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x9
	.value	0x547
	.long	0x52f
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"mode"
	.byte	0x9
	.value	0x548
	.long	0x975
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"string_flag"
	.byte	0x9
	.value	0x54a
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_force_blk_flag"
	.byte	0x9
	.value	0x54b
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"needs_constructing_flag"
	.byte	0x9
	.value	0x54c
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"transparent_union_flag"
	.byte	0x9
	.value	0x54d
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"packed_flag"
	.byte	0x9
	.value	0x54e
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"restrict_flag"
	.byte	0x9
	.value	0x54f
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF18
	.byte	0x9
	.value	0x550
	.long	0x52f
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF4
	.byte	0x9
	.value	0x552
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x9
	.value	0x553
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x9
	.value	0x554
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x9
	.value	0x555
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x9
	.value	0x556
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x9
	.value	0x557
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x9
	.value	0x558
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF19
	.byte	0x9
	.value	0x559
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"defer_expansion"
	.byte	0x9
	.value	0x55c
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"align"
	.byte	0x9
	.value	0x55f
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"pointer_to"
	.byte	0x9
	.value	0x560
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"reference_to"
	.byte	0x9
	.value	0x561
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"symtab"
	.byte	0x9
	.value	0x566
	.long	0x36f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"name"
	.byte	0x9
	.value	0x568
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"minval"
	.byte	0x9
	.value	0x569
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"maxval"
	.byte	0x9
	.value	0x56a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"next_variant"
	.byte	0x9
	.value	0x56b
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"main_variant"
	.byte	0x9
	.value	0x56c
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"binfo"
	.byte	0x9
	.value	0x56d
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"context"
	.byte	0x9
	.value	0x56e
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"alias_set"
	.byte	0x9
	.value	0x56f
	.long	0x5cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x9
	.value	0x571
	.long	0x3aac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"ty_idx"
	.byte	0x9
	.value	0x573
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"field_ids_used"
	.byte	0x9
	.value	0x574
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"dst_id"
	.byte	0x9
	.value	0x575
	.long	0x1535
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x18
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3aa0
	.uleb128 0xe
	.long	0x3af7
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x9
	.value	0x7f0
	.uleb128 0x1f
	.string	"align"
	.byte	0x9
	.value	0x7f1
	.long	0x52f
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"off_align"
	.byte	0x9
	.value	0x7f2
	.long	0x52f
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x3b2c
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x9
	.value	0x7e7
	.uleb128 0x9
	.string	"f"
	.byte	0x9
	.value	0x7ea
	.long	0x15d3
	.uleb128 0x9
	.string	"i"
	.byte	0x9
	.value	0x7ed
	.long	0x5cb
	.uleb128 0x9
	.string	"a"
	.byte	0x9
	.value	0x7f3
	.long	0x3ab2
	.byte	0x0
	.uleb128 0x21
	.long	0x3b6b
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x9
	.value	0x808
	.uleb128 0x9
	.string	"f"
	.byte	0x9
	.value	0x809
	.long	0x452b
	.uleb128 0x9
	.string	"r"
	.byte	0x9
	.value	0x80a
	.long	0x98
	.uleb128 0x9
	.string	"t"
	.byte	0x9
	.value	0x80b
	.long	0x1e1
	.uleb128 0x9
	.string	"i"
	.byte	0x9
	.value	0x80c
	.long	0x2e0
	.byte	0x0
	.uleb128 0x22
	.long	0x452b
	.string	"function"
	.value	0x134
	.byte	0x9
	.value	0x79d
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x693b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x694f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x6955
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x695b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x6971
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0xc
	.byte	0xbe
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xc
	.byte	0xc1
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xc
	.byte	0xc4
	.long	0x452b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xc
	.byte	0xc9
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0xc
	.byte	0xce
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xc
	.byte	0xd3
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xc
	.byte	0xd7
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xc
	.byte	0xdb
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xc
	.byte	0xdf
	.long	0x54d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xc
	.byte	0xe5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xc
	.byte	0xe8
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xc
	.byte	0xec
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xc
	.byte	0xf0
	.long	0x698e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xc
	.byte	0xf3
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xc
	.byte	0xf8
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xc
	.byte	0xfe
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xf
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xc
	.value	0x102
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xf
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xc
	.value	0x107
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xf
	.string	"x_cleanup_label"
	.byte	0xc
	.value	0x10d
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xf
	.string	"x_return_label"
	.byte	0xc
	.value	0x112
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xf
	.string	"computed_goto_common_label"
	.byte	0xc
	.value	0x115
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xf
	.string	"computed_goto_common_reg"
	.byte	0xc
	.value	0x116
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xf
	.string	"x_save_expr_regs"
	.byte	0xc
	.value	0x11a
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xf
	.string	"x_stack_slot_list"
	.byte	0xc
	.value	0x11e
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xf
	.string	"x_rtl_expr_chain"
	.byte	0xc
	.value	0x121
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xf
	.string	"x_tail_recursion_label"
	.byte	0xc
	.value	0x125
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xf
	.string	"x_tail_recursion_reentry"
	.byte	0xc
	.value	0x128
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xf
	.string	"x_arg_pointer_save_area"
	.byte	0xc
	.value	0x12e
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xf
	.string	"x_clobber_return_insn"
	.byte	0xc
	.value	0x133
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xf
	.string	"x_frame_offset"
	.byte	0xc
	.value	0x138
	.long	0x5cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xf
	.string	"x_context_display"
	.byte	0xc
	.value	0x13d
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xf
	.string	"x_trampoline_list"
	.byte	0xc
	.value	0x146
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xf
	.string	"x_parm_birth_insn"
	.byte	0xc
	.value	0x149
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xf
	.string	"x_last_parm_insn"
	.byte	0xc
	.value	0x14d
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xf
	.string	"x_max_parm_reg"
	.byte	0xc
	.value	0x151
	.long	0x52f
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xf
	.string	"x_parm_reg_stack_loc"
	.byte	0xc
	.value	0x157
	.long	0x5bb8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xf
	.string	"x_temp_slots"
	.byte	0xc
	.value	0x15a
	.long	0x69a0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xf
	.string	"x_temp_slot_level"
	.byte	0xc
	.value	0x15d
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xf
	.string	"x_var_temp_slot_level"
	.byte	0xc
	.value	0x160
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xf
	.string	"x_target_temp_slot_level"
	.byte	0xc
	.value	0x166
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xf
	.string	"fixup_var_refs_queue"
	.byte	0xc
	.value	0x16a
	.long	0x663c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xf
	.string	"inlinable"
	.byte	0xc
	.value	0x16d
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xf
	.string	"no_debugging_symbols"
	.byte	0xc
	.value	0x16e
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xf
	.string	"original_arg_vector"
	.byte	0xc
	.value	0x16f
	.long	0x199
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xf
	.string	"original_decl_initial"
	.byte	0xc
	.value	0x170
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xf
	.string	"inl_last_parm_insn"
	.byte	0xc
	.value	0x173
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xf
	.string	"inl_max_label_num"
	.byte	0xc
	.value	0x175
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xf
	.string	"funcdef_no"
	.byte	0xc
	.value	0x178
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xf
	.string	"machine"
	.byte	0xc
	.value	0x17d
	.long	0x69b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xf
	.string	"stack_alignment_needed"
	.byte	0xc
	.value	0x17f
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xf
	.string	"preferred_stack_boundary"
	.byte	0xc
	.value	0x181
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xf
	.string	"language"
	.byte	0xc
	.value	0x184
	.long	0x69d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xf
	.string	"epilogue_delay_list"
	.byte	0xc
	.value	0x18a
	.long	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0xc
	.value	0x190
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0xc
	.value	0x194
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0xc
	.value	0x197
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0xc
	.value	0x19a
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0xc
	.value	0x19d
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0xc
	.value	0x1a0
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0xc
	.value	0x1a4
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0xc
	.value	0x1a7
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0xc
	.value	0x1ab
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0xc
	.value	0x1af
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0xc
	.value	0x1b2
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0xc
	.value	0x1b5
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0xc
	.value	0x1ba
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0xc
	.value	0x1c1
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0xc
	.value	0x1c5
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0xc
	.value	0x1c8
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0xc
	.value	0x1cb
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0xc
	.value	0x1cf
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0xc
	.value	0x1d2
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0xc
	.value	0x1d8
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xc
	.value	0x1e1
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0xc
	.value	0x1e4
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0xc
	.value	0x1e7
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0xc
	.value	0x1ea
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0xc
	.value	0x1ed
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.long	.LASF21
	.byte	0xc
	.value	0x1fa
	.long	0x68c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xf
	.string	"max_jumptable_ents"
	.byte	0xc
	.value	0x1fe
	.long	0x2e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3b6b
	.uleb128 0x23
	.long	0x4569
	.byte	0x4
	.byte	0x9
	.value	0x81e
	.uleb128 0x9
	.string	"st"
	.byte	0x9
	.value	0x81f
	.long	0x325b
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x9
	.value	0x820
	.long	0x1524
	.uleb128 0x9
	.string	"field_id"
	.byte	0x9
	.value	0x821
	.long	0x52f
	.byte	0x0
	.uleb128 0x23
	.long	0x457f
	.byte	0x4
	.byte	0x9
	.value	0x823
	.uleb128 0x9
	.string	"st2"
	.byte	0x9
	.value	0x824
	.long	0x325b
	.byte	0x0
	.uleb128 0xe
	.long	0x4cbb
	.string	"tree_decl"
	.byte	0x94
	.byte	0x9
	.value	0x7a0
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x7a1
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"locus"
	.byte	0x9
	.value	0x7a2
	.long	0xbf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"uid"
	.byte	0x9
	.value	0x7a3
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1b
	.long	.LASF15
	.byte	0x9
	.value	0x7a4
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x9
	.value	0x7a5
	.long	0x975
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"external_flag"
	.byte	0x9
	.value	0x7a7
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"nonlocal_flag"
	.byte	0x9
	.value	0x7a8
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"regdecl_flag"
	.byte	0x9
	.value	0x7a9
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"inline_flag"
	.byte	0x9
	.value	0x7aa
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"bit_field_flag"
	.byte	0x9
	.value	0x7ab
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"virtual_flag"
	.byte	0x9
	.value	0x7ac
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"ignored_flag"
	.byte	0x9
	.value	0x7ad
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF13
	.byte	0x9
	.value	0x7ae
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sbuf_flag"
	.byte	0x9
	.value	0x7b2
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sdram_flag"
	.byte	0x9
	.value	0x7b3
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v1buf_flag"
	.byte	0x9
	.value	0x7b4
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v2buf_flag"
	.byte	0x9
	.value	0x7b5
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v4buf_flag"
	.byte	0x9
	.value	0x7b6
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"in_system_header_flag"
	.byte	0x9
	.value	0x7ba
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"common_flag"
	.byte	0x9
	.value	0x7bb
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"defer_output"
	.byte	0x9
	.value	0x7bc
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"transparent_union"
	.byte	0x9
	.value	0x7bd
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_ctor_flag"
	.byte	0x9
	.value	0x7be
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_dtor_flag"
	.byte	0x9
	.value	0x7bf
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"artificial_flag"
	.byte	0x9
	.value	0x7c0
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"weak_flag"
	.byte	0x9
	.value	0x7c1
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"non_addr_const_p"
	.byte	0x9
	.value	0x7c3
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"no_instrument_function_entry_exit"
	.byte	0x9
	.value	0x7c4
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"comdat_flag"
	.byte	0x9
	.value	0x7c5
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"malloc_flag"
	.byte	0x9
	.value	0x7c6
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_limit_stack"
	.byte	0x9
	.value	0x7c7
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF3
	.byte	0x9
	.value	0x7c8
	.long	0x1583
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"pure_flag"
	.byte	0x9
	.value	0x7c9
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF18
	.byte	0x9
	.value	0x7cb
	.long	0x52f
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"non_addressable"
	.byte	0x9
	.value	0x7cc
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF19
	.byte	0x9
	.value	0x7cd
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"uninlinable"
	.byte	0x9
	.value	0x7ce
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"thread_local_flag"
	.byte	0x9
	.value	0x7cf
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"inlined_function_flag"
	.byte	0x9
	.value	0x7d0
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"noinline_attrib"
	.byte	0x9
	.value	0x7d2
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF4
	.byte	0x9
	.value	0x7d5
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x9
	.value	0x7d6
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x9
	.value	0x7d7
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x9
	.value	0x7d8
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x9
	.value	0x7d9
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x9
	.value	0x7da
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x9
	.value	0x7db
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"lang_flag_7"
	.byte	0x9
	.value	0x7dc
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"syscall_linkage_flag"
	.byte	0x9
	.value	0x7df
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"widen_retval_flag"
	.byte	0x9
	.value	0x7e0
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"promote_static"
	.byte	0x9
	.value	0x7e3
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"always_inline_attrib"
	.byte	0x9
	.value	0x7e4
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"u1"
	.byte	0x9
	.value	0x7f4
	.long	0x3af7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1b
	.long	.LASF16
	.byte	0x9
	.value	0x7f6
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"name"
	.byte	0x9
	.value	0x7f7
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"context"
	.byte	0x9
	.value	0x7f8
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"arguments"
	.byte	0x9
	.value	0x7f9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"result"
	.byte	0x9
	.value	0x7fa
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"initial"
	.byte	0x9
	.value	0x7fb
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1b
	.long	.LASF14
	.byte	0x9
	.value	0x7fc
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"assembler_name"
	.byte	0x9
	.value	0x7fd
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.string	"section_name"
	.byte	0x9
	.value	0x7fe
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x9
	.value	0x7ff
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"rtl"
	.byte	0x9
	.value	0x800
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"live_range_rtl"
	.byte	0x9
	.value	0x801
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"u2"
	.byte	0x9
	.value	0x80d
	.long	0x3b2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"saved_tree"
	.byte	0x9
	.value	0x810
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"inlined_fns"
	.byte	0x9
	.value	0x814
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"vindex"
	.byte	0x9
	.value	0x816
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"pointer_alias_set"
	.byte	0x9
	.value	0x817
	.long	0x5cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1b
	.long	.LASF20
	.byte	0x9
	.value	0x819
	.long	0x4cc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x9
	.value	0x81b
	.long	0x52f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x1f
	.string	"label_defined"
	.byte	0x9
	.value	0x81c
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xf
	.string	"sgi_u1"
	.byte	0x9
	.value	0x822
	.long	0x4531
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xf
	.string	"sgi_u2"
	.byte	0x9
	.value	0x825
	.long	0x4569
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xf
	.string	"decl_dst_id"
	.byte	0x9
	.value	0x826
	.long	0x1535
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xf
	.string	"sl_model_name"
	.byte	0x9
	.value	0x82a
	.long	0x1e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x18
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4cbb
	.uleb128 0x17
	.long	0x4f1e
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1e
	.uleb128 0xd
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0xd
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0xd
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0xd
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0xd
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0xd
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0xd
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0xd
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0xd
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0xd
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0xd
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0xd
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0xd
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0xd
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0xd
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0xd
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0xd
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0xd
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0xd
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0xd
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0xd
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0xd
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0xd
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0xd
	.string	"options_dir"
	.sleb128 23
	.uleb128 0xd
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0xd
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0xd
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0xd
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0xd
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0xd
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0xd
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0xd
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xe
	.long	0x4f6d
	.string	"tree_omp"
	.byte	0x18
	.byte	0x9
	.value	0x832
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x9
	.value	0x833
	.long	0x2e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"choice"
	.byte	0x9
	.value	0x834
	.long	0x4ccd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"omp_clause_list"
	.byte	0x9
	.value	0x835
	.long	0x632
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
	.long	0x1e1
	.uleb128 0x17
	.long	0x574b
	.string	"rtx_code"
	.byte	0x4
	.byte	0x5
	.byte	0x2f
	.uleb128 0xd
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xd
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xd
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xd
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xd
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xd
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xd
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xd
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xd
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xd
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xd
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xd
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xd
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xd
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xd
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xd
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xd
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xd
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xd
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xd
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xd
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xd
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xd
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xd
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xd
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xd
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xd
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xd
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xd
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xd
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xd
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xd
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xd
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xd
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xd
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xd
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xd
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xd
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xd
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xd
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xd
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xd
	.string	"INSN"
	.sleb128 42
	.uleb128 0xd
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xd
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xd
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xd
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xd
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xd
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xd
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xd
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xd
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xd
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xd
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xd
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xd
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xd
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xd
	.string	"SET"
	.sleb128 57
	.uleb128 0xd
	.string	"USE"
	.sleb128 58
	.uleb128 0xd
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xd
	.string	"CALL"
	.sleb128 60
	.uleb128 0xd
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xd
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xd
	.string	"RESX"
	.sleb128 63
	.uleb128 0xd
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xd
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xd
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xd
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xd
	.string	"CONST"
	.sleb128 68
	.uleb128 0xd
	.string	"PC"
	.sleb128 69
	.uleb128 0xd
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xd
	.string	"REG"
	.sleb128 71
	.uleb128 0xd
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xd
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xd
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xd
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xd
	.string	"MEM"
	.sleb128 76
	.uleb128 0xd
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xd
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xd
	.string	"CC0"
	.sleb128 79
	.uleb128 0xd
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xd
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xd
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xd
	.string	"COND"
	.sleb128 83
	.uleb128 0xd
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xd
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xd
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xd
	.string	"NEG"
	.sleb128 87
	.uleb128 0xd
	.string	"MULT"
	.sleb128 88
	.uleb128 0xd
	.string	"DIV"
	.sleb128 89
	.uleb128 0xd
	.string	"MOD"
	.sleb128 90
	.uleb128 0xd
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xd
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xd
	.string	"AND"
	.sleb128 93
	.uleb128 0xd
	.string	"IOR"
	.sleb128 94
	.uleb128 0xd
	.string	"XOR"
	.sleb128 95
	.uleb128 0xd
	.string	"NOT"
	.sleb128 96
	.uleb128 0xd
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xd
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xd
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xd
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xd
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xd
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xd
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xd
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xd
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xd
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xd
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xd
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xd
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xd
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xd
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xd
	.string	"NE"
	.sleb128 112
	.uleb128 0xd
	.string	"EQ"
	.sleb128 113
	.uleb128 0xd
	.string	"GE"
	.sleb128 114
	.uleb128 0xd
	.string	"GT"
	.sleb128 115
	.uleb128 0xd
	.string	"LE"
	.sleb128 116
	.uleb128 0xd
	.string	"LT"
	.sleb128 117
	.uleb128 0xd
	.string	"GEU"
	.sleb128 118
	.uleb128 0xd
	.string	"GTU"
	.sleb128 119
	.uleb128 0xd
	.string	"LEU"
	.sleb128 120
	.uleb128 0xd
	.string	"LTU"
	.sleb128 121
	.uleb128 0xd
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xd
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xd
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xd
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xd
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xd
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xd
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xd
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xd
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xd
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xd
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xd
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xd
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xd
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xd
	.string	"FIX"
	.sleb128 136
	.uleb128 0xd
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xd
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xd
	.string	"ABS"
	.sleb128 139
	.uleb128 0xd
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xd
	.string	"FFS"
	.sleb128 141
	.uleb128 0xd
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xd
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xd
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xd
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xd
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xd
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xd
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xd
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xd
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xd
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xd
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xd
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xd
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xd
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xd
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xd
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xd
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xd
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xd
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xd
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xd
	.string	"PHI"
	.sleb128 162
	.uleb128 0xd
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x24
	.long	0x5825
	.byte	0x4
	.byte	0x5
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x5
	.byte	0x4f
	.long	0x52f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x5
	.byte	0x51
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x5
	.byte	0x52
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x5
	.byte	0x54
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x5
	.byte	0x56
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x5
	.byte	0x58
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x5
	.byte	0x5b
	.long	0x52f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x5
	.byte	0x5d
	.long	0x52f
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x5
	.byte	0x5e
	.long	0x574b
	.uleb128 0x15
	.long	0x589b
	.long	.LASF22
	.byte	0x18
	.byte	0x5
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x5
	.byte	0x69
	.long	0x5cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x5
	.byte	0x6a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x5
	.byte	0x6b
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x25
	.long	.LASF15
	.byte	0x5
	.byte	0x6c
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x5
	.byte	0x6d
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF22
	.byte	0x5
	.byte	0x6e
	.long	0x5840
	.uleb128 0x7
	.long	0x5978
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x5
	.byte	0x73
	.uleb128 0x27
	.string	"rtwint"
	.byte	0x5
	.byte	0x74
	.long	0x5cb
	.uleb128 0x27
	.string	"rtint"
	.byte	0x5
	.byte	0x75
	.long	0x2e0
	.uleb128 0x27
	.string	"rtuint"
	.byte	0x5
	.byte	0x76
	.long	0x52f
	.uleb128 0x27
	.string	"rtstr"
	.byte	0x5
	.byte	0x77
	.long	0x2cd
	.uleb128 0x27
	.string	"rtx"
	.byte	0x5
	.byte	0x78
	.long	0x98
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x5
	.byte	0x79
	.long	0x199
	.uleb128 0x27
	.string	"rttype"
	.byte	0x5
	.byte	0x7a
	.long	0x975
	.uleb128 0x27
	.string	"rt_addr_diff_vec_flags"
	.byte	0x5
	.byte	0x7b
	.long	0x5825
	.uleb128 0x27
	.string	"rt_cselib"
	.byte	0x5
	.byte	0x7c
	.long	0x598c
	.uleb128 0x27
	.string	"rtbit"
	.byte	0x5
	.byte	0x7d
	.long	0x59f4
	.uleb128 0x27
	.string	"rttree"
	.byte	0x5
	.byte	0x7e
	.long	0x1e1
	.uleb128 0x27
	.string	"bb"
	.byte	0x5
	.byte	0x7f
	.long	0x5b7d
	.uleb128 0x27
	.string	"rtmem"
	.byte	0x5
	.byte	0x80
	.long	0x5b83
	.byte	0x0
	.uleb128 0x18
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5978
	.uleb128 0x4
	.long	0x59f4
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x5
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x8
	.byte	0x3d
	.long	0x5c54
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x8
	.byte	0x3e
	.long	0x5c54
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x8
	.byte	0x3f
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x8
	.byte	0x40
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5992
	.uleb128 0x4
	.long	0x5b7d
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x5
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x4
	.byte	0xb5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x4
	.byte	0xb5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x4
	.byte	0xb8
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x4
	.byte	0xb9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x4
	.byte	0xbc
	.long	0x633f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x4
	.byte	0xbc
	.long	0x633f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x4
	.byte	0xc1
	.long	0x6271
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x4
	.byte	0xc5
	.long	0x6271
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x4
	.byte	0xcb
	.long	0x6271
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x4
	.byte	0xcd
	.long	0x6271
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x4
	.byte	0xd0
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x4
	.byte	0xd3
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x4
	.byte	0xd6
	.long	0x5b7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x4
	.byte	0xd6
	.long	0x5b7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x4
	.byte	0xd9
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x4
	.byte	0xdc
	.long	0x65ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x4
	.byte	0xdf
	.long	0x627f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x4
	.byte	0xe2
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x25
	.long	.LASF23
	.byte	0x4
	.byte	0xe5
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59fa
	.uleb128 0x3
	.byte	0x4
	.long	0x589b
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x5
	.byte	0x82
	.long	0x58a6
	.uleb128 0x11
	.long	0x5ba8
	.long	0x5b89
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x5bb8
	.long	0x98
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x98
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x8
	.byte	0x1d
	.long	0x59a
	.uleb128 0x4
	.long	0x5c28
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.uleb128 0x25
	.long	.LASF24
	.byte	0x8
	.byte	0x35
	.long	0x5c28
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x8
	.byte	0x36
	.long	0x5c28
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x8
	.byte	0x37
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x8
	.byte	0x38
	.long	0x5c2e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5bd1
	.uleb128 0x11
	.long	0x5c3e
	.long	0x5bbe
	.uleb128 0x12
	.long	0x546
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x8
	.byte	0x39
	.long	0x5bd1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c3e
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x8
	.byte	0x43
	.long	0x59f4
	.uleb128 0x4
	.long	0x5cc1
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xf
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xf
	.byte	0x21
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x25
	.long	.LASF15
	.byte	0xf
	.byte	0x22
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xf
	.byte	0x23
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xf
	.byte	0x24
	.long	0x5cc1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x11
	.long	0x5cd1
	.long	0x5dc
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xf
	.byte	0x25
	.long	0x5ce0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c68
	.uleb128 0x4
	.long	0x5d1c
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x13
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x13
	.byte	0x32
	.long	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x13
	.byte	0x36
	.long	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x5eb7
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x13
	.byte	0x3c
	.uleb128 0xd
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0xd
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0xd
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0xd
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0xd
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0xd
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0xd
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0xd
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0xd
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0xd
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0xd
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0xd
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0xd
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0xd
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0xd
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0xd
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0xd
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0xd
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0xd
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0xd
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0xd
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x7
	.long	0x5fb3
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x13
	.byte	0x55
	.uleb128 0x27
	.string	"c"
	.byte	0x13
	.byte	0x56
	.long	0x93f
	.uleb128 0x27
	.string	"uc"
	.byte	0x13
	.byte	0x58
	.long	0x5fb3
	.uleb128 0x27
	.string	"s"
	.byte	0x13
	.byte	0x5a
	.long	0x5fc3
	.uleb128 0x27
	.string	"us"
	.byte	0x13
	.byte	0x5c
	.long	0x5fd3
	.uleb128 0x27
	.string	"i"
	.byte	0x13
	.byte	0x5e
	.long	0x5fe3
	.uleb128 0x27
	.string	"u"
	.byte	0x13
	.byte	0x60
	.long	0x5ff3
	.uleb128 0x27
	.string	"l"
	.byte	0x13
	.byte	0x62
	.long	0x6003
	.uleb128 0x27
	.string	"ul"
	.byte	0x13
	.byte	0x64
	.long	0x6013
	.uleb128 0x27
	.string	"hint"
	.byte	0x13
	.byte	0x66
	.long	0x6023
	.uleb128 0x27
	.string	"uhint"
	.byte	0x13
	.byte	0x68
	.long	0x5cc1
	.uleb128 0x27
	.string	"generic"
	.byte	0x13
	.byte	0x6a
	.long	0x6033
	.uleb128 0x27
	.string	"cptr"
	.byte	0x13
	.byte	0x6c
	.long	0x6043
	.uleb128 0x27
	.string	"rtx"
	.byte	0x13
	.byte	0x6e
	.long	0x6053
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x13
	.byte	0x70
	.long	0x6063
	.uleb128 0x27
	.string	"tree"
	.byte	0x13
	.byte	0x72
	.long	0x6073
	.uleb128 0x27
	.string	"bitmap"
	.byte	0x13
	.byte	0x74
	.long	0x6083
	.uleb128 0x27
	.string	"reg"
	.byte	0x13
	.byte	0x76
	.long	0x6093
	.uleb128 0x27
	.string	"const_equiv"
	.byte	0x13
	.byte	0x78
	.long	0x618f
	.uleb128 0x27
	.string	"bb"
	.byte	0x13
	.byte	0x7a
	.long	0x619f
	.uleb128 0x27
	.string	"te"
	.byte	0x13
	.byte	0x7c
	.long	0x61af
	.byte	0x0
	.uleb128 0x11
	.long	0x5fc3
	.long	0x573
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x5fd3
	.long	0x5be
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x5fe3
	.long	0x584
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x5ff3
	.long	0x2e0
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6003
	.long	0x52f
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6013
	.long	0x615
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6023
	.long	0x59a
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6033
	.long	0x5cb
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6043
	.long	0x632
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6053
	.long	0x634
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6063
	.long	0xa3
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6073
	.long	0x1a6
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6083
	.long	0x1ed
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x6093
	.long	0x59f4
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x60a3
	.long	0x6189
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x6189
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x13
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x14
	.byte	0x31
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x14
	.byte	0x32
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x14
	.byte	0x33
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x14
	.byte	0x36
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x14
	.byte	0x39
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x14
	.byte	0x3a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x14
	.byte	0x3b
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x14
	.byte	0x3c
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x14
	.byte	0x3d
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x25
	.long	.LASF25
	.byte	0x14
	.byte	0x3e
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x14
	.byte	0x3f
	.long	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x60a3
	.uleb128 0x11
	.long	0x619f
	.long	0x5ce6
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x61af
	.long	0x5b7d
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.long	0x61bf
	.long	0x61ca
	.uleb128 0x12
	.long	0x546
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61bf
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x13
	.byte	0x7e
	.long	0x5eb7
	.uleb128 0x4
	.long	0x6258
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x13
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x13
	.byte	0x82
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x13
	.byte	0x83
	.long	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x13
	.byte	0x85
	.long	0x5d1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x13
	.byte	0x86
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x13
	.byte	0x87
	.long	0x61d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x13
	.byte	0x8a
	.long	0x626b
	.uleb128 0x3
	.byte	0x4
	.long	0x61e3
	.uleb128 0x2
	.string	"regset"
	.byte	0x4
	.byte	0x22
	.long	0x5c5a
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x4
	.byte	0x75
	.long	0x5cb
	.uleb128 0x4
	.long	0x6339
	.string	"edge_def"
	.byte	0x28
	.byte	0x4
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x4
	.byte	0x7a
	.long	0x6339
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x4
	.byte	0x7a
	.long	0x6339
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x4
	.byte	0x7d
	.long	0x5b7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x4
	.byte	0x7d
	.long	0x5b7d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x4
	.byte	0x80
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x4
	.byte	0x83
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x25
	.long	.LASF23
	.byte	0x4
	.byte	0x85
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x4
	.byte	0x86
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x4
	.byte	0x87
	.long	0x627f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6290
	.uleb128 0x2
	.string	"edge"
	.byte	0x4
	.byte	0x89
	.long	0x6339
	.uleb128 0x4
	.long	0x65ba
	.string	"loop"
	.byte	0x80
	.byte	0x4
	.byte	0xdc
	.uleb128 0xf
	.string	"num"
	.byte	0x4
	.value	0x176
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"header"
	.byte	0x4
	.value	0x179
	.long	0x65c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"latch"
	.byte	0x4
	.value	0x17c
	.long	0x65c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"pre_header"
	.byte	0x4
	.value	0x17f
	.long	0x65c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"pre_header_edges"
	.byte	0x4
	.value	0x184
	.long	0x65cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"num_pre_header_edges"
	.byte	0x4
	.value	0x187
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"first"
	.byte	0x4
	.value	0x18b
	.long	0x65c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"last"
	.byte	0x4
	.value	0x18f
	.long	0x65c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.string	"nodes"
	.byte	0x4
	.value	0x192
	.long	0x5cd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.string	"num_nodes"
	.byte	0x4
	.value	0x195
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.string	"entry_edges"
	.byte	0x4
	.value	0x198
	.long	0x65cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.string	"num_entries"
	.byte	0x4
	.value	0x19b
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.string	"exit_edges"
	.byte	0x4
	.value	0x19e
	.long	0x65cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.string	"num_exits"
	.byte	0x4
	.value	0x1a1
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.string	"exits_doms"
	.byte	0x4
	.value	0x1a4
	.long	0x5cd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.string	"depth"
	.byte	0x4
	.value	0x1a7
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.string	"pred"
	.byte	0x4
	.value	0x1aa
	.long	0x65d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.string	"level"
	.byte	0x4
	.value	0x1ae
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.string	"outer"
	.byte	0x4
	.value	0x1b1
	.long	0x65ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.string	"inner"
	.byte	0x4
	.value	0x1b4
	.long	0x65ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x4
	.value	0x1b7
	.long	0x65ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.string	"invalid"
	.byte	0x4
	.value	0x1ba
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.string	"aux"
	.byte	0x4
	.value	0x1bd
	.long	0x632
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.string	"vtop"
	.byte	0x4
	.value	0x1c3
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.string	"cont"
	.byte	0x4
	.value	0x1c7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.string	"start"
	.byte	0x4
	.value	0x1ca
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.string	"end"
	.byte	0x4
	.value	0x1cd
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.string	"top"
	.byte	0x4
	.value	0x1d1
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xf
	.string	"scan_start"
	.byte	0x4
	.value	0x1d4
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.string	"sink"
	.byte	0x4
	.value	0x1d7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.string	"exit_labels"
	.byte	0x4
	.value	0x1e2
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xf
	.string	"exit_count"
	.byte	0x4
	.value	0x1e6
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x634b
	.uleb128 0x26
	.long	.LASF25
	.byte	0x4
	.byte	0xe6
	.long	0x5b7d
	.uleb128 0x3
	.byte	0x4
	.long	0x633f
	.uleb128 0x3
	.byte	0x4
	.long	0x65ba
	.uleb128 0x4
	.long	0x663c
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xc
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xc
	.byte	0x18
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xc
	.byte	0x19
	.long	0x975
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xc
	.byte	0x1a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x25
	.long	.LASF24
	.byte	0xc
	.byte	0x1b
	.long	0x663c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x65d7
	.uleb128 0x15
	.long	0x668a
	.long	.LASF26
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xc
	.byte	0x26
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xc
	.byte	0x27
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x25
	.long	.LASF27
	.byte	0xc
	.byte	0x28
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x25
	.long	.LASF24
	.byte	0xc
	.byte	0x29
	.long	0x668a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6642
	.uleb128 0x3
	.byte	0x4
	.long	0x334e
	.uleb128 0x4
	.long	0x67e5
	.string	"emit_status"
	.byte	0x34
	.byte	0xc
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xc
	.byte	0x3a
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xc
	.byte	0x3d
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xc
	.byte	0x44
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xc
	.byte	0x45
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x25
	.long	.LASF27
	.byte	0xc
	.byte	0x4a
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x25
	.long	.LASF26
	.byte	0xc
	.byte	0x50
	.long	0x668a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xc
	.byte	0x54
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xc
	.byte	0x58
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xc
	.byte	0x59
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xc
	.byte	0x5f
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xc
	.byte	0x65
	.long	0x8dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xc
	.byte	0x69
	.long	0x4f76
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xc
	.byte	0x70
	.long	0x5bb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x68c5
	.string	"expr_status"
	.byte	0x1c
	.byte	0xc
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xc
	.byte	0x80
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xc
	.byte	0x91
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xc
	.byte	0x97
	.long	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xc
	.byte	0x9c
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xc
	.byte	0x9f
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xc
	.byte	0xa2
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xc
	.byte	0xa5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x28
	.long	0x692f
	.long	.LASF21
	.byte	0x4
	.byte	0xc
	.value	0x1f1
	.uleb128 0xd
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xd
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xd
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x18
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x692f
	.uleb128 0x18
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6941
	.uleb128 0x3
	.byte	0x4
	.long	0x67e5
	.uleb128 0x3
	.byte	0x4
	.long	0x6696
	.uleb128 0x18
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6961
	.uleb128 0x18
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6977
	.uleb128 0x18
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6994
	.uleb128 0x18
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x69a6
	.uleb128 0x18
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x69bf
	.uleb128 0x29
	.long	0x6b0e
	.byte	0x1
	.string	"init_flow"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2a
	.long	0x6a64
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.byte	0x9a
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	0x6a3d
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.byte	0x9a
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.byte	0x9a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.byte	0x9a
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.byte	0x9a
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x6a90
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.byte	0x9f
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"__obj"
	.byte	0x1
	.byte	0x9f
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2a
	.long	0x6afc
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.byte	0xa0
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	0x6ad5
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.byte	0xa0
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.byte	0xa0
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.byte	0xa0
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.byte	0xa0
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.byte	0x91
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	initialized.12231
	.byte	0x0
	.uleb128 0x2e
	.long	0x6b39
	.string	"free_edge"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2f
	.string	"e"
	.byte	0x1
	.byte	0xa9
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x29
	.long	0x6bd2
	.byte	0x1
	.string	"clear_edges"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.byte	0xb6
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.byte	0xb7
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	0x6ba5
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.byte	0xbb
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.byte	0xbf
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x6bc1
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.byte	0xcc
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x7891
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12356
	.byte	0x0
	.uleb128 0x31
	.long	0x6c6d
	.byte	0x1
	.string	"alloc_block"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	0x65c0
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.byte	0xde
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2b
	.string	"__h"
	.byte	0x1
	.byte	0xe8
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	0x6c45
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2b
	.string	"__o"
	.byte	0x1
	.byte	0xe8
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.byte	0xe8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.byte	0xe8
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF12
	.byte	0x1
	.byte	0xe8
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x6caa
	.byte	0x1
	.string	"link_block"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.byte	0xf1
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"after"
	.byte	0x1
	.byte	0xf1
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x29
	.long	0x6cd9
	.byte	0x1
	.string	"unlink_block"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.byte	0xfc
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.long	0x6d2a
	.byte	0x1
	.string	"compact_blocks"
	.byte	0x1
	.value	0x105
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x106
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x107
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.long	.LASF31
	.long	0x788c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12439
	.byte	0x0
	.uleb128 0x32
	.long	0x6d5c
	.byte	0x1
	.string	"expunge_block"
	.byte	0x1
	.value	0x11d
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x34
	.string	"b"
	.byte	0x1
	.value	0x11c
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x6e32
	.byte	0x1
	.string	"unchecked_make_edge"
	.byte	0x1
	.value	0x131
	.byte	0x1
	.long	0x633f
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x12f
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"dst"
	.byte	0x1
	.value	0x12f
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF23
	.byte	0x1
	.value	0x130
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x132
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.string	"__h"
	.byte	0x1
	.value	0x13b
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x6e08
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x13b
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF28
	.byte	0x1
	.value	0x13b
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x37
	.long	.LASF29
	.byte	0x1
	.value	0x13b
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF12
	.byte	0x1
	.value	0x13b
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x6ec8
	.byte	0x1
	.string	"cached_make_edge"
	.byte	0x1
	.value	0x153
	.byte	0x1
	.long	0x633f
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x34
	.string	"edge_cache"
	.byte	0x1
	.value	0x150
	.long	0x6ec8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x151
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"dst"
	.byte	0x1
	.value	0x151
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF23
	.byte	0x1
	.value	0x152
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"use_edge_cache"
	.byte	0x1
	.value	0x154
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x155
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5cd1
	.uleb128 0x35
	.long	0x6f21
	.byte	0x1
	.string	"make_edge"
	.byte	0x1
	.value	0x182
	.byte	0x1
	.long	0x633f
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x180
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"dest"
	.byte	0x1
	.value	0x180
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF23
	.byte	0x1
	.value	0x181
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x35
	.long	0x6f8d
	.byte	0x1
	.string	"make_single_succ_edge"
	.byte	0x1
	.value	0x18d
	.byte	0x1
	.long	0x633f
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x34
	.string	"src"
	.byte	0x1
	.value	0x18b
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"dest"
	.byte	0x1
	.value	0x18b
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF23
	.byte	0x1
	.value	0x18c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x18e
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x32
	.long	0x7025
	.byte	0x1
	.string	"remove_edge"
	.byte	0x1
	.value	0x19a
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x199
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"last_pred"
	.byte	0x1
	.value	0x19b
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"last_succ"
	.byte	0x1
	.value	0x19c
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0x19d
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"src"
	.byte	0x1
	.value	0x19e
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"dest"
	.byte	0x1
	.value	0x19e
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.long	.LASF31
	.long	0x7877
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12617
	.byte	0x0
	.uleb128 0x32
	.long	0x7079
	.byte	0x1
	.string	"redirect_edge_succ"
	.byte	0x1
	.value	0x1bf
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x1bd
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF32
	.byte	0x1
	.value	0x1be
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"pe"
	.byte	0x1
	.value	0x1c0
	.long	0x65cb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x35
	.long	0x70d6
	.byte	0x1
	.string	"redirect_edge_succ_nodup"
	.byte	0x1
	.value	0x1d3
	.byte	0x1
	.long	0x633f
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x1d1
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF32
	.byte	0x1
	.value	0x1d2
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x1d4
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x32
	.long	0x712f
	.byte	0x1
	.string	"redirect_edge_pred"
	.byte	0x1
	.value	0x1f1
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x1ef
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"new_pred"
	.byte	0x1
	.value	0x1f0
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"pe"
	.byte	0x1
	.value	0x1f2
	.long	0x65cb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7163
	.byte	0x1
	.string	"clear_bb_flags"
	.byte	0x1
	.value	0x202
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x203
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x7254
	.byte	0x1
	.string	"dump_flow_info"
	.byte	0x1
	.value	0x20c
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x34
	.string	"file"
	.byte	0x1
	.value	0x20b
	.long	0x7254
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x20d
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"max_regno"
	.byte	0x1
	.value	0x20e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x20f
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	0x71fb
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.string	"class"
	.byte	0x1
	.value	0x216
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"altclass"
	.byte	0x1
	.value	0x216
	.long	0x2e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2a
	.long	0x7235
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x241
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"sum"
	.byte	0x1
	.value	0x242
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"lsum"
	.byte	0x1
	.value	0x243
	.long	0x627f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x33
	.string	"reg_class_names"
	.byte	0x1
	.value	0x210
	.long	0x7862
	.byte	0x5
	.byte	0x3
	.long	reg_class_names.12709
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x63a
	.uleb128 0x38
	.byte	0x1
	.string	"debug_flow_info"
	.byte	0x1
	.value	0x287
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x32
	.long	0x7334
	.byte	0x1
	.string	"dump_edge_info"
	.byte	0x1
	.value	0x290
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x34
	.string	"file"
	.byte	0x1
	.value	0x28d
	.long	0x7254
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x28e
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"do_succ"
	.byte	0x1
	.value	0x28f
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"side"
	.byte	0x1
	.value	0x291
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	0x731c
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x33
	.string	"comma"
	.byte	0x1
	.value	0x2a7
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x2a8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF23
	.byte	0x1
	.value	0x2a8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.string	"bitnames"
	.byte	0x1
	.value	0x2a5
	.long	0x784d
	.byte	0x5
	.byte	0x3
	.long	bitnames.12995
	.byte	0x0
	.uleb128 0x32
	.long	0x73fd
	.byte	0x1
	.string	"alloc_aux_for_block"
	.byte	0x1
	.value	0x2cb
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x34
	.string	"bb"
	.byte	0x1
	.value	0x2c9
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x2ca
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	0x73ec
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x33
	.string	"__h"
	.byte	0x1
	.value	0x2cf
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x73c3
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x2cf
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF28
	.byte	0x1
	.value	0x2cf
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x37
	.long	.LASF29
	.byte	0x1
	.value	0x2cf
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF12
	.byte	0x1
	.value	0x2cf
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x7838
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13050
	.byte	0x0
	.uleb128 0x32
	.long	0x74e7
	.byte	0x1
	.string	"alloc_aux_for_blocks"
	.byte	0x1
	.value	0x2d9
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x2d8
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	0x74a8
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.string	"__h"
	.byte	0x1
	.value	0x2e5
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x747f
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x2e5
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF28
	.byte	0x1
	.value	0x2e5
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x37
	.long	.LASF29
	.byte	0x1
	.value	0x2e5
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF12
	.byte	0x1
	.value	0x2e5
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x74c4
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x2e8
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	.LASF30
	.byte	0x1
	.value	0x2da
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	initialized.13104
	.uleb128 0x30
	.long	.LASF31
	.long	0x7833
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13105
	.byte	0x0
	.uleb128 0x32
	.long	0x7521
	.byte	0x1
	.string	"clear_aux_for_blocks"
	.byte	0x1
	.value	0x2f3
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x2f4
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x758a
	.byte	0x1
	.string	"free_aux_for_blocks"
	.byte	0x1
	.value	0x2ff
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2a
	.long	0x7579
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x302
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"__obj"
	.byte	0x1
	.value	0x302
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x781e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13170
	.byte	0x0
	.uleb128 0x32
	.long	0x7651
	.byte	0x1
	.string	"alloc_aux_for_edge"
	.byte	0x1
	.value	0x30f
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x34
	.string	"e"
	.byte	0x1
	.value	0x30d
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x30e
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	0x7640
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x33
	.string	"__h"
	.byte	0x1
	.value	0x313
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	0x7617
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x313
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF28
	.byte	0x1
	.value	0x313
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x37
	.long	.LASF29
	.byte	0x1
	.value	0x313
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF12
	.byte	0x1
	.value	0x313
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x7819
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13188
	.byte	0x0
	.uleb128 0x32
	.long	0x7751
	.byte	0x1
	.string	"alloc_aux_for_edges"
	.byte	0x1
	.value	0x31d
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x36
	.long	.LASF15
	.byte	0x1
	.value	0x31c
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	0x76fb
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x33
	.string	"__h"
	.byte	0x1
	.value	0x32a
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	0x76d2
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x32a
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF28
	.byte	0x1
	.value	0x32a
	.long	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2d
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x37
	.long	.LASF29
	.byte	0x1
	.value	0x32a
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.long	.LASF12
	.byte	0x1
	.value	0x32a
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x772e
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x32d
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x331
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	.LASF30
	.byte	0x1
	.value	0x31e
	.long	0x2e0
	.byte	0x5
	.byte	0x3
	.long	initialized.13242
	.uleb128 0x30
	.long	.LASF31
	.long	0x7814
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13243
	.byte	0x0
	.uleb128 0x32
	.long	0x7797
	.byte	0x1
	.string	"clear_aux_for_edges"
	.byte	0x1
	.value	0x33d
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x33
	.string	"bb"
	.byte	0x1
	.value	0x33e
	.long	0x65c0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.value	0x33f
	.long	0x633f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x32
	.long	0x77ff
	.byte	0x1
	.string	"free_aux_for_edges"
	.byte	0x1
	.value	0x34d
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2a
	.long	0x77ee
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x350
	.long	0x6690
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"__obj"
	.byte	0x1
	.value	0x350
	.long	0x632
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	.LASF31
	.long	0x780f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13318
	.byte	0x0
	.uleb128 0x11
	.long	0x780f
	.long	0x2d8
	.uleb128 0x12
	.long	0x546
	.byte	0x12
	.byte	0x0
	.uleb128 0xa
	.long	0x77ff
	.uleb128 0xa
	.long	0x965
	.uleb128 0xa
	.long	0x77ff
	.uleb128 0xa
	.long	0x965
	.uleb128 0x11
	.long	0x7833
	.long	0x2d8
	.uleb128 0x12
	.long	0x546
	.byte	0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x7823
	.uleb128 0xa
	.long	0x965
	.uleb128 0x11
	.long	0x784d
	.long	0x2cd
	.uleb128 0x12
	.long	0x546
	.byte	0x6
	.byte	0x0
	.uleb128 0xa
	.long	0x783d
	.uleb128 0x11
	.long	0x7862
	.long	0x2cd
	.uleb128 0x12
	.long	0x546
	.byte	0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x7852
	.uleb128 0x11
	.long	0x7877
	.long	0x2d8
	.uleb128 0x12
	.long	0x546
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x7867
	.uleb128 0x11
	.long	0x788c
	.long	0x2d8
	.uleb128 0x12
	.long	0x546
	.byte	0xe
	.byte	0x0
	.uleb128 0xa
	.long	0x787c
	.uleb128 0xa
	.long	0x7867
	.uleb128 0x2b
	.string	"flow_firstobj"
	.byte	0x1
	.byte	0x44
	.long	0x634
	.byte	0x5
	.byte	0x3
	.long	flow_firstobj
	.uleb128 0x2b
	.string	"first_deleted_block"
	.byte	0x1
	.byte	0x55
	.long	0x65c0
	.byte	0x5
	.byte	0x3
	.long	first_deleted_block
	.uleb128 0x33
	.string	"block_aux_obstack"
	.byte	0x1
	.value	0x2bf
	.long	0x334e
	.byte	0x5
	.byte	0x3
	.long	block_aux_obstack
	.uleb128 0x33
	.string	"first_block_aux_obj"
	.byte	0x1
	.value	0x2c0
	.long	0x632
	.byte	0x5
	.byte	0x3
	.long	first_block_aux_obj
	.uleb128 0x33
	.string	"edge_aux_obstack"
	.byte	0x1
	.value	0x2c1
	.long	0x334e
	.byte	0x5
	.byte	0x3
	.long	edge_aux_obstack
	.uleb128 0x33
	.string	"first_edge_aux_obj"
	.byte	0x1
	.value	0x2c2
	.long	0x632
	.byte	0x5
	.byte	0x3
	.long	first_edge_aux_obj
	.uleb128 0x39
	.string	"target_flags"
	.byte	0xd
	.byte	0x21
	.long	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"stderr"
	.byte	0x2
	.byte	0x90
	.long	0x939
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x798a
	.long	0x573
	.uleb128 0x12
	.long	0x546
	.byte	0x35
	.byte	0x0
	.uleb128 0x39
	.string	"mode_size"
	.byte	0x7
	.byte	0x59
	.long	0x799d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x797a
	.uleb128 0x3a
	.string	"n_basic_blocks"
	.byte	0x1
	.byte	0x48
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	n_basic_blocks
	.uleb128 0x3a
	.string	"last_basic_block"
	.byte	0x1
	.byte	0x4c
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	last_basic_block
	.uleb128 0x3a
	.string	"n_edges"
	.byte	0x1
	.byte	0x50
	.long	0x2e0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	n_edges
	.uleb128 0x3a
	.string	"basic_block_info"
	.byte	0x1
	.byte	0x59
	.long	0x6258
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	basic_block_info
	.uleb128 0x3a
	.string	"flow_obstack"
	.byte	0x1
	.byte	0x43
	.long	0x334e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flow_obstack
	.uleb128 0x11
	.long	0x7a3e
	.long	0x59fa
	.uleb128 0x12
	.long	0x546
	.byte	0x1
	.byte	0x0
	.uleb128 0x3a
	.string	"entry_exit_blocks"
	.byte	0x1
	.byte	0x5d
	.long	0x7a2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	entry_exit_blocks
	.uleb128 0x39
	.string	"reg_n_info"
	.byte	0x14
	.byte	0x43
	.long	0x6258
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x452b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"first_deleted_edge"
	.byte	0x1
	.byte	0x54
	.long	0x633f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	first_deleted_edge
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x22
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.long	0x2c5
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7aa3
	.long	0x69d9
	.string	"init_flow"
	.long	0x6b39
	.string	"clear_edges"
	.long	0x6bd2
	.string	"alloc_block"
	.long	0x6c6d
	.string	"link_block"
	.long	0x6caa
	.string	"unlink_block"
	.long	0x6cd9
	.string	"compact_blocks"
	.long	0x6d2a
	.string	"expunge_block"
	.long	0x6d5c
	.string	"unchecked_make_edge"
	.long	0x6e32
	.string	"cached_make_edge"
	.long	0x6ece
	.string	"make_edge"
	.long	0x6f21
	.string	"make_single_succ_edge"
	.long	0x6f8d
	.string	"remove_edge"
	.long	0x7025
	.string	"redirect_edge_succ"
	.long	0x7079
	.string	"redirect_edge_succ_nodup"
	.long	0x70d6
	.string	"redirect_edge_pred"
	.long	0x712f
	.string	"clear_bb_flags"
	.long	0x7163
	.string	"dump_flow_info"
	.long	0x725a
	.string	"debug_flow_info"
	.long	0x727c
	.string	"dump_edge_info"
	.long	0x7334
	.string	"alloc_aux_for_block"
	.long	0x73fd
	.string	"alloc_aux_for_blocks"
	.long	0x74e7
	.string	"clear_aux_for_blocks"
	.long	0x7521
	.string	"free_aux_for_blocks"
	.long	0x758a
	.string	"alloc_aux_for_edge"
	.long	0x7651
	.string	"alloc_aux_for_edges"
	.long	0x7751
	.string	"clear_aux_for_edges"
	.long	0x7797
	.string	"free_aux_for_edges"
	.long	0x79a2
	.string	"n_basic_blocks"
	.long	0x79bf
	.string	"last_basic_block"
	.long	0x79de
	.string	"n_edges"
	.long	0x79f4
	.string	"basic_block_info"
	.long	0x7a13
	.string	"flow_obstack"
	.long	0x7a3e
	.string	"entry_exit_blocks"
	.long	0x7a81
	.string	"first_deleted_edge"
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
.LASF21:
	.string	"function_frequency"
.LASF29:
	.string	"__o1"
.LASF22:
	.string	"mem_attrs"
.LASF25:
	.string	"basic_block"
.LASF30:
	.string	"initialized"
.LASF11:
	.string	"ht_identifier"
.LASF12:
	.string	"value"
.LASF23:
	.string	"flags"
.LASF15:
	.string	"size"
.LASF14:
	.string	"abstract_origin"
.LASF20:
	.string	"lang_specific"
.LASF16:
	.string	"size_unit"
.LASF32:
	.string	"new_succ"
.LASF19:
	.string	"user_align"
.LASF28:
	.string	"__len"
.LASF26:
	.string	"sequence_stack"
.LASF31:
	.string	"__FUNCTION__"
.LASF2:
	.string	"_IO_FILE"
.LASF5:
	.string	"lang_flag_1"
.LASF6:
	.string	"lang_flag_2"
.LASF9:
	.string	"lang_flag_5"
.LASF17:
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
.LASF18:
	.string	"pointer_depth"
.LASF27:
	.string	"sequence_rtl_expr"
.LASF13:
	.string	"abstract_flag"
.LASF1:
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
