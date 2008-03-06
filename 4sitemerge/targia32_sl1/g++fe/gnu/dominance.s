	.file	"dominance.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	init_dom_info, @function
init_dom_info:
.LFB15:
	.file 1 "../../../kg++fe/gnu/dominance.c"
	.loc 1 153 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$68, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 156 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, -52(%ebp)
.LBB2:
	.loc 1 157 0
	movl	$1, -48(%ebp)
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
.LBE2:
.LBB3:
	.loc 1 158 0
	movl	$1, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jne	.L2
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L4
.L2:
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	$0, -44(%ebp)
	jmp	.L5
.L6:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -44(%ebp)
.L5:
	movl	-44(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L6
.L4:
.LBE3:
.LBB4:
	.loc 1 159 0
	movl	$1, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.L7
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L9
.L7:
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	$0, -40(%ebp)
	jmp	.L10
.L11:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
.L10:
	movl	-40(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L11
.L9:
.LBE4:
.LBB5:
	.loc 1 160 0
	movl	$1, -36(%ebp)
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.LBE5:
.LBB6:
	.loc 1 162 0
	movl	$1, -32(%ebp)
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE6:
.LBB7:
	.loc 1 163 0
	movl	$1, -28(%ebp)
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.LBE7:
.LBB8:
	.loc 1 165 0
	movl	$1, -24(%ebp)
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.LBE8:
.LBB9:
	.loc 1 166 0
	movl	$1, -20(%ebp)
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	$0, -20(%ebp)
	jmp	.L12
.L13:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	addl	$1, -20(%ebp)
.L12:
	movl	-20(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L13
.LBE9:
.LBB10:
	.loc 1 167 0
	movl	$1, -16(%ebp)
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
.LBE10:
.LBB11:
	.loc 1 169 0
	movl	$1, -12(%ebp)
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
.LBE11:
.LBB12:
	.loc 1 170 0
	movl	$1, -8(%ebp)
	movl	$4, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
.LBE12:
	.loc 1 172 0
	movl	8(%ebp), %eax
	movl	$1, 44(%eax)
	.loc 1 173 0
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 174 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	init_dom_info, .-init_dom_info
	.type	free_dom_info, @function
free_dom_info:
.LFB16:
	.loc 1 183 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$4, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 185 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 186 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 187 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 188 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 189 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 190 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 191 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 192 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 194 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 195 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	free_dom_info, .-free_dom_info
	.section	.rodata
	.type	__FUNCTION__.9082, @object
	.size	__FUNCTION__.9082, 21
__FUNCTION__.9082:
	.string	"calc_dfs_tree_nonrec"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/dominance.c"
	.text
	.type	calc_dfs_tree_nonrec, @function
calc_dfs_tree_nonrec:
.LFB17:
	.loc 1 208 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$68, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 212 0
	movl	$0, -32(%ebp)
	.loc 1 221 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 222 0
	movl	$0, -24(%ebp)
	.loc 1 225 0
	cmpl	$0, 16(%ebp)
	je	.L19
	.loc 1 227 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 228 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 229 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L45
.L19:
	.loc 1 233 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 234 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 235 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 245 0
	jmp	.L45
.L23:
.LBB13:
.LBB14:
	.loc 1 251 0
	cmpl	$0, 16(%ebp)
	je	.L24
	.loc 1 253 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 258 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L26
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L28
.L26:
	.loc 1 260 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 261 0
	jmp	.L22
.L28:
	.loc 1 263 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 264 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L29
.L24:
	.loc 1 268 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 269 0
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L30
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L32
.L30:
	.loc 1 271 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 272 0
	jmp	.L22
.L32:
	.loc 1 274 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 275 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L29:
	.loc 1 278 0
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L33
	.loc 1 279 0
	leal	__FUNCTION__.9082@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$279, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L33:
	.loc 1 282 0
	movl	12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L35
	.loc 1 283 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L37
.L35:
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L37:
	.loc 1 286 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	%ecx, (%edx)
	movl	(%edx), %eax
	movl	%eax, -36(%ebp)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 287 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 288 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 291 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-28(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 292 0
	movl	-8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L22:
.L45:
.LBE14:
	.loc 1 245 0
	cmpl	$0, -40(%ebp)
	jne	.L23
	.loc 1 295 0
	cmpl	$0, -24(%ebp)
	je	.L39
	.loc 1 297 0
	subl	$1, -24(%ebp)
	movl	-24(%ebp), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 308 0
	cmpl	$0, 16(%ebp)
	je	.L41
	.loc 1 309 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L22
.L41:
	.loc 1 311 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 312 0
	jmp	.L22
.L39:
.LBE13:
	.loc 1 313 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 314 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	calc_dfs_tree_nonrec, .-calc_dfs_tree_nonrec
	.section	.rodata
	.type	__FUNCTION__.9173, @object
	.size	__FUNCTION__.9173, 14
__FUNCTION__.9173:
	.string	"calc_dfs_tree"
	.text
	.type	calc_dfs_tree, @function
calc_dfs_tree:
.LFB18:
	.loc 1 325 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$36, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 327 0
	cmpl	$0, 12(%ebp)
	je	.L47
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L49
.L47:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -24(%ebp)
.L49:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 328 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 332 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	calc_dfs_tree_nonrec
	.loc 1 334 0
	cmpl	$0, 12(%ebp)
	je	.L50
.LBB15:
	.loc 1 341 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L52
.L53:
	.loc 1 343 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L54
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 346 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 347 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 348 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	calc_dfs_tree_nonrec
.L54:
	.loc 1 341 0
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -8(%ebp)
.L52:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L53
.L50:
.LBE15:
	.loc 1 352 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 355 0
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L58
	.loc 1 356 0
	leal	__FUNCTION__.9173@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$356, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L58:
	.loc 1 357 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	calc_dfs_tree, .-calc_dfs_tree
	.type	compress, @function
compress:
.LFB19:
	.loc 1 368 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%esi
.LCFI18:
	subl	$24, %esp
.LCFI19:
	.loc 1 372 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 373 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L64
	.loc 1 375 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compress
	.loc 1 376 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %esi
	jae	.L62
	.loc 1 377 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
.L62:
	.loc 1 378 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
.L64:
	.loc 1 380 0
	addl	$24, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE19:
	.size	compress, .-compress
	.type	link_roots, @function
link_roots:
.LFB21:
	.loc 1 421 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%edi
.LCFI22:
	pushl	%esi
.LCFI23:
	subl	$16, %esp
.LCFI24:
	.loc 1 422 0
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 425 0
	jmp	.L77
.L67:
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %edi
	movl	8(%ebp), %eax
	movl	32(%eax), %ecx
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edi,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	cmpl	%eax, %esi
	jb	.L68
	.loc 1 430 0
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 431 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	8(%ebp), %eax
	movl	32(%eax), %ecx
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esi)
	jmp	.L66
.L68:
	.loc 1 435 0
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 436 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	(%ecx), %eax
	movl	%eax, -16(%ebp)
.L66:
.L77:
	.loc 1 425 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %edi
	movl	8(%ebp), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edi,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %esi
	jb	.L67
	.loc 1 440 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 441 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, (%esi)
	.loc 1 442 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jae	.L73
.LBB16:
	.loc 1 444 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 445 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 446 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 450 0
	jmp	.L73
.L74:
.LBE16:
	.loc 1 452 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L73:
	.loc 1 450 0
	cmpl	$0, -16(%ebp)
	jne	.L74
	.loc 1 455 0
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	link_roots, .-link_roots
	.type	calc_idoms, @function
calc_idoms:
.LFB22:
	.loc 1 465 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%esi
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$64, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 468 0
	cmpl	$0, 12(%ebp)
	je	.L79
	.loc 1 469 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L81
.L79:
	.loc 1 471 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, -32(%ebp)
.L81:
	.loc 1 474 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 475 0
	jmp	.L82
.L83:
.LBB17:
	.loc 1 477 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 480 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 481 0
	movl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 482 0
	cmpl	$0, 12(%ebp)
	je	.L84
	.loc 1 483 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L87
.L84:
	.loc 1 485 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 491 0
	jmp	.L87
.L88:
.LBB18:
	.loc 1 496 0
	cmpl	$0, 12(%ebp)
	je	.L89
	.loc 1 498 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 499 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L91
.L89:
	.loc 1 503 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 504 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L91:
	.loc 1 506 0
	movl	-12(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	.L92
	.loc 1 507 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L94
.L92:
	.loc 1 509 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L94:
	.loc 1 513 0
	movl	-16(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jbe	.L95
	.loc 1 514 0
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eval
	sall	$2, %eax
	leal	(%esi,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L95:
	.loc 1 515 0
	movl	-16(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jae	.L97
	.loc 1 516 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
.L97:
.LBE18:
	.loc 1 491 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L87:
	cmpl	$0, -24(%ebp)
	jne	.L88
	.loc 1 519 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 520 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	link_roots
	.loc 1 521 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 522 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 525 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L100
.L101:
	.loc 1 527 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	eval
	movl	%eax, -40(%ebp)
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jae	.L102
	.loc 1 529 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L104
.L102:
	.loc 1 531 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
.L104:
	.loc 1 525 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L100:
	cmpl	$0, -44(%ebp)
	jne	.L101
	.loc 1 534 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 535 0
	subl	$1, -48(%ebp)
.L82:
.LBE17:
	.loc 1 475 0
	cmpl	$1, -48(%ebp)
	ja	.L83
	.loc 1 539 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	$4, %eax
	movl	$0, (%eax)
	.loc 1 540 0
	movl	$2, -48(%ebp)
	jmp	.L107
.L108:
	.loc 1 541 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L109
	.loc 1 542 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	-48(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esi)
.L109:
	.loc 1 540 0
	addl	$1, -48(%ebp)
.L107:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	-48(%ebp), %eax
	jae	.L108
	.loc 1 543 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE22:
	.size	calc_idoms, .-calc_idoms
	.type	eval, @function
eval:
.LFB20:
	.loc 1 390 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%esi
.LCFI32:
	subl	$28, %esp
.LCFI33:
	.loc 1 393 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 396 0
	cmpl	$0, -8(%ebp)
	jne	.L114
	.loc 1 397 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L116
.L114:
	.loc 1 400 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L117
	.loc 1 402 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	compress
	.loc 1 403 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L117:
	.loc 1 406 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %esi
	jb	.L119
	.loc 1 407 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L116
.L119:
	.loc 1 409 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L116:
	movl	-24(%ebp), %eax
	.loc 1 410 0
	addl	$28, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	eval, .-eval
	.section	.rodata
.LC1:
	.string	"dominance info"
	.text
.globl calculate_dominance_info
	.type	calculate_dominance_info, @function
calculate_dominance_info:
.LFB23:
	.loc 1 560 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%edi
.LCFI36:
	pushl	%esi
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$76, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 566 0
	movl	$8, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 567 0
	call	et_forest_create@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 568 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movl	%eax, %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$10, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 571 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edi
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	44(%eax), %eax
	leal	2(%eax), %esi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	et_forest_add_node@PLT
	movl	%eax, 16(%edi,%esi,4)
	.loc 1 573 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edi
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	44(%eax), %eax
	leal	2(%eax), %esi
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_add_node@PLT
	movl	%eax, 16(%edi,%esi,4)
	.loc 1 575 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L123
.L124:
	.loc 1 576 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edi
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	leal	2(%eax), %esi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	et_forest_add_node@PLT
	movl	%eax, 16(%edi,%esi,4)
	.loc 1 575 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L123:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L124
	.loc 1 578 0
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	init_dom_info
	.loc 1 579 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	calc_dfs_tree
	.loc 1 580 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	calc_idoms
	.loc 1 583 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L126
.L127:
.LBB19:
	.loc 1 585 0
	movl	-56(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 587 0
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L128
	.loc 1 588 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, %esi
	movl	-24(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%ecx,%eax,4), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_add_edge@PLT
.L128:
.LBE19:
	.loc 1 583 0
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -20(%ebp)
.L126:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L127
	.loc 1 591 0
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	free_dom_info
	.loc 1 592 0
	movl	-24(%ebp), %eax
	.loc 1 593 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	calculate_dominance_info, .-calculate_dominance_info
.globl free_dominance_info
	.type	free_dominance_info, @function
free_dominance_info:
.LFB24:
	.loc 1 599 0
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
	.loc 1 604 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L133
.L134:
	.loc 1 605 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$2, %eax
	cmpl	%eax, %edx
	jge	.L135
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L135
	.loc 1 607 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_from_dominance_info@PLT
.L135:
	.loc 1 604 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
.L133:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L134
	.loc 1 608 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_from_dominance_info@PLT
	.loc 1 609 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_from_dominance_info@PLT
	.loc 1 610 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	et_forest_delete@PLT
	.loc 1 611 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 612 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 613 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	free_dominance_info, .-free_dominance_info
.globl get_immediate_dominator
	.type	get_immediate_dominator, @function
get_immediate_dominator:
.LFB25:
	.loc 1 620 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$20, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 621 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_parent@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_node_value@PLT
	.loc 1 624 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	get_immediate_dominator, .-get_immediate_dominator
	.section	.rodata
	.type	__FUNCTION__.9779, @object
	.size	__FUNCTION__.9779, 24
__FUNCTION__.9779:
	.string	"set_immediate_dominator"
	.text
.globl set_immediate_dominator
	.type	set_immediate_dominator, @function
set_immediate_dominator:
.LFB26:
	.loc 1 632 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$36, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 634 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 636 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	et_forest_parent@PLT
	movl	%eax, -12(%ebp)
	.loc 1 637 0
	cmpl	$0, -12(%ebp)
	je	.L143
	.loc 1 638 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	et_forest_remove_edge@PLT
.L143:
	.loc 1 639 0
	cmpl	$0, 16(%ebp)
	je	.L150
	.loc 1 641 0
	movl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L147
	.loc 1 642 0
	leal	__FUNCTION__.9779@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$642, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L147:
	.loc 1 643 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	et_forest_add_edge@PLT
	testl	%eax, %eax
	jne	.L150
	.loc 1 644 0
	leal	__FUNCTION__.9779@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$644, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L150:
	.loc 1 646 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	set_immediate_dominator, .-set_immediate_dominator
.globl get_dominated_by
	.type	get_dominated_by, @function
get_dominated_by:
.LFB27:
	.loc 1 654 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%esi
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$32, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 657 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 658 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_enumerate_sons@PLT
	movl	%eax, -16(%ebp)
	.loc 1 659 0
	movl	$0, -12(%ebp)
	jmp	.L152
.L153:
	.loc 1 660 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %esi
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_node_value@PLT
	movl	%eax, (%esi)
	.loc 1 659 0
	addl	$1, -12(%ebp)
.L152:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L153
	.loc 1 661 0
	movl	-16(%ebp), %eax
	.loc 1 662 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	get_dominated_by, .-get_dominated_by
.globl redirect_immediate_dominators
	.type	redirect_immediate_dominators, @function
redirect_immediate_dominators:
.LFB28:
	.loc 1 670 0
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
	.loc 1 671 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 672 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 673 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 674 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	et_forest_enumerate_sons@PLT
	movl	%eax, -12(%ebp)
	.loc 1 677 0
	movl	$0, -8(%ebp)
	jmp	.L157
.L158:
	.loc 1 679 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	et_forest_remove_edge@PLT
	.loc 1 680 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	et_forest_add_edge@PLT
	.loc 1 677 0
	addl	$1, -8(%ebp)
.L157:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L158
	.loc 1 682 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 683 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	redirect_immediate_dominators, .-redirect_immediate_dominators
.globl nearest_common_dominator
	.type	nearest_common_dominator, @function
nearest_common_dominator:
.LFB29:
	.loc 1 691 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$20, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 692 0
	cmpl	$0, 12(%ebp)
	jne	.L162
	.loc 1 693 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L164
.L162:
	.loc 1 694 0
	cmpl	$0, 16(%ebp)
	jne	.L165
	.loc 1 695 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L164
.L165:
	.loc 1 696 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_common_ancestor@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_node_value@PLT
	movl	%eax, -8(%ebp)
.L164:
	movl	-8(%ebp), %eax
	.loc 1 701 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	nearest_common_dominator, .-nearest_common_dominator
.globl dominated_by_p
	.type	dominated_by_p, @function
dominated_by_p:
.LFB30:
	.loc 1 709 0
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
	.loc 1 710 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	nearest_common_dominator@PLT
	cmpl	16(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 711 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	dominated_by_p, .-dominated_by_p
	.section	.rodata
	.type	__FUNCTION__.9925, @object
	.size	__FUNCTION__.9925, 18
__FUNCTION__.9925:
	.string	"verify_dominators"
	.align 4
.LC2:
	.string	"dominator of %d should be %d, not %d"
	.text
.globl verify_dominators
	.type	verify_dominators, @function
verify_dominators:
.LFB31:
	.loc 1 717 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$36, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 718 0
	movl	$0, -16(%ebp)
	.loc 1 721 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L171
.L172:
.LBB20:
	.loc 1 725 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recount_dominator@PLT
	movl	%eax, -8(%ebp)
	.loc 1 726 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	cmpl	-8(%ebp), %eax
	je	.L173
	.loc 1 728 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	44(%eax), %edx
	movl	-8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 730 0
	movl	$1, -16(%ebp)
.L173:
.LBE20:
	.loc 1 721 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L171:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L172
	.loc 1 733 0
	cmpl	$0, -16(%ebp)
	je	.L178
	.loc 1 734 0
	leal	__FUNCTION__.9925@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$734, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L178:
	.loc 1 735 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	verify_dominators, .-verify_dominators
.globl recount_dominator
	.type	recount_dominator, @function
recount_dominator:
.LFB32:
	.loc 1 742 0
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
	.loc 1 743 0
	movl	$0, -12(%ebp)
	.loc 1 746 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L180
.L181:
	.loc 1 748 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dominated_by_p@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L182
	.loc 1 749 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	nearest_common_dominator@PLT
	movl	%eax, -12(%ebp)
.L182:
	.loc 1 746 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L180:
	cmpl	$0, -8(%ebp)
	jne	.L181
	.loc 1 752 0
	movl	-12(%ebp), %eax
	.loc 1 753 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	recount_dominator, .-recount_dominator
.globl iterate_fix_dominators
	.type	iterate_fix_dominators, @function
iterate_fix_dominators:
.LFB33:
	.loc 1 762 0
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
	.loc 1 763 0
	movl	$1, -16(%ebp)
	.loc 1 766 0
	jmp	.L187
.L188:
	.loc 1 768 0
	movl	$0, -16(%ebp)
	.loc 1 769 0
	movl	$0, -20(%ebp)
	jmp	.L189
.L190:
	.loc 1 771 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	%eax, -12(%ebp)
	.loc 1 772 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	recount_dominator@PLT
	movl	%eax, -8(%ebp)
	.loc 1 773 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	je	.L191
	.loc 1 775 0
	movl	$1, -16(%ebp)
	.loc 1 776 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_immediate_dominator@PLT
.L191:
	.loc 1 769 0
	addl	$1, -20(%ebp)
.L189:
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L190
.L187:
	.loc 1 766 0
	cmpl	$0, -16(%ebp)
	jne	.L188
	.loc 1 780 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	iterate_fix_dominators, .-iterate_fix_dominators
.globl add_to_dominance_info
	.type	add_to_dominance_info, @function
add_to_dominance_info:
.LFB34:
	.loc 1 786 0
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
	subl	$12, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 787 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 792 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edi
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	leal	2(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	et_forest_add_node@PLT
	movl	%eax, 16(%edi,%esi,4)
	.loc 1 793 0
	addl	$12, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	add_to_dominance_info, .-add_to_dominance_info
.globl delete_from_dominance_info
	.type	delete_from_dominance_info, @function
delete_from_dominance_info:
.LFB35:
	.loc 1 799 0
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
	.loc 1 800 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	et_forest_remove_node@PLT
	.loc 1 801 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	$0, 16(%edx,%eax,4)
	.loc 1 802 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	delete_from_dominance_info, .-delete_from_dominance_info
	.section	.rodata
.LC3:
	.string	"%i %i\n"
	.text
.globl debug_dominance_info
	.type	debug_dominance_info, @function
debug_dominance_info:
.LFB36:
	.loc 1 807 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%esi
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$32, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 809 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L200
.L201:
	.loc 1 810 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_immediate_dominator@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L202
	.loc 1 811 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %ecx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
.L202:
	.loc 1 809 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L200:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L201
	.loc 1 812 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE36:
	.size	debug_dominance_info, .-debug_dominance_info
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
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI20-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI25-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI26
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI30-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI31
	.byte	0x86
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
	.long	.LCFI34-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI35
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
	.byte	0x4
	.long	.LCFI56-.LCFI53
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI90-.LCFI88
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
	.long	.LCFI91-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI92
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE42:
	.file 2 "../../../kg++fe/gnu/basic-block.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/MIPS/config.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/bitmap.h"
	.file 7 "../../../kg++fe/gnu/sbitmap.h"
	.file 8 "../../../kg++fe/gnu/et-forest.h"
	.file 9 "../../../kg++fe/gnu/varray.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/libio.h"
	.file 13 "/usr/include/bits/types.h"
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
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI35-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x2b9e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/dominance.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xa9
	.uleb128 0x3
	.byte	0x4
	.long	0xaf
	.uleb128 0x4
	.long	0x19f
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.byte	0x4
	.byte	0xe
	.long	0x1ac
	.uleb128 0x3
	.byte	0x4
	.long	0x1b2
	.uleb128 0x4
	.long	0x1e7
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x3
	.byte	0xf2
	.long	0x218
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
	.byte	0x4
	.byte	0x10
	.long	0x1f3
	.uleb128 0x3
	.byte	0x4
	.long	0x1f9
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20b
	.uleb128 0x8
	.long	0x210
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
	.byte	0xa
	.byte	0xd6
	.long	0x21f
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
	.byte	0xd
	.byte	0x3b
	.long	0x293
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xd
	.byte	0x90
	.long	0x2dd
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xd
	.byte	0x91
	.long	0x2be
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x210
	.uleb128 0xc
	.long	0x57d
	.long	.LASF1
	.byte	0x94
	.byte	0xb
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xc
	.value	0x10c
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xc
	.value	0x111
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xc
	.value	0x112
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xc
	.value	0x113
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xc
	.value	0x114
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xc
	.value	0x115
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xc
	.value	0x116
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xc
	.value	0x117
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xc
	.value	0x118
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xc
	.value	0x11a
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xc
	.value	0x11b
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xc
	.value	0x11c
	.long	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xc
	.value	0x11e
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xc
	.value	0x120
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xc
	.value	0x122
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xc
	.value	0x126
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xc
	.value	0x128
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xc
	.value	0x12c
	.long	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xc
	.value	0x12d
	.long	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xc
	.value	0x12e
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xc
	.value	0x132
	.long	0x5ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xc
	.value	0x13b
	.long	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xc
	.value	0x144
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xc
	.value	0x145
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xc
	.value	0x146
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xc
	.value	0x147
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xc
	.value	0x148
	.long	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xc
	.value	0x14a
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xc
	.value	0x14c
	.long	0x5f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0xc
	.byte	0xb0
	.uleb128 0x4
	.long	0x5ce
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xc
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xc
	.byte	0xb7
	.long	0x5ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xc
	.byte	0xb8
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xc
	.byte	0xbc
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58b
	.uleb128 0x3
	.byte	0x4
	.long	0x302
	.uleb128 0xf
	.long	0x5ea
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57d
	.uleb128 0xf
	.long	0x600
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x610
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x17
	.byte	0x0
	.uleb128 0x11
	.long	0x859
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x21f
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
	.long	0x293
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
	.long	0x21f
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
	.long	0x293
	.uleb128 0x16
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x218
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x21f
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x205
	.uleb128 0x16
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9e
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19f
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
	.long	0x1e7
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
	.byte	0x6
	.byte	0x3d
	.long	0x152f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x152f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x218
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
	.byte	0x2
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x2
	.byte	0xb5
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x2
	.byte	0xb8
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x2
	.byte	0xb9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x2
	.byte	0xbc
	.long	0x1b46
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x2
	.byte	0xbc
	.long	0x1b46
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x2
	.byte	0xc1
	.long	0x1a76
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x2
	.byte	0xc5
	.long	0x1a76
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x2
	.byte	0xcb
	.long	0x1a76
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x2
	.byte	0xcd
	.long	0x1a76
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0xd0
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x2
	.byte	0xd3
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x145d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x2
	.byte	0xd6
	.long	0x145d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x2
	.byte	0xd9
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x2
	.byte	0xdc
	.long	0x1dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0xdf
	.long	0x1a84
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x2
	.byte	0xe2
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x2
	.byte	0xe5
	.long	0x218
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
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1498
	.long	0x9e
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x262
	.uleb128 0x4
	.long	0x1503
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x1503
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x1503
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x6
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
	.long	0x226
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x14ab
	.uleb128 0x3
	.byte	0x4
	.long	0x1519
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
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
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x21f
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
	.long	0x2a4
	.uleb128 0x10
	.long	0x226
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
	.uleb128 0x4
	.long	0x15f8
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x9
	.byte	0x32
	.long	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x9
	.byte	0x36
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.long	0x1793
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x9
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
	.long	0x188f
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x9
	.byte	0x55
	.uleb128 0x16
	.string	"c"
	.byte	0x9
	.byte	0x56
	.long	0x5da
	.uleb128 0x16
	.string	"uc"
	.byte	0x9
	.byte	0x58
	.long	0x188f
	.uleb128 0x16
	.string	"s"
	.byte	0x9
	.byte	0x5a
	.long	0x189f
	.uleb128 0x16
	.string	"us"
	.byte	0x9
	.byte	0x5c
	.long	0x18af
	.uleb128 0x16
	.string	"i"
	.byte	0x9
	.byte	0x5e
	.long	0x18bf
	.uleb128 0x16
	.string	"u"
	.byte	0x9
	.byte	0x60
	.long	0x18cf
	.uleb128 0x16
	.string	"l"
	.byte	0x9
	.byte	0x62
	.long	0x18df
	.uleb128 0x16
	.string	"ul"
	.byte	0x9
	.byte	0x64
	.long	0x18ef
	.uleb128 0x16
	.string	"hint"
	.byte	0x9
	.byte	0x66
	.long	0x18ff
	.uleb128 0x16
	.string	"uhint"
	.byte	0x9
	.byte	0x68
	.long	0x159d
	.uleb128 0x16
	.string	"generic"
	.byte	0x9
	.byte	0x6a
	.long	0x190f
	.uleb128 0x16
	.string	"cptr"
	.byte	0x9
	.byte	0x6c
	.long	0x191f
	.uleb128 0x16
	.string	"rtx"
	.byte	0x9
	.byte	0x6e
	.long	0x192f
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x9
	.byte	0x70
	.long	0x193f
	.uleb128 0x16
	.string	"tree"
	.byte	0x9
	.byte	0x72
	.long	0x194f
	.uleb128 0x16
	.string	"bitmap"
	.byte	0x9
	.byte	0x74
	.long	0x195f
	.uleb128 0x16
	.string	"reg"
	.byte	0x9
	.byte	0x76
	.long	0x196f
	.uleb128 0x16
	.string	"const_equiv"
	.byte	0x9
	.byte	0x78
	.long	0x1994
	.uleb128 0x16
	.string	"bb"
	.byte	0x9
	.byte	0x7a
	.long	0x19a4
	.uleb128 0x16
	.string	"te"
	.byte	0x9
	.byte	0x7c
	.long	0x19b4
	.byte	0x0
	.uleb128 0xf
	.long	0x189f
	.long	0x23b
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18af
	.long	0x286
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18bf
	.long	0x24c
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18cf
	.long	0x218
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18df
	.long	0x21f
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18ef
	.long	0x2dd
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18ff
	.long	0x262
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x190f
	.long	0x293
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x191f
	.long	0x2fa
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x192f
	.long	0x2fc
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x193f
	.long	0xa9
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x194f
	.long	0x1ac
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x195f
	.long	0x1f3
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x196f
	.long	0x12d2
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x197f
	.long	0x198e
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x197f
	.uleb128 0xf
	.long	0x19a4
	.long	0x15c2
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x19b4
	.long	0x145d
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x19c4
	.long	0x19cf
	.uleb128 0x10
	.long	0x226
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x19c4
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x9
	.byte	0x7e
	.long	0x1793
	.uleb128 0x4
	.long	0x1a5d
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x9
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x9
	.byte	0x82
	.long	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x9
	.byte	0x83
	.long	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x9
	.byte	0x85
	.long	0x15f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0x9
	.byte	0x86
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x9
	.byte	0x87
	.long	0x19d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x9
	.byte	0x8a
	.long	0x1a70
	.uleb128 0x3
	.byte	0x4
	.long	0x19e8
	.uleb128 0x2
	.string	"regset"
	.byte	0x2
	.byte	0x22
	.long	0x1535
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x2
	.byte	0x75
	.long	0x293
	.uleb128 0x4
	.long	0x1b40
	.string	"edge_def"
	.byte	0x28
	.byte	0x2
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1b40
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x2
	.byte	0x7a
	.long	0x1b40
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x2
	.byte	0x7d
	.long	0x145d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x2
	.byte	0x7d
	.long	0x145d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x2
	.byte	0x80
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x2
	.byte	0x83
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x2
	.byte	0x85
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x2
	.byte	0x86
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x2
	.byte	0x87
	.long	0x1a84
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a95
	.uleb128 0x2
	.string	"edge"
	.byte	0x2
	.byte	0x89
	.long	0x1b40
	.uleb128 0x4
	.long	0x1dc2
	.string	"loop"
	.byte	0x80
	.byte	0x2
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x2
	.value	0x176
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x2
	.value	0x179
	.long	0x1dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x2
	.value	0x17c
	.long	0x1dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x2
	.value	0x17f
	.long	0x1dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x2
	.value	0x184
	.long	0x1e1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x2
	.value	0x187
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x2
	.value	0x18b
	.long	0x1dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x2
	.value	0x18f
	.long	0x1dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x2
	.value	0x192
	.long	0x15ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x2
	.value	0x195
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x2
	.value	0x198
	.long	0x1e1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x2
	.value	0x19b
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x2
	.value	0x19e
	.long	0x1e1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x2
	.value	0x1a1
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x2
	.value	0x1a4
	.long	0x15ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x2
	.value	0x1a7
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x2
	.value	0x1aa
	.long	0x1e23
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x2
	.value	0x1ae
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x2
	.value	0x1b1
	.long	0x1dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x2
	.value	0x1b4
	.long	0x1dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x2
	.value	0x1b7
	.long	0x1dc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x2
	.value	0x1ba
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x2
	.value	0x1bd
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x2
	.value	0x1c3
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x2
	.value	0x1c7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x2
	.value	0x1ca
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x2
	.value	0x1cd
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x2
	.value	0x1d1
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x2
	.value	0x1d4
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x2
	.value	0x1d7
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x2
	.value	0x1e2
	.long	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x2
	.value	0x1e6
	.long	0x218
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b52
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x2
	.byte	0xe6
	.long	0x145d
	.uleb128 0x18
	.long	.LASF3
	.byte	0x2
	.value	0x170
	.long	0x1de7
	.uleb128 0x3
	.byte	0x4
	.long	0x1ded
	.uleb128 0x19
	.long	0x1e1d
	.long	.LASF3
	.byte	0x8
	.byte	0x2
	.value	0x170
	.uleb128 0x6
	.string	"forest"
	.byte	0x1
	.byte	0x2e
	.long	0x1e68
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"varray"
	.byte	0x1
	.byte	0x2f
	.long	0x1a5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b46
	.uleb128 0x3
	.byte	0x4
	.long	0x1dc2
	.uleb128 0x1a
	.long	0x1e68
	.string	"cdi_direction"
	.byte	0x4
	.byte	0x2
	.value	0x32c
	.uleb128 0x12
	.string	"CDI_DOMINATORS"
	.sleb128 0
	.uleb128 0x12
	.string	"CDI_POST_DOMINATORS"
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.string	"et_forest_t"
	.byte	0x8
	.byte	0x3a
	.long	0x1e7b
	.uleb128 0x3
	.byte	0x4
	.long	0x1e81
	.uleb128 0x17
	.string	"et_forest"
	.byte	0x1
	.uleb128 0x2
	.string	"et_forest_node_t"
	.byte	0x8
	.byte	0x3b
	.long	0x1ea5
	.uleb128 0x3
	.byte	0x4
	.long	0x1eab
	.uleb128 0x17
	.string	"et_forest_node"
	.byte	0x1
	.uleb128 0x2
	.string	"TBB"
	.byte	0x1
	.byte	0x3f
	.long	0x21f
	.uleb128 0x4
	.long	0x1fc8
	.string	"dom_info"
	.byte	0x34
	.byte	0x1
	.byte	0x47
	.uleb128 0x6
	.string	"dfs_parent"
	.byte	0x1
	.byte	0x49
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x4d
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"path_min"
	.byte	0x1
	.byte	0x50
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bucket"
	.byte	0x1
	.byte	0x52
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"next_bucket"
	.byte	0x1
	.byte	0x54
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"dom"
	.byte	0x1
	.byte	0x57
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"set_chain"
	.byte	0x1
	.byte	0x5d
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"set_size"
	.byte	0x1
	.byte	0x5f
	.long	0x1fce
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"set_child"
	.byte	0x1
	.byte	0x62
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"dfs_order"
	.byte	0x1
	.byte	0x67
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfs_to_bb"
	.byte	0x1
	.byte	0x6c
	.long	0x1fd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"dfsnum"
	.byte	0x1
	.byte	0x6f
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"nodes"
	.byte	0x1
	.byte	0x71
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ebc
	.uleb128 0x3
	.byte	0x4
	.long	0x21f
	.uleb128 0x3
	.byte	0x4
	.long	0x1dc8
	.uleb128 0x1b
	.long	0x2132
	.string	"init_dom_info"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1c
	.string	"di"
	.byte	0x1
	.byte	0x98
	.long	0x2132
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"num"
	.byte	0x1
	.byte	0x9c
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	0x2031
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x9d
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x1e
	.long	0x204b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x9e
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x1e
	.long	0x2065
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x1e
	.long	0x207f
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x1e
	.long	0x2099
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa2
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x1e
	.long	0x20b3
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x1e
	.long	0x20cd
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1e
	.long	0x20e7
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa6
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1e
	.long	0x2101
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1e
	.long	0x211b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1f
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.long	0x21f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ec7
	.uleb128 0x1b
	.long	0x2168
	.string	"free_dom_info"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1c
	.string	"di"
	.byte	0x1
	.byte	0xb6
	.long	0x2132
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1b
	.long	0x226b
	.string	"calc_dfs_tree_nonrec"
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1c
	.string	"di"
	.byte	0x1
	.byte	0xcd
	.long	0x2132
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"bb"
	.byte	0x1
	.byte	0xce
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF4
	.byte	0x1
	.byte	0xcf
	.long	0x1e29
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"e"
	.byte	0x1
	.byte	0xd3
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"child_i"
	.byte	0x1
	.byte	0xd4
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"my_i"
	.byte	0x1
	.byte	0xd4
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"stack"
	.byte	0x1
	.byte	0xd5
	.long	0x1e1d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"sp"
	.byte	0x1
	.byte	0xd6
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF5
	.byte	0x1
	.byte	0xd9
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"ex_block"
	.byte	0x1
	.byte	0xdb
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	0x225a
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1d
	.string	"bn"
	.byte	0x1
	.byte	0xf1
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1d
	.string	"e_next"
	.byte	0x1
	.byte	0xf7
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	.LASF6
	.long	0x2b2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9082
	.byte	0x0
	.uleb128 0x23
	.long	0x22e8
	.string	"calc_dfs_tree"
	.byte	0x1
	.value	0x145
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x24
	.string	"di"
	.byte	0x1
	.value	0x143
	.long	0x2132
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x144
	.long	0x1e29
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"begin"
	.byte	0x1
	.value	0x147
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	0x22d7
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.value	0x154
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x22
	.long	.LASF6
	.long	0x2b19
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9173
	.byte	0x0
	.uleb128 0x23
	.long	0x2334
	.string	"compress"
	.byte	0x1
	.value	0x170
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x24
	.string	"di"
	.byte	0x1
	.value	0x16e
	.long	0x2132
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x16f
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"parent"
	.byte	0x1
	.value	0x174
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x23
	.long	0x23a3
	.string	"link_roots"
	.byte	0x1
	.value	0x1a5
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST5
	.uleb128 0x24
	.string	"di"
	.byte	0x1
	.value	0x1a3
	.long	0x2132
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x1a4
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"w"
	.byte	0x1
	.value	0x1a4
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x1a6
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.value	0x1bc
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x2482
	.string	"calc_idoms"
	.byte	0x1
	.value	0x1d1
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST6
	.uleb128 0x24
	.string	"di"
	.byte	0x1
	.value	0x1cf
	.long	0x2132
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x1d0
	.long	0x1e29
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"v"
	.byte	0x1
	.value	0x1d2
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"w"
	.byte	0x1
	.value	0x1d2
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.string	"k"
	.byte	0x1
	.value	0x1d2
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"par"
	.byte	0x1
	.value	0x1d2
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.value	0x1d3
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x1dd
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.value	0x1de
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"e_next"
	.byte	0x1
	.value	0x1de
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x26
	.string	"k1"
	.byte	0x1
	.value	0x1ed
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.value	0x1ee
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	0x24cb
	.string	"eval"
	.byte	0x1
	.value	0x186
	.byte	0x1
	.long	0x1ebc
	.long	.LFB20
	.long	.LFE20
	.long	.LLST7
	.uleb128 0x24
	.string	"di"
	.byte	0x1
	.value	0x184
	.long	0x2132
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.value	0x185
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"rep"
	.byte	0x1
	.value	0x189
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x2551
	.byte	0x1
	.string	"calculate_dominance_info"
	.byte	0x1
	.value	0x230
	.byte	0x1
	.long	0x1ddb
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x25
	.long	.LASF4
	.byte	0x1
	.value	0x22f
	.long	0x1e29
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"di"
	.byte	0x1
	.value	0x231
	.long	0x1ec7
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.string	"info"
	.byte	0x1
	.value	0x232
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.value	0x233
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.value	0x249
	.long	0x1ebc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x259a
	.byte	0x1
	.string	"free_dominance_info"
	.byte	0x1
	.value	0x257
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x24
	.string	"info"
	.byte	0x1
	.value	0x256
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x258
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x29
	.long	0x25ea
	.byte	0x1
	.string	"get_immediate_dominator"
	.byte	0x1
	.value	0x26c
	.byte	0x1
	.long	0x1dc8
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x26a
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x26b
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2a
	.long	0x2688
	.byte	0x1
	.string	"set_immediate_dominator"
	.byte	0x1
	.value	0x278
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x276
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x277
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"dominated_by"
	.byte	0x1
	.value	0x277
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"aux_bb_node"
	.byte	0x1
	.value	0x279
	.long	0x2fa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"bb_node"
	.byte	0x1
	.value	0x27a
	.long	0x1e8d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LASF6
	.long	0x2b04
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9779
	.byte	0x0
	.uleb128 0x29
	.long	0x26fa
	.byte	0x1
	.string	"get_dominated_by"
	.byte	0x1
	.value	0x28e
	.byte	0x1
	.long	0x218
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x28b
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x28c
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"bbs"
	.byte	0x1
	.value	0x28d
	.long	0x26fa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x28f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x28f
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1fd4
	.uleb128 0x2a
	.long	0x27aa
	.byte	0x1
	.string	"redirect_immediate_dominators"
	.byte	0x1
	.value	0x29e
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x29b
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x29c
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"to"
	.byte	0x1
	.value	0x29d
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"bbs"
	.byte	0x1
	.value	0x29f
	.long	0x27aa
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"node"
	.byte	0x1
	.value	0x2a0
	.long	0x1e8d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"node2"
	.byte	0x1
	.value	0x2a1
	.long	0x1e8d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x2a2
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x2a3
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e8d
	.uleb128 0x29
	.long	0x2811
	.byte	0x1
	.string	"nearest_common_dominator"
	.byte	0x1
	.value	0x2b3
	.byte	0x1
	.long	0x1dc8
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x2b0
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb1"
	.byte	0x1
	.value	0x2b1
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"bb2"
	.byte	0x1
	.value	0x2b2
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x29
	.long	0x2868
	.byte	0x1
	.string	"dominated_by_p"
	.byte	0x1
	.value	0x2c5
	.byte	0x1
	.long	0x2868
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x2c2
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb1"
	.byte	0x1
	.value	0x2c3
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"bb2"
	.byte	0x1
	.value	0x2c4
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x2a
	.long	0x28f6
	.byte	0x1
	.string	"verify_dominators"
	.byte	0x1
	.value	0x2cd
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x2cc
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x2ce
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x2cf
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	0x28e5
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x26
	.string	"dom_bb"
	.byte	0x1
	.value	0x2d3
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x22
	.long	.LASF6
	.long	0x2aff
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9925
	.byte	0x0
	.uleb128 0x29
	.long	0x295f
	.byte	0x1
	.string	"recount_dominator"
	.byte	0x1
	.value	0x2e6
	.byte	0x1
	.long	0x1dc8
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x2e4
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x2e5
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"dom_bb"
	.byte	0x1
	.value	0x2e7
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.value	0x2e8
	.long	0x1b46
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x29fe
	.byte	0x1
	.string	"iterate_fix_dominators"
	.byte	0x1
	.value	0x2fa
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x2f7
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bbs"
	.byte	0x1
	.value	0x2f8
	.long	0x1fd4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x2f9
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x2fb
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.string	"changed"
	.byte	0x1
	.value	0x2fb
	.long	0x218
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"old_dom"
	.byte	0x1
	.value	0x2fc
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.string	"new_dom"
	.byte	0x1
	.value	0x2fc
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x2a48
	.byte	0x1
	.string	"add_to_dominance_info"
	.byte	0x1
	.value	0x312
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x310
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x311
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2a
	.long	0x2a97
	.byte	0x1
	.string	"delete_from_dominance_info"
	.byte	0x1
	.value	0x31f
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x31d
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x31e
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2a
	.long	0x2aef
	.byte	0x1
	.string	"debug_dominance_info"
	.byte	0x1
	.value	0x327
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x24
	.string	"dom"
	.byte	0x1
	.value	0x326
	.long	0x1ddb
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"bb"
	.byte	0x1
	.value	0x328
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"bb2"
	.byte	0x1
	.value	0x328
	.long	0x1dc8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xf
	.long	0x2aff
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x11
	.byte	0x0
	.uleb128 0x8
	.long	0x2aef
	.uleb128 0x8
	.long	0x600
	.uleb128 0xf
	.long	0x2b19
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x2b09
	.uleb128 0xf
	.long	0x2b2e
	.long	0x210
	.uleb128 0x10
	.long	0x226
	.byte	0x14
	.byte	0x0
	.uleb128 0x8
	.long	0x2b1e
	.uleb128 0x2b
	.string	"stderr"
	.byte	0xb
	.byte	0x90
	.long	0x5d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"n_basic_blocks"
	.byte	0x2
	.byte	0xf2
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"last_basic_block"
	.byte	0x2
	.byte	0xf6
	.long	0x218
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x2b85
	.long	0x12d8
	.uleb128 0x10
	.long	0x226
	.byte	0x1
	.byte	0x0
	.uleb128 0x2c
	.string	"entry_exit_blocks"
	.byte	0x2
	.value	0x139
	.long	0x2b75
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x17b
	.value	0x2
	.long	.Ldebug_info0
	.long	0x2ba2
	.long	0x24cb
	.string	"calculate_dominance_info"
	.long	0x2551
	.string	"free_dominance_info"
	.long	0x259a
	.string	"get_immediate_dominator"
	.long	0x25ea
	.string	"set_immediate_dominator"
	.long	0x2688
	.string	"get_dominated_by"
	.long	0x2700
	.string	"redirect_immediate_dominators"
	.long	0x27b0
	.string	"nearest_common_dominator"
	.long	0x2811
	.string	"dominated_by_p"
	.long	0x2871
	.string	"verify_dominators"
	.long	0x28f6
	.string	"recount_dominator"
	.long	0x295f
	.string	"iterate_fix_dominators"
	.long	0x29fe
	.string	"add_to_dominance_info"
	.long	0x2a48
	.string	"delete_from_dominance_info"
	.long	0x2a97
	.string	"debug_dominance_info"
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
.LASF4:
	.string	"reverse"
.LASF3:
	.string	"dominance_info"
.LASF5:
	.string	"en_block"
.LASF2:
	.string	"mem_attrs"
.LASF6:
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
