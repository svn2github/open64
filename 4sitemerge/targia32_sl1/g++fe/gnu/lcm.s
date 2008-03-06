	.file	"lcm.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	compute_antinout_edge, @function
compute_antinout_edge:
.LFB15:
	.file 1 "../../../kg++fe/gnu/lcm.c"
	.loc 1 109 0
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
	.loc 1 118 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 123 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_ones@PLT
	.loc 1 127 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L2
.L3:
	.loc 1 129 0
	movl	-24(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	addl	$4, -24(%ebp)
	.loc 1 130 0
	movl	-36(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 127 0
	movl	-36(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -36(%ebp)
.L2:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -36(%ebp)
	jne	.L3
	.loc 1 133 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 134 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 135 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 139 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L5
.L6:
	.loc 1 140 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	%eax, 40(%edx)
	.loc 1 139 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L5:
	cmpl	$0, -32(%ebp)
	jne	.L6
	.loc 1 143 0
	jmp	.L24
.L9:
	.loc 1 146 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	addl	$4, -20(%ebp)
	.loc 1 147 0
	subl	$1, -12(%ebp)
	.loc 1 149 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L10
	.loc 1 150 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
.L10:
	.loc 1 152 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	jne	.L12
	.loc 1 156 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	jmp	.L14
.L12:
	.loc 1 161 0
	movl	-36(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 162 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_intersection_of_succs@PLT
.L14:
	.loc 1 165 0
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_or_b_and_c_cg@PLT
	testb	%al, %al
	je	.L8
	.loc 1 170 0
	movl	-36(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L16
.L17:
	.loc 1 171 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L18
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L18
	.loc 1 173 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -24(%ebp)
	.loc 1 174 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 175 0
	addl	$1, -12(%ebp)
	.loc 1 176 0
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L18
	.loc 1 177 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L18:
	.loc 1 170 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L16:
	cmpl	$0, -32(%ebp)
	jne	.L17
.L8:
.L24:
	.loc 1 143 0
	cmpl	$0, -12(%ebp)
	jne	.L9
	.loc 1 181 0
	call	clear_aux_for_edges@PLT
	.loc 1 182 0
	call	clear_aux_for_blocks@PLT
	.loc 1 183 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 184 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	compute_antinout_edge, .-compute_antinout_edge
	.type	compute_earliest, @function
compute_earliest:
.LFB16:
	.loc 1 193 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%ebx
.LCFI7:
	subl	$52, %esp
.LCFI8:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 198 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 200 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 201 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 203 0
	movl	$0, -20(%ebp)
	jmp	.L26
.L27:
	.loc 1 205 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 206 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 207 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L28
	.loc 1 208 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	jmp	.L30
.L28:
	.loc 1 211 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L31
	.loc 1 212 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	jmp	.L30
.L31:
	.loc 1 215 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
	.loc 1 217 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_not@PLT
	.loc 1 218 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	28(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	32(%ebp), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	sbitmap_a_and_b_or_c@PLT
.L30:
	.loc 1 203 0
	addl	$1, -20(%ebp)
.L26:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L27
	.loc 1 224 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 225 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 226 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	compute_earliest, .-compute_earliest
	.type	compute_laterin, @function
compute_laterin:
.LFB17:
	.loc 1 261 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%esi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$64, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 267 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 272 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 276 0
	movl	$0, -40(%ebp)
	jmp	.L36
.L37:
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 276 0
	addl	$1, -40(%ebp)
.L36:
	movl	-40(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jl	.L37
	.loc 1 289 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_ones@PLT
	.loc 1 295 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L39
.L40:
	.loc 1 296 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 295 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L39:
	cmpl	$0, -36(%ebp)
	jne	.L40
	.loc 1 300 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L42
.L43:
	.loc 1 302 0
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	addl	$4, -28(%ebp)
	.loc 1 303 0
	movl	-16(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 300 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L42:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L43
	.loc 1 305 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 309 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 310 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 313 0
	jmp	.L45
.L46:
	.loc 1 316 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$4, -24(%ebp)
	.loc 1 317 0
	movl	-16(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 318 0
	subl	$1, -12(%ebp)
	.loc 1 319 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L47
	.loc 1 320 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
.L47:
	.loc 1 323 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	.loc 1 324 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L49
.L50:
	.loc 1 325 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_and_b@PLT
	.loc 1 324 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L49:
	cmpl	$0, -36(%ebp)
	jne	.L50
	.loc 1 328 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L52
.L53:
	.loc 1 329 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_union_of_diff_cg@PLT
	testb	%al, %al
	je	.L54
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L54
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L54
	.loc 1 337 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -28(%ebp)
	.loc 1 338 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 339 0
	addl	$1, -12(%ebp)
	.loc 1 340 0
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L54
	.loc 1 341 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
.L54:
	.loc 1 328 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L52:
	cmpl	$0, -36(%ebp)
	jne	.L53
.L45:
	.loc 1 313 0
	cmpl	$0, -12(%ebp)
	jne	.L46
	.loc 1 348 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	.loc 1 349 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L60
.L61:
	.loc 1 350 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_and_b@PLT
	.loc 1 349 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L60:
	cmpl	$0, -36(%ebp)
	jne	.L61
	.loc 1 354 0
	call	clear_aux_for_edges@PLT
	.loc 1 355 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 356 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	compute_laterin, .-compute_laterin
	.type	compute_insert_delete, @function
compute_insert_delete:
.LFB18:
	.loc 1 365 0
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
	.loc 1 369 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L65
.L66:
	.loc 1 370 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
	.loc 1 369 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L65:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L66
	.loc 1 372 0
	movl	$0, -16(%ebp)
	jmp	.L68
.L69:
.LBB2:
	.loc 1 374 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 376 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L70
	.loc 1 377 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
	jmp	.L72
.L70:
	.loc 1 379 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
.L72:
.LBE2:
	.loc 1 372 0
	addl	$1, -16(%ebp)
.L68:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L69
	.loc 1 381 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	compute_insert_delete, .-compute_insert_delete
.globl pre_edge_lcm
	.type	pre_edge_lcm, @function
pre_edge_lcm:
.LFB19:
	.loc 1 397 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$84, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 404 0
	call	create_edge_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 405 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 421 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 422 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 423 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_available@PLT
	.loc 1 424 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 427 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 428 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 429 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_antinout_edge
	.loc 1 440 0
	movl	12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 441 0
	movl	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_earliest
	.loc 1 448 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 449 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 450 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 452 0
	movl	12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 455 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 456 0
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_laterin
	.loc 1 466 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 468 0
	movl	12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 469 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, %edx
	movl	36(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 470 0
	movl	36(%ebp), %eax
	movl	(%eax), %edx
	movl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_insert_delete
	.loc 1 472 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 473 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 484 0
	movl	-12(%ebp), %eax
	.loc 1 485 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	pre_edge_lcm, .-pre_edge_lcm
.globl compute_available
	.type	compute_available, @function
compute_available:
.LFB20:
	.loc 1 493 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%esi
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$48, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 501 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 505 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_ones@PLT
	.loc 1 509 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L78
.L79:
	.loc 1 511 0
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	addl	$4, -28(%ebp)
	.loc 1 512 0
	movl	-16(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 509 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -16(%ebp)
.L78:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L79
	.loc 1 515 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 516 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 517 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 521 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L81
.L82:
	.loc 1 522 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	%eax, 40(%edx)
	.loc 1 521 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L81:
	cmpl	$0, -36(%ebp)
	jne	.L82
	.loc 1 525 0
	jmp	.L100
.L85:
	.loc 1 528 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$4, -24(%ebp)
	.loc 1 529 0
	subl	$1, -12(%ebp)
	.loc 1 531 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L86
	.loc 1 532 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
.L86:
	.loc 1 537 0
	movl	-16(%ebp), %eax
	movl	40(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	jne	.L88
	.loc 1 540 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	jmp	.L90
.L88:
	.loc 1 545 0
	movl	-16(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 546 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_intersection_of_preds@PLT
.L90:
	.loc 1 549 0
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %esi
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_union_of_diff_cg@PLT
	testb	%al, %al
	je	.L84
	.loc 1 553 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L92
.L93:
	.loc 1 554 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L94
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L94
	.loc 1 556 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -28(%ebp)
	.loc 1 557 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 558 0
	addl	$1, -12(%ebp)
	.loc 1 560 0
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L94
	.loc 1 561 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
.L94:
	.loc 1 553 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L92:
	cmpl	$0, -36(%ebp)
	jne	.L93
.L84:
.L100:
	.loc 1 525 0
	cmpl	$0, -12(%ebp)
	jne	.L85
	.loc 1 565 0
	call	clear_aux_for_edges@PLT
	.loc 1 566 0
	call	clear_aux_for_blocks@PLT
	.loc 1 567 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 568 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	compute_available, .-compute_available
	.type	compute_farthest, @function
compute_farthest:
.LFB21:
	.loc 1 578 0
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
	.loc 1 583 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 585 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 586 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 588 0
	movl	$0, -20(%ebp)
	jmp	.L102
.L103:
	.loc 1 590 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 591 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 592 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L104
	.loc 1 593 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	jmp	.L106
.L104:
	.loc 1 596 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L107
	.loc 1 597 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	jmp	.L106
.L107:
	.loc 1 600 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
	.loc 1 602 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_not@PLT
	.loc 1 603 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	28(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	32(%ebp), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	sbitmap_a_and_b_or_c@PLT
.L106:
	.loc 1 588 0
	addl	$1, -20(%ebp)
.L102:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L103
	.loc 1 609 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 610 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 611 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	compute_farthest, .-compute_farthest
	.type	compute_nearerout, @function
compute_nearerout:
.LFB22:
	.loc 1 622 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%esi
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$48, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 627 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 632 0
	movl	n_basic_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 637 0
	movl	$0, -28(%ebp)
	jmp	.L112
.L113:
	.loc 1 638 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 637 0
	addl	$1, -28(%ebp)
.L112:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jl	.L113
	.loc 1 641 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_ones@PLT
	.loc 1 647 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L115
.L116:
	.loc 1 648 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 647 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L115:
	cmpl	$0, -24(%ebp)
	jne	.L116
	.loc 1 652 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L118
.L119:
	.loc 1 654 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	addl	$4, -16(%ebp)
	.loc 1 655 0
	movl	-12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 652 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L118:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L119
	.loc 1 659 0
	jmp	.L121
.L122:
	.loc 1 662 0
	subl	$4, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 663 0
	movl	-12(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 666 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	.loc 1 667 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L123
.L124:
	.loc 1 668 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_and_b@PLT
	.loc 1 667 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L123:
	cmpl	$0, -24(%ebp)
	jne	.L124
	.loc 1 672 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L126
.L127:
	.loc 1 673 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_union_of_diff_cg@PLT
	testb	%al, %al
	je	.L128
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L128
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L128
	.loc 1 681 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	addl	$4, -16(%ebp)
	.loc 1 682 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 40(%edx)
.L128:
	.loc 1 672 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L126:
	cmpl	$0, -24(%ebp)
	jne	.L127
.L121:
	.loc 1 659 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L122
	.loc 1 689 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	.loc 1 690 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L133
.L134:
	.loc 1 691 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_a_and_b@PLT
	.loc 1 690 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L133:
	cmpl	$0, -24(%ebp)
	jne	.L134
	.loc 1 695 0
	call	clear_aux_for_edges@PLT
	.loc 1 696 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 697 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE22:
	.size	compute_nearerout, .-compute_nearerout
	.type	compute_rev_insert_delete, @function
compute_rev_insert_delete:
.LFB23:
	.loc 1 706 0
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
	.loc 1 710 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L138
.L139:
	.loc 1 711 0
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	28(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
	.loc 1 710 0
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
.L138:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L139
	.loc 1 713 0
	movl	$0, -16(%ebp)
	jmp	.L141
.L142:
.LBB3:
	.loc 1 715 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 716 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jne	.L143
	.loc 1 717 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
	jmp	.L145
.L143:
	.loc 1 719 0
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	24(%ebp), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_difference@PLT
.L145:
.LBE3:
	.loc 1 713 0
	addl	$1, -16(%ebp)
.L141:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L142
	.loc 1 721 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	compute_rev_insert_delete, .-compute_rev_insert_delete
.globl pre_edge_rev_lcm
	.type	pre_edge_rev_lcm, @function
pre_edge_rev_lcm:
.LFB24:
	.loc 1 739 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$84, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 746 0
	call	create_edge_list@PLT
	movl	%eax, -12(%ebp)
	.loc 1 747 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 749 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 750 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 751 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 752 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_vector_zero@PLT
	.loc 1 753 0
	movl	-36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_antinout_edge
	.loc 1 756 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 757 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 758 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_available@PLT
	.loc 1 784 0
	movl	12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 785 0
	movl	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_farthest
	.loc 1 793 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 794 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 796 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 797 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 799 0
	movl	12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 802 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 803 0
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_nearerout
	.loc 1 814 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 816 0
	movl	12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 817 0
	movl	12(%ebp), %edx
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sbitmap_vector_alloc@PLT
	movl	%eax, %edx
	movl	36(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 818 0
	movl	36(%ebp), %eax
	movl	(%eax), %edx
	movl	32(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	compute_rev_insert_delete
	.loc 1 821 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 822 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 832 0
	movl	-12(%ebp), %eax
	.loc 1 833 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	pre_edge_rev_lcm, .-pre_edge_rev_lcm
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
	.long	.LCFI13-.LCFI10
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI26-.LCFI23
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI27-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI31-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI32
	.byte	0x83
	.uleb128 0x4
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
	.file 2 "../../../kg++fe/gnu/sbitmap.h"
	.file 3 "../../../kg++fe/gnu/basic-block.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/MIPS/config.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/bitmap.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.section	.debug_info
	.long	0x2307
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/lcm.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x5
	.byte	0xc
	.long	0xa3
	.uleb128 0x3
	.byte	0x4
	.long	0xa9
	.uleb128 0x4
	.long	0x199
	.string	"rtx_def"
	.byte	0xc
	.byte	0x5
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0x84f
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x87
	.long	0x606
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x146e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x5
	.byte	0xe
	.long	0x1a6
	.uleb128 0x3
	.byte	0x4
	.long	0x1ac
	.uleb128 0x4
	.long	0x1e1
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x147e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x5
	.byte	0x10
	.long	0x1ed
	.uleb128 0x3
	.byte	0x4
	.long	0x1f3
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x205
	.uleb128 0x8
	.long	0x20a
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
	.long	0x219
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
	.long	0x28d
	.uleb128 0x2
	.string	"__off_t"
	.byte	0xa
	.byte	0x90
	.long	0x2d7
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0xa
	.byte	0x91
	.long	0x2b8
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20a
	.uleb128 0x2
	.string	"FILE"
	.byte	0x8
	.byte	0x2e
	.long	0x308
	.uleb128 0xc
	.long	0x583
	.long	.LASF1
	.byte	0x94
	.byte	0x8
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x9
	.value	0x10c
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x9
	.value	0x111
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x9
	.value	0x112
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x9
	.value	0x113
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x9
	.value	0x114
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x9
	.value	0x115
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x9
	.value	0x116
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x9
	.value	0x117
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x9
	.value	0x118
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x9
	.value	0x11a
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x9
	.value	0x11b
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x9
	.value	0x11c
	.long	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x9
	.value	0x11e
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x9
	.value	0x120
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x9
	.value	0x122
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x9
	.value	0x126
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x9
	.value	0x128
	.long	0x2c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x9
	.value	0x12c
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x9
	.value	0x12d
	.long	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x9
	.value	0x12e
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x9
	.value	0x132
	.long	0x5f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x9
	.value	0x13b
	.long	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x9
	.value	0x144
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x9
	.value	0x145
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x9
	.value	0x146
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x9
	.value	0x147
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x9
	.value	0x148
	.long	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x9
	.value	0x14a
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x9
	.value	0x14c
	.long	0x5f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x9
	.byte	0xb0
	.uleb128 0x4
	.long	0x5d4
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x9
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x9
	.byte	0xb7
	.long	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x9
	.byte	0xb8
	.long	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x9
	.byte	0xbc
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x591
	.uleb128 0x3
	.byte	0x4
	.long	0x308
	.uleb128 0xf
	.long	0x5f0
	.long	0x20a
	.uleb128 0x10
	.long	0x220
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x583
	.uleb128 0xf
	.long	0x606
	.long	0x20a
	.uleb128 0x10
	.long	0x220
	.byte	0x27
	.byte	0x0
	.uleb128 0x11
	.long	0x84f
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
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
	.long	0x101e
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
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
	.long	0x10f8
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x219
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x219
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x4
	.byte	0x57
	.long	0x219
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x4
	.byte	0x58
	.long	0x101e
	.uleb128 0xc
	.long	0x116f
	.long	.LASF2
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x4
	.byte	0x68
	.long	0x1113
	.uleb128 0x15
	.long	0x124c
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x28d
	.uleb128 0x16
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x212
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x219
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x1ff
	.uleb128 0x16
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x98
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x199
	.uleb128 0x16
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x606
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x10f8
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x1260
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x12c8
	.uleb128 0x16
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e1
	.uleb128 0x16
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x1453
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x1459
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x124c
	.uleb128 0x4
	.long	0x12c8
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x7
	.byte	0x3d
	.long	0x1535
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x1535
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x3f
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1266
	.uleb128 0x4
	.long	0x1453
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x3
	.byte	0xb5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x3
	.byte	0xb5
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x3
	.byte	0xb8
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x3
	.byte	0xb9
	.long	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x3
	.byte	0xbc
	.long	0x1688
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x3
	.byte	0xbc
	.long	0x1688
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x3
	.byte	0xc1
	.long	0x15b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x3
	.byte	0xc5
	.long	0x15b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x3
	.byte	0xcb
	.long	0x15b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x3
	.byte	0xcd
	.long	0x15b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x3
	.byte	0xd0
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x3
	.byte	0xd3
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x1453
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x1453
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x3
	.byte	0xd9
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x3
	.byte	0xdc
	.long	0x1904
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x3
	.byte	0xdf
	.long	0x15c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x3
	.byte	0xe2
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x3
	.byte	0xe5
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12ce
	.uleb128 0x3
	.byte	0x4
	.long	0x116f
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x117a
	.uleb128 0xf
	.long	0x147e
	.long	0x145f
	.uleb128 0x10
	.long	0x220
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x148e
	.long	0x98
	.uleb128 0x10
	.long	0x220
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x149e
	.long	0x29e
	.uleb128 0x10
	.long	0x220
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x25c
	.uleb128 0x4
	.long	0x1509
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x7
	.byte	0x35
	.long	0x1509
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x1509
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x37
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x150f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14b1
	.uleb128 0xf
	.long	0x151f
	.long	0x149e
	.uleb128 0x10
	.long	0x220
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x14b1
	.uleb128 0x3
	.byte	0x4
	.long	0x151f
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0x12c8
	.uleb128 0x4
	.long	0x15a3
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x2
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x2
	.byte	0x21
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x2
	.byte	0x22
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x2
	.byte	0x23
	.long	0x219
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x2
	.byte	0x24
	.long	0x148e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x2
	.byte	0x25
	.long	0x15b2
	.uleb128 0x3
	.byte	0x4
	.long	0x1549
	.uleb128 0x2
	.string	"regset"
	.byte	0x3
	.byte	0x22
	.long	0x153b
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x3
	.byte	0x75
	.long	0x28d
	.uleb128 0x4
	.long	0x1682
	.string	"edge_def"
	.byte	0x28
	.byte	0x3
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x3
	.byte	0x7a
	.long	0x1682
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x3
	.byte	0x7a
	.long	0x1682
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x3
	.byte	0x7d
	.long	0x1453
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x3
	.byte	0x7d
	.long	0x1453
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x3
	.byte	0x80
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x3
	.byte	0x83
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x3
	.byte	0x85
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x3
	.byte	0x86
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x3
	.byte	0x87
	.long	0x15c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15d7
	.uleb128 0x2
	.string	"edge"
	.byte	0x3
	.byte	0x89
	.long	0x1682
	.uleb128 0x4
	.long	0x1904
	.string	"loop"
	.byte	0x80
	.byte	0x3
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x3
	.value	0x176
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x3
	.value	0x179
	.long	0x190a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x3
	.value	0x17c
	.long	0x190a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x3
	.value	0x17f
	.long	0x190a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x3
	.value	0x184
	.long	0x191d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x3
	.value	0x187
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x3
	.value	0x18b
	.long	0x190a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x3
	.value	0x18f
	.long	0x190a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x3
	.value	0x192
	.long	0x15a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x3
	.value	0x195
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x3
	.value	0x198
	.long	0x191d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x3
	.value	0x19b
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x3
	.value	0x19e
	.long	0x191d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x3
	.value	0x1a1
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x3
	.value	0x1a4
	.long	0x15a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x3
	.value	0x1a7
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x3
	.value	0x1aa
	.long	0x1923
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x3
	.value	0x1ae
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x3
	.value	0x1b1
	.long	0x1904
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x3
	.value	0x1b4
	.long	0x1904
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x3
	.value	0x1b7
	.long	0x1904
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x3
	.value	0x1ba
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x3
	.value	0x1bd
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x3
	.value	0x1c3
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x3
	.value	0x1c7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x3
	.value	0x1ca
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x3
	.value	0x1cd
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x3
	.value	0x1d1
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x3
	.value	0x1d4
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x3
	.value	0x1d7
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x3
	.value	0x1e2
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x3
	.value	0x1e6
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1694
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x3
	.byte	0xe6
	.long	0x1453
	.uleb128 0x3
	.byte	0x4
	.long	0x1688
	.uleb128 0x3
	.byte	0x4
	.long	0x1904
	.uleb128 0x18
	.long	0x1975
	.long	.LASF3
	.byte	0xc
	.byte	0x3
	.value	0x23b
	.uleb128 0xd
	.string	"num_blocks"
	.byte	0x3
	.value	0x23c
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF4
	.byte	0x3
	.value	0x23d
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"index_to_edge"
	.byte	0x3
	.value	0x23e
	.long	0x191d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x1a
	.long	0x1a45
	.string	"compute_antinout_edge"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.byte	0x69
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x1
	.byte	0x6a
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"antin"
	.byte	0x1
	.byte	0x6b
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.byte	0x6c
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.string	"bb"
	.byte	0x1
	.byte	0x6e
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"e"
	.byte	0x1
	.byte	0x6f
	.long	0x1688
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF8
	.byte	0x1
	.byte	0x70
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"qin"
	.byte	0x1
	.byte	0x70
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"qout"
	.byte	0x1
	.byte	0x70
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"qend"
	.byte	0x1
	.byte	0x70
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"qlen"
	.byte	0x1
	.byte	0x71
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15a3
	.uleb128 0x3
	.byte	0x4
	.long	0x190a
	.uleb128 0x1a
	.long	0x1b32
	.string	"compute_earliest"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.byte	0xbe
	.long	0x1b32
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x1
	.byte	0xbf
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"antin"
	.byte	0x1
	.byte	0xc0
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x1
	.byte	0xc0
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.string	"avout"
	.byte	0x1
	.byte	0xc0
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.string	"kill"
	.byte	0x1
	.byte	0xc0
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x1
	.byte	0xc0
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1e
	.long	.LASF11
	.byte	0x1
	.byte	0xc2
	.long	0x15a3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF12
	.byte	0x1
	.byte	0xc2
	.long	0x15a3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0xc3
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.byte	0xc3
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"pred"
	.byte	0x1
	.byte	0xc4
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"succ"
	.byte	0x1
	.byte	0xc4
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1929
	.uleb128 0x1f
	.long	0x1c30
	.string	"compute_laterin"
	.byte	0x1
	.value	0x105
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x20
	.long	.LASF3
	.byte	0x1
	.value	0x103
	.long	0x1b32
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF10
	.byte	0x1
	.value	0x104
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF5
	.byte	0x1
	.value	0x104
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"later"
	.byte	0x1
	.value	0x104
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LASF13
	.byte	0x1
	.value	0x104
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.value	0x106
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x106
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x107
	.long	0x1688
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF8
	.byte	0x1
	.value	0x108
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"qin"
	.byte	0x1
	.value	0x108
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"qout"
	.byte	0x1
	.value	0x108
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"qend"
	.byte	0x1
	.value	0x108
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x108
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"qlen"
	.byte	0x1
	.value	0x109
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1f
	.long	0x1cea
	.string	"compute_insert_delete"
	.byte	0x1
	.value	0x16d
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x20
	.long	.LASF3
	.byte	0x1
	.value	0x16b
	.long	0x1b32
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF5
	.byte	0x1
	.value	0x16c
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"later"
	.byte	0x1
	.value	0x16c
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF13
	.byte	0x1
	.value	0x16c
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LASF14
	.byte	0x1
	.value	0x16c
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.long	.LASF15
	.byte	0x1
	.value	0x16c
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x16e
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x16f
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x176
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x1e1c
	.byte	0x1
	.string	"pre_edge_lcm"
	.byte	0x1
	.value	0x18d
	.byte	0x1
	.long	0x1b32
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x21
	.string	"file"
	.byte	0x1
	.value	0x185
	.long	0x1e1c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF9
	.byte	0x1
	.value	0x186
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF6
	.byte	0x1
	.value	0x187
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"avloc"
	.byte	0x1
	.value	0x188
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LASF5
	.byte	0x1
	.value	0x189
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.string	"kill"
	.byte	0x1
	.value	0x18a
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x20
	.long	.LASF14
	.byte	0x1
	.value	0x18b
	.long	0x1e22
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x20
	.long	.LASF15
	.byte	0x1
	.value	0x18c
	.long	0x1e22
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x23
	.string	"antin"
	.byte	0x1
	.value	0x18e
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF7
	.byte	0x1
	.value	0x18e
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF10
	.byte	0x1
	.value	0x18e
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"avin"
	.byte	0x1
	.value	0x18f
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"avout"
	.byte	0x1
	.value	0x18f
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"later"
	.byte	0x1
	.value	0x190
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF13
	.byte	0x1
	.value	0x190
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x191
	.long	0x1b32
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.value	0x192
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2fc
	.uleb128 0x3
	.byte	0x4
	.long	0x1a45
	.uleb128 0x26
	.long	0x1efc
	.byte	0x1
	.string	"compute_available"
	.byte	0x1
	.value	0x1ed
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x21
	.string	"avloc"
	.byte	0x1
	.value	0x1ec
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"kill"
	.byte	0x1
	.value	0x1ec
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"avout"
	.byte	0x1
	.value	0x1ec
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"avin"
	.byte	0x1
	.value	0x1ec
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x1ee
	.long	0x1688
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF8
	.byte	0x1
	.value	0x1ef
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"qin"
	.byte	0x1
	.value	0x1ef
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"qout"
	.byte	0x1
	.value	0x1ef
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"qend"
	.byte	0x1
	.value	0x1ef
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x1ef
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"qlen"
	.byte	0x1
	.value	0x1f0
	.long	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1f
	.long	0x1feb
	.string	"compute_farthest"
	.byte	0x1
	.value	0x242
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x20
	.long	.LASF3
	.byte	0x1
	.value	0x23f
	.long	0x1b32
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF9
	.byte	0x1
	.value	0x240
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF16
	.byte	0x1
	.value	0x241
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"st_avin"
	.byte	0x1
	.value	0x241
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LASF17
	.byte	0x1
	.value	0x241
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.string	"kill"
	.byte	0x1
	.value	0x241
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x20
	.long	.LASF18
	.byte	0x1
	.value	0x241
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x22
	.long	.LASF11
	.byte	0x1
	.value	0x243
	.long	0x15a3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF12
	.byte	0x1
	.value	0x243
	.long	0x15a3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x244
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.value	0x244
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"pred"
	.byte	0x1
	.value	0x245
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"succ"
	.byte	0x1
	.value	0x245
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1f
	.long	0x20b3
	.string	"compute_nearerout"
	.byte	0x1
	.value	0x26e
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x20
	.long	.LASF3
	.byte	0x1
	.value	0x26c
	.long	0x1b32
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF18
	.byte	0x1
	.value	0x26d
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF19
	.byte	0x1
	.value	0x26d
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF20
	.byte	0x1
	.value	0x26d
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LASF21
	.byte	0x1
	.value	0x26d
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.value	0x26f
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x26f
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x270
	.long	0x1688
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF8
	.byte	0x1
	.value	0x271
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"tos"
	.byte	0x1
	.value	0x271
	.long	0x1a4b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x271
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1f
	.long	0x216f
	.string	"compute_rev_insert_delete"
	.byte	0x1
	.value	0x2c2
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x20
	.long	.LASF3
	.byte	0x1
	.value	0x2c0
	.long	0x1b32
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF19
	.byte	0x1
	.value	0x2c1
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF20
	.byte	0x1
	.value	0x2c1
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF21
	.byte	0x1
	.value	0x2c1
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LASF14
	.byte	0x1
	.value	0x2c1
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.long	.LASF15
	.byte	0x1
	.value	0x2c1
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x2c3
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x2c4
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x2cb
	.long	0x190a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x22ac
	.byte	0x1
	.string	"pre_edge_rev_lcm"
	.byte	0x1
	.value	0x2e3
	.byte	0x1
	.long	0x1b32
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x21
	.string	"file"
	.byte	0x1
	.value	0x2db
	.long	0x1e1c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF9
	.byte	0x1
	.value	0x2dc
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF6
	.byte	0x1
	.value	0x2dd
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF19
	.byte	0x1
	.value	0x2de
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.string	"st_antloc"
	.byte	0x1
	.value	0x2df
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.string	"kill"
	.byte	0x1
	.value	0x2e0
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x20
	.long	.LASF14
	.byte	0x1
	.value	0x2e1
	.long	0x1e22
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x20
	.long	.LASF15
	.byte	0x1
	.value	0x2e2
	.long	0x1e22
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x22
	.long	.LASF17
	.byte	0x1
	.value	0x2e4
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"st_antout"
	.byte	0x1
	.value	0x2e4
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF16
	.byte	0x1
	.value	0x2e5
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"st_avin"
	.byte	0x1
	.value	0x2e5
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF18
	.byte	0x1
	.value	0x2e5
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF20
	.byte	0x1
	.value	0x2e6
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF21
	.byte	0x1
	.value	0x2e6
	.long	0x1a45
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF3
	.byte	0x1
	.value	0x2e7
	.long	0x1b32
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.value	0x2e8
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.string	"n_basic_blocks"
	.byte	0x3
	.byte	0xf2
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"last_basic_block"
	.byte	0x3
	.byte	0xf6
	.long	0x212
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x22ee
	.long	0x12ce
	.uleb128 0x10
	.long	0x220
	.byte	0x1
	.byte	0x0
	.uleb128 0x28
	.string	"entry_exit_blocks"
	.byte	0x3
	.value	0x139
	.long	0x22de
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.long	0x4a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x230b
	.long	0x1cea
	.string	"pre_edge_lcm"
	.long	0x1e28
	.string	"compute_available"
	.long	0x216f
	.string	"pre_edge_rev_lcm"
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
.LASF17:
	.string	"st_antin"
.LASF8:
	.string	"worklist"
.LASF4:
	.string	"num_edges"
.LASF9:
	.string	"n_exprs"
.LASF6:
	.string	"transp"
.LASF19:
	.string	"st_avloc"
.LASF13:
	.string	"laterin"
.LASF10:
	.string	"earliest"
.LASF3:
	.string	"edge_list"
.LASF2:
	.string	"mem_attrs"
.LASF21:
	.string	"nearerout"
.LASF16:
	.string	"st_avout"
.LASF20:
	.string	"nearer"
.LASF5:
	.string	"antloc"
.LASF12:
	.string	"temp_bitmap"
.LASF7:
	.string	"antout"
.LASF14:
	.string	"insert"
.LASF1:
	.string	"_IO_FILE"
.LASF15:
	.string	"delete"
.LASF11:
	.string	"difference"
.LASF18:
	.string	"farthest"
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
