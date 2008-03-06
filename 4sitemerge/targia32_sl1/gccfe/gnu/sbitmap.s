	.file	"sbitmap.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl sbitmap_alloc
	.type	sbitmap_alloc, @function
sbitmap_alloc:
.LFB15:
	.file 1 "../../../kgccfe/gnu/sbitmap.c"
	.loc 1 35 0
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
	.loc 1 39 0
	movl	8(%ebp), %eax
	addl	$63, %eax
	shrl	$6, %eax
	movl	%eax, -16(%ebp)
	.loc 1 40 0
	movl	-16(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 41 0
	movl	-20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 43 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 44 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 45 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 46 0
	movl	-8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 47 0
	movl	-8(%ebp), %eax
	.loc 1 48 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	sbitmap_alloc, .-sbitmap_alloc
.globl sbitmap_resize
	.type	sbitmap_resize, @function
sbitmap_resize:
.LFB16:
	.loc 1 59 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%edi
.LCFI6:
	pushl	%esi
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$92, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 63 0
	movl	12(%ebp), %eax
	addl	$63, %eax
	shrl	$6, %eax
	movl	%eax, -28(%ebp)
	.loc 1 64 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -32(%ebp)
	.loc 1 65 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-32(%ebp), %eax
	jae	.L4
	.loc 1 67 0
	movl	-32(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 69 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, 8(%ebp)
.L4:
	.loc 1 72 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jae	.L6
	.loc 1 74 0
	cmpl	$0, 16(%ebp)
	je	.L8
	.loc 1 76 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%ecx, 8(%esp)
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	memset@PLT
	.loc 1 79 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$63, %eax
	movl	%eax, -20(%ebp)
	.loc 1 80 0
	cmpl	$0, -20(%ebp)
	je	.L10
	.loc 1 81 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	$64, %eax
	subl	-20(%ebp), %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L21
	movl	%edx, %eax
	xorl	%edx, %edx
.L21:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L10:
	.loc 1 85 0
	movl	12(%ebp), %eax
	andl	$63, %eax
	movl	%eax, -20(%ebp)
	.loc 1 86 0
	cmpl	$0, -20(%ebp)
	je	.L15
	.loc 1 87 0
	movl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -60(%ebp)
	movl	-28(%ebp), %edx
	subl	$1, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	$64, %eax
	subl	-20(%ebp), %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L20
	movl	%edi, %esi
	xorl	%edi, %edi
.L20:
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	jmp	.L15
.L8:
	.loc 1 91 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	movl	%ecx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	memset@PLT
	jmp	.L15
.L6:
	.loc 1 93 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jbe	.L15
	.loc 1 96 0
	movl	12(%ebp), %eax
	andl	$63, %eax
	movl	%eax, -20(%ebp)
	.loc 1 97 0
	cmpl	$0, -20(%ebp)
	je	.L15
	.loc 1 98 0
	movl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -44(%ebp)
	movl	-28(%ebp), %edx
	subl	$1, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	$64, %eax
	subl	-20(%ebp), %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L19
	movl	%edi, %esi
	xorl	%edi, %edi
.L19:
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L15:
	.loc 1 102 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 103 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 104 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 105 0
	movl	8(%ebp), %eax
	.loc 1 106 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	sbitmap_resize, .-sbitmap_resize
.globl sbitmap_vector_alloc
	.type	sbitmap_vector_alloc, @function
sbitmap_vector_alloc:
.LFB17:
	.loc 1 113 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$68, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 117 0
	movl	12(%ebp), %eax
	addl	$63, %eax
	shrl	$6, %eax
	movl	%eax, -28(%ebp)
	.loc 1 118 0
	movl	-28(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -40(%ebp)
	.loc 1 119 0
	movl	-40(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -32(%ebp)
	.loc 1 121 0
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -20(%ebp)
.LBB2:
	.loc 1 131 0
	movl	$4, -12(%ebp)
	.loc 1 132 0
	movl	-12(%ebp), %eax
	addl	-20(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-12(%ebp), %eax
	negl	%eax
	andl	%edx, %eax
	movl	%eax, -20(%ebp)
.LBE2:
	.loc 1 135 0
	movl	8(%ebp), %eax
	imull	-32(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 136 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 138 0
	movl	$0, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L23
.L24:
.LBB3:
	.loc 1 140 0
	movl	-16(%ebp), %edx
	movl	-36(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 142 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 143 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 144 0
	movl	-8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 145 0
	movl	-8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%edx)
.LBE3:
	.loc 1 138 0
	addl	$1, -44(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, -36(%ebp)
.L23:
	movl	-44(%ebp), %eax
	cmpl	8(%ebp), %eax
	jb	.L24
	.loc 1 148 0
	movl	-16(%ebp), %eax
	.loc 1 149 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	sbitmap_vector_alloc, .-sbitmap_vector_alloc
.globl sbitmap_copy
	.type	sbitmap_copy, @function
sbitmap_copy:
.LFB18:
	.loc 1 156 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%edi
.LCFI16:
	pushl	%esi
.LCFI17:
	.loc 1 157 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	0(,%eax,8), %ecx
	movl	12(%ebp), %edx
	addl	$12, %edx
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 158 0
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	sbitmap_copy, .-sbitmap_copy
.globl sbitmap_equal
	.type	sbitmap_equal, @function
sbitmap_equal:
.LFB19:
	.loc 1 164 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%esi
.LCFI21:
	subl	$12, %esp
.LCFI22:
	.loc 1 165 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	0(,%eax,8), %ecx
	movl	12(%ebp), %edx
	addl	$12, %edx
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	movl	%edx, -16(%ebp)
	movl	%ecx, -20(%ebp)
	cld
	movl	-20(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	movl	-12(%ebp), %esi
	movl	-16(%ebp), %edi
	movl	-20(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 166 0
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	sbitmap_equal, .-sbitmap_equal
.globl sbitmap_zero
	.type	sbitmap_zero, @function
sbitmap_zero:
.LFB20:
	.loc 1 173 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%ebx
.LCFI25:
	subl	$20, %esp
.LCFI26:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 174 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 175 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	sbitmap_zero, .-sbitmap_zero
.globl sbitmap_ones
	.type	sbitmap_ones, @function
sbitmap_ones:
.LFB21:
	.loc 1 182 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	pushl	%esi
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$32, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 185 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	addl	$12, %edx
	movl	%eax, 8(%esp)
	movl	$-1, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 187 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$63, %eax
	movl	%eax, -12(%ebp)
	.loc 1 188 0
	cmpl	$0, -12(%ebp)
	je	.L36
	.loc 1 189 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %esi
	movl	$64, %eax
	subl	-12(%ebp), %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L37
	movl	%edx, %eax
	xorl	%edx, %edx
.L37:
	movl	8(%ebp), %ecx
	movl	%eax, 12(%ecx,%esi,8)
	movl	%edx, 16(%ecx,%esi,8)
.L36:
	.loc 1 191 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE21:
	.size	sbitmap_ones, .-sbitmap_ones
.globl sbitmap_vector_zero
	.type	sbitmap_vector_zero, @function
sbitmap_vector_zero:
.LFB22:
	.loc 1 199 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$20, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 202 0
	movl	$0, -8(%ebp)
	jmp	.L39
.L40:
	.loc 1 203 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 202 0
	addl	$1, -8(%ebp)
.L39:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L40
	.loc 1 204 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	sbitmap_vector_zero, .-sbitmap_vector_zero
.globl sbitmap_vector_ones
	.type	sbitmap_vector_ones, @function
sbitmap_vector_ones:
.LFB23:
	.loc 1 212 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$20, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 215 0
	movl	$0, -8(%ebp)
	jmp	.L44
.L45:
	.loc 1 216 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	.loc 1 215 0
	addl	$1, -8(%ebp)
.L44:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L45
	.loc 1 217 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	sbitmap_vector_ones, .-sbitmap_vector_ones
.globl sbitmap_union_of_diff_cg
	.type	sbitmap_union_of_diff_cg, @function
sbitmap_union_of_diff_cg:
.LFB24:
	.loc 1 226 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%edi
.LCFI42:
	pushl	%esi
.LCFI43:
	subl	$64, %esp
.LCFI44:
	.loc 1 227 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 228 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 229 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 230 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 231 0
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 232 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 234 0
	movl	$0, -32(%ebp)
	jmp	.L49
.L50:
.LBB4:
	.loc 1 236 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	-64(%ebp), %esi
	andl	%eax, %esi
	movl	-60(%ebp), %edi
	andl	%edx, %edi
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	%eax, -40(%ebp)
	movl	-68(%ebp), %eax
	orl	%edi, %eax
	movl	%eax, -36(%ebp)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 237 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	xorl	-40(%ebp), %esi
	movl	%edx, %edi
	xorl	-36(%ebp), %edi
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 238 0
	movl	-24(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -24(%ebp)
.LBE4:
	.loc 1 234 0
	addl	$1, -32(%ebp)
.L49:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L50
	.loc 1 241 0
	movl	-44(%ebp), %eax
	orl	-48(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 242 0
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	sbitmap_union_of_diff_cg, .-sbitmap_union_of_diff_cg
.globl sbitmap_union_of_diff
	.type	sbitmap_union_of_diff, @function
sbitmap_union_of_diff:
.LFB25:
	.loc 1 247 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%edi
.LCFI47:
	pushl	%esi
.LCFI48:
	subl	$48, %esp
.LCFI49:
	.loc 1 248 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 249 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 250 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 251 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 252 0
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 254 0
	movl	$0, -32(%ebp)
	jmp	.L54
.L55:
	.loc 1 255 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	-48(%ebp), %esi
	andl	%eax, %esi
	movl	-44(%ebp), %edi
	andl	%edx, %edi
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -24(%ebp)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 254 0
	addl	$1, -32(%ebp)
.L54:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L55
	.loc 1 256 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	sbitmap_union_of_diff, .-sbitmap_union_of_diff
.globl sbitmap_not
	.type	sbitmap_not, @function
sbitmap_not:
.LFB26:
	.loc 1 263 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%edi
.LCFI52:
	pushl	%esi
.LCFI53:
	subl	$16, %esp
.LCFI54:
	.loc 1 264 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 265 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 266 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 268 0
	movl	$0, -24(%ebp)
	jmp	.L59
.L60:
	.loc 1 269 0
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	movl	-16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 268 0
	addl	$1, -24(%ebp)
.L59:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L60
	.loc 1 270 0
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	sbitmap_not, .-sbitmap_not
	.section	.rodata
	.type	__FUNCTION__.9190, @object
	.size	__FUNCTION__.9190, 19
__FUNCTION__.9190:
	.string	"sbitmap_difference"
.LC0:
	.string	"../../../kgccfe/gnu/sbitmap.c"
	.text
.globl sbitmap_difference
	.type	sbitmap_difference, @function
sbitmap_difference:
.LFB27:
	.loc 1 278 0
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
	subl	$60, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 280 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 281 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -28(%ebp)
	.loc 1 282 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 283 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 286 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jae	.L64
	.loc 1 287 0
	leal	__FUNCTION__.9190@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$287, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L64:
	.loc 1 290 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	jae	.L66
	.loc 1 291 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L66:
	.loc 1 292 0
	movl	$0, -40(%ebp)
	jmp	.L68
.L69:
	.loc 1 293 0
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -28(%ebp)
	addl	$8, -24(%ebp)
	addl	$8, -20(%ebp)
	.loc 1 292 0
	addl	$1, -40(%ebp)
.L68:
	movl	-40(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L69
	.loc 1 296 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L76
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L76
	.loc 1 297 0
	jmp	.L74
.L75:
	.loc 1 298 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -28(%ebp)
	addl	$8, -24(%ebp)
	.loc 1 297 0
	addl	$1, -40(%ebp)
.L74:
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L75
.L76:
	.loc 1 299 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	sbitmap_difference, .-sbitmap_difference
.globl sbitmap_a_and_b_cg
	.type	sbitmap_a_and_b_cg, @function
sbitmap_a_and_b_cg:
.LFB28:
	.loc 1 307 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%edi
.LCFI63:
	pushl	%esi
.LCFI64:
	subl	$48, %esp
.LCFI65:
	.loc 1 308 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 309 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 310 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 311 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 312 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 314 0
	movl	$0, -28(%ebp)
	jmp	.L78
.L79:
.LBB5:
	.loc 1 316 0
	movl	-16(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%esi, %ecx
	andl	%eax, %ecx
	movl	%ecx, -40(%ebp)
	movl	%edi, %eax
	andl	%edx, %eax
	movl	%eax, -36(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 317 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %ecx
	xorl	-40(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	movl	%edx, %eax
	xorl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 318 0
	movl	-20(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
.LBE5:
	.loc 1 314 0
	addl	$1, -28(%ebp)
.L78:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L79
	.loc 1 321 0
	movl	-44(%ebp), %eax
	orl	-48(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 322 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	sbitmap_a_and_b_cg, .-sbitmap_a_and_b_cg
.globl sbitmap_a_and_b
	.type	sbitmap_a_and_b, @function
sbitmap_a_and_b:
.LFB29:
	.loc 1 327 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%edi
.LCFI68:
	pushl	%esi
.LCFI69:
	subl	$40, %esp
.LCFI70:
	.loc 1 328 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 329 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 330 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 331 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 333 0
	movl	$0, -28(%ebp)
	jmp	.L83
.L84:
	.loc 1 334 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-48(%ebp), %eax
	andl	%esi, %eax
	movl	-44(%ebp), %edx
	andl	%edi, %edx
	movl	-20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 333 0
	addl	$1, -28(%ebp)
.L83:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L84
	.loc 1 335 0
	addl	$40, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	sbitmap_a_and_b, .-sbitmap_a_and_b
.globl sbitmap_a_xor_b_cg
	.type	sbitmap_a_xor_b_cg, @function
sbitmap_a_xor_b_cg:
.LFB30:
	.loc 1 343 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%edi
.LCFI73:
	pushl	%esi
.LCFI74:
	subl	$48, %esp
.LCFI75:
	.loc 1 344 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 345 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 346 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 347 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 348 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 350 0
	movl	$0, -28(%ebp)
	jmp	.L88
.L89:
.LBB6:
	.loc 1 352 0
	movl	-16(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%esi, %ecx
	xorl	%eax, %ecx
	movl	%ecx, -40(%ebp)
	movl	%edi, %eax
	xorl	%edx, %eax
	movl	%eax, -36(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 353 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %ecx
	xorl	-40(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	movl	%edx, %eax
	xorl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 354 0
	movl	-20(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
.LBE6:
	.loc 1 350 0
	addl	$1, -28(%ebp)
.L88:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L89
	.loc 1 357 0
	movl	-44(%ebp), %eax
	orl	-48(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 358 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	sbitmap_a_xor_b_cg, .-sbitmap_a_xor_b_cg
.globl sbitmap_a_xor_b
	.type	sbitmap_a_xor_b, @function
sbitmap_a_xor_b:
.LFB31:
	.loc 1 363 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%edi
.LCFI78:
	pushl	%esi
.LCFI79:
	subl	$40, %esp
.LCFI80:
	.loc 1 364 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 365 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 366 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 367 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 369 0
	movl	$0, -28(%ebp)
	jmp	.L93
.L94:
	.loc 1 370 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-48(%ebp), %eax
	xorl	%esi, %eax
	movl	-44(%ebp), %edx
	xorl	%edi, %edx
	movl	-20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 369 0
	addl	$1, -28(%ebp)
.L93:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L94
	.loc 1 371 0
	addl	$40, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	sbitmap_a_xor_b, .-sbitmap_a_xor_b
.globl sbitmap_a_or_b_cg
	.type	sbitmap_a_or_b_cg, @function
sbitmap_a_or_b_cg:
.LFB32:
	.loc 1 379 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%edi
.LCFI83:
	pushl	%esi
.LCFI84:
	subl	$48, %esp
.LCFI85:
	.loc 1 380 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 381 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 382 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 383 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 384 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 386 0
	movl	$0, -28(%ebp)
	jmp	.L98
.L99:
.LBB7:
	.loc 1 388 0
	movl	-16(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%esi, %ecx
	orl	%eax, %ecx
	movl	%ecx, -40(%ebp)
	movl	%edi, %eax
	orl	%edx, %eax
	movl	%eax, -36(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 389 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %ecx
	xorl	-40(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	movl	%edx, %eax
	xorl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 390 0
	movl	-20(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
.LBE7:
	.loc 1 386 0
	addl	$1, -28(%ebp)
.L98:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L99
	.loc 1 393 0
	movl	-44(%ebp), %eax
	orl	-48(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 394 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	sbitmap_a_or_b_cg, .-sbitmap_a_or_b_cg
.globl sbitmap_a_or_b
	.type	sbitmap_a_or_b, @function
sbitmap_a_or_b:
.LFB33:
	.loc 1 399 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%edi
.LCFI88:
	pushl	%esi
.LCFI89:
	subl	$40, %esp
.LCFI90:
	.loc 1 400 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 401 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 402 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 403 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 405 0
	movl	$0, -28(%ebp)
	jmp	.L103
.L104:
	.loc 1 406 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	-20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 405 0
	addl	$1, -28(%ebp)
.L103:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L104
	.loc 1 407 0
	addl	$40, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	sbitmap_a_or_b, .-sbitmap_a_or_b
.globl sbitmap_a_subset_b_p
	.type	sbitmap_a_subset_b_p, @function
sbitmap_a_subset_b_p:
.LFB34:
	.loc 1 414 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%edi
.LCFI93:
	pushl	%esi
.LCFI94:
	subl	$32, %esp
.LCFI95:
	.loc 1 415 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 418 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L108
.L109:
	.loc 1 419 0
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-12(%ebp), %ecx
	movl	(%ecx), %esi
	movl	4(%ecx), %edi
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L110
	.loc 1 420 0
	movl	$0, -28(%ebp)
	jmp	.L112
.L110:
	.loc 1 418 0
	addl	$1, -24(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
.L108:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L109
	.loc 1 422 0
	movl	$1, -28(%ebp)
.L112:
	movl	-28(%ebp), %eax
	.loc 1 423 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	sbitmap_a_subset_b_p, .-sbitmap_a_subset_b_p
.globl sbitmap_a_or_b_and_c_cg
	.type	sbitmap_a_or_b_and_c_cg, @function
sbitmap_a_or_b_and_c_cg:
.LFB35:
	.loc 1 431 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%edi
.LCFI98:
	pushl	%esi
.LCFI99:
	subl	$64, %esp
.LCFI100:
	.loc 1 432 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 433 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 434 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 435 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 436 0
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 437 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 439 0
	movl	$0, -32(%ebp)
	jmp	.L116
.L117:
.LBB8:
	.loc 1 441 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-64(%ebp), %eax
	andl	%esi, %eax
	movl	-60(%ebp), %edx
	andl	%edi, %edx
	movl	-72(%ebp), %ecx
	orl	%eax, %ecx
	movl	%ecx, -40(%ebp)
	movl	-68(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -36(%ebp)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 442 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	xorl	-40(%ebp), %esi
	movl	%edx, %edi
	xorl	-36(%ebp), %edi
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 443 0
	movl	-24(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -24(%ebp)
.LBE8:
	.loc 1 439 0
	addl	$1, -32(%ebp)
.L116:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L117
	.loc 1 446 0
	movl	-44(%ebp), %eax
	orl	-48(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 447 0
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	sbitmap_a_or_b_and_c_cg, .-sbitmap_a_or_b_and_c_cg
.globl sbitmap_a_or_b_and_c
	.type	sbitmap_a_or_b_and_c, @function
sbitmap_a_or_b_and_c:
.LFB36:
	.loc 1 452 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%edi
.LCFI103:
	pushl	%esi
.LCFI104:
	subl	$48, %esp
.LCFI105:
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 454 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 455 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 456 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 457 0
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 459 0
	movl	$0, -32(%ebp)
	jmp	.L121
.L122:
	.loc 1 460 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-48(%ebp), %esi
	andl	%eax, %esi
	movl	-44(%ebp), %edi
	andl	%edx, %edi
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -24(%ebp)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 459 0
	addl	$1, -32(%ebp)
.L121:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L122
	.loc 1 461 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	sbitmap_a_or_b_and_c, .-sbitmap_a_or_b_and_c
.globl sbitmap_a_and_b_or_c_cg
	.type	sbitmap_a_and_b_or_c_cg, @function
sbitmap_a_and_b_or_c_cg:
.LFB37:
	.loc 1 469 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%edi
.LCFI108:
	pushl	%esi
.LCFI109:
	subl	$64, %esp
.LCFI110:
	.loc 1 470 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 471 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 472 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 473 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 474 0
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 475 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 477 0
	movl	$0, -32(%ebp)
	jmp	.L126
.L127:
.LBB9:
	.loc 1 479 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	movl	-72(%ebp), %ecx
	andl	%eax, %ecx
	movl	%ecx, -40(%ebp)
	movl	-68(%ebp), %eax
	andl	%edx, %eax
	movl	%eax, -36(%ebp)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 480 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	xorl	-40(%ebp), %esi
	movl	%edx, %edi
	xorl	-36(%ebp), %edi
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 481 0
	movl	-24(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -24(%ebp)
.LBE9:
	.loc 1 477 0
	addl	$1, -32(%ebp)
.L126:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L127
	.loc 1 484 0
	movl	-44(%ebp), %eax
	orl	-48(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 485 0
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	sbitmap_a_and_b_or_c_cg, .-sbitmap_a_and_b_or_c_cg
.globl sbitmap_a_and_b_or_c
	.type	sbitmap_a_and_b_or_c, @function
sbitmap_a_and_b_or_c:
.LFB38:
	.loc 1 490 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%edi
.LCFI113:
	pushl	%esi
.LCFI114:
	subl	$48, %esp
.LCFI115:
	.loc 1 491 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 492 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 493 0
	movl	12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 494 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 495 0
	movl	20(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	.loc 1 497 0
	movl	$0, -32(%ebp)
	jmp	.L131
.L132:
	.loc 1 498 0
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-48(%ebp), %esi
	orl	%eax, %esi
	movl	-44(%ebp), %edi
	orl	%edx, %edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -24(%ebp)
	addl	$8, -20(%ebp)
	addl	$8, -16(%ebp)
	addl	$8, -12(%ebp)
	.loc 1 497 0
	addl	$1, -32(%ebp)
.L131:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L132
	.loc 1 499 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	sbitmap_a_and_b_or_c, .-sbitmap_a_and_b_or_c
.globl sbitmap_intersection_of_succs
	.type	sbitmap_intersection_of_succs, @function
sbitmap_intersection_of_succs:
.LFB39:
	.loc 1 510 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	pushl	%edi
.LCFI118:
	pushl	%esi
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$60, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 511 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 512 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 515 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L136
.L137:
	.loc 1 517 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L138
	.loc 1 520 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 521 0
	jmp	.L140
.L138:
	.loc 1 515 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L136:
	cmpl	$0, -32(%ebp)
	jne	.L137
.L140:
	.loc 1 524 0
	cmpl	$0, -32(%ebp)
	jne	.L141
	.loc 1 525 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	jmp	.L150
.L141:
	.loc 1 527 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L144
.L145:
.LBB10:
	.loc 1 532 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L146
	.loc 1 535 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 536 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 537 0
	movl	$0, -28(%ebp)
	jmp	.L148
.L149:
	.loc 1 538 0
	movl	-20(%ebp), %ecx
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
	addl	$8, -24(%ebp)
	.loc 1 537 0
	addl	$1, -28(%ebp)
.L148:
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L149
.L146:
.LBE10:
	.loc 1 527 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L144:
	cmpl	$0, -32(%ebp)
	jne	.L145
.L150:
	.loc 1 540 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	sbitmap_intersection_of_succs, .-sbitmap_intersection_of_succs
.globl sbitmap_intersection_of_preds
	.type	sbitmap_intersection_of_preds, @function
sbitmap_intersection_of_preds:
.LFB40:
	.loc 1 550 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%edi
.LCFI124:
	pushl	%esi
.LCFI125:
	pushl	%ebx
.LCFI126:
	subl	$60, %esp
.LCFI127:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 551 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 552 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 555 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L152
.L153:
	.loc 1 557 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L154
	.loc 1 560 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 561 0
	jmp	.L156
.L154:
	.loc 1 555 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L152:
	cmpl	$0, -32(%ebp)
	jne	.L153
.L156:
	.loc 1 564 0
	cmpl	$0, -32(%ebp)
	jne	.L157
	.loc 1 565 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_ones@PLT
	jmp	.L166
.L157:
	.loc 1 567 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L160
.L161:
.LBB11:
	.loc 1 572 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L162
	.loc 1 575 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 576 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 577 0
	movl	$0, -28(%ebp)
	jmp	.L164
.L165:
	.loc 1 578 0
	movl	-20(%ebp), %ecx
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-56(%ebp), %eax
	andl	%esi, %eax
	movl	-52(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
	addl	$8, -24(%ebp)
	.loc 1 577 0
	addl	$1, -28(%ebp)
.L164:
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L165
.L162:
.LBE11:
	.loc 1 567 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L160:
	cmpl	$0, -32(%ebp)
	jne	.L161
.L166:
	.loc 1 580 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE40:
	.size	sbitmap_intersection_of_preds, .-sbitmap_intersection_of_preds
.globl sbitmap_union_of_succs
	.type	sbitmap_union_of_succs, @function
sbitmap_union_of_succs:
.LFB41:
	.loc 1 590 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	pushl	%edi
.LCFI130:
	pushl	%esi
.LCFI131:
	pushl	%ebx
.LCFI132:
	subl	$60, %esp
.LCFI133:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 591 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 592 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 595 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L168
.L169:
	.loc 1 597 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L170
	.loc 1 600 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 601 0
	jmp	.L172
.L170:
	.loc 1 595 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L168:
	cmpl	$0, -32(%ebp)
	jne	.L169
.L172:
	.loc 1 604 0
	cmpl	$0, -32(%ebp)
	jne	.L173
	.loc 1 605 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	jmp	.L182
.L173:
	.loc 1 607 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L176
.L177:
.LBB12:
	.loc 1 612 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, %edx
	je	.L178
	.loc 1 615 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 616 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 617 0
	movl	$0, -28(%ebp)
	jmp	.L180
.L181:
	.loc 1 618 0
	movl	-20(%ebp), %ecx
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
	addl	$8, -24(%ebp)
	.loc 1 617 0
	addl	$1, -28(%ebp)
.L180:
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L181
.L178:
.LBE12:
	.loc 1 607 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L176:
	cmpl	$0, -32(%ebp)
	jne	.L177
.L182:
	.loc 1 620 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	sbitmap_union_of_succs, .-sbitmap_union_of_succs
.globl sbitmap_union_of_preds
	.type	sbitmap_union_of_preds, @function
sbitmap_union_of_preds:
.LFB42:
	.loc 1 630 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%edi
.LCFI136:
	pushl	%esi
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$60, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 631 0
	movl	basic_block_info@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -40(%ebp)
	.loc 1 632 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 635 0
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L184
.L185:
	.loc 1 637 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L186
	.loc 1 640 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 641 0
	jmp	.L188
.L186:
	.loc 1 635 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L184:
	cmpl	$0, -32(%ebp)
	jne	.L185
.L188:
	.loc 1 644 0
	cmpl	$0, -32(%ebp)
	jne	.L189
	.loc 1 645 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	jmp	.L198
.L189:
	.loc 1 647 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L192
.L193:
.LBB13:
	.loc 1 652 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	cmpl	%eax, %edx
	je	.L194
	.loc 1 655 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	.loc 1 656 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -20(%ebp)
	.loc 1 657 0
	movl	$0, -28(%ebp)
	jmp	.L196
.L197:
	.loc 1 658 0
	movl	-20(%ebp), %ecx
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$8, -20(%ebp)
	addl	$8, -24(%ebp)
	.loc 1 657 0
	addl	$1, -28(%ebp)
.L196:
	movl	-28(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L197
.L194:
.LBE13:
	.loc 1 647 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L192:
	cmpl	$0, -32(%ebp)
	jne	.L193
.L198:
	.loc 1 660 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	sbitmap_union_of_preds, .-sbitmap_union_of_preds
.globl sbitmap_first_set_bit
	.type	sbitmap_first_set_bit, @function
sbitmap_first_set_bit:
.LFB43:
	.loc 1 668 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%edi
.LCFI142:
	pushl	%esi
.LCFI143:
	subl	$56, %esp
.LCFI144:
.LBB14:
	.loc 1 671 0
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L200
.L201:
.LBB15:
	movl	-24(%ebp), %eax
	sall	$3, %eax
	addl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	je	.L202
	jmp	.L204
.L205:
.LBB16:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L211
	movl	%eax, %edx
	xorl	%eax, %eax
.L211:
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %esi
	movl	-48(%ebp), %eax
	andl	%ecx, %eax
	movl	-44(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L206
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-48(%ebp), %eax
	andl	%esi, %eax
	movl	-44(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-24(%ebp), %eax
	sall	$6, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L208
.L206:
.LBE16:
	addl	$1, -20(%ebp)
.L204:
	cmpl	$63, -20(%ebp)
	jbe	.L205
.L202:
.LBE15:
	addl	$1, -24(%ebp)
	movl	$0, -20(%ebp)
.L200:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L201
.LBE14:
	.loc 1 672 0
	movl	$-1, -60(%ebp)
.L208:
	movl	-60(%ebp), %eax
	.loc 1 673 0
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	sbitmap_first_set_bit, .-sbitmap_first_set_bit
.globl sbitmap_last_set_bit
	.type	sbitmap_last_set_bit, @function
sbitmap_last_set_bit:
.LFB44:
	.loc 1 680 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%esi
.LCFI147:
	subl	$44, %esp
.LCFI148:
	.loc 1 682 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -16(%ebp)
	.loc 1 684 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L213
.L214:
.LBB17:
	.loc 1 686 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	addl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 688 0
	movl	-40(%ebp), %eax
	orl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L215
.LBB18:
	.loc 1 690 0
	movl	-20(%ebp), %eax
	sall	$6, %eax
	addl	$63, %eax
	movl	%eax, -12(%ebp)
	.loc 1 692 0
	movl	$0, -32(%ebp)
	movl	$-2147483648, -28(%ebp)
.L217:
	.loc 1 696 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	movl	-40(%ebp), %eax
	andl	%ecx, %eax
	movl	-36(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L218
	.loc 1 697 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L220
.L218:
	.loc 1 699 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 700 0
	subl	$1, -12(%ebp)
	.loc 1 701 0
	jmp	.L217
.L215:
.LBE18:
.LBE17:
	.loc 1 684 0
	subl	$1, -20(%ebp)
.L213:
	cmpl	$0, -20(%ebp)
	jns	.L214
	.loc 1 705 0
	movl	$-1, -44(%ebp)
.L220:
	movl	-44(%ebp), %eax
	.loc 1 706 0
	addl	$44, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE44:
	.size	sbitmap_last_set_bit, .-sbitmap_last_set_bit
	.section	.rodata
.LC1:
	.string	"  "
.LC2:
	.string	"%d"
	.text
.globl dump_sbitmap
	.type	dump_sbitmap, @function
dump_sbitmap:
.LFB45:
	.loc 1 712 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$68, %esp
.LCFI152:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 714 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 715 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 717 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 718 0
	movl	$0, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L224
.L225:
	.loc 1 719 0
	movl	$0, -16(%ebp)
	jmp	.L226
.L227:
	.loc 1 721 0
	cmpl	$0, -20(%ebp)
	je	.L228
	movl	-20(%ebp), %ecx
	movl	$-858993459, -44(%ebp)
	movl	-44(%ebp), %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-40(%ebp), %eax
	addl	%eax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -40(%ebp)
	cmpl	$0, -40(%ebp)
	jne	.L228
	.loc 1 722 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	fputc@PLT
.L228:
	.loc 1 724 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	leal	12(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-16(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L236
	movl	%edx, %eax
	xorl	%edx, %edx
.L236:
	andl	$1, %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 719 0
	addl	$1, -16(%ebp)
	addl	$1, -20(%ebp)
.L226:
	cmpl	$63, -16(%ebp)
	ja	.L231
	movl	-20(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L227
.L231:
	.loc 1 718 0
	addl	$1, -24(%ebp)
.L224:
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jae	.L233
	movl	-20(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L225
.L233:
	.loc 1 728 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 729 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	dump_sbitmap, .-dump_sbitmap
	.section	.rodata
.LC3:
	.string	"n_bits = %d, set = {"
.LC4:
	.string	"\n  "
.LC5:
	.string	"%d "
.LC6:
	.string	"}\n"
	.text
.globl dump_sbitmap_file
	.type	dump_sbitmap_file, @function
dump_sbitmap_file:
.LFB46:
	.loc 1 735 0
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	pushl	%edi
.LCFI155:
	pushl	%esi
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$44, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 738 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 740 0
	movl	$30, -16(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L238
.L239:
	.loc 1 741 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L249
	movl	%edi, %esi
	xorl	%edi, %edi
.L249:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L240
	.loc 1 743 0
	cmpl	$70, -16(%ebp)
	jbe	.L242
	.loc 1 745 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 746 0
	movl	$0, -16(%ebp)
.L242:
	.loc 1 749 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 750 0
	cmpl	$9, -20(%ebp)
	jbe	.L244
	movl	$3, -32(%ebp)
	jmp	.L246
.L244:
	movl	$2, -32(%ebp)
.L246:
	cmpl	$99, -20(%ebp)
	seta	%al
	movzbl	%al, %eax
	movl	-32(%ebp), %edx
	addl	%eax, %edx
	cmpl	$999, -20(%ebp)
	seta	%al
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	addl	%eax, -16(%ebp)
.L240:
	.loc 1 740 0
	addl	$1, -20(%ebp)
.L238:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	ja	.L239
	.loc 1 753 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 754 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE46:
	.size	dump_sbitmap_file, .-dump_sbitmap_file
.globl debug_sbitmap
	.type	debug_sbitmap, @function
debug_sbitmap:
.LFB47:
	.loc 1 759 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$20, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 760 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dump_sbitmap_file@PLT
	.loc 1 761 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	debug_sbitmap, .-debug_sbitmap
	.section	.rodata
.LC7:
	.string	"%s\n"
.LC8:
	.string	"%s %d\n"
	.text
.globl dump_sbitmap_vector
	.type	dump_sbitmap_vector, @function
dump_sbitmap_vector:
.LFB48:
	.loc 1 769 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	pushl	%ebx
.LCFI165:
	subl	$36, %esp
.LCFI166:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 772 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 773 0
	movl	$0, -8(%ebp)
	jmp	.L253
.L254:
	.loc 1 775 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 776 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_sbitmap@PLT
	.loc 1 773 0
	addl	$1, -8(%ebp)
.L253:
	movl	-8(%ebp), %eax
	cmpl	24(%ebp), %eax
	jl	.L254
	.loc 1 779 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc@PLT
	.loc 1 780 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	dump_sbitmap_vector, .-dump_sbitmap_vector
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
	.long	.LCFI9-.LCFI5
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
	.long	.LCFI10-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
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
	.long	.LCFI22-.LCFI19
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
	.long	.LCFI23-.LFB20
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
	.long	.LCFI31-.LCFI28
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
	.long	.LCFI44-.LCFI41
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
	.long	.LCFI45-.LFB25
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
	.long	.LCFI50-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI51
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI55-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI61-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI62
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
	.long	.LCFI66-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI67
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
	.long	.LCFI71-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI72
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI76-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI77
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
	.long	.LCFI81-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI82
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
	.long	.LCFI86-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI87
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
	.long	.LCFI91-.LFB34
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
	.long	.LCFI96-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI100-.LCFI97
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
	.long	.LCFI101-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI102
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
	.long	.LCFI106-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI107
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI111-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI112
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
	.long	.LCFI116-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI121-.LCFI117
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
	.long	.LCFI122-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI127-.LCFI123
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI128-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI129-.LCFI128
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI133-.LCFI129
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI134-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI135
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI140-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI141
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
	.long	.LCFI145-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI146
	.byte	0x86
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
	.long	.LCFI149-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI150
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
	.long	.LCFI153-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI158-.LCFI154
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI159-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI162-.LCFI160
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
	.long	.LCFI163-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI166-.LCFI164
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE66:
	.file 2 "../../../kgccfe/gnu/sbitmap.h"
	.file 3 "../../../kgccfe/gnu/basic-block.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "../../../kgccfe/gnu/MIPS/config.h"
	.file 6 "../../../kgccfe/gnu/machmode.h"
	.file 7 "../../../kgccfe/gnu/bitmap.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "/usr/include/bits/types.h"
	.file 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 12 "../../../kgccfe/gnu/varray.h"
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
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI11-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI76-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI77-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI116-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI117-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI122-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI123-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI128-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI129-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI134-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI135-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI140-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI141-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI146-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI149-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI150-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI153-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI154-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI159-.Ltext0
	.long	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI160-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI163-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI164-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x32d3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/sbitmap.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x5
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.long	0x19d
	.string	"rtx_def"
	.byte	0xc
	.byte	0x5
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x8a
	.long	0x853
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x8d
	.long	0x60a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
	.byte	0x94
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x4
	.byte	0x97
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x4
	.byte	0x9f
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x4
	.byte	0xa8
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x4
	.byte	0xba
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x4
	.byte	0xc1
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x4
	.byte	0xc6
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x4
	.byte	0xcf
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x4
	.byte	0xd4
	.long	0x1472
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x5
	.byte	0xe
	.long	0x1aa
	.uleb128 0x3
	.byte	0x4
	.long	0x1b0
	.uleb128 0x4
	.long	0x1e5
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf8
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf9
	.long	0x1482
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x5
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
	.uleb128 0x11
	.long	0x853
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
	.long	0x1022
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x2f
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
	.long	0x10fc
	.byte	0x4
	.byte	0x4
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x4f
	.long	0x21d
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x51
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x52
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x54
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x4
	.byte	0x56
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x4
	.byte	0x58
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x5b
	.long	0x21d
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x4
	.byte	0x5d
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
	.byte	0x4
	.byte	0x5e
	.long	0x1022
	.uleb128 0xc
	.long	0x1173
	.long	.LASF2
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x291
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x6b
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x6c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x6d
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x4
	.byte	0x6e
	.long	0x1117
	.uleb128 0x15
	.long	0x1250
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x16
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x291
	.uleb128 0x16
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x216
	.uleb128 0x16
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x21d
	.uleb128 0x16
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x203
	.uleb128 0x16
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9c
	.uleb128 0x16
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19d
	.uleb128 0x16
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x60a
	.uleb128 0x16
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x10fc
	.uleb128 0x16
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x1264
	.uleb128 0x16
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x12cc
	.uleb128 0x16
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e5
	.uleb128 0x16
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x1457
	.uleb128 0x16
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
	.long	0x145d
	.byte	0x0
	.uleb128 0x17
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1250
	.uleb128 0x4
	.long	0x12cc
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x7
	.byte	0x3d
	.long	0x1529
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x1529
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x3f
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x126a
	.uleb128 0x4
	.long	0x1457
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x3
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x3
	.byte	0xb5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x3
	.byte	0xb8
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x3
	.byte	0xb9
	.long	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x3
	.byte	0xbc
	.long	0x1b57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x3
	.byte	0xbc
	.long	0x1b57
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x3
	.byte	0xc1
	.long	0x1a87
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x3
	.byte	0xc5
	.long	0x1a87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x3
	.byte	0xcb
	.long	0x1a87
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x3
	.byte	0xcd
	.long	0x1a87
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x3
	.byte	0xd0
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x3
	.byte	0xd3
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x1457
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x3
	.byte	0xd6
	.long	0x1457
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x3
	.byte	0xd9
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x3
	.byte	0xdc
	.long	0x1dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x3
	.byte	0xdf
	.long	0x1a95
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x3
	.byte	0xe2
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x3
	.byte	0xe5
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x12d2
	.uleb128 0x3
	.byte	0x4
	.long	0x1173
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x82
	.long	0x117e
	.uleb128 0xf
	.long	0x1482
	.long	0x1463
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1492
	.long	0x9c
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x260
	.uleb128 0x4
	.long	0x14fd
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x7
	.byte	0x35
	.long	0x14fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x14fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x37
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x1503
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14a5
	.uleb128 0xf
	.long	0x1513
	.long	0x1492
	.uleb128 0x10
	.long	0x224
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x14a5
	.uleb128 0x3
	.byte	0x4
	.long	0x1513
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0x12cc
	.uleb128 0x4
	.long	0x1595
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x2
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x2
	.byte	0x21
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x2
	.byte	0x22
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF3
	.byte	0x2
	.byte	0x23
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x2
	.byte	0x24
	.long	0x1595
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.long	0x15a5
	.long	0x2a2
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x2
	.byte	0x25
	.long	0x15b4
	.uleb128 0x3
	.byte	0x4
	.long	0x153d
	.uleb128 0x2
	.string	"sbitmap_ptr"
	.byte	0x2
	.byte	0x27
	.long	0x15cd
	.uleb128 0x3
	.byte	0x4
	.long	0x2a2
	.uleb128 0x4
	.long	0x1609
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
	.long	0x17a4
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
	.long	0x18a0
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
	.long	0x18a0
	.uleb128 0x16
	.string	"s"
	.byte	0xc
	.byte	0x5a
	.long	0x18b0
	.uleb128 0x16
	.string	"us"
	.byte	0xc
	.byte	0x5c
	.long	0x18c0
	.uleb128 0x16
	.string	"i"
	.byte	0xc
	.byte	0x5e
	.long	0x18d0
	.uleb128 0x16
	.string	"u"
	.byte	0xc
	.byte	0x60
	.long	0x18e0
	.uleb128 0x16
	.string	"l"
	.byte	0xc
	.byte	0x62
	.long	0x18f0
	.uleb128 0x16
	.string	"ul"
	.byte	0xc
	.byte	0x64
	.long	0x1900
	.uleb128 0x16
	.string	"hint"
	.byte	0xc
	.byte	0x66
	.long	0x1910
	.uleb128 0x16
	.string	"uhint"
	.byte	0xc
	.byte	0x68
	.long	0x1595
	.uleb128 0x16
	.string	"generic"
	.byte	0xc
	.byte	0x6a
	.long	0x1920
	.uleb128 0x16
	.string	"cptr"
	.byte	0xc
	.byte	0x6c
	.long	0x1930
	.uleb128 0x16
	.string	"rtx"
	.byte	0xc
	.byte	0x6e
	.long	0x1940
	.uleb128 0x16
	.string	"rtvec"
	.byte	0xc
	.byte	0x70
	.long	0x1950
	.uleb128 0x16
	.string	"tree"
	.byte	0xc
	.byte	0x72
	.long	0x1960
	.uleb128 0x16
	.string	"bitmap"
	.byte	0xc
	.byte	0x74
	.long	0x1970
	.uleb128 0x16
	.string	"reg"
	.byte	0xc
	.byte	0x76
	.long	0x1980
	.uleb128 0x16
	.string	"const_equiv"
	.byte	0xc
	.byte	0x78
	.long	0x19a5
	.uleb128 0x16
	.string	"bb"
	.byte	0xc
	.byte	0x7a
	.long	0x19b5
	.uleb128 0x16
	.string	"te"
	.byte	0xc
	.byte	0x7c
	.long	0x19c5
	.byte	0x0
	.uleb128 0xf
	.long	0x18b0
	.long	0x239
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18c0
	.long	0x284
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18d0
	.long	0x24a
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18e0
	.long	0x216
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x18f0
	.long	0x21d
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1900
	.long	0x2db
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1910
	.long	0x260
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1920
	.long	0x291
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1930
	.long	0x2f8
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1940
	.long	0x2fa
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1950
	.long	0xa7
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1960
	.long	0x1aa
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1970
	.long	0x1f1
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1980
	.long	0x12cc
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1990
	.long	0x199f
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1990
	.uleb128 0xf
	.long	0x19b5
	.long	0x15d3
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x19c5
	.long	0x1457
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x19d5
	.long	0x19e0
	.uleb128 0x10
	.long	0x224
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x19d5
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xc
	.byte	0x7e
	.long	0x17a4
	.uleb128 0x4
	.long	0x1a6e
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
	.long	0x1609
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
	.uleb128 0x6
	.string	"data"
	.byte	0xc
	.byte	0x87
	.long	0x19e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xc
	.byte	0x8a
	.long	0x1a81
	.uleb128 0x3
	.byte	0x4
	.long	0x19f9
	.uleb128 0x2
	.string	"regset"
	.byte	0x3
	.byte	0x22
	.long	0x152f
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x3
	.byte	0x75
	.long	0x291
	.uleb128 0x4
	.long	0x1b51
	.string	"edge_def"
	.byte	0x28
	.byte	0x3
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x3
	.byte	0x7a
	.long	0x1b51
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x3
	.byte	0x7a
	.long	0x1b51
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x3
	.byte	0x7d
	.long	0x1457
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x3
	.byte	0x7d
	.long	0x1457
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x3
	.byte	0x80
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x3
	.byte	0x83
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x3
	.byte	0x85
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x3
	.byte	0x86
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x3
	.byte	0x87
	.long	0x1a95
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1aa6
	.uleb128 0x2
	.string	"edge"
	.byte	0x3
	.byte	0x89
	.long	0x1b51
	.uleb128 0x4
	.long	0x1dd3
	.string	"loop"
	.byte	0x80
	.byte	0x3
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x3
	.value	0x176
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x3
	.value	0x179
	.long	0x1dd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x3
	.value	0x17c
	.long	0x1dd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x3
	.value	0x17f
	.long	0x1dd9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x3
	.value	0x184
	.long	0x1dec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x3
	.value	0x187
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x3
	.value	0x18b
	.long	0x1dd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x3
	.value	0x18f
	.long	0x1dd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x3
	.value	0x192
	.long	0x15a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x3
	.value	0x195
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x3
	.value	0x198
	.long	0x1dec
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x3
	.value	0x19b
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x3
	.value	0x19e
	.long	0x1dec
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x3
	.value	0x1a1
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x3
	.value	0x1a4
	.long	0x15a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x3
	.value	0x1a7
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x3
	.value	0x1aa
	.long	0x1df2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x3
	.value	0x1ae
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x3
	.value	0x1b1
	.long	0x1dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x3
	.value	0x1b4
	.long	0x1dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x3
	.value	0x1b7
	.long	0x1dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x3
	.value	0x1ba
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x3
	.value	0x1bd
	.long	0x2f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x3
	.value	0x1c3
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x3
	.value	0x1c7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x3
	.value	0x1ca
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x3
	.value	0x1cd
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x3
	.value	0x1d1
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x3
	.value	0x1d4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x3
	.value	0x1d7
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x3
	.value	0x1e2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x3
	.value	0x1e6
	.long	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1b63
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x3
	.byte	0xe6
	.long	0x1457
	.uleb128 0x3
	.byte	0x4
	.long	0x1b57
	.uleb128 0x3
	.byte	0x4
	.long	0x1dd3
	.uleb128 0x19
	.long	0x1e67
	.byte	0x1
	.string	"sbitmap_alloc"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	0x15a5
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x1
	.byte	0x22
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.byte	0x24
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"size"
	.byte	0x1
	.byte	0x24
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"amt"
	.byte	0x1
	.byte	0x24
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.byte	0x25
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	0x1ef3
	.byte	0x1
	.string	"sbitmap_resize"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	0x15a5
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x1
	.byte	0x38
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x1
	.byte	0x39
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"def"
	.byte	0x1
	.byte	0x3a
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.byte	0x3c
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"size"
	.byte	0x1
	.byte	0x3c
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"amt"
	.byte	0x1
	.byte	0x3c
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x1
	.byte	0x3d
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x19
	.long	0x2032
	.byte	0x1
	.string	"sbitmap_vector_alloc"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	0x2032
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x1
	.byte	0x70
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x1
	.byte	0x70
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x72
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.byte	0x72
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"offset"
	.byte	0x1
	.byte	0x72
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"elm_bytes"
	.byte	0x1
	.byte	0x72
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"size"
	.byte	0x1
	.byte	0x72
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"amt"
	.byte	0x1
	.byte	0x72
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"vector_bytes"
	.byte	0x1
	.byte	0x72
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"bitmap_vector"
	.byte	0x1
	.byte	0x73
	.long	0x2032
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	0x201b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x13
	.long	0x1ff6
	.byte	0xc
	.byte	0x1
	.byte	0x82
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x82
	.long	0x20e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0x82
	.long	0x2a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1c
	.string	"align"
	.byte	0x1
	.byte	0x82
	.long	0x1fd5
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"alignment"
	.byte	0x1
	.byte	0x83
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1f
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.byte	0x8c
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15a5
	.uleb128 0x20
	.long	0x2077
	.byte	0x1
	.string	"sbitmap_copy"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1d
	.string	"dst"
	.byte	0x1
	.byte	0x9b
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.byte	0x9b
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x19
	.long	0x20b7
	.byte	0x1
	.string	"sbitmap_equal"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x216
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.byte	0xa3
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.byte	0xa3
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x20
	.long	0x20e8
	.byte	0x1
	.string	"sbitmap_zero"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x1
	.byte	0xac
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x20
	.long	0x2127
	.byte	0x1
	.string	"sbitmap_ones"
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x1
	.byte	0xb5
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x1
	.byte	0xb7
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x20
	.long	0x2179
	.byte	0x1
	.string	"sbitmap_vector_zero"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x1
	.byte	0xc5
	.long	0x2032
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x1
	.byte	0xc6
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xc8
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x20
	.long	0x21cb
	.byte	0x1
	.string	"sbitmap_vector_ones"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x1a
	.long	.LASF4
	.byte	0x1
	.byte	0xd2
	.long	0x2032
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x1
	.byte	0xd3
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xd5
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	0x22a3
	.byte	0x1
	.string	"sbitmap_union_of_diff_cg"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.long	0x22a3
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x1d
	.string	"dst"
	.byte	0x1
	.byte	0xe1
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.byte	0xe1
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.byte	0xe1
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0xe1
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xe3
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.byte	0xe3
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x1
	.byte	0xe4
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"ap"
	.byte	0x1
	.byte	0xe5
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"bp"
	.byte	0x1
	.byte	0xe6
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"cp"
	.byte	0x1
	.byte	0xe7
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x1
	.byte	0xe8
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.byte	0xec
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x20
	.long	0x2357
	.byte	0x1
	.string	"sbitmap_union_of_diff"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x1d
	.string	"dst"
	.byte	0x1
	.byte	0xf6
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.byte	0xf6
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.byte	0xf6
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0xf6
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xf8
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.byte	0xf8
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x1
	.byte	0xf9
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"ap"
	.byte	0x1
	.byte	0xfa
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"bp"
	.byte	0x1
	.byte	0xfb
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"cp"
	.byte	0x1
	.byte	0xfc
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x21
	.long	0x23d1
	.byte	0x1
	.string	"sbitmap_not"
	.byte	0x1
	.value	0x107
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x106
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.value	0x106
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x108
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x108
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x109
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"srcp"
	.byte	0x1
	.value	0x10a
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x21
	.long	0x249d
	.byte	0x1
	.string	"sbitmap_difference"
	.byte	0x1
	.value	0x116
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x115
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x115
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x115
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x117
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"dst_size"
	.byte	0x1
	.value	0x117
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"min_size"
	.byte	0x1
	.value	0x118
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x119
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x11a
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x11b
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"__FUNCTION__"
	.long	0x327b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9190
	.byte	0x0
	.uleb128 0x26
	.long	0x2561
	.byte	0x1
	.string	"sbitmap_a_and_b_cg"
	.byte	0x1
	.value	0x133
	.byte	0x1
	.long	0x22a3
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x132
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x132
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x132
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x134
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x134
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x135
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x136
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x137
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF9
	.byte	0x1
	.value	0x138
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x13c
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x25f6
	.byte	0x1
	.string	"sbitmap_a_and_b"
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x146
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x146
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x146
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x148
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x148
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x149
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x14a
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x14b
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x26
	.long	0x26ba
	.byte	0x1
	.string	"sbitmap_a_xor_b_cg"
	.byte	0x1
	.value	0x157
	.byte	0x1
	.long	0x22a3
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x156
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x156
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x156
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x158
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x158
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x159
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x15a
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x15b
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF9
	.byte	0x1
	.value	0x15c
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x160
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x274f
	.byte	0x1
	.string	"sbitmap_a_xor_b"
	.byte	0x1
	.value	0x16b
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x16a
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x16a
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x16a
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x16c
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x16c
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x16d
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x16e
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x16f
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x26
	.long	0x2812
	.byte	0x1
	.string	"sbitmap_a_or_b_cg"
	.byte	0x1
	.value	0x17b
	.byte	0x1
	.long	0x22a3
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x17a
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x17a
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x17a
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x17c
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x17c
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x17d
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x17e
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x17f
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF9
	.byte	0x1
	.value	0x180
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x184
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x28a6
	.byte	0x1
	.string	"sbitmap_a_or_b"
	.byte	0x1
	.value	0x18f
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x18e
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x18e
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x18e
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x190
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x190
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x191
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x192
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x193
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x26
	.long	0x2926
	.byte	0x1
	.string	"sbitmap_a_subset_b_p"
	.byte	0x1
	.value	0x19e
	.byte	0x1
	.long	0x22a3
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x19d
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x19d
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x19f
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x19f
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x1a0
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x1a0
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x26
	.long	0x2a0a
	.byte	0x1
	.string	"sbitmap_a_or_b_and_c_cg"
	.byte	0x1
	.value	0x1af
	.byte	0x1
	.long	0x22a3
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x1ae
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x1ae
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x1ae
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x1ae
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x1b0
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x1b0
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x1b1
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x1b2
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x1b3
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"cp"
	.byte	0x1
	.value	0x1b4
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF9
	.byte	0x1
	.value	0x1b5
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x1b9
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x2abf
	.byte	0x1
	.string	"sbitmap_a_or_b_and_c"
	.byte	0x1
	.value	0x1c4
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x1c3
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x1c3
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x1c3
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x1c3
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x1c5
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x1c5
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x1c6
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x1c7
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x1c8
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"cp"
	.byte	0x1
	.value	0x1c9
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x26
	.long	0x2ba3
	.byte	0x1
	.string	"sbitmap_a_and_b_or_c_cg"
	.byte	0x1
	.value	0x1d5
	.byte	0x1
	.long	0x22a3
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x1d4
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x1d4
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x1d4
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x1d4
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x1d6
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x1d6
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x1d7
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x1d8
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x1d9
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"cp"
	.byte	0x1
	.value	0x1da
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF9
	.byte	0x1
	.value	0x1db
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x1df
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x2c58
	.byte	0x1
	.string	"sbitmap_a_and_b_or_c"
	.byte	0x1
	.value	0x1ea
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x1e9
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.value	0x1e9
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.value	0x1e9
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x1e9
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x1eb
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x1eb
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LASF8
	.byte	0x1
	.value	0x1ec
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x1ed
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"bp"
	.byte	0x1
	.value	0x1ee
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"cp"
	.byte	0x1
	.value	0x1ef
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x21
	.long	0x2d13
	.byte	0x1
	.string	"sbitmap_intersection_of_succs"
	.byte	0x1
	.value	0x1fe
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x1fb
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.value	0x1fc
	.long	0x2032
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.value	0x1fd
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x1ff
	.long	0x1dd9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF10
	.byte	0x1
	.value	0x200
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x201
	.long	0x1b57
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x211
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x212
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x212
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x2dce
	.byte	0x1
	.string	"sbitmap_intersection_of_preds"
	.byte	0x1
	.value	0x226
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x223
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.value	0x224
	.long	0x2032
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.value	0x225
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x227
	.long	0x1dd9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF10
	.byte	0x1
	.value	0x228
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x229
	.long	0x1b57
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x239
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x23a
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x23a
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x2e82
	.byte	0x1
	.string	"sbitmap_union_of_succs"
	.byte	0x1
	.value	0x24e
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x24b
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.value	0x24c
	.long	0x2032
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.value	0x24d
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x24f
	.long	0x1dd9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF10
	.byte	0x1
	.value	0x250
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x251
	.long	0x1b57
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x261
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x262
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x262
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x2f36
	.byte	0x1
	.string	"sbitmap_union_of_preds"
	.byte	0x1
	.value	0x276
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x273
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.value	0x274
	.long	0x2032
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"bb"
	.byte	0x1
	.value	0x275
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x277
	.long	0x1dd9
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF10
	.byte	0x1
	.value	0x278
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x279
	.long	0x1b57
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x289
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x28a
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"r"
	.byte	0x1
	.value	0x28a
	.long	0x15ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x300d
	.byte	0x1
	.string	"sbitmap_first_set_bit"
	.byte	0x1
	.value	0x29c
	.byte	0x1
	.long	0x216
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x29b
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x29d
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x23
	.string	"word_num_"
	.byte	0x1
	.value	0x29f
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"bit_num_"
	.byte	0x1
	.value	0x29f
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"size_"
	.byte	0x1
	.value	0x29f
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"ptr_"
	.byte	0x1
	.value	0x29f
	.long	0x15cd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x23
	.string	"word_"
	.byte	0x1
	.value	0x29f
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x23
	.string	"_mask"
	.byte	0x1
	.value	0x29f
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x30ad
	.byte	0x1
	.string	"sbitmap_last_set_bit"
	.byte	0x1
	.value	0x2a8
	.byte	0x1
	.long	0x216
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x2a7
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x2a9
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.value	0x2aa
	.long	0x15cd
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x23
	.string	"word"
	.byte	0x1
	.value	0x2ae
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x23
	.string	"index"
	.byte	0x1
	.value	0x2b2
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"mask"
	.byte	0x1
	.value	0x2b3
	.long	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x313c
	.byte	0x1
	.string	"dump_sbitmap"
	.byte	0x1
	.value	0x2c8
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x22
	.string	"file"
	.byte	0x1
	.value	0x2c6
	.long	0x313c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x2c7
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x2c9
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x2c9
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x2c9
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x1
	.value	0x2ca
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"total_bits"
	.byte	0x1
	.value	0x2cb
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x300
	.uleb128 0x21
	.long	0x31a6
	.byte	0x1
	.string	"dump_sbitmap_file"
	.byte	0x1
	.value	0x2df
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x22
	.string	"file"
	.byte	0x1
	.value	0x2dd
	.long	0x313c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x2de
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x2e0
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"pos"
	.byte	0x1
	.value	0x2e0
	.long	0x21d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x21
	.long	0x31da
	.byte	0x1
	.string	"debug_sbitmap"
	.byte	0x1
	.value	0x2f7
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x27
	.long	.LASF4
	.byte	0x1
	.value	0x2f6
	.long	0x15a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x21
	.long	0x326b
	.byte	0x1
	.string	"dump_sbitmap_vector"
	.byte	0x1
	.value	0x301
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x22
	.string	"file"
	.byte	0x1
	.value	0x2fd
	.long	0x313c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"title"
	.byte	0x1
	.value	0x2fe
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"subtitle"
	.byte	0x1
	.value	0x2fe
	.long	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"bmaps"
	.byte	0x1
	.value	0x2ff
	.long	0x2032
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.string	"n_maps"
	.byte	0x1
	.value	0x300
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x302
	.long	0x216
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.long	0x327b
	.long	0x20e
	.uleb128 0x10
	.long	0x224
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x326b
	.uleb128 0x28
	.string	"stderr"
	.byte	0x8
	.byte	0x90
	.long	0x5de
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.string	"basic_block_info"
	.byte	0x3
	.byte	0xfe
	.long	0x1a6e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x32ba
	.long	0x12d2
	.uleb128 0x10
	.long	0x224
	.byte	0x1
	.byte	0x0
	.uleb128 0x29
	.string	"entry_exit_blocks"
	.byte	0x3
	.value	0x139
	.long	0x32aa
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.long	0x31f
	.value	0x2
	.long	.Ldebug_info0
	.long	0x32d7
	.long	0x1df8
	.string	"sbitmap_alloc"
	.long	0x1e67
	.string	"sbitmap_resize"
	.long	0x1ef3
	.string	"sbitmap_vector_alloc"
	.long	0x2038
	.string	"sbitmap_copy"
	.long	0x2077
	.string	"sbitmap_equal"
	.long	0x20b7
	.string	"sbitmap_zero"
	.long	0x20e8
	.string	"sbitmap_ones"
	.long	0x2127
	.string	"sbitmap_vector_zero"
	.long	0x2179
	.string	"sbitmap_vector_ones"
	.long	0x21cb
	.string	"sbitmap_union_of_diff_cg"
	.long	0x22ac
	.string	"sbitmap_union_of_diff"
	.long	0x2357
	.string	"sbitmap_not"
	.long	0x23d1
	.string	"sbitmap_difference"
	.long	0x249d
	.string	"sbitmap_a_and_b_cg"
	.long	0x2561
	.string	"sbitmap_a_and_b"
	.long	0x25f6
	.string	"sbitmap_a_xor_b_cg"
	.long	0x26ba
	.string	"sbitmap_a_xor_b"
	.long	0x274f
	.string	"sbitmap_a_or_b_cg"
	.long	0x2812
	.string	"sbitmap_a_or_b"
	.long	0x28a6
	.string	"sbitmap_a_subset_b_p"
	.long	0x2926
	.string	"sbitmap_a_or_b_and_c_cg"
	.long	0x2a0a
	.string	"sbitmap_a_or_b_and_c"
	.long	0x2abf
	.string	"sbitmap_a_and_b_or_c_cg"
	.long	0x2ba3
	.string	"sbitmap_a_and_b_or_c"
	.long	0x2c58
	.string	"sbitmap_intersection_of_succs"
	.long	0x2d13
	.string	"sbitmap_intersection_of_preds"
	.long	0x2dce
	.string	"sbitmap_union_of_succs"
	.long	0x2e82
	.string	"sbitmap_union_of_preds"
	.long	0x2f36
	.string	"sbitmap_first_set_bit"
	.long	0x300d
	.string	"sbitmap_last_set_bit"
	.long	0x30ad
	.string	"dump_sbitmap"
	.long	0x3142
	.string	"dump_sbitmap_file"
	.long	0x31a6
	.string	"debug_sbitmap"
	.long	0x31da
	.string	"dump_sbitmap_vector"
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
	.string	"n_vecs"
.LASF9:
	.string	"changed"
.LASF2:
	.string	"mem_attrs"
.LASF8:
	.string	"dstp"
.LASF4:
	.string	"bmap"
.LASF6:
	.string	"last_bit"
.LASF1:
	.string	"_IO_FILE"
.LASF10:
	.string	"set_size"
.LASF3:
	.string	"bytes"
.LASF5:
	.string	"n_elms"
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
