	.file	"conflict.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	arc_hash, @function
arc_hash:
.LFB15:
	.file 1 "../../../kgccfe/gnu/conflict.c"
	.loc 1 126 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$16, %esp
.LCFI2:
	.loc 1 127 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 129 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	subl	$1, %eax
	imull	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	leal	(%edx,%eax), %eax
	.loc 1 130 0
	leave
	ret
.LFE15:
	.size	arc_hash, .-arc_hash
	.type	arc_eq, @function
arc_eq:
.LFB16:
	.loc 1 139 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$20, %esp
.LCFI5:
	.loc 1 140 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 141 0
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 143 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	.L4
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L4
	movl	$1, -20(%ebp)
	jmp	.L7
.L4:
	movl	$0, -20(%ebp)
.L7:
	movl	-20(%ebp), %eax
	.loc 1 144 0
	leave
	ret
.LFE16:
	.size	arc_eq, .-arc_eq
.globl conflict_graph_new
	.type	conflict_graph_new, @function
conflict_graph_new:
.LFB17:
	.loc 1 152 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$48, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 154 0
	movl	$56, (%esp)
	call	xmalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 155 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 159 0
	movl	$0, 12(%esp)
	leal	arc_eq@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	arc_hash@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$64, (%esp)
	call	htab_create@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 163 0
	movl	xmalloc@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %ecx
	addl	$12, %ecx
	movl	free@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	_obstack_begin@PLT
	.loc 1 166 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 169 0
	movl	8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 170 0
	movl	-12(%ebp), %eax
	.loc 1 171 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	conflict_graph_new, .-conflict_graph_new
.globl conflict_graph_delete
	.type	conflict_graph_delete, @function
conflict_graph_delete:
.LFB18:
	.loc 1 178 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$36, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB2:
	.loc 1 179 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L12
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L12
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L15
.L12:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L15:
.LBE2:
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	htab_delete@PLT
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 182 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 183 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	conflict_graph_delete, .-conflict_graph_delete
	.section	.rodata
	.type	__FUNCTION__.9075, @object
	.size	__FUNCTION__.9075, 19
__FUNCTION__.9075:
	.string	"conflict_graph_add"
	.align 4
.LC0:
	.string	"../../../kgccfe/gnu/conflict.c"
	.text
.globl conflict_graph_add
	.type	conflict_graph_add, @function
