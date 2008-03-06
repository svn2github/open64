	.file	"ssa-ccp.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	visit_phi_node, @function
visit_phi_node:
.LFB15:
	.file 1 "../../../kg++fe/gnu/ssa-ccp.c"
	.loc 1 143 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$92, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 145 0
	movl	$0, -48(%ebp)
	.loc 1 146 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 147 0
	movl	$0, -40(%ebp)
	.loc 1 148 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 149 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 150 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 152 0
	movl	$0, -52(%ebp)
	jmp	.L2
.L3:
	.loc 1 154 0
	movl	executable_edges@GOTOFF(%ebx), %esi
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-52(%ebp), %edx
	addl	$1, %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ecx,%eax,4), %edx
	movl	edges@GOTOFF(%ebx), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	find_edge_index@PLT
	shrl	$6, %eax
	movl	16(%esi,%eax,8), %edi
	movl	12(%esi,%eax,8), %esi
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-52(%ebp), %edx
	addl	$1, %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	16(%ecx,%eax,4), %edx
	movl	edges@GOTOFF(%ebx), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L20
	movl	%edi, %esi
	xorl	%edi, %edi
.L20:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L4
.LBB2:
	.loc 1 159 0
	movl	-52(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 162 0
	movl	-24(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 166 0
	cmpl	$2, -20(%ebp)
	jne	.L6
	.loc 1 168 0
	movl	$2, -40(%ebp)
	.loc 1 169 0
	movl	$0, -48(%ebp)
	.loc 1 170 0
	jmp	.L8
.L6:
	.loc 1 175 0
	cmpl	$1, -20(%ebp)
	jne	.L9
	cmpl	$1, -40(%ebp)
	jne	.L9
	movl	-24(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L9
	.loc 1 179 0
	movl	$2, -40(%ebp)
	.loc 1 180 0
	movl	$0, -48(%ebp)
	.loc 1 181 0
	jmp	.L8
.L9:
	.loc 1 188 0
	cmpl	$0, -40(%ebp)
	jne	.L4
	cmpl	$0, -48(%ebp)
	jne	.L4
	cmpl	$1, -20(%ebp)
	jne	.L4
	.loc 1 192 0
	movl	-24(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 193 0
	movl	$1, -40(%ebp)
.L4:
.LBE2:
	.loc 1 152 0
	addl	$2, -52(%ebp)
.L2:
	movl	-52(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L3
.L8:
	.loc 1 201 0
	movl	-44(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L18
	.loc 1 203 0
	movl	-44(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 204 0
	movl	-44(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 205 0
	movl	ssa_edges@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	-44(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	ssa_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L19
	movl	%esi, %edi
	xorl	%esi, %esi
.L19:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L18:
	.loc 1 207 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	visit_phi_node, .-visit_phi_node
	.type	defs_to_undefined, @function
defs_to_undefined:
.LFB16:
	.loc 1 213 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%esi
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$52, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 215 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L22
.L23:
	.loc 1 218 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L24
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L26
.L24:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L26:
	movl	-64(%ebp), %edx
	movl	4(%edx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L27
	.loc 1 219 0
	movl	ssa_edges@GOTOFF(%ebx), %ecx
	movl	%ecx, -60(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L29
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L31
.L29:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L31:
	movl	-56(%ebp), %esi
	movl	4(%esi), %eax
	shrl	$6, %eax
	movl	%eax, -52(%ebp)
	movl	ssa_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L32
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L34
.L32:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L34:
	movl	-40(%ebp), %edi
	movl	4(%edi), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L40
	movl	%esi, %edi
	xorl	%esi, %esi
.L40:
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	-52(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
.L27:
	.loc 1 220 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L35
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L37
.L35:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L37:
	movl	-36(%ebp), %edi
	movl	4(%edi), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 216 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L22:
	.loc 1 215 0
	cmpl	$0, -20(%ebp)
	jne	.L23
	.loc 1 222 0
	addl	$52, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	defs_to_undefined, .-defs_to_undefined
	.type	defs_to_varying, @function
defs_to_varying:
.LFB17:
	.loc 1 228 0
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
	subl	$52, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 230 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L42
.L43:
	.loc 1 233 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L44
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L46
.L44:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L46:
	movl	-64(%ebp), %edx
	movl	4(%edx), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L47
	.loc 1 234 0
	movl	ssa_edges@GOTOFF(%ebx), %ecx
	movl	%ecx, -60(%ebp)
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
	movl	%eax, -56(%ebp)
	jmp	.L51
.L49:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L51:
	movl	-56(%ebp), %esi
	movl	4(%esi), %eax
	shrl	$6, %eax
	movl	%eax, -52(%ebp)
	movl	ssa_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L52
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L54
.L52:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L54:
	movl	-40(%ebp), %edi
	movl	4(%edi), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L60
	movl	%esi, %edi
	xorl	%esi, %esi
.L60:
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	-52(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
.L47:
	.loc 1 235 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L55
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L57
.L55:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L57:
	movl	-36(%ebp), %edi
	movl	4(%edi), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$2, (%eax)
	.loc 1 231 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L42:
	.loc 1 230 0
	cmpl	$0, -20(%ebp)
	jne	.L43
	.loc 1 237 0
	addl	$52, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	defs_to_varying, .-defs_to_varying
	.type	visit_expression, @function
visit_expression:
.LFB18:
	.loc 1 245 0
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
	subl	$284, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 254 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L62
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L62
.LBB3:
	.loc 1 258 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	jmp	.L65
.L66:
.LBB4:
	.loc 1 261 0
	movl	-120(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, -116(%ebp)
	.loc 1 263 0
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	-116(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-116(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L207
	movl	%edi, %esi
	xorl	%edi, %edi
.L207:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L67
	.loc 1 266 0
	movl	executable_edges@GOTOFF(%ebx), %eax
	movl	%eax, -264(%ebp)
	movl	-116(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -260(%ebp)
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -256(%ebp)
	movl	%edi, -252(%ebp)
	movl	-116(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L206
	movl	%esi, %edi
	xorl	%esi, %esi
.L206:
	movl	-256(%ebp), %eax
	orl	%esi, %eax
	movl	-252(%ebp), %edx
	orl	%edi, %edx
	movl	-260(%ebp), %edi
	movl	-264(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 267 0
	movl	-116(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_info@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	flow_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 268 0
	movl	-120(%ebp), %eax
	movl	%eax, flow_edges@GOTOFF(%ebx)
.L67:
.LBE4:
	.loc 1 259 0
	movl	-120(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -120(%ebp)
.L65:
	.loc 1 258 0
	cmpl	$0, -120(%ebp)
	jne	.L66
.L62:
.LBE3:
	.loc 1 272 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L69
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L71
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -244(%ebp)
	jmp	.L73
.L71:
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -244(%ebp)
.L73:
	movl	-244(%ebp), %esi
	movl	%esi, -248(%ebp)
	jmp	.L74
.L69:
	movl	$0, -248(%ebp)
.L74:
	movl	-248(%ebp), %edi
	movl	%edi, -124(%ebp)
	.loc 1 273 0
	cmpl	$0, -124(%ebp)
	jne	.L75
	.loc 1 275 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_varying
	.loc 1 276 0
	jmp	.L196
.L75:
	.loc 1 279 0
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -132(%ebp)
	.loc 1 280 0
	movl	-124(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 283 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L78
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-128(%ebp), %eax
	je	.L78
	.loc 1 285 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_varying
	.loc 1 286 0
	jmp	.L196
.L78:
	.loc 1 292 0
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L81
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L81
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_varying
	.loc 1 295 0
	jmp	.L196
.L81:
	.loc 1 299 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L84
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L84
.LBB5:
	.loc 1 301 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -112(%ebp)
	.loc 1 303 0
	movl	-112(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	.loc 1 304 0
	movl	-112(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%edx)
	.loc 1 305 0
	movl	ssa_edges@GOTOFF(%ebx), %eax
	movl	%eax, -240(%ebp)
	movl	-112(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -236(%ebp)
	movl	ssa_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -232(%ebp)
	movl	%edi, -228(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L205
	movl	%esi, %edi
	xorl	%esi, %esi
.L205:
	movl	-232(%ebp), %eax
	orl	%esi, %eax
	movl	-228(%ebp), %edx
	orl	%edi, %edx
	movl	-236(%ebp), %edi
	movl	-240(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 299 0
	jmp	.L196
.L84:
.LBE5:
	.loc 1 309 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L87
	movl	-128(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L87
.LBB6:
	.loc 1 311 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 312 0
	movl	-108(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 313 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 317 0
	movl	-100(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-104(%ebp), %eax
	jne	.L90
	movl	-100(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %ecx
	movl	-108(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ecx
	je	.L92
.L90:
	.loc 1 319 0
	movl	ssa_edges@GOTOFF(%ebx), %esi
	movl	%esi, -224(%ebp)
	movl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -220(%ebp)
	movl	ssa_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -216(%ebp)
	movl	%edi, -212(%ebp)
	movl	-100(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L204
	movl	%esi, %edi
	xorl	%esi, %esi
.L204:
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	-220(%ebp), %edi
	movl	-224(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L92:
	.loc 1 322 0
	movl	-100(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 323 0
	movl	-100(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-108(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%ecx)
	.loc 1 309 0
	jmp	.L196
.L87:
.LBE6:
	.loc 1 327 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L93
.LBB7:
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	pc_set@PLT
	movl	%eax, -96(%ebp)
	.loc 1 330 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$82, %ax
	je	.L95
.LBB8:
	.loc 1 341 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L97
.L98:
.LBB9:
	.loc 1 344 0
	movl	-92(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-92(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, -88(%ebp)
	.loc 1 346 0
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	-88(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L203
	movl	%edi, %esi
	xorl	%edi, %edi
.L203:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L99
	.loc 1 349 0
	movl	executable_edges@GOTOFF(%ebx), %esi
	movl	%esi, -208(%ebp)
	movl	-88(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -204(%ebp)
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	-88(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L202
	movl	%esi, %edi
	xorl	%esi, %esi
.L202:
	movl	-200(%ebp), %eax
	orl	%esi, %eax
	movl	-196(%ebp), %edx
	orl	%edi, %edx
	movl	-204(%ebp), %edi
	movl	-208(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 350 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_info@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	flow_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 351 0
	movl	-92(%ebp), %eax
	movl	%eax, flow_edges@GOTOFF(%ebx)
.L99:
.LBE9:
	.loc 1 342 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -92(%ebp)
.L97:
	.loc 1 341 0
	cmpl	$0, -92(%ebp)
	jne	.L98
	jmp	.L196
.L95:
.LBE8:
.LBB10:
	.loc 1 361 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -80(%ebp)
	.loc 1 362 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 363 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 368 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L103
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L196
.L103:
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L106
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L106
	.loc 1 372 0
	jmp	.L196
.L106:
	.loc 1 376 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L108
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L110
.L108:
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L111
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L111
.L110:
	.loc 1 381 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L113
.L114:
.LBB11:
	.loc 1 384 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, -68(%ebp)
	.loc 1 386 0
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	-68(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-68(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L201
	movl	%edi, %esi
	xorl	%edi, %edi
.L201:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L115
	.loc 1 389 0
	movl	executable_edges@GOTOFF(%ebx), %esi
	movl	%esi, -192(%ebp)
	movl	-68(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -188(%ebp)
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-68(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L200
	movl	%esi, %edi
	xorl	%esi, %esi
.L200:
	movl	-184(%ebp), %eax
	orl	%esi, %eax
	movl	-180(%ebp), %edx
	orl	%edi, %edx
	movl	-188(%ebp), %edi
	movl	-192(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 390 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_info@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	flow_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 391 0
	movl	-84(%ebp), %eax
	movl	%eax, flow_edges@GOTOFF(%ebx)
.L115:
.LBE11:
	.loc 1 382 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
.L113:
	.loc 1 381 0
	cmpl	$0, -84(%ebp)
	jne	.L114
	.loc 1 393 0
	jmp	.L196
.L111:
	.loc 1 397 0
	movl	-76(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L118
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L118
	.loc 1 399 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
.L118:
	.loc 1 401 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L121
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L121
	.loc 1 403 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
.L121:
	.loc 1 405 0
	movl	-132(%ebp), %eax
	movl	20(%eax), %esi
	movl	-132(%ebp), %eax
	movl	12(%eax), %edi
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	gen_rtx@PLT
	movl	%eax, %edx
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$82, (%esp)
	call	simplify_ternary_operation@PLT
	movl	%eax, -96(%ebp)
	.loc 1 417 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -84(%ebp)
	jmp	.L124
.L125:
.LBB12:
	.loc 1 420 0
	movl	-84(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, -64(%ebp)
	.loc 1 422 0
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	-64(%ebp), %eax
	shrl	$6, %eax
	leal	12(%edx,%eax,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-64(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L199
	movl	%edi, %esi
	xorl	%edi, %edi
.L199:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L126
	.loc 1 435 0
	cmpl	$0, -96(%ebp)
	je	.L128
	movl	global_rtl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	-96(%ebp), %eax
	jne	.L130
	movl	-84(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L128
.L130:
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L126
	movl	-84(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L126
.L128:
	.loc 1 441 0
	movl	executable_edges@GOTOFF(%ebx), %esi
	movl	%esi, -176(%ebp)
	movl	-64(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -172(%ebp)
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -168(%ebp)
	movl	%edi, -164(%ebp)
	movl	-64(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L198
	movl	%esi, %edi
	xorl	%esi, %esi
.L198:
	movl	-168(%ebp), %eax
	orl	%esi, %eax
	movl	-164(%ebp), %edx
	orl	%edi, %edx
	movl	-172(%ebp), %edi
	movl	-176(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 442 0
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_info@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	flow_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 443 0
	movl	-84(%ebp), %eax
	movl	%eax, flow_edges@GOTOFF(%ebx)
.L126:
.LBE12:
	.loc 1 418 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
.L124:
	.loc 1 417 0
	cmpl	$0, -84(%ebp)
	jne	.L125
	jmp	.L196
.L93:
.LBE10:
.LBE7:
	.loc 1 448 0
	cmpl	$0, 8(%ebp)
	je	.L133
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L133
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L133
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L196
.L133:
.LBB13:
	.loc 1 450 0
	movl	$0, -60(%ebp)
	.loc 1 459 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$49, %eax
	movl	%eax, -268(%ebp)
	cmpl	$50, -268(%ebp)
	ja	.L137
	movl	-268(%ebp), %eax
	sall	$2, %eax
	movl	.L142@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L142:
	.long	.L138@GOTOFF
	.long	.L139@GOTOFF
	.long	.L140@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L141@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L137@GOTOFF
	.long	.L140@GOTOFF
	.long	.L139@GOTOFF
	.text
.L141:
.LBB14:
	.loc 1 463 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 464 0
	movl	-132(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 468 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L143
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L145
.L143:
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L146
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L146
.L145:
	.loc 1 473 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_undefined
	.loc 1 474 0
	jmp	.L148
.L146:
	.loc 1 479 0
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 480 0
	cmpl	$0, -48(%ebp)
	jne	.L149
	.loc 1 481 0
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
.L149:
	.loc 1 485 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L151
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L151
	.loc 1 487 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
.L151:
	.loc 1 489 0
	movl	-52(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L154
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L154
	.loc 1 491 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
.L154:
	.loc 1 495 0
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_relational_operation@PLT
	movl	%eax, -60(%ebp)
	.loc 1 497 0
	jmp	.L148
.L138:
.LBE14:
.LBB15:
	.loc 1 503 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 504 0
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 507 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L157
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L157
	.loc 1 510 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_undefined
	.loc 1 511 0
	jmp	.L148
.L157:
	.loc 1 516 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L160
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L160
	.loc 1 518 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L160:
	.loc 1 522 0
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %ecx
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_unary_operation@PLT
	movl	%eax, -60(%ebp)
	.loc 1 526 0
	jmp	.L148
.L139:
.LBE15:
.LBB16:
	.loc 1 532 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 533 0
	movl	-132(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 536 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L163
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L165
.L163:
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L166
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L166
.L165:
	.loc 1 541 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_undefined
	.loc 1 542 0
	jmp	.L148
.L166:
	.loc 1 547 0
	movl	-36(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L168
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L168
	.loc 1 549 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L168:
	.loc 1 551 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L171
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L171
	.loc 1 553 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L171:
	.loc 1 557 0
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %ecx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_binary_operation@PLT
	movl	%eax, -60(%ebp)
	.loc 1 560 0
	jmp	.L148
.L140:
.LBE16:
.LBB17:
	.loc 1 566 0
	movl	-132(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 567 0
	movl	-132(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 568 0
	movl	-132(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 571 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L174
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L176
.L174:
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L177
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L176
.L177:
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L179
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L179
.L176:
	.loc 1 578 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_undefined
	.loc 1 579 0
	jmp	.L148
.L179:
	.loc 1 584 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L181
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L181
	.loc 1 586 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L181:
	.loc 1 588 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L184
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L184
	.loc 1 590 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L184:
	.loc 1 592 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L187
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L187
	.loc 1 594 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L187:
	.loc 1 598 0
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	-132(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %esi
	movl	-132(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, (%esp)
	call	simplify_ternary_operation@PLT
	movl	%eax, -60(%ebp)
	.loc 1 602 0
	jmp	.L148
.L137:
.LBE17:
	.loc 1 606 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_varying
.L148:
	.loc 1 609 0
	cmpl	$0, -60(%ebp)
	je	.L190
	movl	-60(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L190
	.loc 1 611 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L193
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %eax
	cmpl	-60(%ebp), %eax
	je	.L195
.L193:
	.loc 1 613 0
	movl	ssa_edges@GOTOFF(%ebx), %esi
	movl	%esi, -160(%ebp)
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -156(%ebp)
	movl	ssa_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L197
	movl	%esi, %edi
	xorl	%esi, %esi
.L197:
	movl	-152(%ebp), %eax
	orl	%esi, %eax
	movl	-148(%ebp), %edx
	orl	%edi, %edx
	movl	-156(%ebp), %edi
	movl	-160(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L195:
	.loc 1 615 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$1, (%eax)
	.loc 1 616 0
	movl	-128(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 609 0
	jmp	.L196
.L190:
	.loc 1 619 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	defs_to_varying
.L196:
.LBE13:
	.loc 1 621 0
	addl	$284, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	visit_expression, .-visit_expression
	.type	examine_flow_edges, @function
examine_flow_edges:
.LFB19:
	.loc 1 627 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%edi
.LCFI26:
	pushl	%esi
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$76, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB18:
	.loc 1 628 0
	jmp	.L231
.L210:
	.loc 1 634 0
	movl	flow_edges@GOTOFF(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 635 0
	movl	flow_edges@GOTOFF(%ebx), %eax
	movl	12(%eax), %ecx
	movl	flow_edges@GOTOFF(%ebx), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_info@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, flow_edges@GOTOFF(%ebx)
	.loc 1 638 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -32(%ebp)
	je	.L209
	.loc 1 643 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -28(%ebp)
	.loc 1 644 0
	jmp	.L212
.L213:
	.loc 1 646 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	visit_phi_node
	.loc 1 645 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
.L212:
	.loc 1 644 0
	cmpl	$0, -28(%ebp)
	je	.L214
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L214
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L214
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L213
.L214:
	.loc 1 650 0
	movl	executable_blocks@GOTOFF(%ebx), %edx
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L235
	movl	%edi, %esi
	xorl	%edi, %edi
.L235:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L209
.LBB19:
	.loc 1 653 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 656 0
	movl	executable_blocks@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	executable_blocks@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-32(%ebp), %eax
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
	je	.L234
	movl	%esi, %edi
	xorl	%esi, %esi
.L234:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 659 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 660 0
	jmp	.L219
.L220:
	.loc 1 662 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L221
	.loc 1 663 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	visit_expression
.L221:
	.loc 1 665 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L219:
	.loc 1 660 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L220
	.loc 1 669 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L224
	.loc 1 670 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	visit_expression
.L224:
	.loc 1 676 0
	cmpl	$0, -20(%ebp)
	je	.L209
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L209
	movl	executable_edges@GOTOFF(%ebx), %esi
	movl	-20(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	shrl	$6, %eax
	movl	16(%esi,%eax,8), %edi
	movl	12(%esi,%eax,8), %esi
	movl	-20(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L233
	movl	%edi, %esi
	xorl	%edi, %edi
.L233:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L209
	.loc 1 681 0
	movl	executable_edges@GOTOFF(%ebx), %esi
	movl	%esi, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L232
	movl	%esi, %edi
	xorl	%esi, %esi
.L232:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 683 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_info@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	flow_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 684 0
	movl	-20(%ebp), %eax
	movl	%eax, flow_edges@GOTOFF(%ebx)
.L209:
.L231:
.LBE19:
.LBE18:
	.loc 1 628 0
	movl	flow_edges@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L210
	.loc 1 688 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	examine_flow_edges, .-examine_flow_edges
	.type	follow_def_use_chains, @function
follow_def_use_chains:
.LFB20:
	.loc 1 695 0
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
.LBB20:
	.loc 1 697 0
	jmp	.L237
.L238:
	.loc 1 704 0
	movl	ssa_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	movl	%eax, -28(%ebp)
	.loc 1 705 0
	movl	ssa_edges@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	ssa_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L254
	movl	%eax, %edx
	xorl	%eax, %eax
.L254:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 708 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	20(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L239
.L240:
.LBB21:
	.loc 1 713 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 714 0
	cmpl	$0, -20(%ebp)
	je	.L241
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L241
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L241
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	jne	.L241
	.loc 1 716 0
	movl	executable_blocks@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L253
	movl	%edi, %esi
	xorl	%edi, %edi
.L253:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L248
	.loc 1 717 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	visit_phi_node
	.loc 1 714 0
	jmp	.L248
.L241:
	.loc 1 721 0
	movl	executable_blocks@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L252
	movl	%edi, %esi
	xorl	%edi, %edi
.L252:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L248
	.loc 1 722 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	visit_expression
.L248:
.LBE21:
	.loc 1 709 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L239:
	.loc 1 708 0
	cmpl	$0, -24(%ebp)
	jne	.L240
.L237:
.LBE20:
	.loc 1 697 0
	movl	ssa_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	testl	%eax, %eax
	jns	.L238
	.loc 1 726 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	follow_def_use_chains, .-follow_def_use_chains
	.section	.rodata
	.align 4
.LC0:
	.string	"Removing alternative for bb %d of phi %d\n"
	.align 4
.LC1:
	.string	"Removing unexecutable edge from %d to %d\n"
	.text
	.type	optimize_unexecutable_edges, @function
optimize_unexecutable_edges:
.LFB21:
	.loc 1 740 0
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
	.loc 1 744 0
	movl	$0, -36(%ebp)
	jmp	.L256
.L257:
	.loc 1 746 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-36(%ebp), %ecx
	andl	$63, %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L291
	movl	%edi, %esi
	xorl	%edi, %edi
.L291:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L258
.LBB22:
	.loc 1 748 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 750 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L258
	.loc 1 755 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L261
.LBB23:
	.loc 1 757 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	first_insn_after_basic_block_note@PLT
	movl	%eax, -24(%ebp)
	.loc 1 759 0
	jmp	.L263
.L264:
	.loc 1 761 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_phi_alternative@PLT
	.loc 1 762 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L265
	.loc 1 763 0
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %esi
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L265:
	.loc 1 766 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L263:
	.loc 1 759 0
	cmpl	$0, -24(%ebp)
	je	.L261
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L261
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L261
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L264
.L261:
.LBE23:
	.loc 1 769 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L270
	.loc 1 770 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %esi
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L270:
	.loc 1 774 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_edge@PLT
.L258:
.LBE22:
	.loc 1 744 0
	addl	$1, -36(%ebp)
.L256:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jg	.L257
	.loc 1 800 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L273
.L274:
.LBB24:
	.loc 1 802 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 803 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 807 0
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L275
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L275
	.loc 1 812 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	condjump_p@PLT
	testl	%eax, %eax
	je	.L275
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	simplejump_p@PLT
	testl	%eax, %eax
	jne	.L275
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L275
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L275
	.loc 1 818 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L282
	.loc 1 820 0
	movl	-20(%ebp), %eax
	movw	$47, (%eax)
	.loc 1 821 0
	movl	-20(%ebp), %eax
	movl	$-99, 44(%eax)
	jmp	.L284
.L282:
	.loc 1 825 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	-20(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L285
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L285
	movl	$5, -48(%ebp)
	jmp	.L288
.L285:
	movl	$4, -48(%ebp)
.L288:
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	$77, (%esp)
	call	gen_rtx_fmt_u00@PLT
	movl	-56(%ebp), %edx
	movl	%eax, 12(%edx)
	.loc 1 827 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_barrier_after@PLT
	.loc 1 828 0
	movl	-20(%ebp), %eax
	movl	$-1, 52(%eax)
.L284:
	.loc 1 832 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	df_analyzer@GOTOFF(%ebx), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	df_insn_modify@PLT
.L275:
.LBE24:
	.loc 1 800 0
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -32(%ebp)
.L273:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -32(%ebp)
	jne	.L274
	.loc 1 835 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	optimize_unexecutable_edges, .-optimize_unexecutable_edges
	.section	.rodata
	.align 4
.LC2:
	.string	"Register %d is now set to a constant\n"
	.align 4
.LC3:
	.string	"Register %d in insn %d replaced with constant\n"
	.text
	.type	ssa_ccp_substitute_constants, @function
ssa_ccp_substitute_constants:
.LFB22:
	.loc 1 851 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$68, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 854 0
	movl	$176, -24(%ebp)
	jmp	.L293
.L294:
	.loc 1 856 0
	movl	-24(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L295
.LBB25:
	.loc 1 858 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 859 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L297
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L299
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L301
.L299:
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -40(%ebp)
.L301:
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L302
.L297:
	movl	$0, -44(%ebp)
.L302:
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 862 0
	cmpl	$0, -16(%ebp)
	je	.L295
	.loc 1 872 0
	cmpl	$0, -20(%ebp)
	je	.L304
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L304
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L304
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$162, %ax
	je	.L308
.L304:
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L309
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L308
.L309:
	.loc 1 876 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L311
	.loc 1 877 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L311:
	.loc 1 880 0
	movl	-24(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 881 0
	movl	-20(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 882 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	df_analyzer@GOTOFF(%ebx), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	df_insn_modify@PLT
.L308:
	.loc 1 889 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	20(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 890 0
	jmp	.L313
.L314:
.LBB26:
	.loc 1 895 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 897 0
	movl	-8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L315
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L317
	movl	-8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L315
.L317:
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L319
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L315
.L319:
	.loc 1 904 0
	movl	-24(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	4(%eax), %ecx
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	validate_replace_src@PLT
	testl	%eax, %eax
	je	.L315
	.loc 1 908 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L322
	.loc 1 909 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L322:
	.loc 1 912 0
	movl	-8(%ebp), %eax
	movl	$-1, 52(%eax)
	.loc 1 913 0
	movl	-8(%ebp), %eax
	movl	28(%eax), %edx
	movl	df_analyzer@GOTOFF(%ebx), %ecx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	df_insn_modify@PLT
.L315:
.LBE26:
	.loc 1 891 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L313:
	.loc 1 890 0
	cmpl	$0, -12(%ebp)
	jne	.L314
.L295:
.LBE25:
	.loc 1 854 0
	addl	$1, -24(%ebp)
.L293:
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-24(%ebp), %eax
	ja	.L294
	.loc 1 922 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	ssa_ccp_substitute_constants, .-ssa_ccp_substitute_constants
	.type	ssa_ccp_df_delete_unreachable_insns, @function
ssa_ccp_df_delete_unreachable_insns:
.LFB23:
	.loc 1 930 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$52, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 934 0
	call	find_unreachable_blocks@PLT
	.loc 1 939 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L327
.L328:
	.loc 1 941 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L329
.LBB27:
	.loc 1 943 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 944 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 948 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 949 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L331
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L331
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L331
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L331
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L336
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L331
.L336:
	.loc 1 955 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L331:
.LBB28:
	.loc 1 959 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 961 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	je	.L338
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	je	.L338
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L341
.L338:
	.loc 1 964 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	df_analyzer@GOTOFF(%ebx), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	df_insn_delete@PLT
.L341:
	.loc 1 966 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L329
	.loc 1 968 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 969 0
	jmp	.L331
.L329:
.LBE28:
.LBE27:
	.loc 1 939 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
.L327:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L328
	.loc 1 972 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	ssa_ccp_df_delete_unreachable_insns, .-ssa_ccp_df_delete_unreachable_insns
.globl ssa_const_prop
	.type	ssa_const_prop, @function
ssa_const_prop:
.LFB24:
	.loc 1 982 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%edi
.LCFI52:
	pushl	%esi
.LCFI53:
	pushl	%ebx
.LCFI54:
	subl	$60, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 987 0
	call	init_alias_analysis@PLT
	.loc 1 989 0
	call	df_init@PLT
	movl	%eax, df_analyzer@GOTOFF(%ebx)
	.loc 1 990 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	$1248, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	df_analyse@PLT
	.loc 1 996 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	ssa_fast_dce
	.loc 1 999 0
	call	create_edge_list@PLT
	movl	%eax, edges@GOTOFF(%ebx)
	.loc 1 1002 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, values@GOTOFF(%ebx)
	.loc 1 1003 0
	movl	$0, -28(%ebp)
	jmp	.L346
.L347:
	.loc 1 1005 0
	cmpl	$175, -28(%ebp)
	ja	.L348
	.loc 1 1006 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$2, (%eax)
	jmp	.L350
.L348:
	.loc 1 1008 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L350:
	.loc 1 1009 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	values@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 1003 0
	addl	$1, -28(%ebp)
.L346:
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	ja	.L347
	.loc 1 1012 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, ssa_edges@GOTOFF(%ebx)
	.loc 1 1013 0
	movl	ssa_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1015 0
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, executable_blocks@GOTOFF(%ebx)
	.loc 1 1016 0
	movl	executable_blocks@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1018 0
	movl	edges@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, executable_edges@GOTOFF(%ebx)
	.loc 1 1019 0
	movl	executable_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1021 0
	movl	edges@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, edge_info@GOTOFF(%ebx)
	.loc 1 1022 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, flow_edges@GOTOFF(%ebx)
	.loc 1 1026 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L352
.L353:
.LBB29:
	.loc 1 1029 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	find_edge_index@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1030 0
	movl	executable_edges@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	-20(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	executable_edges@GOTOFF(%ebx), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L357
	movl	%esi, %edi
	xorl	%esi, %esi
.L357:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1031 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	edge_info@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%edx)
.LBE29:
	.loc 1 1027 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L352:
	.loc 1 1026 0
	cmpl	$0, -24(%ebp)
	jne	.L353
.L354:
	.loc 1 1037 0
	call	examine_flow_edges
	.loc 1 1038 0
	call	follow_def_use_chains
	.loc 1 1040 0
	movl	flow_edges@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L354
	.loc 1 1043 0
	call	ssa_ccp_substitute_constants
	.loc 1 1047 0
	movl	executable_edges@GOTOFF(%ebx), %eax
	movl	edges@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	optimize_unexecutable_edges
	.loc 1 1051 0
	call	ssa_ccp_df_delete_unreachable_insns
	.loc 1 1069 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	ssa_fast_dce
	.loc 1 1071 0
	movl	values@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1072 0
	movl	$0, values@GOTOFF(%ebx)
	.loc 1 1074 0
	movl	edge_info@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1075 0
	movl	$0, edge_info@GOTOFF(%ebx)
	.loc 1 1077 0
	movl	executable_blocks@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1078 0
	movl	$0, executable_blocks@GOTOFF(%ebx)
	.loc 1 1080 0
	movl	ssa_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1081 0
	movl	$0, ssa_edges@GOTOFF(%ebx)
	.loc 1 1083 0
	movl	edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_edge_list@PLT
	.loc 1 1084 0
	movl	$0, edges@GOTOFF(%ebx)
	.loc 1 1086 0
	movl	executable_edges@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1087 0
	movl	$0, executable_edges@GOTOFF(%ebx)
	.loc 1 1089 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	df_finish@PLT
	.loc 1 1090 0
	call	end_alias_analysis@PLT
	.loc 1 1091 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	ssa_const_prop, .-ssa_const_prop
	.type	mark_references, @function
mark_references:
.LFB25:
	.loc 1 1097 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%edi
.LCFI58:
	pushl	%esi
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$76, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1098 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1099 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1101 0
	cmpl	$0, -32(%ebp)
	jne	.L359
	.loc 1 1102 0
	movl	$0, -64(%ebp)
	jmp	.L361
.L359:
	.loc 1 1104 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L362
.LBB30:
	.loc 1 1106 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1108 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L364
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L364
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L364
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	jne	.L368
.L364:
.LBB31:
	.loc 1 1115 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1117 0
	jmp	.L369
.L370:
	.loc 1 1121 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L369:
	.loc 1 1117 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L370
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L370
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L370
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L370
	.loc 1 1123 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L368
	.loc 1 1124 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L384
	movl	%esi, %edi
	xorl	%esi, %esi
.L384:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L368:
.LBE31:
	.loc 1 1127 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L376
	.loc 1 1129 0
	movl	-32(%ebp), %eax
	addl	$12, %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	mark_references@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	for_each_rtx@PLT
	.loc 1 1130 0
	movl	$-1, -64(%ebp)
	jmp	.L361
.L376:
	.loc 1 1133 0
	movl	$0, -64(%ebp)
	jmp	.L361
.L362:
.LBE30:
	.loc 1 1135 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L378
	.loc 1 1137 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L383
	movl	%esi, %edi
	xorl	%esi, %esi
.L383:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1138 0
	movl	$-1, -64(%ebp)
	jmp	.L361
.L378:
	.loc 1 1140 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L380
	.loc 1 1141 0
	movl	$-1, -64(%ebp)
	jmp	.L361
.L380:
	.loc 1 1143 0
	movl	$0, -64(%ebp)
.L361:
	movl	-64(%ebp), %eax
	.loc 1 1144 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	mark_references, .-mark_references
	.type	ssa_fast_dce, @function
ssa_fast_dce:
.LFB26:
	.loc 1 1149 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%edi
.LCFI64:
	pushl	%esi
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$76, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1150 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1151 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	.loc 1 1155 0
	jmp	.L407
.L387:
.LBB32:
	.loc 1 1161 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1162 0
	movl	-28(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-28(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L408
	movl	%eax, %edx
	xorl	%eax, %eax
.L408:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1167 0
	cmpl	$175, -28(%ebp)
	jle	.L386
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L386
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L386
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L391
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L386
.L391:
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	jne	.L386
	.loc 1 1179 0
	movl	$0, -24(%ebp)
	.loc 1 1180 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L394
.L395:
	.loc 1 1182 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L396
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L396
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L396
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L400
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L396
.L400:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %ecx
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	cmpl	%eax, %ecx
	je	.L396
	.loc 1 1190 0
	movl	$1, -24(%ebp)
	.loc 1 1191 0
	jmp	.L403
.L396:
	.loc 1 1180 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L394:
	cmpl	$0, -32(%ebp)
	jne	.L395
.L403:
	.loc 1 1198 0
	cmpl	$0, -24(%ebp)
	jne	.L386
.LBB33:
	.loc 1 1200 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1204 0
	movl	-20(%ebp), %edx
	addl	$44, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	mark_references@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	for_each_rtx@PLT
	.loc 1 1208 0
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	df_insn_delete@PLT
	.loc 1 1210 0
	movl	ssa_definition@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	$0, 16(%edx,%eax,4)
.L386:
.L407:
.LBE33:
.LBE32:
	.loc 1 1155 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	testl	%eax, %eax
	jns	.L387
	.loc 1 1214 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1217 0
	movl	df_analyzer@GOTOFF(%ebx), %eax
	movl	$1248, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	df_analyse@PLT
	.loc 1 1219 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	ssa_fast_dce, .-ssa_fast_dce
	.local	values
	.comm	values,4,4
	.local	executable_blocks
	.comm	executable_blocks,4,4
	.local	executable_edges
	.comm	executable_edges,4,4
	.local	edge_info
	.comm	edge_info,4,4
	.local	edges
	.comm	edges,4,4
	.local	df_analyzer
	.comm	df_analyzer,4,4
	.local	flow_edges
	.comm	flow_edges,4,4
	.local	ssa_edges
	.comm	ssa_edges,4,4
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
	.long	.LCFI5-.LCFI1
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI7
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
	.long	.LCFI12-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI18-.LFB18
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI24-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI25
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
	.long	.LCFI35-.LCFI31
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI36-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI42-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI46-.LFB23
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI50-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI55-.LCFI51
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
	.long	.LCFI56-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI57
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI62-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI63
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE22:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/rtl.h"
	.file 4 "../../../kg++fe/gnu/machmode.h"
	.file 5 "../../../kg++fe/gnu/bitmap.h"
	.file 6 "../../../kg++fe/gnu/basic-block.h"
	.file 7 "../../../kg++fe/gnu/sbitmap.h"
	.file 8 "../../../kg++fe/gnu/df.h"
	.file 9 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 10 "../../../kg++fe/gnu/varray.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 12 "../../../kg++fe/gnu/ssa.h"
	.file 13 "../../../kg++fe/gnu/output.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "../../../kg++fe/gnu/function.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
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
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI62-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI63-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3df0
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/ssa-ccp.c"
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
	.long	0x954
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
	.long	0x70b
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x156f
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
	.long	0x1e0
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.long	.LASF0
	.byte	0x3
	.byte	0xf2
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x3
	.byte	0xf3
	.long	0x157f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ec
	.uleb128 0x3
	.byte	0x4
	.long	0x1f2
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x204
	.uleb128 0x9
	.long	0x209
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	0x2ea
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xc
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.long	0x301
	.long	0x9c
	.uleb128 0xf
	.long	0x301
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x218
	.uleb128 0x2
	.string	"size_t"
	.byte	0xb
	.byte	0xd6
	.long	0x2ea
	.uleb128 0xa
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xa
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xa
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xa
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xa
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x10
	.byte	0x3b
	.long	0x386
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x10
	.byte	0x90
	.long	0x3d0
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x10
	.byte	0x91
	.long	0x3b1
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x209
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x401
	.uleb128 0x12
	.long	0x67c
	.long	.LASF2
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xc
	.string	"_flags"
	.byte	0xf
	.value	0x10c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_IO_read_ptr"
	.byte	0xf
	.value	0x111
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_IO_read_end"
	.byte	0xf
	.value	0x112
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"_IO_read_base"
	.byte	0xf
	.value	0x113
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"_IO_write_base"
	.byte	0xf
	.value	0x114
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"_IO_write_ptr"
	.byte	0xf
	.value	0x115
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"_IO_write_end"
	.byte	0xf
	.value	0x116
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"_IO_buf_base"
	.byte	0xf
	.value	0x117
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"_IO_buf_end"
	.byte	0xf
	.value	0x118
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"_IO_save_base"
	.byte	0xf
	.value	0x11a
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"_IO_backup_base"
	.byte	0xf
	.value	0x11b
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"_IO_save_end"
	.byte	0xf
	.value	0x11c
	.long	0x3ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"_markers"
	.byte	0xf
	.value	0x11e
	.long	0x6d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"_chain"
	.byte	0xf
	.value	0x120
	.long	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"_fileno"
	.byte	0xf
	.value	0x122
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"_flags2"
	.byte	0xf
	.value	0x126
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"_old_offset"
	.byte	0xf
	.value	0x128
	.long	0x3c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"_cur_column"
	.byte	0xf
	.value	0x12c
	.long	0x33f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"_vtable_offset"
	.byte	0xf
	.value	0x12d
	.long	0x36a
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xc
	.string	"_shortbuf"
	.byte	0xf
	.value	0x12e
	.long	0x6df
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xc
	.string	"_lock"
	.byte	0xf
	.value	0x132
	.long	0x6ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"_offset"
	.byte	0xf
	.value	0x13b
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.string	"__pad1"
	.byte	0xf
	.value	0x144
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"__pad2"
	.byte	0xf
	.value	0x145
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"__pad3"
	.byte	0xf
	.value	0x146
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"__pad4"
	.byte	0xf
	.value	0x147
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"__pad5"
	.byte	0xf
	.value	0x148
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"_mode"
	.byte	0xf
	.value	0x14a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"_unused2"
	.byte	0xf
	.value	0x14c
	.long	0x6f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x32e
	.uleb128 0x13
	.string	"_IO_lock_t"
	.byte	0xf
	.byte	0xb0
	.uleb128 0x4
	.long	0x6d3
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xf
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xf
	.byte	0xb7
	.long	0x6d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xf
	.byte	0xb8
	.long	0x6d9
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
	.long	0x690
	.uleb128 0x3
	.byte	0x4
	.long	0x401
	.uleb128 0xe
	.long	0x6ef
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x682
	.uleb128 0xe
	.long	0x705
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x211
	.uleb128 0x14
	.long	0x954
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0x15
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x15
	.string	"BImode"
	.sleb128 1
	.uleb128 0x15
	.string	"QImode"
	.sleb128 2
	.uleb128 0x15
	.string	"HImode"
	.sleb128 3
	.uleb128 0x15
	.string	"SImode"
	.sleb128 4
	.uleb128 0x15
	.string	"DImode"
	.sleb128 5
	.uleb128 0x15
	.string	"TImode"
	.sleb128 6
	.uleb128 0x15
	.string	"OImode"
	.sleb128 7
	.uleb128 0x15
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x15
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x15
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x15
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x15
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x15
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x15
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x15
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x15
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x15
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x15
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x15
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x15
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x15
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x15
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x15
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x15
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x15
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x15
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x15
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x15
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x15
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x15
	.string	"COImode"
	.sleb128 30
	.uleb128 0x15
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x15
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x15
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x15
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x15
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x15
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x15
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x15
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x15
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x15
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x15
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x15
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x15
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x15
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x15
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x15
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x15
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x15
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x15
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x15
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x15
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x15
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x15
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x15
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x14
	.long	0x1123
	.string	"rtx_code"
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.uleb128 0x15
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x15
	.string	"NIL"
	.sleb128 1
	.uleb128 0x15
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x15
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x15
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x15
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x15
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x15
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x15
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x15
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x15
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x15
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x15
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x15
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x15
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x15
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x15
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x15
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x15
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x15
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x15
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x15
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x15
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x15
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x15
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x15
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x15
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x15
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x15
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x15
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x15
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x15
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x15
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x15
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x15
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x15
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x15
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x15
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x15
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x15
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x15
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x15
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x15
	.string	"INSN"
	.sleb128 42
	.uleb128 0x15
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x15
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x15
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x15
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x15
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x15
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x15
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x15
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x15
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x15
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x15
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x15
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x15
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x15
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x15
	.string	"SET"
	.sleb128 57
	.uleb128 0x15
	.string	"USE"
	.sleb128 58
	.uleb128 0x15
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x15
	.string	"CALL"
	.sleb128 60
	.uleb128 0x15
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x15
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x15
	.string	"RESX"
	.sleb128 63
	.uleb128 0x15
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x15
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x15
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x15
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x15
	.string	"CONST"
	.sleb128 68
	.uleb128 0x15
	.string	"PC"
	.sleb128 69
	.uleb128 0x15
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x15
	.string	"REG"
	.sleb128 71
	.uleb128 0x15
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x15
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x15
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x15
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x15
	.string	"MEM"
	.sleb128 76
	.uleb128 0x15
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x15
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x15
	.string	"CC0"
	.sleb128 79
	.uleb128 0x15
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x15
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x15
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x15
	.string	"COND"
	.sleb128 83
	.uleb128 0x15
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x15
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x15
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x15
	.string	"NEG"
	.sleb128 87
	.uleb128 0x15
	.string	"MULT"
	.sleb128 88
	.uleb128 0x15
	.string	"DIV"
	.sleb128 89
	.uleb128 0x15
	.string	"MOD"
	.sleb128 90
	.uleb128 0x15
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x15
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x15
	.string	"AND"
	.sleb128 93
	.uleb128 0x15
	.string	"IOR"
	.sleb128 94
	.uleb128 0x15
	.string	"XOR"
	.sleb128 95
	.uleb128 0x15
	.string	"NOT"
	.sleb128 96
	.uleb128 0x15
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x15
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x15
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x15
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x15
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x15
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x15
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x15
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x15
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x15
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x15
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x15
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x15
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x15
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x15
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x15
	.string	"NE"
	.sleb128 112
	.uleb128 0x15
	.string	"EQ"
	.sleb128 113
	.uleb128 0x15
	.string	"GE"
	.sleb128 114
	.uleb128 0x15
	.string	"GT"
	.sleb128 115
	.uleb128 0x15
	.string	"LE"
	.sleb128 116
	.uleb128 0x15
	.string	"LT"
	.sleb128 117
	.uleb128 0x15
	.string	"GEU"
	.sleb128 118
	.uleb128 0x15
	.string	"GTU"
	.sleb128 119
	.uleb128 0x15
	.string	"LEU"
	.sleb128 120
	.uleb128 0x15
	.string	"LTU"
	.sleb128 121
	.uleb128 0x15
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x15
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x15
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x15
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x15
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x15
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x15
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x15
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x15
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x15
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x15
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x15
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x15
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x15
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x15
	.string	"FIX"
	.sleb128 136
	.uleb128 0x15
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x15
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x15
	.string	"ABS"
	.sleb128 139
	.uleb128 0x15
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x15
	.string	"FFS"
	.sleb128 141
	.uleb128 0x15
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x15
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x15
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x15
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x15
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x15
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x15
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x15
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x15
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x15
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x15
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x15
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x15
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x15
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x15
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x15
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x15
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x15
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x15
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x15
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x15
	.string	"PHI"
	.sleb128 162
	.uleb128 0x15
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x16
	.long	0x11fd
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x3
	.byte	0x49
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x2ea
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
	.long	0x1123
	.uleb128 0x12
	.long	0x1274
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x3
	.byte	0x63
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x3
	.byte	0x64
	.long	0x1e0
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
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.long	.LASF3
	.byte	0x3
	.byte	0x68
	.long	0x1218
	.uleb128 0x18
	.long	0x1351
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x3
	.byte	0x6d
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x3
	.byte	0x6e
	.long	0x386
	.uleb128 0x19
	.string	"rtint"
	.byte	0x3
	.byte	0x6f
	.long	0x211
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x3
	.byte	0x70
	.long	0x2ea
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x3
	.byte	0x71
	.long	0x1fe
	.uleb128 0x19
	.string	"rtx"
	.byte	0x3
	.byte	0x72
	.long	0x9c
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x3
	.byte	0x73
	.long	0x19d
	.uleb128 0x19
	.string	"rttype"
	.byte	0x3
	.byte	0x74
	.long	0x70b
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x3
	.byte	0x75
	.long	0x11fd
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x3
	.byte	0x76
	.long	0x1365
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x3
	.byte	0x77
	.long	0x13cd
	.uleb128 0x19
	.string	"rttree"
	.byte	0x3
	.byte	0x78
	.long	0x1e0
	.uleb128 0x19
	.string	"bb"
	.byte	0x3
	.byte	0x79
	.long	0x1554
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x3
	.byte	0x7a
	.long	0x155a
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1351
	.uleb128 0x4
	.long	0x13cd
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x3
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x5
	.byte	0x3d
	.long	0x162b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x5
	.byte	0x3e
	.long	0x162b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x3f
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x5
	.byte	0x40
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x136b
	.uleb128 0x4
	.long	0x1554
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
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x6
	.byte	0xb9
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x6
	.byte	0xbc
	.long	0x1c40
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x6
	.byte	0xbc
	.long	0x1c40
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x6
	.byte	0xc1
	.long	0x1b72
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x6
	.byte	0xc5
	.long	0x1b72
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x6
	.byte	0xcb
	.long	0x1b72
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x6
	.byte	0xcd
	.long	0x1b72
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xd0
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.long	.LASF4
	.byte	0x6
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1554
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x6
	.byte	0xd6
	.long	0x1554
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x6
	.byte	0xd9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x6
	.byte	0xdc
	.long	0x1ebb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0xdf
	.long	0x1b80
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x6
	.byte	0xe2
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.long	.LASF5
	.byte	0x6
	.byte	0xe5
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x13d3
	.uleb128 0x3
	.byte	0x4
	.long	0x1274
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x3
	.byte	0x7c
	.long	0x127f
	.uleb128 0xe
	.long	0x157f
	.long	0x1560
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x158f
	.long	0x9c
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x5
	.byte	0x1d
	.long	0x355
	.uleb128 0x4
	.long	0x15ff
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x5
	.byte	0x34
	.uleb128 0x7
	.long	.LASF6
	.byte	0x5
	.byte	0x35
	.long	0x15ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x5
	.byte	0x36
	.long	0x15ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x5
	.byte	0x37
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x5
	.byte	0x38
	.long	0x1605
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15a8
	.uleb128 0xe
	.long	0x1615
	.long	0x1595
	.uleb128 0xf
	.long	0x301
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x5
	.byte	0x39
	.long	0x15a8
	.uleb128 0x3
	.byte	0x4
	.long	0x1615
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x5
	.byte	0x43
	.long	0x13cd
	.uleb128 0x4
	.long	0x1699
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x7
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x7
	.byte	0x21
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x7
	.byte	0x22
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x7
	.byte	0x23
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x7
	.byte	0x24
	.long	0x1699
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xe
	.long	0x16a9
	.long	0x397
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x7
	.byte	0x25
	.long	0x16b8
	.uleb128 0x3
	.byte	0x4
	.long	0x163f
	.uleb128 0x4
	.long	0x16f4
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xa
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0xa
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0xa
	.byte	0x36
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x14
	.long	0x188f
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.uleb128 0x15
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x15
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x15
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x15
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x15
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x15
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x15
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x15
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x15
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x15
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x15
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x15
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x15
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x15
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x15
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x15
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x15
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x15
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x15
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x15
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x15
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x18
	.long	0x198b
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.uleb128 0x19
	.string	"c"
	.byte	0xa
	.byte	0x56
	.long	0x6df
	.uleb128 0x19
	.string	"uc"
	.byte	0xa
	.byte	0x58
	.long	0x198b
	.uleb128 0x19
	.string	"s"
	.byte	0xa
	.byte	0x5a
	.long	0x199b
	.uleb128 0x19
	.string	"us"
	.byte	0xa
	.byte	0x5c
	.long	0x19ab
	.uleb128 0x19
	.string	"i"
	.byte	0xa
	.byte	0x5e
	.long	0x19bb
	.uleb128 0x19
	.string	"u"
	.byte	0xa
	.byte	0x60
	.long	0x19cb
	.uleb128 0x19
	.string	"l"
	.byte	0xa
	.byte	0x62
	.long	0x19db
	.uleb128 0x19
	.string	"ul"
	.byte	0xa
	.byte	0x64
	.long	0x19eb
	.uleb128 0x19
	.string	"hint"
	.byte	0xa
	.byte	0x66
	.long	0x19fb
	.uleb128 0x19
	.string	"uhint"
	.byte	0xa
	.byte	0x68
	.long	0x1699
	.uleb128 0x19
	.string	"generic"
	.byte	0xa
	.byte	0x6a
	.long	0x1a0b
	.uleb128 0x19
	.string	"cptr"
	.byte	0xa
	.byte	0x6c
	.long	0x1a1b
	.uleb128 0x19
	.string	"rtx"
	.byte	0xa
	.byte	0x6e
	.long	0x1a2b
	.uleb128 0x19
	.string	"rtvec"
	.byte	0xa
	.byte	0x70
	.long	0x1a3b
	.uleb128 0x19
	.string	"tree"
	.byte	0xa
	.byte	0x72
	.long	0x1a4b
	.uleb128 0x19
	.string	"bitmap"
	.byte	0xa
	.byte	0x74
	.long	0x1a5b
	.uleb128 0x19
	.string	"reg"
	.byte	0xa
	.byte	0x76
	.long	0x1a6b
	.uleb128 0x19
	.string	"const_equiv"
	.byte	0xa
	.byte	0x78
	.long	0x1a90
	.uleb128 0x19
	.string	"bb"
	.byte	0xa
	.byte	0x7a
	.long	0x1aa0
	.uleb128 0x19
	.string	"te"
	.byte	0xa
	.byte	0x7c
	.long	0x1ab0
	.byte	0x0
	.uleb128 0xe
	.long	0x199b
	.long	0x32e
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19ab
	.long	0x379
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19bb
	.long	0x33f
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19cb
	.long	0x211
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19db
	.long	0x2ea
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19eb
	.long	0x3d0
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x19fb
	.long	0x355
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a0b
	.long	0x386
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a1b
	.long	0x3ed
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a2b
	.long	0x3ef
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a3b
	.long	0xa7
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a4b
	.long	0x1aa
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a5b
	.long	0x1ec
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a6b
	.long	0x13cd
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1a7b
	.long	0x1a8a
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1a7b
	.uleb128 0xe
	.long	0x1aa0
	.long	0x16be
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1ab0
	.long	0x1554
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	0x1ac0
	.long	0x1acb
	.uleb128 0xf
	.long	0x301
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1ac0
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xa
	.byte	0x7e
	.long	0x188f
	.uleb128 0x4
	.long	0x1b59
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xa
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0xa
	.byte	0x82
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0xa
	.byte	0x83
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0xa
	.byte	0x85
	.long	0x16f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"name"
	.byte	0xa
	.byte	0x86
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0xa
	.byte	0x87
	.long	0x1ad1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xa
	.byte	0x8a
	.long	0x1b6c
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae4
	.uleb128 0x2
	.string	"regset"
	.byte	0x6
	.byte	0x22
	.long	0x1631
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x6
	.byte	0x75
	.long	0x386
	.uleb128 0x4
	.long	0x1c3a
	.string	"edge_def"
	.byte	0x28
	.byte	0x6
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1c3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x6
	.byte	0x7a
	.long	0x1c3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7d
	.long	0x1554
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x6
	.byte	0x7d
	.long	0x1554
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
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.long	.LASF5
	.byte	0x6
	.byte	0x85
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x6
	.byte	0x86
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x6
	.byte	0x87
	.long	0x1b80
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b91
	.uleb128 0x2
	.string	"edge"
	.byte	0x6
	.byte	0x89
	.long	0x1c3a
	.uleb128 0x4
	.long	0x1ebb
	.string	"loop"
	.byte	0x80
	.byte	0x6
	.byte	0xdc
	.uleb128 0xc
	.string	"num"
	.byte	0x6
	.value	0x176
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"header"
	.byte	0x6
	.value	0x179
	.long	0x1ec1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"latch"
	.byte	0x6
	.value	0x17c
	.long	0x1ec1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"pre_header"
	.byte	0x6
	.value	0x17f
	.long	0x1ec1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"pre_header_edges"
	.byte	0x6
	.value	0x184
	.long	0x1ed4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"num_pre_header_edges"
	.byte	0x6
	.value	0x187
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"first"
	.byte	0x6
	.value	0x18b
	.long	0x1ec1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"last"
	.byte	0x6
	.value	0x18f
	.long	0x1ec1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"nodes"
	.byte	0x6
	.value	0x192
	.long	0x16a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.string	"num_nodes"
	.byte	0x6
	.value	0x195
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"entry_edges"
	.byte	0x6
	.value	0x198
	.long	0x1ed4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"num_entries"
	.byte	0x6
	.value	0x19b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.string	"exit_edges"
	.byte	0x6
	.value	0x19e
	.long	0x1ed4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.string	"num_exits"
	.byte	0x6
	.value	0x1a1
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.string	"exits_doms"
	.byte	0x6
	.value	0x1a4
	.long	0x16a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.string	"depth"
	.byte	0x6
	.value	0x1a7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.string	"pred"
	.byte	0x6
	.value	0x1aa
	.long	0x1eda
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.string	"level"
	.byte	0x6
	.value	0x1ae
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"outer"
	.byte	0x6
	.value	0x1b1
	.long	0x1ebb
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.string	"inner"
	.byte	0x6
	.value	0x1b4
	.long	0x1ebb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x6
	.value	0x1b7
	.long	0x1ebb
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.string	"invalid"
	.byte	0x6
	.value	0x1ba
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.string	"aux"
	.byte	0x6
	.value	0x1bd
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.string	"vtop"
	.byte	0x6
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.string	"cont"
	.byte	0x6
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.string	"start"
	.byte	0x6
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.string	"end"
	.byte	0x6
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"top"
	.byte	0x6
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.string	"scan_start"
	.byte	0x6
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.string	"sink"
	.byte	0x6
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.string	"exit_labels"
	.byte	0x6
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.string	"exit_count"
	.byte	0x6
	.value	0x1e6
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c4c
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x6
	.byte	0xe6
	.long	0x1554
	.uleb128 0x3
	.byte	0x4
	.long	0x1c40
	.uleb128 0x3
	.byte	0x4
	.long	0x1ebb
	.uleb128 0xb
	.long	0x1f38
	.string	"edge_list"
	.byte	0xc
	.byte	0x6
	.value	0x23b
	.uleb128 0xc
	.string	"num_blocks"
	.byte	0x6
	.value	0x23c
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"num_edges"
	.byte	0x6
	.value	0x23d
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"index_to_edge"
	.byte	0x6
	.value	0x23e
	.long	0x1ed4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.long	0x1f9c
	.string	"df_ref_type"
	.byte	0x4
	.byte	0x8
	.byte	0x23
	.uleb128 0x15
	.string	"DF_REF_REG_DEF"
	.sleb128 0
	.uleb128 0x15
	.string	"DF_REF_REG_USE"
	.sleb128 1
	.uleb128 0x15
	.string	"DF_REF_REG_MEM_LOAD"
	.sleb128 2
	.uleb128 0x15
	.string	"DF_REF_REG_MEM_STORE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	0x1fc9
	.string	"df_link"
	.byte	0x8
	.byte	0x8
	.byte	0x2e
	.uleb128 0x7
	.long	.LASF6
	.byte	0x8
	.byte	0x2f
	.long	0x1fc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ref"
	.byte	0x8
	.byte	0x30
	.long	0x2040
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f9c
	.uleb128 0x4
	.long	0x2040
	.string	"ref"
	.byte	0x1c
	.byte	0x8
	.byte	0x30
	.uleb128 0x6
	.string	"reg"
	.byte	0x8
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.long	.LASF7
	.byte	0x8
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"loc"
	.byte	0x8
	.byte	0x46
	.long	0x158f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"chain"
	.byte	0x8
	.byte	0x47
	.long	0x1fc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"type"
	.byte	0x8
	.byte	0x48
	.long	0x1f38
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"id"
	.byte	0x8
	.byte	0x49
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.long	.LASF5
	.byte	0x8
	.byte	0x4a
	.long	0x2046
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1fcf
	.uleb128 0x14
	.long	0x2085
	.string	"df_ref_flags"
	.byte	0x4
	.byte	0x8
	.byte	0x34
	.uleb128 0x15
	.string	"DF_REF_READ_WRITE"
	.sleb128 1
	.uleb128 0x15
	.string	"DF_REF_MODE_CHANGE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x20c5
	.string	"insn_info"
	.byte	0xc
	.byte	0x8
	.byte	0x50
	.uleb128 0x6
	.string	"defs"
	.byte	0x8
	.byte	0x51
	.long	0x1fc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0x8
	.byte	0x52
	.long	0x1fc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0x8
	.byte	0x55
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.long	0x212a
	.string	"reg_info"
	.byte	0x14
	.byte	0x8
	.byte	0x5e
	.uleb128 0x6
	.string	"defs"
	.byte	0x8
	.byte	0x5f
	.long	0x1fc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0x8
	.byte	0x60
	.long	0x1fc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"lifetime"
	.byte	0x8
	.byte	0x61
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"n_defs"
	.byte	0x8
	.byte	0x62
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"n_uses"
	.byte	0x8
	.byte	0x63
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	0x223f
	.string	"bb_info"
	.byte	0x3c
	.byte	0x8
	.byte	0x69
	.uleb128 0x6
	.string	"rd_kill"
	.byte	0x8
	.byte	0x6b
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"rd_gen"
	.byte	0x8
	.byte	0x6c
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"rd_in"
	.byte	0x8
	.byte	0x6d
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"rd_out"
	.byte	0x8
	.byte	0x6e
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"ru_kill"
	.byte	0x8
	.byte	0x70
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"ru_gen"
	.byte	0x8
	.byte	0x71
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ru_in"
	.byte	0x8
	.byte	0x72
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"ru_out"
	.byte	0x8
	.byte	0x73
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"lr_def"
	.byte	0x8
	.byte	0x75
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"lr_use"
	.byte	0x8
	.byte	0x76
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"lr_in"
	.byte	0x8
	.byte	0x77
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"lr_out"
	.byte	0x8
	.byte	0x78
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"rd_valid"
	.byte	0x8
	.byte	0x79
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"ru_valid"
	.byte	0x8
	.byte	0x7a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"lr_valid"
	.byte	0x8
	.byte	0x7b
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x4
	.long	0x2474
	.string	"df"
	.byte	0x74
	.byte	0x8
	.byte	0x80
	.uleb128 0x7
	.long	.LASF5
	.byte	0x8
	.byte	0x81
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bbs"
	.byte	0x8
	.byte	0x82
	.long	0x2474
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"defs"
	.byte	0x8
	.byte	0x83
	.long	0x247a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"uses"
	.byte	0x8
	.byte	0x84
	.long	0x247a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"reg_def_last"
	.byte	0x8
	.byte	0x85
	.long	0x247a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"regs"
	.byte	0x8
	.byte	0x86
	.long	0x2480
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reg_size"
	.byte	0x8
	.byte	0x87
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"insns"
	.byte	0x8
	.byte	0x88
	.long	0x2486
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"insn_size"
	.byte	0x8
	.byte	0x89
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"def_id"
	.byte	0x8
	.byte	0x8a
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"def_size"
	.byte	0x8
	.byte	0x8b
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"n_defs"
	.byte	0x8
	.byte	0x8c
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"use_id"
	.byte	0x8
	.byte	0x8d
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"use_size"
	.byte	0x8
	.byte	0x8e
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"n_uses"
	.byte	0x8
	.byte	0x8f
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"n_bbs"
	.byte	0x8
	.byte	0x90
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"n_regs"
	.byte	0x8
	.byte	0x91
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"def_id_save"
	.byte	0x8
	.byte	0x92
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"use_id_save"
	.byte	0x8
	.byte	0x93
	.long	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"insns_modified"
	.byte	0x8
	.byte	0x94
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"bbs_modified"
	.byte	0x8
	.byte	0x95
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"all_blocks"
	.byte	0x8
	.byte	0x96
	.long	0x1631
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"dom"
	.byte	0x8
	.byte	0x99
	.long	0x248c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"dfs_order"
	.byte	0x8
	.byte	0x9a
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"rc_order"
	.byte	0x8
	.byte	0x9b
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"rts_order"
	.byte	0x8
	.byte	0x9c
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"inverse_rc_map"
	.byte	0x8
	.byte	0x9d
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"inverse_dfs_map"
	.byte	0x8
	.byte	0x9e
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x6
	.string	"inverse_rts_map"
	.byte	0x8
	.byte	0x9f
	.long	0x705
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x212a
	.uleb128 0x3
	.byte	0x4
	.long	0x2040
	.uleb128 0x3
	.byte	0x4
	.long	0x20c5
	.uleb128 0x3
	.byte	0x4
	.long	0x2085
	.uleb128 0x3
	.byte	0x4
	.long	0x16a9
	.uleb128 0x4
	.long	0x24f7
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x11
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0x11
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0x11
	.byte	0x19
	.long	0x70b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0x11
	.byte	0x1a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.long	.LASF6
	.byte	0x11
	.byte	0x1b
	.long	0x24f7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2492
	.uleb128 0x12
	.long	0x2545
	.long	.LASF8
	.byte	0x10
	.byte	0x11
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0x11
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0x11
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF9
	.byte	0x11
	.byte	0x28
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.long	.LASF6
	.byte	0x11
	.byte	0x29
	.long	0x2545
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x24fd
	.uleb128 0x4
	.long	0x269a
	.string	"emit_status"
	.byte	0x34
	.byte	0x11
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0x11
	.byte	0x3a
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0x11
	.byte	0x3d
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0x11
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0x11
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.long	.LASF9
	.byte	0x11
	.byte	0x4a
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.long	.LASF8
	.byte	0x11
	.byte	0x50
	.long	0x2545
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0x11
	.byte	0x54
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0x11
	.byte	0x58
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0x11
	.byte	0x59
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0x11
	.byte	0x5f
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0x11
	.byte	0x65
	.long	0x67c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0x11
	.byte	0x69
	.long	0x269a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0x11
	.byte	0x70
	.long	0x158f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e0
	.uleb128 0x4
	.long	0x2780
	.string	"expr_status"
	.byte	0x1c
	.byte	0x11
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0x11
	.byte	0x80
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0x11
	.byte	0x91
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0x11
	.byte	0x97
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0x11
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0x11
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0x11
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0x11
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1c
	.long	0x27ea
	.long	.LASF10
	.byte	0x4
	.byte	0x11
	.value	0x1f1
	.uleb128 0x15
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x15
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x15
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1d
	.long	0x31a9
	.string	"function"
	.value	0x134
	.byte	0x3
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0x11
	.byte	0xb5
	.long	0x31b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0x11
	.byte	0xb6
	.long	0x31c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0x11
	.byte	0xb7
	.long	0x31cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0x11
	.byte	0xb8
	.long	0x31d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0x11
	.byte	0xb9
	.long	0x31eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0x11
	.byte	0xbe
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0x11
	.byte	0xc1
	.long	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0x11
	.byte	0xc4
	.long	0x31f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0x11
	.byte	0xc9
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0x11
	.byte	0xce
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0x11
	.byte	0xd3
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0x11
	.byte	0xd7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0x11
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0x11
	.byte	0xdf
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0x11
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0x11
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0x11
	.byte	0xec
	.long	0x1fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0x11
	.byte	0xf0
	.long	0x320e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0x11
	.byte	0xf3
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0x11
	.byte	0xf8
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x11
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x11
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x11
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.string	"x_cleanup_label"
	.byte	0x11
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.string	"x_return_label"
	.byte	0x11
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xc
	.string	"computed_goto_common_label"
	.byte	0x11
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xc
	.string	"computed_goto_common_reg"
	.byte	0x11
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xc
	.string	"x_save_expr_regs"
	.byte	0x11
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xc
	.string	"x_stack_slot_list"
	.byte	0x11
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xc
	.string	"x_rtl_expr_chain"
	.byte	0x11
	.value	0x121
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xc
	.string	"x_tail_recursion_label"
	.byte	0x11
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xc
	.string	"x_tail_recursion_reentry"
	.byte	0x11
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xc
	.string	"x_arg_pointer_save_area"
	.byte	0x11
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xc
	.string	"x_clobber_return_insn"
	.byte	0x11
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xc
	.string	"x_frame_offset"
	.byte	0x11
	.value	0x138
	.long	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xc
	.string	"x_context_display"
	.byte	0x11
	.value	0x13d
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xc
	.string	"x_trampoline_list"
	.byte	0x11
	.value	0x146
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xc
	.string	"x_parm_birth_insn"
	.byte	0x11
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xc
	.string	"x_last_parm_insn"
	.byte	0x11
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xc
	.string	"x_max_parm_reg"
	.byte	0x11
	.value	0x151
	.long	0x2ea
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xc
	.string	"x_parm_reg_stack_loc"
	.byte	0x11
	.value	0x157
	.long	0x158f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xc
	.string	"x_temp_slots"
	.byte	0x11
	.value	0x15a
	.long	0x3220
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xc
	.string	"x_temp_slot_level"
	.byte	0x11
	.value	0x15d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xc
	.string	"x_var_temp_slot_level"
	.byte	0x11
	.value	0x160
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xc
	.string	"x_target_temp_slot_level"
	.byte	0x11
	.value	0x166
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xc
	.string	"fixup_var_refs_queue"
	.byte	0x11
	.value	0x16a
	.long	0x24f7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xc
	.string	"inlinable"
	.byte	0x11
	.value	0x16d
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xc
	.string	"no_debugging_symbols"
	.byte	0x11
	.value	0x16e
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xc
	.string	"original_arg_vector"
	.byte	0x11
	.value	0x16f
	.long	0x19d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.string	"original_decl_initial"
	.byte	0x11
	.value	0x170
	.long	0x1e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xc
	.string	"inl_last_parm_insn"
	.byte	0x11
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xc
	.string	"inl_max_label_num"
	.byte	0x11
	.value	0x175
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xc
	.string	"funcdef_no"
	.byte	0x11
	.value	0x178
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xc
	.string	"machine"
	.byte	0x11
	.value	0x17d
	.long	0x3239
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xc
	.string	"stack_alignment_needed"
	.byte	0x11
	.value	0x17f
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xc
	.string	"preferred_stack_boundary"
	.byte	0x11
	.value	0x181
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xc
	.string	"language"
	.byte	0x11
	.value	0x184
	.long	0x3253
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xc
	.string	"epilogue_delay_list"
	.byte	0x11
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
	.string	"returns_struct"
	.byte	0x11
	.value	0x190
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pcc_struct"
	.byte	0x11
	.value	0x194
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pointer"
	.byte	0x11
	.value	0x197
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"needs_context"
	.byte	0x11
	.value	0x19a
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_setjmp"
	.byte	0x11
	.value	0x19d
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_longjmp"
	.byte	0x11
	.value	0x1a0
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_alloca"
	.byte	0x11
	.value	0x1a4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_eh_return"
	.byte	0x11
	.value	0x1a7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_label"
	.byte	0x11
	.value	0x1ab
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_goto"
	.byte	0x11
	.value	0x1af
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"contains_functions"
	.byte	0x11
	.value	0x1b2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_computed_jump"
	.byte	0x11
	.value	0x1b5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"is_thunk"
	.byte	0x11
	.value	0x1ba
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"all_throwers_are_sibcalls"
	.byte	0x11
	.value	0x1c1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"instrument_entry_exit"
	.byte	0x11
	.value	0x1c5
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arc_profile"
	.byte	0x11
	.value	0x1c8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"profile"
	.byte	0x11
	.value	0x1cb
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"limit_stack"
	.byte	0x11
	.value	0x1cf
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"stdarg"
	.byte	0x11
	.value	0x1d2
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_whole_function_mode_p"
	.byte	0x11
	.value	0x1d8
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x11
	.value	0x1e1
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_const_pool"
	.byte	0x11
	.value	0x1e4
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_pic_offset_table"
	.byte	0x11
	.value	0x1e7
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_eh_lsda"
	.byte	0x11
	.value	0x1ea
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arg_pointer_save_area_init"
	.byte	0x11
	.value	0x1ed
	.long	0x2ea
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x11
	.value	0x1fa
	.long	0x2780
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xc
	.string	"max_jumptable_ents"
	.byte	0x11
	.value	0x1fe
	.long	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x31a9
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x31bb
	.uleb128 0x3
	.byte	0x4
	.long	0x26a0
	.uleb128 0x3
	.byte	0x4
	.long	0x254b
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x31db
	.uleb128 0x3
	.byte	0x4
	.long	0x27ea
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x31f7
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3214
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3226
	.uleb128 0x1a
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x323f
	.uleb128 0x1f
	.long	0x3283
	.byte	0x4
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.string	"UNDEFINED"
	.sleb128 0
	.uleb128 0x15
	.string	"CONSTANT"
	.sleb128 1
	.uleb128 0x15
	.string	"VARYING"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"latticevalue"
	.byte	0x1
	.byte	0x54
	.long	0x3259
	.uleb128 0x16
	.long	0x32cc
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.uleb128 0x6
	.string	"lattice_val"
	.byte	0x1
	.byte	0x5c
	.long	0x3283
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"const_value"
	.byte	0x1
	.byte	0x5d
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"value"
	.byte	0x1
	.byte	0x5e
	.long	0x3297
	.uleb128 0x20
	.long	0x33ed
	.string	"visit_phi_node"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x21
	.string	"phi_node"
	.byte	0x1
	.byte	0x8d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"block"
	.byte	0x1
	.byte	0x8e
	.long	0x1ec1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x90
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.string	"phi_node_expr"
	.byte	0x1
	.byte	0x91
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"phi_node_name"
	.byte	0x1
	.byte	0x92
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"phi_node_lattice_val"
	.byte	0x1
	.byte	0x93
	.long	0x3283
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"pat"
	.byte	0x1
	.byte	0x94
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"phi_vec"
	.byte	0x1
	.byte	0x95
	.long	0x19d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF0
	.byte	0x1
	.byte	0x96
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x22
	.string	"current_parm"
	.byte	0x1
	.byte	0x9e
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"current_parm_lattice_val"
	.byte	0x1
	.byte	0xa1
	.long	0x3283
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3434
	.string	"defs_to_undefined"
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x25
	.long	.LASF7
	.byte	0x1
	.byte	0xd4
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"currdef"
	.byte	0x1
	.byte	0xd6
	.long	0x1fc9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x20
	.long	0x3479
	.string	"defs_to_varying"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x25
	.long	.LASF7
	.byte	0x1
	.byte	0xe3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"currdef"
	.byte	0x1
	.byte	0xe5
	.long	0x1fc9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x20
	.long	0x378f
	.string	"visit_expression"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x25
	.long	.LASF7
	.byte	0x1
	.byte	0xf3
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"block"
	.byte	0x1
	.byte	0xf4
	.long	0x1ec1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.byte	0xf6
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x22
	.string	"dest"
	.byte	0x1
	.byte	0xf6
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.string	"set"
	.byte	0x1
	.byte	0xf6
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	0x3522
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x100
	.long	0x1c40
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x105
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x3546
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x28
	.string	"resultreg"
	.byte	0x1
	.value	0x12d
	.long	0x2ea
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.byte	0x0
	.uleb128 0x26
	.long	0x359e
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x28
	.string	"old_value"
	.byte	0x1
	.value	0x137
	.long	0x2ea
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.string	"old_lattice_value"
	.byte	0x1
	.value	0x138
	.long	0x3283
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"new_value"
	.byte	0x1
	.value	0x139
	.long	0x2ea
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x26
	.long	0x3698
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	0x35f1
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x14c
	.long	0x1c40
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x158
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x164
	.long	0x1c40
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.string	"comparison_code"
	.byte	0x1
	.value	0x165
	.long	0x954
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"comparison_src0"
	.byte	0x1
	.value	0x166
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"comparison_src1"
	.byte	0x1
	.value	0x167
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	0x367c
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x180
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x24
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x1a4
	.long	0x211
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x28
	.string	"simplified"
	.byte	0x1
	.value	0x1c2
	.long	0x9c
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	0x36f6
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x28
	.string	"src0"
	.byte	0x1
	.value	0x1cf
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"src1"
	.byte	0x1
	.value	0x1d0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.string	"mode"
	.byte	0x1
	.value	0x1d1
	.long	0x70b
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x26
	.long	0x3725
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x28
	.string	"src0"
	.byte	0x1
	.value	0x1f7
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"mode0"
	.byte	0x1
	.value	0x1f8
	.long	0x70b
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x26
	.long	0x3753
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x28
	.string	"src0"
	.byte	0x1
	.value	0x214
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"src1"
	.byte	0x1
	.value	0x215
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x24
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x28
	.string	"src0"
	.byte	0x1
	.value	0x236
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"src1"
	.byte	0x1
	.value	0x237
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"src2"
	.byte	0x1
	.value	0x238
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3824
	.string	"examine_flow_edges"
	.byte	0x1
	.value	0x273
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x24
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x28
	.string	"succ_block"
	.byte	0x1
	.value	0x276
	.long	0x1ec1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"curr_phi_node"
	.byte	0x1
	.value	0x277
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x28
	.string	"currinsn"
	.byte	0x1
	.value	0x28c
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"succ_edge"
	.byte	0x1
	.value	0x28d
	.long	0x1c40
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3898
	.string	"follow_def_use_chains"
	.byte	0x1
	.value	0x2b7
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x24
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x28
	.string	"member"
	.byte	0x1
	.value	0x2bb
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF12
	.byte	0x1
	.value	0x2bc
	.long	0x1fc9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x28
	.string	"useinsn"
	.byte	0x1
	.value	0x2c7
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3965
	.string	"optimize_unexecutable_edges"
	.byte	0x1
	.value	0x2e4
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2a
	.string	"edges"
	.byte	0x1
	.value	0x2e2
	.long	0x3965
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF13
	.byte	0x1
	.value	0x2e3
	.long	0x16a9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x2e5
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"bb"
	.byte	0x1
	.value	0x2e6
	.long	0x1ec1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	0x393b
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x28
	.string	"edge"
	.byte	0x1
	.value	0x2ec
	.long	0x1c40
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x2f5
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x27
	.long	.LASF7
	.byte	0x1
	.value	0x322
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"edge"
	.byte	0x1
	.value	0x323
	.long	0x1c40
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1ee0
	.uleb128 0x29
	.long	0x39ff
	.string	"ssa_ccp_substitute_constants"
	.byte	0x1
	.value	0x353
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x354
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x28
	.string	"def"
	.byte	0x1
	.value	0x35a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"set"
	.byte	0x1
	.value	0x35b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF12
	.byte	0x1
	.value	0x35c
	.long	0x1fc9
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x28
	.string	"useinsn"
	.byte	0x1
	.value	0x37d
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3a98
	.string	"ssa_ccp_df_delete_unreachable_insns"
	.byte	0x1
	.value	0x3a2
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x3a3
	.long	0x1ec1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x28
	.string	"start"
	.byte	0x1
	.value	0x3af
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"end"
	.byte	0x1
	.value	0x3b0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x3b1
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.value	0x3bf
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	0x3af3
	.byte	0x1
	.string	"ssa_const_prop"
	.byte	0x1
	.value	0x3d6
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x3d7
	.long	0x2ea
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF11
	.byte	0x1
	.value	0x3d8
	.long	0x1c40
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x405
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3b93
	.string	"mark_references"
	.byte	0x1
	.value	0x449
	.byte	0x1
	.long	0x211
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2a
	.string	"current_rtx"
	.byte	0x1
	.value	0x447
	.long	0x158f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"data"
	.byte	0x1
	.value	0x448
	.long	0x3ed
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x44a
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x44b
	.long	0x16a9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x28
	.string	"dest"
	.byte	0x1
	.value	0x452
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x459
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3c29
	.string	"ssa_fast_dce"
	.byte	0x1
	.value	0x47d
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2a
	.string	"df"
	.byte	0x1
	.value	0x47c
	.long	0x3c29
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF14
	.byte	0x1
	.value	0x47e
	.long	0x16a9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x27
	.long	.LASF12
	.byte	0x1
	.value	0x485
	.long	0x1fc9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.value	0x486
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"found_use"
	.byte	0x1
	.value	0x486
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x28
	.string	"def"
	.byte	0x1
	.value	0x4b0
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x223f
	.uleb128 0x22
	.string	"values"
	.byte	0x1
	.byte	0x61
	.long	0x3c43
	.byte	0x5
	.byte	0x3
	.long	values
	.uleb128 0x3
	.byte	0x4
	.long	0x32cc
	.uleb128 0x22
	.string	"executable_blocks"
	.byte	0x1
	.byte	0x64
	.long	0x16a9
	.byte	0x5
	.byte	0x3
	.long	executable_blocks
	.uleb128 0x23
	.long	.LASF13
	.byte	0x1
	.byte	0x67
	.long	0x16a9
	.byte	0x5
	.byte	0x3
	.long	executable_edges
	.uleb128 0x22
	.string	"edge_info"
	.byte	0x1
	.byte	0x6a
	.long	0x1ed4
	.byte	0x5
	.byte	0x3
	.long	edge_info
	.uleb128 0x22
	.string	"edges"
	.byte	0x1
	.byte	0x6d
	.long	0x3965
	.byte	0x5
	.byte	0x3
	.long	edges
	.uleb128 0x22
	.string	"df_analyzer"
	.byte	0x1
	.byte	0x70
	.long	0x3c29
	.byte	0x5
	.byte	0x3
	.long	df_analyzer
	.uleb128 0x22
	.string	"flow_edges"
	.byte	0x1
	.byte	0x73
	.long	0x1c40
	.byte	0x5
	.byte	0x3
	.long	flow_edges
	.uleb128 0x22
	.string	"ssa_edges"
	.byte	0x1
	.byte	0x77
	.long	0x16a9
	.byte	0x5
	.byte	0x3
	.long	ssa_edges
	.uleb128 0x2e
	.string	"target_flags"
	.byte	0x9
	.byte	0x21
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x3d11
	.long	0x209
	.uleb128 0xf
	.long	0x301
	.byte	0xa2
	.byte	0x0
	.uleb128 0x2e
	.string	"rtx_class"
	.byte	0x3
	.byte	0x3f
	.long	0x3d24
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3d01
	.uleb128 0xe
	.long	0x3d39
	.long	0x9c
	.uleb128 0xf
	.long	0x301
	.byte	0xa
	.byte	0x0
	.uleb128 0x2f
	.string	"global_rtl"
	.byte	0x3
	.value	0x6df
	.long	0x3d29
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"last_basic_block"
	.byte	0x6
	.byte	0xf6
	.long	0x211
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"basic_block_info"
	.byte	0x6
	.byte	0xfe
	.long	0x1b59
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x3d92
	.long	0x13d3
	.uleb128 0xf
	.long	0x301
	.byte	0x1
	.byte	0x0
	.uleb128 0x2f
	.string	"entry_exit_blocks"
	.byte	0x6
	.value	0x139
	.long	0x3d82
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.string	"ssa_definition"
	.byte	0xc
	.byte	0x30
	.long	0x1b59
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.string	"rtl_dump_file"
	.byte	0xd
	.value	0x1b8
	.long	0x3dde
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3f5
	.uleb128 0x2f
	.string	"cfun"
	.byte	0x11
	.value	0x202
	.long	0x31f1
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
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x4
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.long	0x21
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3df4
	.long	0x3a98
	.string	"ssa_const_prop"
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
.LASF14:
	.string	"worklist"
.LASF6:
	.string	"next"
.LASF7:
	.string	"insn"
.LASF12:
	.string	"curruse"
.LASF13:
	.string	"executable_edges"
.LASF3:
	.string	"mem_attrs"
.LASF8:
	.string	"sequence_stack"
.LASF2:
	.string	"_IO_FILE"
.LASF11:
	.string	"curredge"
.LASF0:
	.string	"num_elem"
.LASF10:
	.string	"function_frequency"
.LASF9:
	.string	"sequence_rtl_expr"
.LASF4:
	.string	"index"
.LASF1:
	.string	"unsigned int"
.LASF5:
	.string	"flags"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