conflict_graph_add:
.LFB19:
	.loc 1 194 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%esi
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$96, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 195 0
	movl	12(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	16(%ebp), %ecx
	movl	%ecx, -80(%ebp)
	movl	-84(%ebp), %esi
	cmpl	%esi, -80(%ebp)
	jle	.L18
	movl	-84(%ebp), %eax
	movl	%eax, -80(%ebp)
.L18:
	movl	-80(%ebp), %ecx
	movl	%ecx, -44(%ebp)
	.loc 1 196 0
	movl	12(%ebp), %esi
	movl	%esi, -92(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-92(%ebp), %ecx
	cmpl	%ecx, -88(%ebp)
	jge	.L19
	movl	-92(%ebp), %esi
	movl	%esi, -88(%ebp)
.L19:
	movl	-88(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 202 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L20
	.loc 1 203 0
	leal	__FUNCTION__.9075@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$203, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L20:
	.loc 1 205 0
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 206 0
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 207 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	$1, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot@PLT
	movl	%eax, -32(%ebp)
	.loc 1 210 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L22
	.loc 1 211 0
	movl	$0, -76(%ebp)
	jmp	.L24
.L22:
.LBB3:
	.loc 1 216 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -28(%ebp)
.LBB4:
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
	jge	.L25
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L25:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE4:
.LBB5:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L27
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L27:
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
	jle	.L29
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L29:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE5:
.LBE3:
	.loc 1 214 0
	movl	%eax, -36(%ebp)
	.loc 1 220 0
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 221 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 224 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 225 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 226 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 227 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 230 0
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 232 0
	movl	$1, -76(%ebp)
.L24:
	movl	-76(%ebp), %eax
	.loc 1 233 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE19:
	.size	conflict_graph_add, .-conflict_graph_add
.globl conflict_graph_conflict_p
	.type	conflict_graph_conflict_p, @function
conflict_graph_conflict_p:
.LFB20:
	.loc 1 243 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$52, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 246 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jle	.L33
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
.L33:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 247 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-36(%ebp), %eax
	cmpl	%eax, -24(%ebp)
	jge	.L34
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
.L34:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 249 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 250 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	conflict_graph_conflict_p, .-conflict_graph_conflict_p
.globl conflict_graph_enum
	.type	conflict_graph_enum, @function
conflict_graph_enum:
.LFB21:
	.loc 1 261 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	subl	$40, %esp
.LCFI26:
	.loc 1 262 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 263 0
	jmp	.L44
.L38:
	.loc 1 266 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	movl	8(%eax), %ecx
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	16(%ebp), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L43
	.loc 1 272 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jle	.L41
	.loc 1 273 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L37
.L41:
	.loc 1 275 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.L37:
.L44:
	.loc 1 263 0
	cmpl	$0, -4(%ebp)
	jne	.L38
.L43:
	.loc 1 277 0
	leave
	ret
.LFE21:
	.size	conflict_graph_enum, .-conflict_graph_enum
.globl conflict_graph_merge_regs
	.type	conflict_graph_merge_regs, @function
conflict_graph_merge_regs:
.LFB22:
	.loc 1 287 0
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
	.loc 1 288 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 290 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L54
	.loc 1 293 0
	jmp	.L55
.L49:
.LBB6:
	.loc 1 295 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 297 0
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L50
	.loc 1 298 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L50:
	.loc 1 300 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	conflict_graph_add@PLT
	.loc 1 304 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	16(%ebp), %eax
	jle	.L52
	.loc 1 305 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L48
.L52:
	.loc 1 307 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L48:
.L55:
.LBE6:
	.loc 1 293 0
	cmpl	$0, -12(%ebp)
	jne	.L49
.L54:
	.loc 1 309 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	conflict_graph_merge_regs, .-conflict_graph_merge_regs
	.section	.rodata
	.type	__FUNCTION__.9219, @object
	.size	__FUNCTION__.9219, 15
__FUNCTION__.9219:
	.string	"print_conflict"
.LC1:
	.string	" %d:"
.LC2:
	.string	" %d"
	.text
	.type	print_conflict, @function
print_conflict:
.LFB23:
	.loc 1 333 0
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
	.loc 1 334 0
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 339 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L57
	.loc 1 341 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 342 0
	movl	-12(%ebp), %eax
	movl	$1, 8(%eax)
.L57:
	.loc 1 347 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L59
	.loc 1 348 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L61
.L59:
	.loc 1 349 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L62
	.loc 1 350 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L61
.L62:
	.loc 1 352 0
	leal	__FUNCTION__.9219@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$352, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L61:
	.loc 1 355 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 358 0
	movl	$0, %eax
	.loc 1 359 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	print_conflict, .-print_conflict
	.section	.rodata
.LC3:
	.string	"Conflicts:\n"
	.text
.globl conflict_graph_print
	.type	conflict_graph_print, @function
conflict_graph_print:
.LFB24:
	.loc 1 367 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$36, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 371 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 372 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 375 0
	movl	$0, -8(%ebp)
	jmp	.L66
.L67:
	.loc 1 377 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 378 0
	movl	$0, -12(%ebp)
	.loc 1 384 0
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	print_conflict@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	conflict_graph_enum@PLT
	.loc 1 387 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L68
	.loc 1 388 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L68:
	.loc 1 375 0
	addl	$1, -8(%ebp)
.L66:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L67
	.loc 1 390 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	conflict_graph_print, .-conflict_graph_print
	.type	mark_reg, @function
mark_reg:
.LFB25:
	.loc 1 399 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$36, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 400 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 402 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L73
	.loc 1 403 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L73:
	.loc 1 406 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L77
	.loc 1 409 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L77:
	.loc 1 410 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	mark_reg, .-mark_reg
.globl conflict_graph_compute
	.type	conflict_graph_compute, @function
conflict_graph_compute:
.LFB26:
	.loc 1 445 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$148, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 446 0
	call	max_reg_num@PLT
	movl	%eax, (%esp)
	call	conflict_graph_new@PLT
	movl	%eax, -100(%ebp)
	.loc 1 448 0
	leal	-116(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 450 0
	leal	-132(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 453 0
	movl	$1, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 454 0
	movl	$1, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	.loc 1 456 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	.L79
.L80:
.LBB7:
	.loc 1 463 0
	movl	-88(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_copy@PLT
	.loc 1 464 0
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 467 0
	movl	-88(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 468 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 469 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L81
.L82:
.LBB8:
	.loc 1 476 0
	movl	-84(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L83
	.loc 1 481 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 482 0
	movl	-84(%ebp), %eax
	movl	44(%eax), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	mark_reg@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	note_stores@PLT
	.loc 1 483 0
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 486 0
	movl	$1, 12(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.LBB9:
	.loc 1 490 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	$1, -60(%ebp)
	movl	$16, -56(%ebp)
	movl	$1, -52(%ebp)
	jmp	.L85
.L86:
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L85:
	cmpl	$0, -64(%ebp)
	je	.L87
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	jb	.L86
.L87:
	cmpl	$0, -64(%ebp)
	je	.L92
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L92
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L92
.L95:
.LBB10:
	movl	-52(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L96
	jmp	.L98
.L99:
.LBB11:
	movl	-56(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	andl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L100
	movl	-44(%ebp), %eax
	notl	%eax
	andl	%eax, -48(%ebp)
	movl	-64(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-52(%ebp), %eax
	sall	$5, %eax
	addl	-56(%ebp), %eax
	movl	%eax, -76(%ebp)
.LBB12:
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$1, -36(%ebp)
	movl	$16, -32(%ebp)
	movl	$1, -28(%ebp)
	jmp	.L102
.L103:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L102:
	cmpl	$0, -40(%ebp)
	je	.L104
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jb	.L103
.L104:
	cmpl	$0, -40(%ebp)
	je	.L109
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L109
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L109
.L112:
.LBB13:
	movl	-28(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L113
	jmp	.L115
.L116:
.LBB14:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L117
	movl	-20(%ebp), %eax
	notl	%eax
	andl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	sall	$5, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -72(%ebp)
.LBB15:
	movl	-76(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-72(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L119
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	conflict_graph_add@PLT
.L119:
.LBE15:
	cmpl	$0, -24(%ebp)
	je	.L113
.L117:
.LBE14:
	addl	$1, -32(%ebp)
.L115:
	cmpl	$31, -32(%ebp)
	jbe	.L116
.L113:
	movl	$0, -32(%ebp)
.LBE13:
	addl	$1, -28(%ebp)
.L111:
	cmpl	$3, -28(%ebp)
	jbe	.L112
	movl	$0, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L109:
	cmpl	$0, -40(%ebp)
	jne	.L111
.LBE12:
	cmpl	$0, -48(%ebp)
	je	.L96
.L100:
.LBE11:
	addl	$1, -56(%ebp)
.L98:
	cmpl	$31, -56(%ebp)
	jbe	.L99
.L96:
	movl	$0, -56(%ebp)
.LBE10:
	addl	$1, -52(%ebp)
.L94:
	cmpl	$3, -52(%ebp)
	jbe	.L95
	movl	$0, -52(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L92:
	cmpl	$0, -64(%ebp)
	jne	.L94
.LBE9:
	.loc 1 510 0
	movl	-84(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L125
.L126:
	.loc 1 511 0
	movl	-68(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jne	.L127
.LBB16:
	.loc 1 513 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 515 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L127
	.loc 1 516 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L127:
.LBE16:
	.loc 1 510 0
	movl	-68(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -68(%ebp)
.L125:
	cmpl	$0, -68(%ebp)
	jne	.L126
.L83:
.LBE8:
	.loc 1 469 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
.L81:
	movl	-84(%ebp), %eax
	cmpl	-80(%ebp), %eax
	jne	.L82
.LBE7:
	.loc 1 456 0
	movl	-88(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -88(%ebp)
.L79:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -88(%ebp)
	jne	.L80
	.loc 1 522 0
	cmpl	$0, -96(%ebp)
	je	.L132
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -96(%ebp)
.L132:
	.loc 1 523 0
	cmpl	$0, -92(%ebp)
	je	.L134
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	$0, -92(%ebp)
.L134:
	.loc 1 525 0
	movl	-100(%ebp), %eax
	.loc 1 526 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	conflict_graph_compute, .-conflict_graph_compute
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
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI6-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI7
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI19-.LCFI16
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.byte	0x4
	.long	.LCFI42-.LCFI40
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
	.long	.LCFI43-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI46-.LCFI44
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
	.file 2 "../../../include/gnu/hashtab.h"
	.file 3 "../../../kgccfe/gnu/basic-block.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "../../../include/gnu/obstack.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/bits/types.h"
	.file 9 "../../../kgccfe/gnu/MIPS/config.h"
	.file 10 "../../../kgccfe/gnu/rtl.h"
	.file 11 "../../../kgccfe/gnu/machmode.h"
	.file 12 "../../../kgccfe/gnu/bitmap.h"
	.file 13 "../../../kgccfe/gnu/sbitmap.h"
	.file 14 "../../../include/gnu/partition.h"
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
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
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
	.section	.debug_info
	.long	0x27a2
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/conflict.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x9
	.byte	0xc
	.long	0xa8
	.uleb128 0x3
	.byte	0x4
	.long	0xae
	.uleb128 0x4
	.long	0x19e
	.string	"rtx_def"
	.byte	0xc
	.byte	0x9
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0xa
	.byte	0x8a
	.long	0xbc9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0xa
	.byte	0x8d
	.long	0x980
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0xa
	.byte	0x94
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0xa
	.byte	0x97
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0xa
	.byte	0x9f
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0xa
	.byte	0xa8
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0xa
	.byte	0xba
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0xa
	.byte	0xc1
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0xa
	.byte	0xc6
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0xa
	.byte	0xcf
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0xa
	.byte	0xd4
	.long	0x17e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x9
	.byte	0xe
	.long	0x1ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1b1
	.uleb128 0x4
	.long	0x1e6
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x9
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0xa
	.byte	0xf8
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0xa
	.byte	0xf9
	.long	0x17f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x9
	.byte	0x10
	.long	0x1f2
	.uleb128 0x3
	.byte	0x4
	.long	0x1f8
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20a
	.uleb128 0x8
	.long	0x20f
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
	.byte	0x4
	.byte	0xd6
	.long	0x21e
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
	.byte	0x8
	.byte	0x3b
	.long	0x292
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x8
	.byte	0x90
	.long	0x2dc
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x8
	.byte	0x91
	.long	0x2bd
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20f
	.uleb128 0x2
	.string	"FILE"
	.byte	0x5
	.byte	0x2e
	.long	0x30d
	.uleb128 0xc
	.long	0x588
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x7
	.value	0x10c
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x7
	.value	0x111
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x7
	.value	0x112
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x7
	.value	0x113
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x7
	.value	0x114
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x7
	.value	0x115
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x7
	.value	0x116
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x7
	.value	0x117
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x7
	.value	0x118
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x7
	.value	0x11a
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x7
	.value	0x11b
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x7
	.value	0x11c
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x7
	.value	0x11e
	.long	0x601
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x7
	.value	0x120
	.long	0x607
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x7
	.value	0x122
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x7
	.value	0x126
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x7
	.value	0x128
	.long	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x7
	.value	0x12c
	.long	0x24b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x7
	.value	0x12d
	.long	0x276
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x7
	.value	0x12e
	.long	0x60d
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x7
	.value	0x132
	.long	0x61d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x7
	.value	0x13b
	.long	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x7
	.value	0x144
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x7
	.value	0x145
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x7
	.value	0x146
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x7
	.value	0x147
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x7
	.value	0x148
	.long	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x7
	.value	0x14a
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x7
	.value	0x14c
	.long	0x623
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.long	0x598
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f9
	.uleb128 0x3
	.byte	0x4
	.long	0x5a4
	.uleb128 0x10
	.long	0x5b0
	.byte	0x1
	.uleb128 0x11
	.long	0x2f9
	.byte	0x0
	.uleb128 0x12
	.string	"_IO_lock_t"
	.byte	0x7
	.byte	0xb0
	.uleb128 0x4
	.long	0x601
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x7
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x7
	.byte	0xb7
	.long	0x601
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x7
	.byte	0xb8
	.long	0x607
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x7
	.byte	0xbc
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5be
	.uleb128 0x3
	.byte	0x4
	.long	0x30d
	.uleb128 0xe
	.long	0x61d
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b0
	.uleb128 0xe
	.long	0x633
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x639
	.uleb128 0x13
	.long	0x64e
	.byte	0x1
	.long	0x217
	.uleb128 0x11
	.long	0x64e
	.uleb128 0x11
	.long	0x64e
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x654
	.uleb128 0x14
	.uleb128 0x4
	.long	0x69f
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x6
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x6
	.byte	0xa3
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0xa4
	.long	0x69f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x6
	.byte	0xa5
	.long	0x588
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x655
	.uleb128 0x15
	.long	0x7d2
	.string	"obstack"
	.byte	0x2c
	.byte	0x5
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x6
	.byte	0xaa
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x6
	.byte	0xab
	.long	0x69f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x6
	.byte	0xac
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x6
	.byte	0xad
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x6
	.byte	0xae
	.long	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x6
	.byte	0xaf
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x6
	.byte	0xb0
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x6
	.byte	0xb5
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x6
	.byte	0xb6
	.long	0x7fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x6
	.byte	0xb7
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x6
	.byte	0xbd
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x6
	.byte	0xbe
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x6
	.byte	0xc2
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x13
	.long	0x7e7
	.byte	0x1
	.long	0x69f
	.uleb128 0x11
	.long	0x2f9
	.uleb128 0x11
	.long	0x2dc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d2
	.uleb128 0x10
	.long	0x7fe
	.byte	0x1
	.uleb128 0x11
	.long	0x2f9
	.uleb128 0x11
	.long	0x69f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ed
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0x2
	.byte	0x32
	.long	0x21e
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0x2
	.byte	0x37
	.long	0x826
	.uleb128 0x3
	.byte	0x4
	.long	0x82c
	.uleb128 0x13
	.long	0x83c
	.byte	0x1
	.long	0x804
	.uleb128 0x11
	.long	0x64e
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0x2
	.byte	0x3e
	.long	0x633
	.uleb128 0x2
	.string	"htab_del"
	.byte	0x2
	.byte	0x42
	.long	0x59e
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0x2
	.byte	0x4e
	.long	0x86d
	.uleb128 0x3
	.byte	0x4
	.long	0x873
	.uleb128 0x13
	.long	0x888
	.byte	0x1
	.long	0x2f9
	.uleb128 0x11
	.long	0x22c
	.uleb128 0x11
	.long	0x22c
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0x2
	.byte	0x51
	.long	0x59e
	.uleb128 0x4
	.long	0x96c
	.string	"htab"
	.byte	0x2c
	.byte	0x2
	.byte	0x59
	.uleb128 0x6
	.string	"hash_f"
	.byte	0x2
	.byte	0x5b
	.long	0x815
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"eq_f"
	.byte	0x2
	.byte	0x5e
	.long	0x83c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"del_f"
	.byte	0x2
	.byte	0x61
	.long	0x84b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"entries"
	.byte	0x2
	.byte	0x64
	.long	0x598
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x2
	.byte	0x67
	.long	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"n_elements"
	.byte	0x2
	.byte	0x6a
	.long	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"n_deleted"
	.byte	0x2
	.byte	0x6d
	.long	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"searches"
	.byte	0x2
	.byte	0x71
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"collisions"
	.byte	0x2
	.byte	0x75
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"alloc_f"
	.byte	0x2
	.byte	0x78
	.long	0x85b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"free_f"
	.byte	0x2
	.byte	0x79
	.long	0x888
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0x2
	.byte	0x7c
	.long	0x97a
	.uleb128 0x3
	.byte	0x4
	.long	0x899
	.uleb128 0x16
	.long	0xbc9
	.string	"machine_mode"
	.byte	0x4
	.byte	0xb
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
	.uleb128 0x16
	.long	0x1398
	.string	"rtx_code"
	.byte	0x4
	.byte	0xa
	.byte	0x2f
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
	.uleb128 0x18
	.long	0x1472
	.byte	0x4
	.byte	0xa
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0xa
	.byte	0x4f
	.long	0x21e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0xa
	.byte	0x51
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0xa
	.byte	0x52
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0xa
	.byte	0x54
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0xa
	.byte	0x56
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0xa
	.byte	0x58
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0xa
	.byte	0x5b
	.long	0x21e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0xa
	.byte	0x5d
	.long	0x21e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0xa
	.byte	0x5e
	.long	0x1398
	.uleb128 0xc
	.long	0x14e9
	.long	.LASF2
	.byte	0x18
	.byte	0xa
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0xa
	.byte	0x69
	.long	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0xa
	.byte	0x6a
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0xa
	.byte	0x6b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0xa
	.byte	0x6c
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0xa
	.byte	0x6d
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x19
	.long	.LASF2
	.byte	0xa
	.byte	0x6e
	.long	0x148d
	.uleb128 0x1a
	.long	0x15c6
	.string	"rtunion_def"
	.byte	0x8
	.byte	0xa
	.byte	0x73
	.uleb128 0x1b
	.string	"rtwint"
	.byte	0xa
	.byte	0x74
	.long	0x292
	.uleb128 0x1b
	.string	"rtint"
	.byte	0xa
	.byte	0x75
	.long	0x217
	.uleb128 0x1b
	.string	"rtuint"
	.byte	0xa
	.byte	0x76
	.long	0x21e
	.uleb128 0x1b
	.string	"rtstr"
	.byte	0xa
	.byte	0x77
	.long	0x204
	.uleb128 0x1b
	.string	"rtx"
	.byte	0xa
	.byte	0x78
	.long	0x9d
	.uleb128 0x1b
	.string	"rtvec"
	.byte	0xa
	.byte	0x79
	.long	0x19e
	.uleb128 0x1b
	.string	"rttype"
	.byte	0xa
	.byte	0x7a
	.long	0x980
	.uleb128 0x1b
	.string	"rt_addr_diff_vec_flags"
	.byte	0xa
	.byte	0x7b
	.long	0x1472
	.uleb128 0x1b
	.string	"rt_cselib"
	.byte	0xa
	.byte	0x7c
	.long	0x15da
	.uleb128 0x1b
	.string	"rtbit"
	.byte	0xa
	.byte	0x7d
	.long	0x1642
	.uleb128 0x1b
	.string	"rttree"
	.byte	0xa
	.byte	0x7e
	.long	0x1e6
	.uleb128 0x1b
	.string	"bb"
	.byte	0xa
	.byte	0x7f
	.long	0x17cd
	.uleb128 0x1b
	.string	"rtmem"
	.byte	0xa
	.byte	0x80
	.long	0x17d3
	.byte	0x0
	.uleb128 0x1c
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x15c6
	.uleb128 0x4
	.long	0x1642
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0xa
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0xc
	.byte	0x3d
	.long	0x189f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0xc
	.byte	0x3e
	.long	0x189f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0xc
	.byte	0x3f
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0xc
	.byte	0x40
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15e0
	.uleb128 0x4
	.long	0x17cd
	.string	"basic_block_def"
	.byte	0x50
	.byte	0xa
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x3
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x3
	.byte	0xb5
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x3
	.byte	0xb8
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x3
	.byte	0xb9
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x3
	.byte	0xbc
	.long	0x1aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x3
	.byte	0xbc
	.long	0x1aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x3
	.byte	0xc1
	.long	0x1a1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x3
	.byte	0xc5
	.long	0x1a1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x3
	.byte	0xcb
	.long	0x1a1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x3
	.byte	0xcd
	.long	0x1a1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x3
	.byte	0xd0
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x3
	.byte	0xd3
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x17cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x17cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x3
	.byte	0xd9
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x3
	.byte	0xdc
	.long	0x1d67
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x3
	.byte	0xdf
	.long	0x1a29
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x3
	.byte	0xe2
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x3
	.byte	0xe5
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1648
	.uleb128 0x3
	.byte	0x4
	.long	0x14e9
	.uleb128 0x2
	.string	"rtunion"
	.byte	0xa
	.byte	0x82
	.long	0x14f4
	.uleb128 0xe
	.long	0x17f8
	.long	0x17d9
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1808
	.long	0x9d
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0xc
	.byte	0x1d
	.long	0x261
	.uleb128 0x4
	.long	0x1873
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0xc
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0xc
	.byte	0x35
	.long	0x1873
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0xc
	.byte	0x36
	.long	0x1873
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0xc
	.byte	0x37
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0xc
	.byte	0x38
	.long	0x1879
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x181b
	.uleb128 0xe
	.long	0x1889
	.long	0x1808
	.uleb128 0xf
	.long	0x225
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0xc
	.byte	0x39
	.long	0x181b
	.uleb128 0x3
	.byte	0x4
	.long	0x1889
	.uleb128 0x2
	.string	"bitmap_head"
	.byte	0xc
	.byte	0x42
	.long	0x15e0
	.uleb128 0x2
	.string	"bitmap"
	.byte	0xc
	.byte	0x43
	.long	0x1642
	.uleb128 0x4
	.long	0x1920
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0xd
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0xd
	.byte	0x21
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0xd
	.byte	0x22
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0xd
	.byte	0x23
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0xd
	.byte	0x24
	.long	0x1920
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xe
	.long	0x1930
	.long	0x2a3
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0xd
	.byte	0x25
	.long	0x193f
	.uleb128 0x3
	.byte	0x4
	.long	0x18c6
	.uleb128 0x4
	.long	0x199a
	.string	"partition_elem"
	.byte	0xc
	.byte	0xe
	.byte	0x33
	.uleb128 0x6
	.string	"class_element"
	.byte	0xe
	.byte	0x36
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"next"
	.byte	0xe
	.byte	0x39
	.long	0x199a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"class_count"
	.byte	0xe
	.byte	0x3c
	.long	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1945
	.uleb128 0x4
	.long	0x19e1
	.string	"partition_def"
	.byte	0x10
	.byte	0xe
	.byte	0x40
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xe
	.byte	0x42
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements"
	.byte	0xe
	.byte	0x44
	.long	0x19e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xe
	.long	0x19f1
	.long	0x1945
	.uleb128 0xf
	.long	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"partition"
	.byte	0xe
	.byte	0x45
	.long	0x1a02
	.uleb128 0x3
	.byte	0x4
	.long	0x19a0
	.uleb128 0x2
	.string	"regset_head"
	.byte	0x3
	.byte	0x20
	.long	0x18a5
	.uleb128 0x2
	.string	"regset"
	.byte	0x3
	.byte	0x22
	.long	0x18b8
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x3
	.byte	0x75
	.long	0x292
	.uleb128 0x4
	.long	0x1ae5
	.string	"edge_def"
	.byte	0x28
	.byte	0x3
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x3
	.byte	0x7a
	.long	0x1ae5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x3
	.byte	0x7a
	.long	0x1ae5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x3
	.byte	0x7d
	.long	0x17cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x3
	.byte	0x7d
	.long	0x17cd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x3
	.byte	0x80
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x3
	.byte	0x83
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x3
	.byte	0x85
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x3
	.byte	0x86
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x3
	.byte	0x87
	.long	0x1a29
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a3a
	.uleb128 0x2
	.string	"edge"
	.byte	0x3
	.byte	0x89
	.long	0x1ae5
	.uleb128 0x4
	.long	0x1d67
	.string	"loop"
	.byte	0x80
	.byte	0x3
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x3
	.value	0x176
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x3
	.value	0x179
	.long	0x1d6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x3
	.value	0x17c
	.long	0x1d6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x3
	.value	0x17f
	.long	0x1d6d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x3
	.value	0x184
	.long	0x1d80
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x3
	.value	0x187
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x3
	.value	0x18b
	.long	0x1d6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x3
	.value	0x18f
	.long	0x1d6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x3
	.value	0x192
	.long	0x1930
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x3
	.value	0x195
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x3
	.value	0x198
	.long	0x1d80
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x3
	.value	0x19b
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x3
	.value	0x19e
	.long	0x1d80
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x3
	.value	0x1a1
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x3
	.value	0x1a4
	.long	0x1930
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x3
	.value	0x1a7
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x3
	.value	0x1aa
	.long	0x1d86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x3
	.value	0x1ae
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x3
	.value	0x1b1
	.long	0x1d67
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x3
	.value	0x1b4
	.long	0x1d67
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x3
	.value	0x1b7
	.long	0x1d67
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x3
	.value	0x1ba
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x3
	.value	0x1bd
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x3
	.value	0x1c3
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x3
	.value	0x1c7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x3
	.value	0x1ca
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x3
	.value	0x1cd
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x3
	.value	0x1d1
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x3
	.value	0x1d4
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x3
	.value	0x1d7
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x3
	.value	0x1e2
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x3
	.value	0x1e6
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1af7
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x3
	.byte	0xe6
	.long	0x17cd
	.uleb128 0x3
	.byte	0x4
	.long	0x1aeb
	.uleb128 0x3
	.byte	0x4
	.long	0x1d67
	.uleb128 0x1d
	.string	"conflict_graph"
	.byte	0x3
	.value	0x306
	.long	0x1da3
	.uleb128 0x3
	.byte	0x4
	.long	0x1da9
	.uleb128 0x15
	.long	0x1e1c
	.string	"conflict_graph_def"
	.byte	0x38
	.byte	0x3
	.value	0x306
	.uleb128 0x6
	.string	"arc_hash_table"
	.byte	0x1
	.byte	0x5c
	.long	0x96c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.long	.LASF3
	.byte	0x1
	.byte	0x5f
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"neighbor_heads"
	.byte	0x1
	.byte	0x64
	.long	0x1f16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"arc_obstack"
	.byte	0x1
	.byte	0x67
	.long	0x6a5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1d
	.string	"conflict_graph_enum_fn"
	.byte	0x3
	.value	0x30b
	.long	0x1e3b
	.uleb128 0x3
	.byte	0x4
	.long	0x1e41
	.uleb128 0x13
	.long	0x1e5b
	.byte	0x1
	.long	0x217
	.uleb128 0x11
	.long	0x217
	.uleb128 0x11
	.long	0x217
	.uleb128 0x11
	.long	0x2f9
	.byte	0x0
	.uleb128 0x4
	.long	0x1ecb
	.string	"conflict_graph_arc_def"
	.byte	0x10
	.byte	0x1
	.byte	0x41
	.uleb128 0x6
	.string	"smaller_next"
	.byte	0x1
	.byte	0x45
	.long	0x1ecb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"larger_next"
	.byte	0x1
	.byte	0x4a
	.long	0x1ecb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"smaller"
	.byte	0x1
	.byte	0x4d
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"larger"
	.byte	0x1
	.byte	0x50
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e5b
	.uleb128 0x2
	.string	"conflict_graph_arc"
	.byte	0x1
	.byte	0x53
	.long	0x1ecb
	.uleb128 0x2
	.string	"const_conflict_graph_arc"
	.byte	0x1
	.byte	0x54
	.long	0x1f0b
	.uleb128 0x3
	.byte	0x4
	.long	0x1f11
	.uleb128 0x8
	.long	0x1e5b
	.uleb128 0x3
	.byte	0x4
	.long	0x1ed1
	.uleb128 0x1f
	.long	0x1f5b
	.string	"arc_hash"
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.long	0x804
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x20
	.string	"arcp"
	.byte	0x1
	.byte	0x7d
	.long	0x64e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"arc"
	.byte	0x1
	.byte	0x7f
	.long	0x1eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1f
	.long	0x1fb9
	.string	"arc_eq"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	0x217
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x20
	.string	"arcp1"
	.byte	0x1
	.byte	0x89
	.long	0x64e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"arcp2"
	.byte	0x1
	.byte	0x8a
	.long	0x64e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"arc1"
	.byte	0x1
	.byte	0x8c
	.long	0x1eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.string	"arc2"
	.byte	0x1
	.byte	0x8d
	.long	0x1eeb
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x22
	.long	0x2002
	.byte	0x1
	.string	"conflict_graph_new"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x1d8c
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x23
	.long	.LASF3
	.byte	0x1
	.byte	0x97
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF4
	.byte	0x1
	.byte	0x99
	.long	0x1d8c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x25
	.long	0x2064
	.byte	0x1
	.string	"conflict_graph_delete"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x23
	.long	.LASF4
	.byte	0x1
	.byte	0xb1
	.long	0x1d8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x21
	.string	"__o"
	.byte	0x1
	.byte	0xb3
	.long	0x2064
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"__obj"
	.byte	0x1
	.byte	0xb3
	.long	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a5
	.uleb128 0x22
	.long	0x2195
	.byte	0x1
	.string	"conflict_graph_add"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.long	0x217
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x23
	.long	.LASF4
	.byte	0x1
	.byte	0xbf
	.long	0x1d8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"reg1"
	.byte	0x1
	.byte	0xc0
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"reg2"
	.byte	0x1
	.byte	0xc1
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"smaller"
	.byte	0x1
	.byte	0xc3
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.string	"larger"
	.byte	0x1
	.byte	0xc4
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"dummy"
	.byte	0x1
	.byte	0xc5
	.long	0x1e5b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.string	"arc"
	.byte	0x1
	.byte	0xc6
	.long	0x1ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.string	"slot"
	.byte	0x1
	.byte	0xc7
	.long	0x598
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	0x2184
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x21
	.string	"__h"
	.byte	0x1
	.byte	0xd8
	.long	0x2064
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	0x215a
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x21
	.string	"__o"
	.byte	0x1
	.byte	0xd8
	.long	0x2064
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"__len"
	.byte	0x1
	.byte	0xd8
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x26
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x21
	.string	"__o1"
	.byte	0x1
	.byte	0xd8
	.long	0x2064
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"value"
	.byte	0x1
	.byte	0xd8
	.long	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LASF5
	.long	0x274c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9075
	.byte	0x0
	.uleb128 0x22
	.long	0x2203
	.byte	0x1
	.string	"conflict_graph_conflict_p"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.long	0x217
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x23
	.long	.LASF4
	.byte	0x1
	.byte	0xf0
	.long	0x1d8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"reg1"
	.byte	0x1
	.byte	0xf1
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"reg2"
	.byte	0x1
	.byte	0xf2
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"arc"
	.byte	0x1
	.byte	0xf5
	.long	0x1e5b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x29
	.long	0x227f
	.byte	0x1
	.string	"conflict_graph_enum"
	.byte	0x1
	.value	0x105
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x101
	.long	0x1d8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x102
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"enum_fn"
	.byte	0x1
	.value	0x103
	.long	0x1e1c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.string	"extra"
	.byte	0x1
	.value	0x104
	.long	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.string	"arc"
	.byte	0x1
	.value	0x106
	.long	0x1ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x29
	.long	0x230a
	.byte	0x1
	.string	"conflict_graph_merge_regs"
	.byte	0x1
	.value	0x11f
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x11c
	.long	0x1d8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"target"
	.byte	0x1
	.value	0x11d
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x11e
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"arc"
	.byte	0x1
	.value	0x120
	.long	0x1ed1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2c
	.string	"other"
	.byte	0x1
	.value	0x127
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x2352
	.string	"print_context"
	.byte	0xc
	.byte	0x1
	.value	0x13b
	.uleb128 0xd
	.string	"fp"
	.byte	0x1
	.value	0x13d
	.long	0x2352
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.value	0x140
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"started"
	.byte	0x1
	.value	0x143
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x301
	.uleb128 0x2d
	.long	0x23e7
	.string	"print_conflict"
	.byte	0x1
	.value	0x14d
	.byte	0x1
	.long	0x217
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2b
	.string	"reg1"
	.byte	0x1
	.value	0x14a
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"reg2"
	.byte	0x1
	.value	0x14b
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"contextp"
	.byte	0x1
	.value	0x14c
	.long	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"context"
	.byte	0x1
	.value	0x14e
	.long	0x23e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x14f
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.long	.LASF5
	.long	0x2737
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9219
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x230a
	.uleb128 0x29
	.long	0x2458
	.byte	0x1
	.string	"conflict_graph_print"
	.byte	0x1
	.value	0x16f
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2a
	.long	.LASF4
	.byte	0x1
	.value	0x16d
	.long	0x1d8c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"fp"
	.byte	0x1
	.value	0x16e
	.long	0x2352
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.value	0x170
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2c
	.string	"context"
	.byte	0x1
	.value	0x171
	.long	0x230a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2e
	.long	0x24b7
	.string	"mark_reg"
	.byte	0x1
	.value	0x18f
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x18c
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"setter"
	.byte	0x1
	.value	0x18d
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"data"
	.byte	0x1
	.value	0x18e
	.long	0x2f9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"set"
	.byte	0x1
	.value	0x190
	.long	0x1a1b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x2727
	.byte	0x1
	.string	"conflict_graph_compute"
	.byte	0x1
	.value	0x1bd
	.byte	0x1
	.long	0x1d8c
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2b
	.string	"regs"
	.byte	0x1
	.value	0x1bb
	.long	0x1a1b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x1bc
	.long	0x19f1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF4
	.byte	0x1
	.value	0x1be
	.long	0x1d8c
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.string	"live_head"
	.byte	0x1
	.value	0x1bf
	.long	0x1a08
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.string	"live"
	.byte	0x1
	.value	0x1c0
	.long	0x1a1b
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.string	"born_head"
	.byte	0x1
	.value	0x1c1
	.long	0x1a08
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2c
	.string	"born"
	.byte	0x1
	.value	0x1c2
	.long	0x1a1b
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.string	"bb"
	.byte	0x1
	.value	0x1c3
	.long	0x1d6d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2c
	.string	"insn"
	.byte	0x1
	.value	0x1ca
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.string	"head"
	.byte	0x1
	.value	0x1cb
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2c
	.string	"born_reg"
	.byte	0x1
	.value	0x1d7
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.string	"live_reg"
	.byte	0x1
	.value	0x1d8
	.long	0x217
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"link"
	.byte	0x1
	.value	0x1d9
	.long	0x9d
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	0x2709
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2c
	.string	"ptr_"
	.byte	0x1
	.value	0x1ea
	.long	0x189f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"indx_"
	.byte	0x1
	.value	0x1ea
	.long	0x21e
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x1ea
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF7
	.byte	0x1
	.value	0x1ea
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2c
	.string	"word_"
	.byte	0x1
	.value	0x1ea
	.long	0x1808
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2c
	.string	"mask_"
	.byte	0x1
	.value	0x1ea
	.long	0x1808
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2c
	.string	"ptr_"
	.byte	0x1
	.value	0x1ea
	.long	0x189f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"indx_"
	.byte	0x1
	.value	0x1ea
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF6
	.byte	0x1
	.value	0x1ea
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF7
	.byte	0x1
	.value	0x1ea
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2c
	.string	"word_"
	.byte	0x1
	.value	0x1ea
	.long	0x1808
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2c
	.string	"mask_"
	.byte	0x1
	.value	0x1ea
	.long	0x1808
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2c
	.string	"b"
	.byte	0x1
	.value	0x1ea
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.value	0x1ea
	.long	0x217
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2c
	.string	"regno"
	.byte	0x1
	.value	0x201
	.long	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x2737
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0xe
	.byte	0x0
	.uleb128 0x8
	.long	0x2727
	.uleb128 0xe
	.long	0x274c
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x273c
	.uleb128 0xe
	.long	0x2761
	.long	0x20f
	.uleb128 0xf
	.long	0x225
	.byte	0xa2
	.byte	0x0
	.uleb128 0x31
	.string	"rtx_class"
	.byte	0xa
	.byte	0x45
	.long	0x2774
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x2751
	.uleb128 0xe
	.long	0x2789
	.long	0x1648
	.uleb128 0xf
	.long	0x225
	.byte	0x1
	.byte	0x0
	.uleb128 0x32
	.string	"entry_exit_blocks"
	.byte	0x3
	.value	0x139
	.long	0x2779
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xde
	.value	0x2
	.long	.Ldebug_info0
	.long	0x27a6
	.long	0x1fb9
	.string	"conflict_graph_new"
	.long	0x2002
	.string	"conflict_graph_delete"
	.long	0x206a
	.string	"conflict_graph_add"
	.long	0x2195
	.string	"conflict_graph_conflict_p"
	.long	0x2203
	.string	"conflict_graph_enum"
	.long	0x227f
	.string	"conflict_graph_merge_regs"
	.long	0x23ed
	.string	"conflict_graph_print"
	.long	0x24b7
	.string	"conflict_graph_compute"
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
.LASF3:
	.string	"num_regs"
.LASF6:
	.string	"bit_num_"
.LASF4:
	.string	"graph"
.LASF7:
	.string	"word_num_"
.LASF2:
	.string	"mem_attrs"
.LASF5:
	.string	"__FUNCTION__"
.LASF1:
	.string	"_IO_FILE"
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
