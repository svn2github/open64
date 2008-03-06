	.file	"ra-rewrite.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.11056, @object
	.size	__FUNCTION__.11056, 17
__FUNCTION__.11056:
	.string	"spill_coalescing"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/ra-rewrite.c"
	.text
	.type	spill_coalescing, @function
spill_coalescing:
.LFB15:
	.file 1 "../../../kg++fe/gnu/ra-rewrite.c"
	.loc 1 87 0
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
	subl	$44, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 90 0
	movl	wl_moves@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L2
.L3:
	.loc 1 91 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L4
.LBB2:
	.loc 1 93 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -36(%ebp)
	.loc 1 94 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -32(%ebp)
	.loc 1 95 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L36
	movl	%edi, %esi
	xorl	%edi, %edi
.L36:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L6
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L35
	movl	%edi, %esi
	xorl	%edi, %edi
.L35:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L8
.L6:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L34
	movl	%edi, %esi
	xorl	%edi, %edi
.L34:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L4
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L33
	movl	%edi, %esi
	xorl	%edi, %edi
.L33:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L4
.L8:
.LBB3:
	.loc 1 99 0
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L32
	movl	%edi, %esi
	xorl	%edi, %edi
.L32:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L4
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L31
	movl	%edi, %esi
	xorl	%edi, %edi
.L31:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L4
	movl	-36(%ebp), %eax
	movl	204(%eax), %eax
	testl	%eax, %eax
	jne	.L4
	movl	-32(%ebp), %eax
	movl	204(%eax), %eax
	testl	%eax, %eax
	jne	.L4
	.loc 1 104 0
	movl	deleted_move_insns@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, deleted_move_insns@GOTOFF(%ebx)
	.loc 1 105 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	72(%eax), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	deleted_move_cost@GOTOFF(%ebx), %eax
	movl	4+deleted_move_cost@GOTOFF(%ebx), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, deleted_move_cost@GOTOFF(%ebx)
	movl	%edx, 4+deleted_move_cost@GOTOFF(%ebx)
	.loc 1 106 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movw	$47, (%eax)
	.loc 1 107 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	$-99, 44(%eax)
	.loc 1 108 0
	movl	-40(%ebp), %eax
	movl	(%eax), %ecx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	28(%eax), %edx
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	df_insn_modify@PLT
	.loc 1 110 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movzbl	49(%edx), %eax
	orl	$16, %eax
	movb	%al, 49(%edx)
	.loc 1 111 0
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	je	.L4
	.loc 1 122 0
	movl	-32(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L15
	movl	-36(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L17
.L15:
	.loc 1 123 0
	leal	__FUNCTION__.11056@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$123, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L17:
	.loc 1 124 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %edx
	movl	-32(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 125 0
	movl	$10, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 126 0
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 216(%edx)
	.loc 1 127 0
	movl	-36(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$4, %eax
	movb	%al, 48(%edx)
	.loc 1 128 0
	movl	-32(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$4, %eax
	movb	%al, 48(%edx)
	.loc 1 129 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_moves@PLT
	.loc 1 130 0
	movl	-32(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L18
.L19:
.LBB4:
	.loc 1 132 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 133 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L20
	.loc 1 134 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	record_conflict@PLT
	jmp	.L22
.L20:
.LBB5:
	.loc 1 138 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L23
.L24:
.LBB6:
	.loc 1 140 0
	movl	$0, -16(%ebp)
	.loc 1 141 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L25
	.loc 1 142 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	find_subweb@PLT
	movl	%eax, -16(%ebp)
.L25:
	.loc 1 143 0
	cmpl	$0, -16(%ebp)
	jne	.L27
	.loc 1 144 0
	movl	-36(%ebp), %eax
	movl	%eax, -16(%ebp)
.L27:
	.loc 1 145 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	record_conflict@PLT
.LBE6:
	.loc 1 138 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L23:
	cmpl	$0, -20(%ebp)
	jne	.L24
.L22:
.LBE5:
	.loc 1 151 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %edx
	movl	-32(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 56(%eax)
.LBE4:
	.loc 1 130 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L18:
	cmpl	$0, -28(%ebp)
	jne	.L19
.L4:
.LBE3:
.LBE2:
	.loc 1 90 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L2:
	cmpl	$0, -44(%ebp)
	jne	.L3
	.loc 1 155 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	spill_coalescing, .-spill_coalescing
	.type	spill_prop_savings, @function
spill_prop_savings:
.LFB16:
	.loc 1 164 0
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
	subl	$76, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 165 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 169 0
	movl	8(%ebp), %eax
	movl	204(%eax), %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 170 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L40
.L38:
	.loc 1 171 0
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L41
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L43
.L41:
	movl	$6, -56(%ebp)
	jmp	.L44
.L43:
	movl	$4, -56(%ebp)
.L44:
	movl	8(%ebp), %eax
	movzwl	50(%eax), %eax
	shrw	$3, %ax
	andw	$1023, %ax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memory_move_secondary_cost@PLT
	addl	-56(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 172 0
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L45
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L47
.L45:
	movl	$6, -52(%ebp)
	jmp	.L48
.L47:
	movl	$4, -52(%ebp)
.L48:
	movl	8(%ebp), %eax
	movzwl	50(%eax), %eax
	shrw	$3, %ax
	andw	$1023, %ax
	movzwl	%ax, %edx
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	memory_move_secondary_cost@PLT
	addl	-52(%ebp), %eax
	addl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 173 0
	movl	wl_moves@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L49
.L50:
	.loc 1 174 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L51
.LBB7:
	.loc 1 176 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -28(%ebp)
	.loc 1 177 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	.loc 1 178 0
	movl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L53
.LBB8:
	.loc 1 180 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 181 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 182 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L53:
.LBE8:
	.loc 1 184 0
	movl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L51
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L64
	movl	%edi, %esi
	xorl	%edi, %edi
.L64:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L51
	movl	-24(%ebp), %eax
	movl	204(%eax), %eax
	testl	%eax, %eax
	jne	.L51
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L63
	movl	%edi, %esi
	xorl	%edi, %edi
.L63:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L51
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L62
	movl	%edi, %esi
	xorl	%edi, %edi
.L62:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L51
	.loc 1 188 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	72(%eax), %eax
	imull	-32(%ebp), %eax
	movl	$0, %edx
	addl	%eax, -48(%ebp)
	adcl	%edx, -44(%ebp)
.L51:
.LBE7:
	.loc 1 173 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L49:
	cmpl	$0, -40(%ebp)
	jne	.L50
	.loc 1 190 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
.L40:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	.loc 1 191 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	spill_prop_savings, .-spill_prop_savings
	.type	spill_prop_insert, @function
spill_prop_insert:
.LFB17:
	.loc 1 200 0
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
	.loc 1 203 0
	movl	wl_moves@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L66
.L67:
	.loc 1 204 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L68
.LBB9:
	.loc 1 206 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -28(%ebp)
	.loc 1 207 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	.loc 1 208 0
	movl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L70
.LBB10:
	.loc 1 210 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 211 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 212 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L70:
.LBE10:
	.loc 1 214 0
	movl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L68
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L68
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	16(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L79
	movl	%edi, %esi
	xorl	%edi, %edi
.L79:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L68
	.loc 1 216 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L77
	movl	%esi, %edi
	xorl	%esi, %esi
.L77:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 217 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L78
	movl	%esi, %edi
	xorl	%esi, %esi
.L78:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	16(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
.L68:
.LBE9:
	.loc 1 203 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L66:
	cmpl	$0, -36(%ebp)
	jne	.L67
	.loc 1 219 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	spill_prop_insert, .-spill_prop_insert
	.type	spill_propagation, @function
spill_propagation:
.LFB18:
	.loc 1 235 0
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
	subl	$140, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 237 0
	movl	$0, -44(%ebp)
	.loc 1 238 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 239 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.LBB11:
	.loc 1 242 0
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L81
.L82:
.LBB12:
	movl	-36(%ebp), %eax
	sall	$3, %eax
	addl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L83
	jmp	.L85
.L86:
.LBB13:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L100
	movl	%eax, %edx
	xorl	%eax, %eax
.L100:
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %ecx
	movl	-52(%ebp), %esi
	movl	-64(%ebp), %eax
	andl	%ecx, %eax
	movl	-60(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L87
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-64(%ebp), %eax
	andl	%esi, %eax
	movl	-60(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-36(%ebp), %eax
	sall	$6, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	spill_prop_insert
	movl	-64(%ebp), %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L83
.L87:
.LBE13:
	addl	$1, -32(%ebp)
.L85:
	cmpl	$63, -32(%ebp)
	jbe	.L86
.L83:
.LBE12:
	addl	$1, -36(%ebp)
	movl	$0, -32(%ebp)
.L81:
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L82
.LBE11:
	.loc 1 246 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 250 0
	jmp	.L96
.L91:
.LBB14:
	.loc 1 252 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 253 0
	movl	-48(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -124(%ebp)
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L99
	movl	%eax, %edx
	xorl	%eax, %eax
.L99:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-120(%ebp), %eax
	andl	%esi, %eax
	movl	-116(%ebp), %edx
	andl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	-124(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 254 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	spill_prop_savings
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-100(%ebp), %ecx
	cmpl	%ecx, -108(%ebp)
	jb	.L90
	movl	-100(%ebp), %esi
	cmpl	%esi, -108(%ebp)
	ja	.L93
	movl	-104(%ebp), %edi
	cmpl	%edi, -112(%ebp)
	jb	.L90
.L93:
	.loc 1 259 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_web_from_list@PLT
	.loc 1 260 0
	movl	-20(%ebp), %eax
	movl	$-1, 40(%eax)
	.loc 1 261 0
	movl	$9, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 262 0
	movl	-48(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -92(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L97
	movl	%esi, %edi
	xorl	%esi, %esi
.L97:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	-92(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 263 0
	movl	-48(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L98
	movl	%esi, %edi
	xorl	%esi, %esi
.L98:
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	-76(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 264 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	spill_prop_insert
	.loc 1 265 0
	movl	$1, -44(%ebp)
.L90:
.L96:
.LBE14:
	.loc 1 250 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_first_set_bit@PLT
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	jns	.L91
	.loc 1 268 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 269 0
	movl	-44(%ebp), %eax
	.loc 1 270 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	spill_propagation, .-spill_propagation
	.type	spill_coalprop, @function
spill_coalprop:
.LFB19:
	.loc 1 277 0
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
	subl	$60, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 281 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 282 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 283 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 284 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 285 0
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L102
.L103:
	.loc 1 286 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L108
	movl	%esi, %edi
	xorl	%esi, %esi
.L108:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-36(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 285 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L102:
	cmpl	$0, -24(%ebp)
	jne	.L103
	.loc 1 287 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_copy@PLT
	.loc 1 288 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.L105:
	.loc 1 291 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	spill_coalescing
	.loc 1 297 0
	movl	$0, -20(%ebp)
	.loc 1 299 0
	cmpl	$0, -20(%ebp)
	jne	.L105
	.loc 1 300 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 301 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 302 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 303 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	spill_coalprop, .-spill_coalprop
	.type	allocate_spill_web, @function
allocate_spill_web:
.LFB20:
	.loc 1 314 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$20, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 315 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 317 0
	movl	8(%ebp), %eax
	movl	196(%eax), %eax
	testl	%eax, %eax
	jne	.L112
	.loc 1 319 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -8(%ebp)
	.loc 1 320 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 196(%edx)
.L112:
	.loc 1 321 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	allocate_spill_web, .-allocate_spill_web
	.section	.rodata
	.align 4
.LC1:
	.string	"choosing color %d for spilled web %d\n"
	.text
	.type	choose_spill_colors, @function
choose_spill_colors:
.LFB21:
	.loc 1 328 0
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
	subl	$124, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 331 0
	movl	$1408, (%esp)
	call	xmalloc@PLT
	movl	%eax, -56(%ebp)
	.loc 1 332 0
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L114
.L115:
.LBB15:
	.loc 1 334 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 338 0
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	movl	$1408, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 339 0
	movl	-52(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L116
.L117:
.LBB16:
	.loc 1 341 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 342 0
	movl	-36(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L118
	movl	-36(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L120
.L118:
	.loc 1 343 0
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-56(%ebp), %ecx
	movl	-36(%ebp), %eax
	movl	40(%eax), %eax
	sall	$3, %eax
	addl	-56(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-36(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L120:
.LBE16:
	.loc 1 339 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L116:
	cmpl	$0, -48(%ebp)
	jne	.L117
.LBB17:
	.loc 1 346 0
	leal	-88(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-52(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE17:
	.loc 1 347 0
	movl	-52(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L122
	.loc 1 351 0
	movl	$0, -40(%ebp)
	jmp	.L124
.L125:
	.loc 1 352 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	call_used_reg_set@GOT(%ebx), %eax
	leal	(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	-40(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L146
	movl	%edx, %eax
	xorl	%edx, %edx
.L146:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L126
	.loc 1 353 0
	movl	-40(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-56(%ebp), %ecx
	movl	-40(%ebp), %eax
	sall	$3, %eax
	addl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	addl	$1000, %eax
	adcl	$0, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L126:
	.loc 1 351 0
	addl	$1, -40(%ebp)
.L124:
	cmpl	$175, -40(%ebp)
	jle	.L125
.L122:
	.loc 1 355 0
	movl	$-1, -44(%ebp)
	.loc 1 356 0
	movl	$0, -40(%ebp)
	jmp	.L128
.L129:
	.loc 1 357 0
	cmpl	$0, -44(%ebp)
	js	.L130
	movl	-44(%ebp), %eax
	sall	$3, %eax
	addl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-40(%ebp), %eax
	sall	$3, %eax
	addl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-100(%ebp), %ecx
	cmpl	%ecx, -108(%ebp)
	jb	.L132
	movl	-100(%ebp), %eax
	cmpl	%eax, -108(%ebp)
	ja	.L130
	movl	-104(%ebp), %edx
	cmpl	%edx, -112(%ebp)
	jbe	.L132
.L130:
	movl	-40(%ebp), %eax
	shrl	$6, %eax
	movl	-84(%ebp,%eax,8), %edx
	movl	-88(%ebp,%eax,8), %eax
	movl	-40(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L145
	movl	%edx, %eax
	xorl	%edx, %edx
.L145:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L132
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-40(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L132
.LBB18:
	.loc 1 362 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 363 0
	movl	$1, -24(%ebp)
	jmp	.L136
.L137:
	.loc 1 364 0
	addl	$1, -24(%ebp)
.L136:
	.loc 1 363 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jge	.L138
	movl	-24(%ebp), %eax
	addl	-40(%ebp), %eax
	shrl	$6, %eax
	movl	-88(%ebp,%eax,8), %esi
	movl	-84(%ebp,%eax,8), %edi
	movl	-24(%ebp), %eax
	addl	-40(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L144
	movl	%edx, %eax
	xorl	%edx, %edx
.L144:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L137
.L138:
	.loc 1 365 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L132
	.loc 1 366 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L132:
.LBE18:
	.loc 1 356 0
	addl	$1, -40(%ebp)
.L128:
	cmpl	$175, -40(%ebp)
	jle	.L129
	.loc 1 368 0
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 369 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	ra_debug_msg@PLT
.LBE15:
	.loc 1 332 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
.L114:
	cmpl	$0, -60(%ebp)
	jne	.L115
	.loc 1 373 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 374 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	choose_spill_colors, .-choose_spill_colors
	.type	rewrite_program, @function
rewrite_program:
.LFB22:
	.loc 1 401 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%edi
.LCFI42:
	pushl	%esi
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$108, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 404 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -80(%ebp)
	.loc 1 409 0
	movl	$0, -88(%ebp)
	jmp	.L148
.L149:
	.loc 1 410 0
	cmpl	$0, -88(%ebp)
	jne	.L150
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L152
.L150:
	movl	web_lists@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -96(%ebp)
.L152:
	movl	-96(%ebp), %eax
	movl	%eax, -84(%ebp)
	jmp	.L153
.L154:
.LBB19:
	.loc 1 412 0
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -76(%ebp)
	.loc 1 413 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -72(%ebp)
	.loc 1 418 0
	movl	-72(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L155
	.loc 1 422 0
	movl	flag_ra_spill_every_use@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L157
	.loc 1 424 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 425 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	allocate_spill_web
	.loc 1 426 0
	movl	-72(%ebp), %eax
	movl	196(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 427 0
	movl	$0, -68(%ebp)
	jmp	.L159
.L160:
.LBB20:
	.loc 1 430 0
	movl	-76(%ebp), %eax
	movl	212(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 431 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 432 0
	movl	-48(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 434 0
	movl	-48(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L161
	.loc 1 440 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L161
	.loc 1 442 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 443 0
	movl	-76(%ebp), %eax
	movl	212(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 444 0
	movl	-64(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 445 0
	call	start_sequence@PLT
	.loc 1 446 0
	movl	-56(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L164
	.loc 1 447 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %esi
	movl	-52(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-56(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -52(%ebp)
.L164:
	.loc 1 450 0
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_emit_move_insn@PLT
	.loc 1 451 0
	call	get_insns@PLT
	movl	%eax, -60(%ebp)
	.loc 1 452 0
	call	end_sequence@PLT
	.loc 1 453 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 455 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-48(%ebp), %eax
	jne	.L166
	.loc 1 456 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, (%eax)
.L166:
	.loc 1 457 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L168
.L169:
	.loc 1 460 0
	movl	-48(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 461 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_insn_modify@PLT
	.loc 1 458 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -48(%ebp)
.L168:
	.loc 1 457 0
	movl	-48(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jne	.L169
	.loc 1 464 0
	movl	emitted_spill_loads@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, emitted_spill_loads@GOTOFF(%ebx)
	.loc 1 465 0
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	spill_load_cost@GOTOFF(%ebx), %eax
	movl	4+spill_load_cost@GOTOFF(%ebx), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, spill_load_cost@GOTOFF(%ebx)
	movl	%edx, 4+spill_load_cost@GOTOFF(%ebx)
.L161:
.LBE20:
	.loc 1 427 0
	addl	$1, -68(%ebp)
.L159:
	movl	-76(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	-68(%ebp), %eax
	ja	.L160
.L157:
	.loc 1 474 0
	movl	-72(%ebp), %eax
	movl	196(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 475 0
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 476 0
	cmpl	$0, -64(%ebp)
	je	.L155
	.loc 1 477 0
	movl	$0, -68(%ebp)
	jmp	.L172
.L173:
.LBB21:
	.loc 1 480 0
	movl	-76(%ebp), %eax
	movl	208(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 481 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 482 0
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 484 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L174
	.loc 1 486 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L174
	.loc 1 488 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 489 0
	call	start_sequence@PLT
	.loc 1 490 0
	movl	-76(%ebp), %eax
	movl	208(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 491 0
	movl	-64(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 492 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L177
	.loc 1 493 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %esi
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -28(%ebp)
.L177:
	.loc 1 496 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_emit_move_insn@PLT
	.loc 1 498 0
	call	get_insns@PLT
	movl	%eax, -36(%ebp)
	.loc 1 499 0
	call	end_sequence@PLT
	.loc 1 500 0
	cmpl	$0, -36(%ebp)
	je	.L179
	.loc 1 502 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 503 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-24(%ebp), %eax
	jne	.L181
	.loc 1 504 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
.L181:
	.loc 1 505 0
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L183
.L184:
	.loc 1 507 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 508 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_insn_modify@PLT
	.loc 1 505 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L183:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L184
	jmp	.L186
.L179:
	.loc 1 512 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_insn_modify@PLT
.L186:
	.loc 1 513 0
	movl	emitted_spill_stores@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, emitted_spill_stores@GOTOFF(%ebx)
	.loc 1 514 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	spill_store_cost@GOTOFF(%ebx), %eax
	movl	4+spill_store_cost@GOTOFF(%ebx), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, spill_store_cost@GOTOFF(%ebx)
	movl	%edx, 4+spill_store_cost@GOTOFF(%ebx)
	.loc 1 523 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L174:
.LBE21:
	.loc 1 477 0
	addl	$1, -68(%ebp)
.L172:
	movl	-76(%ebp), %eax
	movl	64(%eax), %eax
	cmpl	-68(%ebp), %eax
	ja	.L173
.L155:
.LBE19:
	.loc 1 410 0
	movl	-84(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
.L153:
	cmpl	$0, -84(%ebp)
	jne	.L154
	.loc 1 409 0
	addl	$1, -88(%ebp)
.L148:
	cmpl	$1, -88(%ebp)
	jbe	.L149
	.loc 1 527 0
	cmpl	$0, -80(%ebp)
	je	.L191
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -80(%ebp)
.L191:
	.loc 1 528 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	rewrite_program, .-rewrite_program
	.type	remember_slot, @function
remember_slot:
.LFB23:
	.loc 1 543 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$20, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 546 0
	movl	$8, (%esp)
	call	ra_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 547 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 548 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 549 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 550 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	remember_slot, .-remember_slot
	.section	.rodata
	.type	__FUNCTION__.11824, @object
	.size	__FUNCTION__.11824, 16
__FUNCTION__.11824:
	.string	"slots_overlap_p"
	.text
	.type	slots_overlap_p, @function
slots_overlap_p:
.LFB24:
	.loc 1 560 0
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
	subl	$92, %esp
.LCFI55:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 562 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 563 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 564 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 565 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L195
	.loc 1 566 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L195:
	.loc 1 567 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L197
	.loc 1 568 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L197:
	.loc 1 570 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L199
	.loc 1 571 0
	movl	$1, -84(%ebp)
	jmp	.L201
.L199:
	.loc 1 573 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %edx
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	je	.L202
	.loc 1 574 0
	movl	$0, -84(%ebp)
	jmp	.L201
.L202:
	.loc 1 576 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L204
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L204
	.loc 1 578 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L207
	.loc 1 579 0
	movl	$0, -84(%ebp)
	jmp	.L201
.L207:
	.loc 1 580 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-40(%ebp), %esi
	adcl	-36(%ebp), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-76(%ebp), %edi
	cmpl	-44(%ebp), %edi
	jl	.L209
	movl	-76(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jg	.L211
	movl	-80(%ebp), %esi
	cmpl	-48(%ebp), %esi
	jbe	.L209
.L211:
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-48(%ebp), %esi
	adcl	-44(%ebp), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-68(%ebp), %edi
	cmpl	-36(%ebp), %edi
	jg	.L212
	movl	-68(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L209
	movl	-72(%ebp), %esi
	cmpl	-40(%ebp), %esi
	ja	.L212
.L209:
	.loc 1 581 0
	movl	$0, -84(%ebp)
	jmp	.L201
.L212:
	.loc 1 582 0
	movl	$1, -84(%ebp)
	jmp	.L201
.L204:
	.loc 1 584 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L214
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L216
.L214:
	.loc 1 585 0
	leal	__FUNCTION__.11824@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$585, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L216:
	.loc 1 586 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 587 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
	.loc 1 588 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L217
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L217
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L220
.L217:
	.loc 1 590 0
	movl	$1, -84(%ebp)
	jmp	.L201
.L220:
	.loc 1 591 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L221
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L221
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L224
.L221:
	.loc 1 593 0
	movl	$1, -84(%ebp)
	jmp	.L201
.L224:
	.loc 1 594 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 595 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 596 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L225
	.loc 1 597 0
	movl	$1, -84(%ebp)
	jmp	.L201
.L225:
	.loc 1 598 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%eax, -48(%ebp)
	adcl	%edx, -44(%ebp)
	.loc 1 599 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	%eax, -40(%ebp)
	adcl	%edx, -36(%ebp)
	.loc 1 600 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-40(%ebp), %esi
	adcl	-36(%ebp), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	-60(%ebp), %edi
	cmpl	-44(%ebp), %edi
	jl	.L227
	movl	-60(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jg	.L229
	movl	-64(%ebp), %esi
	cmpl	-48(%ebp), %esi
	jbe	.L227
.L229:
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	-48(%ebp), %esi
	adcl	-44(%ebp), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-52(%ebp), %edi
	cmpl	-36(%ebp), %edi
	jg	.L230
	movl	-52(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L227
	movl	-56(%ebp), %esi
	cmpl	-40(%ebp), %esi
	ja	.L230
.L227:
	.loc 1 601 0
	movl	$0, -84(%ebp)
	jmp	.L201
.L230:
	.loc 1 602 0
	movl	$1, -84(%ebp)
.L201:
	movl	-84(%ebp), %eax
	.loc 1 603 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	slots_overlap_p, .-slots_overlap_p
	.type	delete_overlapping_slots, @function
delete_overlapping_slots:
.LFB25:
	.loc 1 612 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	subl	$8, %esp
.LCFI58:
	.loc 1 613 0
	jmp	.L240
.L235:
	.loc 1 615 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	slots_overlap_p
	testl	%eax, %eax
	je	.L236
	.loc 1 616 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L234
.L236:
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L234:
.L240:
	.loc 1 613 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L235
	.loc 1 620 0
	leave
	ret
.LFE25:
	.size	delete_overlapping_slots, .-delete_overlapping_slots
	.type	slot_member_p, @function
slot_member_p:
.LFB26:
	.loc 1 628 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$20, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 629 0
	jmp	.L242
.L243:
	.loc 1 630 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	je	.L244
	.loc 1 631 0
	movl	$1, -8(%ebp)
	jmp	.L246
.L244:
	.loc 1 629 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.L242:
	cmpl	$0, 8(%ebp)
	jne	.L243
	.loc 1 632 0
	movl	$0, -8(%ebp)
.L246:
	movl	-8(%ebp), %eax
	.loc 1 633 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	slot_member_p, .-slot_member_p
	.type	insert_stores, @function
insert_stores:
.LFB27:
	.loc 1 644 0
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
	subl	$108, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 646 0
	movl	$0, -60(%ebp)
	.loc 1 647 0
	movl	$0, -68(%ebp)
	.loc 1 650 0
	call	get_last_insn@PLT
	movl	%eax, -64(%ebp)
	jmp	.L250
.L251:
.LBB22:
	.loc 1 652 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 656 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L252
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L252
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	can_throw_internal@PLT
	testb	%al, %al
	je	.L255
.L252:
	.loc 1 659 0
	movl	$0, -60(%ebp)
	.loc 1 660 0
	movl	$0, -68(%ebp)
.L255:
	.loc 1 662 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L256
	.loc 1 666 0
	movl	insn_df_max_uid@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -56(%ebp)
	jge	.L258
.LBB23:
	.loc 1 669 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 670 0
	movl	-64(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 673 0
	movl	-56(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	(%edx), %eax
	movl	%eax, -84(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -80(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -76(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -72(%ebp)
	.loc 1 674 0
	movl	$0, -52(%ebp)
	jmp	.L260
.L261:
.LBB24:
	.loc 1 676 0
	movl	-76(%ebp), %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	def2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 677 0
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L262
	movl	-40(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -104(%ebp)
	jmp	.L264
.L262:
	movl	-40(%ebp), %eax
	movl	%eax, -104(%ebp)
.L264:
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -36(%ebp)
	.loc 1 679 0
	movl	-36(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L265
	movl	-36(%ebp), %eax
	movl	196(%eax), %eax
	testl	%eax, %eax
	je	.L265
	.loc 1 681 0
	movl	-36(%ebp), %eax
	movl	196(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 682 0
	movl	-76(%ebp), %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 684 0
	call	start_sequence@PLT
	.loc 1 685 0
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L268
	.loc 1 686 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %esi
	movl	-32(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -32(%ebp)
.L268:
	.loc 1 692 0
	cmpl	$0, -60(%ebp)
	je	.L270
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	testl	%eax, %eax
	jne	.L272
.L270:
	movl	-68(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	slot_member_p
	testl	%eax, %eax
	jne	.L272
.LBB25:
	.loc 1 696 0
	movl	-32(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 697 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	remember_slot
	.loc 1 698 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_emit_move_insn@PLT
	.loc 1 699 0
	call	get_insns@PLT
	movl	%eax, -24(%ebp)
	.loc 1 700 0
	call	end_sequence@PLT
	.loc 1 701 0
	cmpl	$0, -24(%ebp)
	je	.L274
	.loc 1 703 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 704 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-64(%ebp), %eax
	jne	.L276
	.loc 1 705 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%eax)
.L276:
	.loc 1 706 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L278
.L279:
	.loc 1 708 0
	movl	-20(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 709 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_insn_modify@PLT
	.loc 1 706 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L278:
	movl	-20(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jne	.L279
	jmp	.L281
.L274:
	.loc 1 713 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_insn_modify@PLT
.L281:
	.loc 1 714 0
	movl	emitted_spill_stores@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, emitted_spill_stores@GOTOFF(%ebx)
	.loc 1 715 0
	movl	-44(%ebp), %eax
	movl	72(%eax), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	spill_store_cost@GOTOFF(%ebx), %eax
	movl	4+spill_store_cost@GOTOFF(%ebx), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, spill_store_cost@GOTOFF(%ebx)
	movl	%edx, 4+spill_store_cost@GOTOFF(%ebx)
	.loc 1 716 0
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 692 0
	jmp	.L265
.L272:
.LBE25:
	.loc 1 721 0
	call	end_sequence@PLT
.L265:
.LBE24:
	.loc 1 674 0
	addl	$1, -52(%ebp)
.L260:
	movl	-84(%ebp), %eax
	cmpl	-52(%ebp), %eax
	ja	.L261
.L258:
.LBE23:
	.loc 1 732 0
	movl	last_max_uid@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -56(%ebp)
	jl	.L256
.LBB26:
	.loc 1 734 0
	movl	-64(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L283
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L285
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L287
.L285:
	movl	-64(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -96(%ebp)
.L287:
	movl	-96(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	.L288
.L283:
	movl	$0, -100(%ebp)
.L288:
	movl	-100(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 735 0
	movl	$0, -60(%ebp)
	.loc 1 737 0
	cmpl	$0, -16(%ebp)
	jne	.L289
	.loc 1 738 0
	movl	$0, -68(%ebp)
	jmp	.L256
.L289:
	.loc 1 742 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_overlapping_slots
.L256:
.LBE26:
.LBE22:
	.loc 1 650 0
	movl	-64(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -64(%ebp)
.L250:
	cmpl	$0, -64(%ebp)
	jne	.L251
	.loc 1 746 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	insert_stores, .-insert_stores
	.type	spill_same_color_p, @function
spill_same_color_p:
.LFB28:
	.loc 1 754 0
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
	.loc 1 756 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	40(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	js	.L294
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L296
.L294:
	.loc 1 757 0
	movl	$0, -32(%ebp)
	jmp	.L297
.L296:
	.loc 1 758 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	js	.L298
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -12(%ebp)
	jne	.L300
.L298:
	.loc 1 759 0
	movl	$0, -32(%ebp)
	jmp	.L297
.L300:
	.loc 1 761 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L301
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -28(%ebp)
	jmp	.L303
.L301:
	movl	$1, -28(%ebp)
.L303:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 763 0
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L304
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	jmp	.L306
.L304:
	movl	$1, -24(%ebp)
.L306:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 765 0
	movl	-8(%ebp), %eax
	addl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L307
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jg	.L309
.L307:
	.loc 1 766 0
	movl	$0, -32(%ebp)
	jmp	.L297
.L309:
	.loc 1 767 0
	movl	$1, -32(%ebp)
.L297:
	movl	-32(%ebp), %eax
	.loc 1 768 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	spill_same_color_p, .-spill_same_color_p
	.type	is_partly_live_1, @function
is_partly_live_1:
.LFB29:
	.loc 1 777 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%edi
.LCFI75:
	pushl	%esi
.LCFI76:
	subl	$4, %esp
.LCFI77:
.L312:
	.loc 1 779 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L318
	movl	%edi, %esi
	xorl	%edi, %edi
.L318:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L313
	.loc 1 780 0
	movl	$1, -12(%ebp)
	jmp	.L315
.L313:
	.loc 1 781 0
	movl	12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, 12(%ebp)
	cmpl	$0, 12(%ebp)
	jne	.L312
	.loc 1 782 0
	movl	$0, -12(%ebp)
.L315:
	movl	-12(%ebp), %eax
	.loc 1 783 0
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	is_partly_live_1, .-is_partly_live_1
	.type	update_spill_colors, @function
update_spill_colors:
.LFB30:
	.loc 1 799 0
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
	subl	$76, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 801 0
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L320
	movl	12(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -64(%ebp)
	jmp	.L322
.L320:
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
.L322:
	movl	-64(%ebp), %esi
	movl	%esi, (%esp)
	call	alias@PLT
	movl	40(%eax), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	js	.L338
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jne	.L325
	.loc 1 803 0
	jmp	.L338
.L325:
	.loc 1 804 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -20(%ebp)
	.loc 1 805 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L327
	.loc 1 807 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %esi
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-24(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	subreg_regno_offset@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L329
.L327:
	.loc 1 811 0
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L329
	.loc 1 812 0
	movl	$1, -20(%ebp)
.L329:
	.loc 1 813 0
	cmpl	$0, 16(%ebp)
	je	.L336
	.loc 1 814 0
	jmp	.L333
.L334:
	.loc 1 815 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L340
	movl	%esi, %edi
	xorl	%esi, %esi
.L340:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L333:
	.loc 1 814 0
	subl	$1, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	.L334
	jmp	.L338
.L337:
	.loc 1 818 0
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%ebp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-20(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L339
	movl	%eax, %edx
	xorl	%eax, %eax
.L339:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-40(%ebp), %eax
	andl	%esi, %eax
	movl	-36(%ebp), %edx
	andl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	%eax, (%ecx,%edi,8)
	movl	%edx, 4(%ecx,%edi,8)
.L336:
	.loc 1 817 0
	subl	$1, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	.L337
.L338:
	.loc 1 819 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	update_spill_colors, .-update_spill_colors
	.type	spill_is_free, @function
spill_is_free:
.LFB31:
	.loc 1 830 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%edi
.LCFI86:
	pushl	%esi
.LCFI87:
	pushl	%ebx
.LCFI88:
	subl	$44, %esp
.LCFI89:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 832 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	40(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	.L342
	.loc 1 833 0
	movl	$-1, -36(%ebp)
	jmp	.L344
.L342:
	.loc 1 834 0
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -20(%ebp)
	jne	.L345
	.loc 1 835 0
	movl	$1, -36(%ebp)
	jmp	.L344
.L345:
	.loc 1 836 0
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L347
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -32(%ebp)
	jmp	.L349
.L347:
	movl	$1, -32(%ebp)
.L349:
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 838 0
	jmp	.L350
.L351:
	.loc 1 839 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L355
	movl	%edx, %eax
	xorl	%edx, %edx
.L355:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L350
	.loc 1 840 0
	movl	$0, -36(%ebp)
	jmp	.L344
.L350:
	.loc 1 838 0
	subl	$1, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	.L351
	.loc 1 841 0
	movl	$1, -36(%ebp)
.L344:
	movl	-36(%ebp), %eax
	.loc 1 842 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	spill_is_free, .-spill_is_free
	.section	.rodata
	.type	__FUNCTION__.12291, @object
	.size	__FUNCTION__.12291, 11
__FUNCTION__.12291:
	.string	"emit_loads"
	.text
	.type	emit_loads, @function
emit_loads:
.LFB32:
	.loc 1 887 0
	pushl	%ebp
.LCFI90:
	movl	%esp, %ebp
.LCFI91:
	pushl	%edi
.LCFI92:
	pushl	%esi
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$92, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 889 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L402
.L358:
.LBB27:
	.loc 1 891 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	subl	$1, -64(%ebp)
	movl	-64(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 895 0
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	.loc 1 900 0
	cmpl	$0, -60(%ebp)
	je	.L357
	.loc 1 902 0
	movl	-60(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L360
	movl	-60(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -84(%ebp)
	jmp	.L362
.L360:
	movl	-60(%ebp), %eax
	movl	%eax, -84(%ebp)
.L362:
	movl	-84(%ebp), %ecx
	movl	%ecx, -56(%ebp)
	.loc 1 903 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L363
	.loc 1 904 0
	leal	__FUNCTION__.12291@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$904, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L363:
	.loc 1 909 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L365
	.loc 1 911 0
	movl	-56(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L357
	.loc 1 914 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-64(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L365:
	.loc 1 916 0
	movl	-60(%ebp), %edx
	movzbl	49(%edx), %eax
	andl	$-3, %eax
	movb	%al, 49(%edx)
	.loc 1 918 0
	movl	-64(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L368
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L404
	movl	%edi, %esi
	xorl	%edi, %edi
.L404:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L357
.L368:
	.loc 1 920 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -52(%ebp)
	.loc 1 921 0
	movl	-52(%ebp), %edx
	movzbl	49(%edx), %eax
	orl	$8, %eax
	movb	%al, 49(%edx)
	.loc 1 922 0
	call	start_sequence@PLT
	.loc 1 923 0
	movl	-56(%ebp), %eax
	movl	204(%eax), %eax
	testl	%eax, %eax
	je	.L370
	.loc 1 930 0
	movl	-52(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L372
	.loc 1 931 0
	leal	__FUNCTION__.12291@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$931, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L372:
	.loc 1 932 0
	movl	-56(%ebp), %eax
	movl	204(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -44(%ebp)
	.loc 1 933 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -40(%ebp)
	.loc 1 936 0
	movl	-56(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L376
	.loc 1 937 0
	leal	__FUNCTION__.12291@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$937, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L370:
	.loc 1 941 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	allocate_spill_web
	.loc 1 942 0
	movl	-52(%ebp), %eax
	movl	196(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 947 0
	movl	-60(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	copy_rtx@PLT
	movl	%eax, -40(%ebp)
	.loc 1 948 0
	movl	-40(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L376
	.loc 1 951 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %esi
	movl	-44(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-40(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_gen_subreg@PLT
	movl	%eax, -44(%ebp)
.L376:
	.loc 1 954 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_emit_move_insn@PLT
	.loc 1 955 0
	call	get_insns@PLT
	movl	%eax, -48(%ebp)
	.loc 1 956 0
	call	end_sequence@PLT
	.loc 1 957 0
	movl	-60(%ebp), %eax
	movl	200(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 958 0
	movl	-60(%ebp), %eax
	movl	$0, 200(%eax)
	.loc 1 959 0
	cmpl	$0, -36(%ebp)
	jne	.L378
	.loc 1 961 0
	movl	16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L380
	.loc 1 962 0
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L378
.L380:
	.loc 1 964 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
.L378:
	.loc 1 966 0
	cmpl	$0, -32(%ebp)
	je	.L382
.LBB28:
	.loc 1 968 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 969 0
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 970 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_after@PLT
	.loc 1 971 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L384
	.loc 1 972 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 4(%eax)
.L384:
	.loc 1 973 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L386
.L387:
	.loc 1 975 0
	movl	-48(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 976 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_insn_modify@PLT
	.loc 1 973 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L386:
	movl	-48(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L387
	jmp	.L389
.L382:
.LBE28:
.LBB29:
	.loc 1 981 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 982 0
	movl	-36(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 983 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_insn_before@PLT
	.loc 1 984 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-36(%ebp), %eax
	jne	.L392
	.loc 1 985 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 986 0
	jmp	.L392
.L393:
	.loc 1 988 0
	movl	-48(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 989 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	df_insn_modify@PLT
	.loc 1 986 0
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
.L392:
	movl	-48(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L393
.L389:
.LBE29:
	.loc 1 992 0
	movl	-56(%ebp), %eax
	movl	204(%eax), %eax
	testl	%eax, %eax
	je	.L394
	.loc 1 994 0
	movl	emitted_remat@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, emitted_remat@GOTOFF(%ebx)
	.loc 1 995 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	spill_remat_cost@GOTOFF(%ebx), %eax
	movl	4+spill_remat_cost@GOTOFF(%ebx), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, spill_remat_cost@GOTOFF(%ebx)
	movl	%edx, 4+spill_remat_cost@GOTOFF(%ebx)
	jmp	.L396
.L394:
	.loc 1 999 0
	movl	emitted_spill_loads@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, emitted_spill_loads@GOTOFF(%ebx)
	.loc 1 1000 0
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	spill_load_cost@GOTOFF(%ebx), %eax
	movl	4+spill_load_cost@GOTOFF(%ebx), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, spill_load_cost@GOTOFF(%ebx)
	movl	%edx, 4+spill_load_cost@GOTOFF(%ebx)
.L396:
	.loc 1 1002 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -76(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L403
	movl	%eax, %edx
	xorl	%eax, %eax
.L403:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1005 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	$2, %eax
	jne	.L357
	movl	-64(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L398
.L357:
.L402:
.LBE27:
	.loc 1 889 0
	cmpl	$0, -64(%ebp)
	jne	.L358
.L398:
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L401
	.loc 1 1009 0
	movl	8(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 16(%edx)
.L401:
	.loc 1 1010 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	emit_loads, .-emit_loads
	.section	.rodata
	.type	__FUNCTION__.12449, @object
	.size	__FUNCTION__.12449, 17
__FUNCTION__.12449:
	.string	"reloads_to_loads"
	.text
	.type	reloads_to_loads, @function
reloads_to_loads:
.LFB33:
	.loc 1 1025 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%edi
.LCFI98:
	pushl	%esi
.LCFI99:
	pushl	%ebx
.LCFI100:
	subl	$92, %esp
.LCFI101:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1027 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1028 0
	movl	$0, -72(%ebp)
	jmp	.L406
.L407:
.LBB30:
	.loc 1 1030 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	addl	20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1031 0
	movl	-64(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L408
	movl	-64(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -84(%ebp)
	jmp	.L410
.L408:
	movl	-64(%ebp), %eax
	movl	%eax, -84(%ebp)
.L410:
	movl	-84(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1037 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L411
	.loc 1 1039 0
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L413
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L450
	movl	%edx, %eax
	xorl	%edx, %edx
.L450:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L411
.L413:
	.loc 1 1045 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L448
	movl	%edi, %esi
	xorl	%edi, %edi
.L448:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, -56(%ebp)
	.loc 1 1046 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L449
	movl	%edi, %esi
	xorl	%edi, %edi
.L449:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	andl	%eax, -56(%ebp)
	.loc 1 1047 0
	cmpl	$0, -56(%ebp)
	je	.L411
.LBB31:
	.loc 1 1049 0
	movl	-68(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 1050 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.LBB32:
	.loc 1 1051 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L416
.L417:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L416:
	cmpl	$0, -44(%ebp)
	je	.L418
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-40(%ebp), %eax
	jb	.L417
.L418:
	cmpl	$0, -44(%ebp)
	je	.L423
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-40(%ebp), %eax
	je	.L423
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L423
.L426:
.LBB33:
	movl	-32(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L427
	jmp	.L429
.L430:
.LBB34:
	movl	-36(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	andl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L431
	movl	-24(%ebp), %eax
	notl	%eax
	andl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	sall	$5, %eax
	addl	-36(%ebp), %eax
	movl	%eax, -52(%ebp)
.LBB35:
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L433
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -80(%ebp)
	jmp	.L435
.L433:
	movl	-20(%ebp), %eax
	movl	%eax, -80(%ebp)
.L435:
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %edx
	addl	$24, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	spill_is_free
	testl	%eax, %eax
	jne	.L436
	leal	__FUNCTION__.12449@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1068, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L436:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	spill_same_color_p
	testl	%eax, %eax
	je	.L438
	movl	-20(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L440
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-20(%ebp), %edx
	movzbl	49(%edx), %eax
	orl	$2, %eax
	movb	%al, 49(%edx)
.L440:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	subl	$1, -68(%ebp)
.L438:
.LBE35:
	cmpl	$0, -28(%ebp)
	je	.L427
.L431:
.LBE34:
	addl	$1, -36(%ebp)
.L429:
	cmpl	$31, -36(%ebp)
	jbe	.L430
.L427:
	movl	$0, -36(%ebp)
.LBE33:
	addl	$1, -32(%ebp)
.L425:
	cmpl	$3, -32(%ebp)
	jbe	.L426
	movl	$0, -32(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L423:
	cmpl	$0, -44(%ebp)
	jne	.L425
.LBE32:
	.loc 1 1069 0
	movl	-68(%ebp), %eax
	cmpl	-48(%ebp), %eax
	je	.L411
	.loc 1 1070 0
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
.L411:
.LBE31:
.LBE30:
	.loc 1 1028 0
	addl	$1, -72(%ebp)
.L406:
	movl	-72(%ebp), %eax
	cmpl	16(%ebp), %eax
	jae	.L445
	cmpl	$0, -68(%ebp)
	jne	.L407
.L445:
	.loc 1 1074 0
	movl	8(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1075 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	reloads_to_loads, .-reloads_to_loads
	.section	.rodata
	.type	__FUNCTION__.12764, @object
	.size	__FUNCTION__.12764, 17
__FUNCTION__.12764:
	.string	"rewrite_program2"
	.text
	.type	rewrite_program2, @function
rewrite_program2:
.LFB34:
	.loc 1 1085 0
	pushl	%ebp
.LCFI102:
	movl	%esp, %ebp
.LCFI103:
	pushl	%edi
.LCFI104:
	pushl	%esi
.LCFI105:
	pushl	%ebx
.LCFI106:
	subl	$652, %esp
.LCFI107:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1090 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -428(%ebp)
	.loc 1 1091 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -440(%ebp)
	.loc 1 1092 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -436(%ebp)
	.loc 1 1093 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -432(%ebp)
	.loc 1 1094 0
	movl	$0, -424(%ebp)
	.loc 1 1095 0
	movl	$0, -420(%ebp)
	.loc 1 1096 0
	call	get_last_insn@PLT
	movl	%eax, -328(%ebp)
	jmp	.L452
.L453:
.LBB36:
	.loc 1 1098 0
	movl	$0, -324(%ebp)
	.loc 1 1101 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L456
	.loc 1 1102 0
	movl	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	movl	%eax, -328(%ebp)
	.loc 1 1103 0
	jmp	.L456
.L457:
	.loc 1 1104 0
	movl	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	movl	%eax, -328(%ebp)
.L456:
	.loc 1 1103 0
	cmpl	$0, -328(%ebp)
	je	.L458
	movl	-328(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -336(%ebp)
	cmpl	$0, -336(%ebp)
	je	.L457
.L458:
	.loc 1 1105 0
	cmpl	$0, -328(%ebp)
	je	.L460
	.loc 1 1107 0
	movl	-336(%ebp), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	%eax, -316(%ebp)
	.loc 1 1108 0
	movl	-328(%ebp), %eax
	movl	%eax, -320(%ebp)
	.loc 1 1110 0
	movl	-432(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.LBB37:
	.loc 1 1111 0
	leal	-440(%ebp), %eax
	addl	$24, %eax
	movl	%eax, -308(%ebp)
	movl	-308(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-308(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-308(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE37:
.LBB38:
	.loc 1 1112 0
	movl	-316(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -304(%ebp)
	movl	$0, -300(%ebp)
	movl	$0, -296(%ebp)
	movl	$0, -292(%ebp)
	jmp	.L462
.L463:
	movl	-304(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -304(%ebp)
.L462:
	cmpl	$0, -304(%ebp)
	je	.L464
	movl	-304(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-300(%ebp), %eax
	jb	.L463
.L464:
	cmpl	$0, -304(%ebp)
	je	.L469
	movl	-304(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-300(%ebp), %eax
	je	.L469
	movl	$0, -296(%ebp)
	movl	$0, -292(%ebp)
	jmp	.L469
.L472:
.LBB39:
	movl	-292(%ebp), %eax
	movl	-304(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -288(%ebp)
	cmpl	$0, -288(%ebp)
	je	.L473
	jmp	.L475
.L476:
.LBB40:
	movl	-296(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -284(%ebp)
	movl	-284(%ebp), %eax
	andl	-288(%ebp), %eax
	testl	%eax, %eax
	je	.L477
	movl	-284(%ebp), %eax
	notl	%eax
	andl	%eax, -288(%ebp)
	movl	-304(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-292(%ebp), %eax
	sall	$5, %eax
	addl	-296(%ebp), %eax
	movl	%eax, -312(%ebp)
.LBB41:
	movl	-312(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -280(%ebp)
	movl	-280(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L479
	movl	-280(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -636(%ebp)
	jmp	.L481
.L479:
	movl	-280(%ebp), %eax
	movl	%eax, -636(%ebp)
.L481:
	movl	-636(%ebp), %edx
	movl	%edx, (%esp)
	call	alias@PLT
	movl	%eax, -276(%ebp)
	movl	-276(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L482
	movl	-432(%ebp), %ecx
	movl	%ecx, -632(%ebp)
	movl	-280(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -628(%ebp)
	movl	-432(%ebp), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -624(%ebp)
	movl	%edi, -620(%ebp)
	movl	-280(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L738
	movl	%esi, %edi
	xorl	%esi, %esi
.L738:
	movl	-624(%ebp), %eax
	orl	%esi, %eax
	movl	-620(%ebp), %edx
	orl	%edi, %edx
	movl	-628(%ebp), %edi
	movl	-632(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	movl	-276(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L482
	movl	$1, 8(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	update_spill_colors
.L482:
.LBE41:
	cmpl	$0, -288(%ebp)
	je	.L473
.L477:
.LBE40:
	addl	$1, -296(%ebp)
.L475:
	cmpl	$31, -296(%ebp)
	jbe	.L476
.L473:
	movl	$0, -296(%ebp)
.LBE39:
	addl	$1, -292(%ebp)
.L471:
	cmpl	$3, -292(%ebp)
	jbe	.L472
	movl	$0, -292(%ebp)
	movl	-304(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -304(%ebp)
.L469:
	cmpl	$0, -304(%ebp)
	jne	.L471
.LBE38:
	.loc 1 1131 0
	movl	-440(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 1132 0
	movl	$0, -420(%ebp)
	.loc 1 1133 0
	movl	$0, -392(%ebp)
	.loc 1 1134 0
	movl	flag_ra_ir_spilling@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L487
.LBB42:
	.loc 1 1140 0
	movl	$0, -268(%ebp)
	jmp	.L489
.L490:
	.loc 1 1141 0
	cmpl	$0, -268(%ebp)
	je	.L491
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -612(%ebp)
	jmp	.L493
.L491:
	movl	web_lists@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -612(%ebp)
.L493:
	movl	-612(%ebp), %esi
	movl	%esi, -272(%ebp)
	jmp	.L494
.L495:
.LBB43:
	.loc 1 1143 0
	movl	-272(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -264(%ebp)
	.loc 1 1144 0
	movl	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -260(%ebp)
	.loc 1 1145 0
	movl	-260(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L496
	.loc 1 1147 0
	movl	-264(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L498
	movl	-432(%ebp), %edx
	movl	-264(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-264(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L737
	movl	%edi, %esi
	xorl	%edi, %edi
.L737:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	setne	-605(%ebp)
	jmp	.L500
.L498:
	movl	-432(%ebp), %eax
	movl	-264(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	is_partly_live_1
	movb	%al, -605(%ebp)
.L500:
	cmpb	$0, -605(%ebp)
	je	.L496
	movl	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	spill_is_free
	testl	%eax, %eax
	jle	.L496
	.loc 1 1150 0
	movl	-420(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -420(%ebp)
	.loc 1 1151 0
	movl	-264(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1153 0
	movl	-264(%ebp), %eax
	movl	$0, 200(%eax)
.L496:
.LBE43:
	.loc 1 1141 0
	movl	-272(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -272(%ebp)
.L494:
	cmpl	$0, -272(%ebp)
	jne	.L495
	.loc 1 1140 0
	addl	$1, -268(%ebp)
.L489:
	cmpl	$1, -268(%ebp)
	jle	.L490
.L487:
.LBE42:
	.loc 1 1158 0
	movl	-336(%ebp), %eax
	movl	%eax, -324(%ebp)
	.loc 1 1159 0
	jmp	.L504
.L505:
.LBB44:
	.loc 1 1164 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L506
	movl	-328(%ebp), %eax
	movl	28(%eax), %eax
	cmpl	-324(%ebp), %eax
	je	.L506
.LBB45:
	.loc 1 1166 0
	movl	-328(%ebp), %eax
	movl	28(%eax), %eax
	movl	44(%eax), %eax
	addl	$2, %eax
	movl	%eax, -252(%ebp)
.LBB46:
	.loc 1 1167 0
	movl	-252(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	subl	$8, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -248(%ebp)
	movl	$0, -244(%ebp)
	movl	$0, -240(%ebp)
	movl	$0, -236(%ebp)
	jmp	.L509
.L510:
	movl	-248(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -248(%ebp)
.L509:
	cmpl	$0, -248(%ebp)
	je	.L511
	movl	-248(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-244(%ebp), %eax
	jb	.L510
.L511:
	cmpl	$0, -248(%ebp)
	je	.L516
	movl	-248(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-244(%ebp), %eax
	je	.L516
	movl	$0, -240(%ebp)
	movl	$0, -236(%ebp)
	jmp	.L516
.L519:
.LBB47:
	movl	-236(%ebp), %eax
	movl	-248(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -232(%ebp)
	cmpl	$0, -232(%ebp)
	je	.L520
	jmp	.L522
.L523:
.LBB48:
	movl	-240(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -228(%ebp)
	movl	-228(%ebp), %eax
	andl	-232(%ebp), %eax
	testl	%eax, %eax
	je	.L524
	movl	-228(%ebp), %eax
	notl	%eax
	andl	%eax, -232(%ebp)
	movl	-248(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-236(%ebp), %eax
	sall	$5, %eax
	addl	-240(%ebp), %eax
	movl	%eax, -312(%ebp)
.LBB49:
	movl	-312(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -224(%ebp)
	movl	-224(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L526
	movl	-224(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -604(%ebp)
	jmp	.L528
.L526:
	movl	-224(%ebp), %edi
	movl	%edi, -604(%ebp)
.L528:
	movl	-604(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -220(%ebp)
	movl	-220(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L529
	movl	-432(%ebp), %edx
	movl	%edx, -600(%ebp)
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -596(%ebp)
	movl	-432(%ebp), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -592(%ebp)
	movl	%edi, -588(%ebp)
	movl	-224(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L736
	movl	%esi, %edi
	xorl	%esi, %esi
.L736:
	movl	-592(%ebp), %eax
	orl	%esi, %eax
	movl	-588(%ebp), %edx
	orl	%edi, %edx
	movl	-596(%ebp), %edi
	movl	-600(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	movl	$1, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	update_spill_colors
.L529:
.LBE49:
	cmpl	$0, -232(%ebp)
	je	.L520
.L524:
.LBE48:
	addl	$1, -240(%ebp)
.L522:
	cmpl	$31, -240(%ebp)
	jbe	.L523
.L520:
	movl	$0, -240(%ebp)
.LBE47:
	addl	$1, -236(%ebp)
.L518:
	cmpl	$3, -236(%ebp)
	jbe	.L519
	movl	$0, -236(%ebp)
	movl	-248(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -248(%ebp)
.L516:
	cmpl	$0, -248(%ebp)
	jne	.L518
.LBE46:
	.loc 1 1177 0
	movl	-436(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.LBB50:
	.loc 1 1178 0
	movl	-440(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
	movl	$0, -212(%ebp)
	movl	$0, -208(%ebp)
	movl	$0, -204(%ebp)
	jmp	.L533
.L534:
	movl	-216(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
.L533:
	cmpl	$0, -216(%ebp)
	je	.L535
	movl	-216(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-212(%ebp), %eax
	jb	.L534
.L535:
	cmpl	$0, -216(%ebp)
	je	.L540
	movl	-216(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-212(%ebp), %eax
	je	.L540
	movl	$0, -208(%ebp)
	movl	$0, -204(%ebp)
	jmp	.L540
.L543:
.LBB51:
	movl	-204(%ebp), %eax
	movl	-216(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -200(%ebp)
	cmpl	$0, -200(%ebp)
	je	.L544
	jmp	.L546
.L547:
.LBB52:
	movl	-208(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -196(%ebp)
	movl	-196(%ebp), %eax
	andl	-200(%ebp), %eax
	testl	%eax, %eax
	je	.L548
	movl	-196(%ebp), %eax
	notl	%eax
	andl	%eax, -200(%ebp)
	movl	-216(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-204(%ebp), %eax
	sall	$5, %eax
	addl	-208(%ebp), %eax
	movl	%eax, -312(%ebp)
.LBB53:
	movl	-312(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -192(%ebp)
	movl	-192(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L550
	movl	-192(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -580(%ebp)
	jmp	.L552
.L550:
	movl	-192(%ebp), %esi
	movl	%esi, -580(%ebp)
.L552:
	movl	-580(%ebp), %edi
	movl	%edi, -188(%ebp)
	movl	-188(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -184(%ebp)
	movl	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	spill_is_free
	testl	%eax, %eax
	jg	.L553
	movl	-192(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L555
	movl	-428(%ebp), %edx
	movl	-424(%ebp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-192(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %eax
	movl	%eax, -424(%ebp)
	movl	-192(%ebp), %edx
	movzbl	49(%edx), %eax
	orl	$2, %eax
	movb	%al, 49(%edx)
.L555:
	movl	-436(%ebp), %edx
	movl	-312(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	movl	-420(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -420(%ebp)
.L553:
.LBE53:
	cmpl	$0, -200(%ebp)
	je	.L544
.L548:
.LBE52:
	addl	$1, -208(%ebp)
.L546:
	cmpl	$31, -208(%ebp)
	jbe	.L547
.L544:
	movl	$0, -208(%ebp)
.LBE51:
	addl	$1, -204(%ebp)
.L542:
	cmpl	$3, -204(%ebp)
	jbe	.L543
	movl	$0, -204(%ebp)
	movl	-216(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
.L540:
	cmpl	$0, -216(%ebp)
	jne	.L542
.LBE50:
	.loc 1 1194 0
	movl	-436(%ebp), %eax
	movl	-440(%ebp), %edx
	movl	-440(%ebp), %ecx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1196 0
	movl	-328(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -324(%ebp)
	.loc 1 1197 0
	movl	-328(%ebp), %eax
	movl	%eax, -320(%ebp)
	.loc 1 1198 0
	movl	-320(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L506
	.loc 1 1199 0
	movl	-320(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_real_insn@PLT
	movl	%eax, -320(%ebp)
.L506:
.LBE45:
	.loc 1 1202 0
	movl	$0, -388(%ebp)
	.loc 1 1203 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L560
	.loc 1 1204 0
	movl	-328(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	(%edx), %eax
	movl	%eax, -360(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -356(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -352(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -348(%ebp)
.L560:
	.loc 1 1206 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L562
	.loc 1 1207 0
	movl	$0, -256(%ebp)
	jmp	.L564
.L565:
.LBB54:
	.loc 1 1209 0
	movl	-352(%ebp), %edx
	movl	-256(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	.loc 1 1210 0
	movl	-180(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	def2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
	.loc 1 1211 0
	movl	-176(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L566
	movl	-176(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -576(%ebp)
	jmp	.L568
.L566:
	movl	-176(%ebp), %eax
	movl	%eax, -576(%ebp)
.L568:
	movl	-576(%ebp), %edx
	movl	%edx, -172(%ebp)
	.loc 1 1212 0
	movl	$0, -168(%ebp)
	.loc 1 1215 0
	movl	-176(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L569
	movl	-176(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -572(%ebp)
	jmp	.L571
.L569:
	movl	-176(%ebp), %ecx
	movl	%ecx, -572(%ebp)
.L571:
	movl	-572(%ebp), %esi
	movl	%esi, -172(%ebp)
	.loc 1 1221 0
	movl	$0, -164(%ebp)
	jmp	.L572
.L573:
.LBB55:
	.loc 1 1223 0
	movl	-348(%ebp), %edx
	movl	-164(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
	.loc 1 1224 0
	movl	-160(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L574
	movl	-160(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -568(%ebp)
	jmp	.L576
.L574:
	movl	-160(%ebp), %edi
	movl	%edi, -568(%ebp)
.L576:
	movl	-568(%ebp), %eax
	cmpl	-172(%ebp), %eax
	jne	.L577
	.loc 1 1226 0
	movl	$1, -168(%ebp)
	.loc 1 1227 0
	jmp	.L579
.L577:
.LBE55:
	.loc 1 1221 0
	addl	$1, -164(%ebp)
.L572:
	movl	-356(%ebp), %eax
	cmpl	-164(%ebp), %eax
	ja	.L573
.L579:
	.loc 1 1230 0
	cmpl	$0, -168(%ebp)
	jne	.L580
	.loc 1 1233 0
	movl	-172(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L582
	movl	-432(%ebp), %edx
	movl	-172(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-172(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L735
	movl	%edi, %esi
	xorl	%edi, %edi
.L735:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	-561(%ebp)
	jmp	.L584
.L582:
	movl	-432(%ebp), %edx
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	is_partly_live_1
	movzbl	%al, %eax
	xorl	$1, %eax
	movb	%al, -561(%ebp)
.L584:
	cmpb	$0, -561(%ebp)
	je	.L585
	.loc 1 1234 0
	movl	-180(%ebp), %eax
	movl	20(%eax), %eax
	movl	useless_defs@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L585:
	.loc 1 1236 0
	movl	-432(%ebp), %edx
	movl	%edx, -560(%ebp)
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -556(%ebp)
	movl	-432(%ebp), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -552(%ebp)
	movl	%edi, -548(%ebp)
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L734
	movl	%eax, %edx
	xorl	%eax, %eax
.L734:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-552(%ebp), %eax
	andl	%esi, %eax
	movl	-548(%ebp), %edx
	andl	%edi, %edx
	movl	-556(%ebp), %edi
	movl	-560(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1237 0
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L587
	.loc 1 1239 0
	movl	-420(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -420(%ebp)
	.loc 1 1240 0
	movl	-176(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
.L587:
	.loc 1 1242 0
	movl	-176(%ebp), %eax
	cmpl	-172(%ebp), %eax
	je	.L589
	.loc 1 1250 0
	movl	-172(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L591
	movl	-432(%ebp), %edx
	movl	-172(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-172(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L733
	movl	%edi, %esi
	xorl	%edi, %edi
.L733:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	-537(%ebp)
	jmp	.L593
.L591:
	movl	-432(%ebp), %edx
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	is_partly_live_1
	movzbl	%al, %eax
	xorl	$1, %eax
	movb	%al, -537(%ebp)
.L593:
	cmpb	$0, -537(%ebp)
	je	.L597
	movl	-172(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L597
	.loc 1 1253 0
	movl	-420(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -420(%ebp)
	.loc 1 1254 0
	movl	-172(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
	jmp	.L597
.L589:
.LBB56:
	.loc 1 1262 0
	movl	-172(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L598
.L599:
	.loc 1 1265 0
	movl	-432(%ebp), %esi
	movl	%esi, -536(%ebp)
	movl	-156(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -532(%ebp)
	movl	-432(%ebp), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -528(%ebp)
	movl	%edi, -524(%ebp)
	movl	-156(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L732
	movl	%eax, %edx
	xorl	%eax, %eax
.L732:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-528(%ebp), %eax
	andl	%esi, %eax
	movl	-524(%ebp), %edx
	andl	%edi, %edx
	movl	-532(%ebp), %edi
	movl	-536(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1266 0
	movl	-156(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L600
	.loc 1 1268 0
	movl	-420(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -420(%ebp)
	.loc 1 1269 0
	movl	-156(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_clear_bit@PLT
.L600:
	.loc 1 1263 0
	movl	-156(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -156(%ebp)
.L598:
	.loc 1 1262 0
	cmpl	$0, -156(%ebp)
	jne	.L599
.L597:
.LBE56:
	.loc 1 1273 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L580
	.loc 1 1274 0
	movl	$0, 8(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	update_spill_colors
.L580:
.LBE54:
	.loc 1 1207 0
	addl	$1, -256(%ebp)
.L564:
	movl	-360(%ebp), %eax
	cmpl	-256(%ebp), %eax
	ja	.L565
.L562:
	.loc 1 1277 0
	movl	-424(%ebp), %eax
	movl	%eax, -332(%ebp)
	.loc 1 1284 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L603
	.loc 1 1285 0
	movl	$1, -388(%ebp)
	jmp	.L605
.L603:
	.loc 1 1286 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L605
	.loc 1 1287 0
	movl	$0, -256(%ebp)
	jmp	.L607
.L608:
.LBB57:
	.loc 1 1289 0
	movl	-348(%ebp), %edx
	movl	-256(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -152(%ebp)
	.loc 1 1290 0
	movl	-152(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L609
	movl	-152(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -516(%ebp)
	jmp	.L611
.L609:
	movl	-152(%ebp), %esi
	movl	%esi, -516(%ebp)
.L611:
	movl	-516(%ebp), %edi
	movl	%edi, -148(%ebp)
	.loc 1 1292 0
	movl	-148(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L612
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-148(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L731
	movl	%edx, %eax
	xorl	%edx, %edx
.L731:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L614
.L612:
	.loc 1 1295 0
	movl	-432(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-148(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L729
	movl	%edi, %esi
	xorl	%edi, %edi
.L729:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	%eax, -144(%ebp)
	.loc 1 1296 0
	movl	-432(%ebp), %edx
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	-152(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L730
	movl	%edi, %esi
	xorl	%edi, %edi
.L730:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	andl	%eax, -144(%ebp)
	.loc 1 1297 0
	cmpl	$0, -144(%ebp)
	je	.L614
	.loc 1 1299 0
	movl	$1, -388(%ebp)
	.loc 1 1300 0
	movl	-328(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1301 0
	jmp	.L605
.L614:
.LBE57:
	.loc 1 1287 0
	addl	$1, -256(%ebp)
.L607:
	movl	-356(%ebp), %eax
	cmpl	-256(%ebp), %eax
	ja	.L608
.L605:
	.loc 1 1305 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L616
	movl	-420(%ebp), %eax
	testl	%eax, %eax
	je	.L616
.LBB58:
	.loc 1 1307 0
	movl	-420(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1308 0
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-356(%ebp), %edx
	movl	-348(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	leal	-440(%ebp), %eax
	movl	%eax, (%esp)
	call	reloads_to_loads
	.loc 1 1318 0
	movl	-420(%ebp), %eax
	testl	%eax, %eax
	je	.L619
	.loc 1 1319 0
	movl	def2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-360(%ebp), %edx
	movl	-352(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	leal	-440(%ebp), %eax
	movl	%eax, (%esp)
	call	reloads_to_loads
.L619:
	.loc 1 1320 0
	movl	-420(%ebp), %eax
	cmpl	-140(%ebp), %eax
	je	.L616
	movl	-388(%ebp), %eax
	testl	%eax, %eax
	jne	.L616
	.loc 1 1321 0
	movl	$1, -388(%ebp)
.L616:
.LBE58:
	.loc 1 1324 0
	movl	-424(%ebp), %eax
	testl	%eax, %eax
	je	.L623
	movl	-388(%ebp), %eax
	testl	%eax, %eax
	jne	.L625
	movl	-392(%ebp), %eax
	testl	%eax, %eax
	je	.L623
.L625:
	.loc 1 1325 0
	movl	-320(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-332(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_loads
.L623:
	.loc 1 1327 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L627
	movl	flag_ra_ir_spilling@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L627
	.loc 1 1328 0
	movl	$0, -256(%ebp)
	jmp	.L630
.L631:
.LBB59:
	.loc 1 1330 0
	movl	-348(%ebp), %edx
	movl	-256(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1331 0
	movl	-136(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L632
	movl	-136(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -512(%ebp)
	jmp	.L634
.L632:
	movl	-136(%ebp), %eax
	movl	%eax, -512(%ebp)
.L634:
	movl	-512(%ebp), %edx
	movl	%edx, (%esp)
	call	alias@PLT
	movl	%eax, -132(%ebp)
	.loc 1 1332 0
	movl	-132(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L635
	.loc 1 1333 0
	movl	$1, 8(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	update_spill_colors
.L635:
.LBE59:
	.loc 1 1328 0
	addl	$1, -256(%ebp)
.L630:
	movl	-356(%ebp), %eax
	cmpl	-256(%ebp), %eax
	ja	.L631
.L627:
	.loc 1 1336 0
	movl	$0, -392(%ebp)
	.loc 1 1337 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L637
	.loc 1 1338 0
	movl	$0, -256(%ebp)
	jmp	.L639
.L640:
.LBB60:
	.loc 1 1340 0
	movl	-348(%ebp), %edx
	movl	-256(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	.loc 1 1341 0
	movl	-128(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L641
	movl	-128(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -508(%ebp)
	jmp	.L643
.L641:
	movl	-128(%ebp), %ecx
	movl	%ecx, -508(%ebp)
.L643:
	movl	-508(%ebp), %esi
	movl	%esi, -124(%ebp)
	.loc 1 1342 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -120(%ebp)
	.loc 1 1343 0
	movl	-432(%ebp), %edi
	movl	%edi, -504(%ebp)
	movl	-128(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -500(%ebp)
	movl	-432(%ebp), %edx
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -496(%ebp)
	movl	%edi, -492(%ebp)
	movl	-128(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L728
	movl	%esi, %edi
	xorl	%esi, %esi
.L728:
	movl	-496(%ebp), %eax
	orl	%esi, %eax
	movl	-492(%ebp), %edx
	orl	%edi, %edx
	movl	-500(%ebp), %edi
	movl	-504(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1344 0
	movl	-120(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L644
	.loc 1 1346 0
	movl	-124(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L646
	.loc 1 1347 0
	movl	$1, -392(%ebp)
.L646:
	.loc 1 1348 0
	movl	-128(%ebp), %edx
	movl	-328(%ebp), %eax
	movl	%eax, 200(%edx)
	.loc 1 1349 0
	movl	-128(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L648
	.loc 1 1351 0
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	spill_is_free
	testl	%eax, %eax
	jle	.L650
	movl	flag_ra_ir_spilling@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L652
.L650:
	.loc 1 1354 0
	movl	-428(%ebp), %edx
	movl	-424(%ebp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-128(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %eax
	movl	%eax, -424(%ebp)
	.loc 1 1355 0
	movl	-128(%ebp), %edx
	movzbl	49(%edx), %eax
	orl	$2, %eax
	movb	%al, 49(%edx)
	.loc 1 1356 0
	movl	-128(%ebp), %edx
	movzbl	49(%edx), %eax
	orl	$4, %eax
	movb	%al, 49(%edx)
	.loc 1 1351 0
	jmp	.L644
.L652:
	.loc 1 1358 0
	movl	-128(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L654
	.loc 1 1360 0
	movl	-128(%ebp), %eax
	movl	(%eax), %eax
	movl	-440(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1361 0
	movl	-420(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -420(%ebp)
	.loc 1 1362 0
	movl	-128(%ebp), %edx
	movzbl	49(%edx), %eax
	orl	$4, %eax
	movb	%al, 49(%edx)
	jmp	.L644
.L654:
	.loc 1 1365 0
	movl	-128(%ebp), %eax
	movzbl	49(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 49(%eax)
	jmp	.L644
.L648:
	.loc 1 1368 0
	movl	-128(%ebp), %eax
	movzbl	49(%eax), %edx
	andl	$-5, %edx
	movb	%dl, 49(%eax)
.L644:
.LBE60:
	.loc 1 1338 0
	addl	$1, -256(%ebp)
.L639:
	movl	-356(%ebp), %eax
	cmpl	-256(%ebp), %eax
	ja	.L640
.L637:
	.loc 1 1371 0
	movl	-328(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L656
.LBE44:
	.loc 1 1159 0
	movl	-328(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -328(%ebp)
.L504:
	cmpl	$0, -328(%ebp)
	jne	.L505
.L656:
	.loc 1 1375 0
	movl	-424(%ebp), %eax
	movl	%eax, -332(%ebp)
	.loc 1 1376 0
	movl	-420(%ebp), %eax
	testl	%eax, %eax
	je	.L658
.LBB61:
	.loc 1 1378 0
	movl	$0, -116(%ebp)
	.loc 1 1380 0
	movl	$0, -108(%ebp)
.LBB62:
	.loc 1 1382 0
	leal	-360(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-104(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-104(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE62:
	.loc 1 1383 0
	movl	-336(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L660
.L661:
.LBB63:
.LBB64:
	.loc 1 1386 0
	leal	-384(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE64:
.LBB65:
	.loc 1 1387 0
	movl	-112(%ebp), %eax
	movl	8(%eax), %eax
	movl	44(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
	jmp	.L662
.L663:
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L662:
	cmpl	$0, -92(%ebp)
	je	.L664
	movl	-92(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-88(%ebp), %eax
	jb	.L663
.L664:
	cmpl	$0, -92(%ebp)
	je	.L669
	movl	-92(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-88(%ebp), %eax
	je	.L669
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
	jmp	.L669
.L672:
.LBB66:
	movl	-80(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -76(%ebp)
	cmpl	$0, -76(%ebp)
	je	.L673
	jmp	.L675
.L676:
.LBB67:
	movl	-84(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	andl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L677
	movl	-72(%ebp), %eax
	notl	%eax
	andl	%eax, -76(%ebp)
	movl	-92(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	sall	$5, %eax
	addl	-84(%ebp), %eax
	movl	%eax, -100(%ebp)
.LBB68:
	movl	-100(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L679
	movl	-68(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -484(%ebp)
	jmp	.L681
.L679:
	movl	-68(%ebp), %esi
	movl	%esi, -484(%ebp)
.L681:
	movl	-484(%ebp), %edi
	movl	%edi, (%esp)
	call	alias@PLT
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L682
	movl	$1, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-384(%ebp), %eax
	movl	%eax, (%esp)
	call	update_spill_colors
.L682:
.LBE68:
	cmpl	$0, -76(%ebp)
	je	.L673
.L677:
.LBE67:
	addl	$1, -84(%ebp)
.L675:
	cmpl	$31, -84(%ebp)
	jbe	.L676
.L673:
	movl	$0, -84(%ebp)
.LBE66:
	addl	$1, -80(%ebp)
.L671:
	cmpl	$3, -80(%ebp)
	jbe	.L672
	movl	$0, -80(%ebp)
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L669:
	cmpl	$0, -92(%ebp)
	jne	.L671
.LBE65:
.LBB69:
	.loc 1 1394 0
	leal	-360(%ebp), %eax
	movl	%eax, -60(%ebp)
	leal	-384(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-60(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -480(%ebp)
	movl	%ecx, -476(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-480(%ebp), %eax
	orl	%esi, %eax
	movl	-476(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-60(%ebp), %ecx
	addl	$8, %ecx
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -472(%ebp)
	movl	%edi, -468(%ebp)
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-472(%ebp), %eax
	orl	%esi, %eax
	movl	-468(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-60(%ebp), %ecx
	addl	$16, %ecx
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -464(%ebp)
	movl	%edi, -460(%ebp)
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-464(%ebp), %eax
	orl	%esi, %eax
	movl	-460(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE69:
.LBE63:
	.loc 1 1383 0
	movl	-112(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -112(%ebp)
	addl	$1, -108(%ebp)
.L660:
	cmpl	$0, -112(%ebp)
	je	.L686
	cmpl	$4, -108(%ebp)
	jle	.L661
.L686:
	.loc 1 1396 0
	cmpl	$5, -108(%ebp)
	jne	.L688
	.loc 1 1397 0
	movl	$1, -116(%ebp)
.L688:
	.loc 1 1399 0
	movl	-436(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
.LBB70:
	.loc 1 1400 0
	movl	-440(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L690
.L691:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L690:
	cmpl	$0, -52(%ebp)
	je	.L692
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-48(%ebp), %eax
	jb	.L691
.L692:
	cmpl	$0, -52(%ebp)
	je	.L697
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-48(%ebp), %eax
	je	.L697
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L697
.L700:
.LBB71:
	movl	-40(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L701
	jmp	.L703
.L704:
.LBB72:
	movl	-44(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	-36(%ebp), %eax
	testl	%eax, %eax
	je	.L705
	movl	-32(%ebp), %eax
	notl	%eax
	andl	%eax, -36(%ebp)
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-40(%ebp), %eax
	sall	$5, %eax
	addl	-44(%ebp), %eax
	movl	%eax, -312(%ebp)
.LBB73:
	movl	-312(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L707
	movl	-28(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -452(%ebp)
	jmp	.L709
.L707:
	movl	-28(%ebp), %edi
	movl	%edi, -452(%ebp)
.L709:
	movl	-452(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -20(%ebp)
	movl	ra_pass@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L710
	movl	-24(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L710
	movl	ra_pass@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L713
	cmpl	$0, -116(%ebp)
	jne	.L710
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	spill_is_free
	testl	%eax, %eax
	jg	.L713
.L710:
	movl	-28(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L716
	movl	-428(%ebp), %edx
	movl	-424(%ebp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	leal	1(%ecx), %eax
	movl	%eax, -424(%ebp)
	movl	-28(%ebp), %edx
	movzbl	49(%edx), %eax
	orl	$2, %eax
	movb	%al, 49(%edx)
.L716:
	movl	-436(%ebp), %edx
	movl	-312(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
	movl	-420(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -420(%ebp)
.L713:
.LBE73:
	cmpl	$0, -36(%ebp)
	je	.L701
.L705:
.LBE72:
	addl	$1, -44(%ebp)
.L703:
	cmpl	$31, -44(%ebp)
	jbe	.L704
.L701:
	movl	$0, -44(%ebp)
.LBE71:
	addl	$1, -40(%ebp)
.L699:
	cmpl	$3, -40(%ebp)
	jbe	.L700
	movl	$0, -40(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L697:
	cmpl	$0, -52(%ebp)
	jne	.L699
.LBE70:
	.loc 1 1422 0
	movl	-436(%ebp), %eax
	movl	-440(%ebp), %edx
	movl	-440(%ebp), %ecx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	bitmap_operation@PLT
.L658:
.LBE61:
	.loc 1 1426 0
	movl	$1, -388(%ebp)
	.loc 1 1427 0
	movl	-320(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-332(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-440(%ebp), %eax
	movl	%eax, (%esp)
	call	emit_loads
	.loc 1 1428 0
	movl	-424(%ebp), %eax
	testl	%eax, %eax
	je	.L720
	.loc 1 1429 0
	leal	__FUNCTION__.12764@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1429, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L720:
	.loc 1 1430 0
	cmpl	$0, -328(%ebp)
	je	.L460
.LBE36:
	.loc 1 1096 0
	movl	-328(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -328(%ebp)
.L452:
	cmpl	$0, -328(%ebp)
	jne	.L453
.L460:
	.loc 1 1433 0
	movl	-428(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1434 0
	movl	-432(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1435 0
	movl	-436(%ebp), %eax
	testl	%eax, %eax
	je	.L723
	movl	-436(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-436(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -436(%ebp)
.L723:
	.loc 1 1436 0
	movl	-440(%ebp), %eax
	testl	%eax, %eax
	je	.L727
	movl	-440(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-440(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -440(%ebp)
.L727:
	.loc 1 1437 0
	addl	$652, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	rewrite_program2, .-rewrite_program2
	.type	mark_refs_for_checking, @function
mark_refs_for_checking:
.LFB35:
	.loc 1 1450 0
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
	subl	$44, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1452 0
	movl	$0, -28(%ebp)
	jmp	.L740
.L741:
.LBB74:
	.loc 1 1454 0
	movl	8(%ebp), %eax
	movl	212(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1455 0
	movl	last_check_uses@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -44(%ebp)
	movl	last_check_uses@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L747
	movl	%esi, %edi
	xorl	%esi, %esi
.L747:
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1456 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1457 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 1458 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, %edx
	addl	-24(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	16(%edx), %eax
	andl	$-2, %eax
	movb	%al, 16(%edx)
.LBE74:
	.loc 1 1452 0
	addl	$1, -28(%ebp)
.L740:
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	-28(%ebp), %eax
	ja	.L741
	.loc 1 1460 0
	movl	$0, -28(%ebp)
	jmp	.L743
.L744:
.LBB75:
	.loc 1 1462 0
	movl	8(%ebp), %eax
	movl	208(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1463 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 1464 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	16(%edx), %eax
	andl	$-2, %eax
	movb	%al, 16(%edx)
.LBE75:
	.loc 1 1460 0
	addl	$1, -28(%ebp)
.L743:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	cmpl	-28(%ebp), %eax
	ja	.L744
	.loc 1 1466 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	mark_refs_for_checking, .-mark_refs_for_checking
	.section	.rodata
.LC2:
	.string	"need to check these uses:\n"
	.text
	.type	detect_web_parts_to_rebuild, @function
detect_web_parts_to_rebuild:
.LFB36:
	.loc 1 1476 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%edi
.LCFI116:
	pushl	%esi
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$156, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1480 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, -72(%ebp)
	.loc 1 1482 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1483 0
	movl	last_check_uses@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L749
	.loc 1 1484 0
	movl	last_check_uses@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L749:
	.loc 1 1485 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, %edx
	movl	last_check_uses@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1486 0
	movl	last_check_uses@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1487 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
	.loc 1 1492 0
	movl	$0, -80(%ebp)
	jmp	.L751
.L752:
	.loc 1 1493 0
	cmpl	$0, -80(%ebp)
	jne	.L753
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L755
.L753:
	movl	web_lists@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -148(%ebp)
.L755:
	movl	-148(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L756
.L757:
.LBB76:
	.loc 1 1495 0
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1499 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L758
	.loc 1 1505 0
	movl	$0, -84(%ebp)
	jmp	.L760
.L761:
.LBB77:
	.loc 1 1507 0
	movl	-68(%ebp), %eax
	movl	212(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1508 0
	movl	last_check_uses@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -140(%ebp)
	movl	last_check_uses@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L817
	movl	%esi, %edi
	xorl	%esi, %esi
.L817:
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	movl	-140(%ebp), %edi
	movl	-144(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1509 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1510 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 1511 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 1512 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, %edx
	addl	-56(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	16(%edx), %eax
	andl	$-2, %eax
	movb	%al, 16(%edx)
.LBE77:
	.loc 1 1505 0
	addl	$1, -84(%ebp)
.L760:
	movl	-68(%ebp), %eax
	movl	60(%eax), %eax
	cmpl	-84(%ebp), %eax
	ja	.L761
	.loc 1 1514 0
	movl	$0, -84(%ebp)
	jmp	.L763
.L764:
.LBB78:
	.loc 1 1516 0
	movl	-68(%ebp), %eax
	movl	208(%eax), %edx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 1517 0
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 1518 0
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	$0, 8(%eax)
	.loc 1 1519 0
	movl	-52(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_parts@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movzbl	16(%edx), %eax
	andl	$-2, %eax
	movb	%al, 16(%edx)
.LBE78:
	.loc 1 1514 0
	addl	$1, -84(%ebp)
.L763:
	movl	-68(%ebp), %eax
	movl	64(%eax), %eax
	cmpl	-84(%ebp), %eax
	ja	.L764
	.loc 1 1523 0
	movl	-68(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L766
	.loc 1 1524 0
	movl	-68(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L769
.L766:
	.loc 1 1526 0
	movl	-68(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1527 0
	jmp	.L769
.L770:
	.loc 1 1529 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L816
	movl	%edi, %esi
	xorl	%edi, %edi
.L816:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L771
	.loc 1 1531 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -124(%ebp)
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L815
	movl	%esi, %edi
	xorl	%esi, %esi
.L815:
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	-72(%ebp), %ecx
	movl	-124(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 1532 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mark_refs_for_checking
.L771:
	.loc 1 1527 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L769:
	cmpl	$0, -64(%ebp)
	jne	.L770
.LBB79:
	.loc 1 1534 0
	movl	-68(%ebp), %eax
	movl	88(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L774
.L775:
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L774:
	cmpl	$0, -48(%ebp)
	je	.L776
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-44(%ebp), %eax
	jb	.L775
.L776:
	cmpl	$0, -48(%ebp)
	je	.L781
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L781
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L781
.L784:
.LBB80:
	movl	-36(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L785
	jmp	.L787
.L788:
.LBB81:
	movl	-40(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	andl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L789
	movl	-28(%ebp), %eax
	notl	%eax
	andl	%eax, -32(%ebp)
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	sall	$5, %eax
	addl	-40(%ebp), %eax
	movl	%eax, -60(%ebp)
.LBB82:
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L814
	movl	%edi, %esi
	xorl	%edi, %edi
.L814:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L789
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -108(%ebp)
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	12(%eax,%edx,8), %esi
	movl	16(%eax,%edx,8), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L813
	movl	%esi, %edi
	xorl	%esi, %esi
.L813:
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	-72(%ebp), %ecx
	movl	-108(%ebp), %edi
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	movl	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_refs_for_checking
.LBE82:
	cmpl	$0, -32(%ebp)
	je	.L785
.L789:
.LBE81:
	addl	$1, -40(%ebp)
.L787:
	cmpl	$31, -40(%ebp)
	jbe	.L788
.L785:
	movl	$0, -40(%ebp)
.LBE80:
	addl	$1, -36(%ebp)
.L783:
	cmpl	$3, -36(%ebp)
	jbe	.L784
	movl	$0, -36(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L781:
	cmpl	$0, -48(%ebp)
	jne	.L783
.L758:
.LBE79:
.LBE76:
	.loc 1 1493 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -76(%ebp)
.L756:
	cmpl	$0, -76(%ebp)
	jne	.L757
	.loc 1 1492 0
	addl	$1, -80(%ebp)
.L751:
	cmpl	$1, -80(%ebp)
	jbe	.L752
	.loc 1 1552 0
	movl	$0, -84(%ebp)
	jmp	.L795
.L796:
	.loc 1 1553 0
	movl	-84(%ebp), %eax
	movl	fixed_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	jne	.L797
.LBB83:
	.loc 1 1556 0
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	20(%eax), %ecx
	movl	-84(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L799
.L800:
	.loc 1 1557 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L801
	.loc 1 1558 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L801:
	.loc 1 1556 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L799:
	cmpl	$0, -20(%ebp)
	jne	.L800
.L797:
.LBE83:
	.loc 1 1552 0
	addl	$1, -84(%ebp)
.L795:
	cmpl	$175, -84(%ebp)
	jbe	.L796
	.loc 1 1564 0
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-8(%eax), %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1565 0
	movl	$0, -84(%ebp)
	jmp	.L804
.L805:
	.loc 1 1566 0
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	$1, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1565 0
	addl	$1, -84(%ebp)
.L804:
	movl	last_basic_block@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	cmpl	-84(%ebp), %eax
	ja	.L805
	.loc 1 1568 0
	movl	live_at_end@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	8(%eax), %edx
	movl	live_at_end@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1570 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L807
	movl	debug_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L807
	.loc 1 1572 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$32768, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1573 0
	movl	last_check_uses@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dump_sbitmap_file@PLT
.L807:
	.loc 1 1575 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1576 0
	cmpl	$0, -88(%ebp)
	je	.L812
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -88(%ebp)
.L812:
	.loc 1 1577 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	detect_web_parts_to_rebuild, .-detect_web_parts_to_rebuild
	.type	delete_useless_defs, @function
delete_useless_defs:
.LFB37:
	.loc 1 1588 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%edi
.LCFI122:
	pushl	%esi
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$76, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB84:
	.loc 1 1593 0
	movl	useless_defs@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L819
.L820:
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L819:
	cmpl	$0, -48(%ebp)
	je	.L821
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-44(%ebp), %eax
	jb	.L820
.L821:
	cmpl	$0, -48(%ebp)
	je	.L826
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-44(%ebp), %eax
	je	.L826
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L826
.L829:
.LBB85:
	movl	-36(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L830
	jmp	.L832
.L833:
.LBB86:
	movl	-40(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	andl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L834
	movl	-28(%ebp), %eax
	notl	%eax
	andl	%eax, -32(%ebp)
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	sall	$5, %eax
	addl	-40(%ebp), %eax
	movl	%eax, -52(%ebp)
.LBB87:
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L836
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L838
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L840
.L838:
	movl	-24(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	single_set_2@PLT
	movl	%eax, -68(%ebp)
.L840:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L841
.L836:
	movl	$0, -72(%ebp)
.L841:
	movl	-72(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	def2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L842
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	def2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -64(%ebp)
	jmp	.L844
.L842:
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	def2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
.L844:
	movl	-64(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L845
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L845
	movl	-16(%ebp), %eax
	movl	196(%eax), %eax
	testl	%eax, %eax
	jne	.L845
	movl	deleted_def_insns@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, deleted_def_insns@GOTOFF(%ebx)
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	movl	72(%eax), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	deleted_def_cost@GOTOFF(%ebx), %eax
	movl	4+deleted_def_cost@GOTOFF(%ebx), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, deleted_def_cost@GOTOFF(%ebx)
	movl	%edx, 4+deleted_def_cost@GOTOFF(%ebx)
	movl	-24(%ebp), %eax
	movw	$47, (%eax)
	movl	-24(%ebp), %eax
	movl	$-99, 44(%eax)
	movl	-24(%ebp), %eax
	movl	28(%eax), %edx
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	df_insn_modify@PLT
.L845:
.LBE87:
	cmpl	$0, -32(%ebp)
	je	.L830
.L834:
.LBE86:
	addl	$1, -40(%ebp)
.L832:
	cmpl	$31, -40(%ebp)
	jbe	.L833
.L830:
	movl	$0, -40(%ebp)
.LBE85:
	addl	$1, -36(%ebp)
.L828:
	cmpl	$3, -36(%ebp)
	jbe	.L829
	movl	$0, -36(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L826:
	cmpl	$0, -48(%ebp)
	jne	.L828
.LBE84:
	.loc 1 1607 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	delete_useless_defs, .-delete_useless_defs
	.section	.rodata
	.align 4
.LC3:
	.string	"no insns emitted for spilled web %d\n"
	.text
	.type	detect_non_changed_webs, @function
detect_non_changed_webs:
.LFB38:
	.loc 1 1616 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%ebx
.LCFI128:
	subl	$36, %esp
.LCFI129:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1618 0
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L853
.L854:
.LBB88:
	.loc 1 1620 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1621 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1622 0
	movl	-8(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L855
	.loc 1 1624 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1626 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_web_from_list@PLT
	.loc 1 1627 0
	movl	$11, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1628 0
	movl	-8(%ebp), %edx
	movzbl	49(%edx), %eax
	orl	$8, %eax
	movb	%al, 49(%edx)
	jmp	.L857
.L855:
	.loc 1 1631 0
	movl	-8(%ebp), %eax
	movzbl	49(%eax), %edx
	andl	$-9, %edx
	movb	%dl, 49(%eax)
.L857:
.LBE88:
	.loc 1 1618 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L853:
	cmpl	$0, -16(%ebp)
	jne	.L854
	.loc 1 1636 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	detect_non_changed_webs, .-detect_non_changed_webs
	.type	reset_changed_flag, @function
reset_changed_flag:
.LFB39:
	.loc 1 1642 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	subl	$16, %esp
.LCFI132:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1644 0
	movl	web_lists@GOT(%ecx), %eax
	movl	36(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L861
.L862:
	.loc 1 1645 0
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movzbl	49(%edx), %eax
	andl	$-9, %eax
	movb	%al, 49(%edx)
	.loc 1 1644 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.L861:
	cmpl	$0, -4(%ebp)
	jne	.L862
	.loc 1 1646 0
	leave
	ret
.LFE39:
	.size	reset_changed_flag, .-reset_changed_flag
.globl actual_spill
	.type	actual_spill, @function
actual_spill:
.LFB40:
	.loc 1 1655 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%edi
.LCFI135:
	pushl	%esi
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$60, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1657 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1658 0
	call	reset_changed_flag
	.loc 1 1659 0
	call	spill_coalprop
	.loc 1 1660 0
	call	choose_spill_colors
	.loc 1 1661 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, useless_defs@GOTOFF(%ebx)
	.loc 1 1662 0
	movl	flag_ra_improved_spilling@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L866
	.loc 1 1663 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	rewrite_program2
	jmp	.L868
.L866:
	.loc 1 1665 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	rewrite_program
.L868:
	.loc 1 1666 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	insert_stores
	.loc 1 1667 0
	call	delete_useless_defs
	.loc 1 1668 0
	movl	useless_defs@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L869
	movl	useless_defs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	useless_defs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, useless_defs@GOTOFF(%ebx)
.L869:
	.loc 1 1669 0
	movl	insns_with_deaths@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1670 0
	call	get_max_uid@PLT
	movl	%eax, (%esp)
	call	sbitmap_alloc@PLT
	movl	%eax, %edx
	movl	insns_with_deaths@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1671 0
	call	get_max_uid@PLT
	movl	%eax, %edx
	movl	death_insns_max_uid@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1672 0
	movl	insns_with_deaths@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	sbitmap_zero@PLT
.LBB89:
	.loc 1 1673 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L871
.L872:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L871:
	cmpl	$0, -40(%ebp)
	je	.L873
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	jb	.L872
.L873:
	cmpl	$0, -40(%ebp)
	je	.L878
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-36(%ebp), %eax
	je	.L878
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	jmp	.L878
.L881:
.LBB90:
	movl	-28(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L882
	jmp	.L884
.L885:
.LBB91:
	movl	-32(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	andl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L886
	movl	-20(%ebp), %eax
	notl	%eax
	andl	%eax, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	sall	$5, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	insns_with_deaths@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -60(%ebp)
	movl	insns_with_deaths@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-48(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L893
	movl	%esi, %edi
	xorl	%esi, %esi
.L893:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	cmpl	$0, -24(%ebp)
	je	.L882
.L886:
.LBE91:
	addl	$1, -32(%ebp)
.L884:
	cmpl	$31, -32(%ebp)
	jbe	.L885
.L882:
	movl	$0, -32(%ebp)
.LBE90:
	addl	$1, -28(%ebp)
.L880:
	cmpl	$3, -28(%ebp)
	jbe	.L881
	movl	$0, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L878:
	cmpl	$0, -40(%ebp)
	jne	.L880
.LBE89:
	.loc 1 1675 0
	call	detect_non_changed_webs
	.loc 1 1676 0
	call	detect_web_parts_to_rebuild
	.loc 1 1677 0
	cmpl	$0, -44(%ebp)
	je	.L892
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -44(%ebp)
.L892:
	.loc 1 1678 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE40:
	.size	actual_spill, .-actual_spill
	.section	.rodata
	.type	__FUNCTION__.14071, @object
	.size	__FUNCTION__.14071, 12
__FUNCTION__.14071:
	.string	"emit_colors"
	.align 4
.LC4:
	.string	"Renumber pseudo %d (== web %d) to %d\n"
	.text
.globl emit_colors
	.type	emit_colors, @function
emit_colors:
.LFB41:
	.loc 1 1691 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%edi
.LCFI141:
	pushl	%esi
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$108, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1695 0
	call	max_reg_num@PLT
	movl	%eax, -56(%ebp)
	.loc 1 1701 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, regnos_coalesced_to_hardregs@GOTOFF(%ebx)
	.loc 1 1705 0
	movl	$0, -68(%ebp)
	jmp	.L895
.L896:
	.loc 1 1707 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1708 0
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L897
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L899
.L897:
	.loc 1 1710 0
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L900
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L899
.L900:
	.loc 1 1712 0
	movl	-60(%ebp), %eax
	movl	192(%eax), %eax
	testl	%eax, %eax
	jne	.L902
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	ja	.L904
.L902:
	.loc 1 1713 0
	leal	__FUNCTION__.14071@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1713, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L904:
	.loc 1 1715 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L905
.LBB92:
	.loc 1 1718 0
	movl	-60(%ebp), %eax
	movl	40(%eax), %edx
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L907
.LBB93:
	.loc 1 1720 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 1721 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1722 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L909
	movl	$0, -100(%ebp)
	jmp	.L911
.L909:
	movl	$-1, -100(%ebp)
.L911:
	movl	-36(%ebp), %esi
	movl	$0, %edi
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-100(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	call	assign_stack_local@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1725 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	3(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-44(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	3(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 3(%ecx)
	.loc 1 1727 0
	call	new_alias_set@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	set_mem_alias_set@PLT
	jmp	.L912
.L907:
.LBE93:
	.loc 1 1731 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, -44(%ebp)
.L912:
	.loc 1 1733 0
	movl	-60(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 192(%edx)
	jmp	.L899
.L905:
.LBE92:
	.loc 1 1740 0
	movl	-60(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L913
	movl	-60(%ebp), %eax
	movl	64(%eax), %eax
	cmpl	$1, %eax
	jne	.L913
	.loc 1 1741 0
	movl	-60(%ebp), %eax
	movl	208(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L916
	movl	-60(%ebp), %eax
	movl	208(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L918
.L916:
	movl	-60(%ebp), %eax
	movl	208(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
.L918:
	movl	-96(%ebp), %ecx
	movzbl	2(%ecx), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 192(%eax)
	.loc 1 1740 0
	jmp	.L919
.L913:
	.loc 1 1743 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	gen_reg_rtx@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	%edx, 192(%eax)
.L919:
	.loc 1 1745 0
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L899
	.loc 1 1746 0
	movl	-60(%ebp), %eax
	movl	192(%eax), %eax
	movl	4(%eax), %eax
	movl	regnos_coalesced_to_hardregs@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_set_bit@PLT
.L899:
	.loc 1 1705 0
	addl	$1, -68(%ebp)
.L895:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	num_subwebs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-68(%ebp), %eax
	ja	.L896
	.loc 1 1749 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	max_regno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	ra_max_regno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1750 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
	.loc 1 1751 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1752 0
	movl	$0, -64(%ebp)
	jmp	.L922
.L923:
	.loc 1 1753 0
	movl	-64(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movw	$-1, (%eax)
	.loc 1 1752 0
	addl	$1, -64(%ebp)
.L922:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -64(%ebp)
	jl	.L923
	.loc 1 1769 0
	movl	$0, -68(%ebp)
	jmp	.L925
.L926:
	.loc 1 1770 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L927
.LBB94:
	.loc 1 1772 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1774 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1775 0
	movl	-60(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L929
	movl	-60(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -92(%ebp)
	jmp	.L931
.L929:
	movl	-60(%ebp), %eax
	movl	%eax, -92(%ebp)
.L931:
	movl	-92(%ebp), %edx
	movl	%edx, -60(%ebp)
	.loc 1 1776 0
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L932
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L927
.L932:
	.loc 1 1778 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	192(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1779 0
	cmpl	$0, -28(%ebp)
	jne	.L934
	.loc 1 1780 0
	movl	-60(%ebp), %eax
	movl	192(%eax), %eax
	movl	%eax, -28(%ebp)
.L934:
	.loc 1 1781 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L936
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -88(%ebp)
	jmp	.L938
.L936:
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -88(%ebp)
.L938:
	movl	-28(%ebp), %eax
	movl	-88(%ebp), %ecx
	movl	%eax, (%ecx)
	.loc 1 1782 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L927
	movl	-28(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L927
	.loc 1 1785 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L927:
.LBE94:
	.loc 1 1769 0
	addl	$1, -68(%ebp)
.L925:
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	cmpl	-68(%ebp), %eax
	ja	.L926
	.loc 1 1790 0
	movl	$0, -68(%ebp)
	jmp	.L942
.L943:
.LBB95:
	.loc 1 1794 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L944
	.loc 1 1796 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	32(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1797 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	def2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1798 0
	movl	-60(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L946
	movl	-60(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -84(%ebp)
	jmp	.L948
.L946:
	movl	-60(%ebp), %eax
	movl	%eax, -84(%ebp)
.L948:
	movl	-84(%ebp), %edx
	movl	%edx, -60(%ebp)
	.loc 1 1799 0
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L949
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L944
.L949:
	.loc 1 1801 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	192(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1802 0
	cmpl	$0, -20(%ebp)
	jne	.L951
	.loc 1 1803 0
	movl	-60(%ebp), %eax
	movl	192(%eax), %eax
	movl	%eax, -20(%ebp)
.L951:
	.loc 1 1804 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L953
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -80(%ebp)
	jmp	.L955
.L953:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-68(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -80(%ebp)
.L955:
	movl	-20(%ebp), %eax
	movl	-80(%ebp), %ecx
	movl	%eax, (%ecx)
	.loc 1 1805 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L944
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L944
	.loc 1 1810 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
.L944:
.LBE95:
	.loc 1 1790 0
	addl	$1, -68(%ebp)
.L942:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	cmpl	-68(%ebp), %eax
	ja	.L943
	.loc 1 1816 0
	movl	$0, -68(%ebp)
	jmp	.L959
.L960:
	.loc 1 1818 0
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1819 0
	movl	-60(%ebp), %eax
	movl	192(%eax), %eax
	testl	%eax, %eax
	je	.L961
	movl	-60(%ebp), %eax
	movl	192(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L961
.LBB96:
	.loc 1 1821 0
	movl	-60(%ebp), %eax
	movl	192(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1822 0
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	movw	%ax, (%edx)
	.loc 1 1823 0
	movl	-16(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	movswl	%ax,%edx
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
.L961:
.LBE96:
	.loc 1 1816 0
	addl	$1, -68(%ebp)
.L959:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	num_subwebs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-68(%ebp), %eax
	ja	.L960
	.loc 1 1828 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1829 0
	movl	$176, -64(%ebp)
	jmp	.L965
.L966:
	.loc 1 1830 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 1829 0
	addl	$1, -64(%ebp)
.L965:
	movl	-64(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L966
	.loc 1 1831 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L968
.L969:
	.loc 1 1833 0
	movl	-48(%ebp), %eax
	movl	32(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	32(%eax), %edx
	movl	$1, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1834 0
	movl	-48(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	36(%eax), %edx
	movl	$1, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_operation@PLT
	.loc 1 1831 0
	movl	-48(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -48(%ebp)
.L968:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -48(%ebp)
	jne	.L969
	.loc 1 1836 0
	cmpl	$0, -52(%ebp)
	je	.L973
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -52(%ebp)
.L973:
	.loc 1 1837 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	emit_colors, .-emit_colors
.globl delete_moves
	.type	delete_moves, @function
delete_moves:
.LFB42:
	.loc 1 1843 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%edi
.LCFI147:
	pushl	%esi
.LCFI148:
	pushl	%ebx
.LCFI149:
	subl	$28, %esp
.LCFI150:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1871 0
	movl	wl_moves@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L975
.L976:
	.loc 1 1875 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L977
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	192(%eax), %esi
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	192(%eax), %eax
	cmpl	%eax, %esi
	jne	.L977
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L977
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L977
.LBB97:
	.loc 1 1880 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1881 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	df@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	df_insn_delete@PLT
	.loc 1 1882 0
	movl	deleted_move_insns@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, deleted_move_insns@GOTOFF(%ebx)
	.loc 1 1883 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	deleted_move_cost@GOTOFF(%ebx), %eax
	movl	4+deleted_move_cost@GOTOFF(%ebx), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, deleted_move_cost@GOTOFF(%ebx)
	movl	%edx, 4+deleted_move_cost@GOTOFF(%ebx)
.L977:
.LBE97:
	.loc 1 1871 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L975:
	cmpl	$0, -28(%ebp)
	jne	.L976
	.loc 1 1885 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	delete_moves, .-delete_moves
.globl remove_suspicious_death_notes
	.type	remove_suspicious_death_notes, @function
remove_suspicious_death_notes:
.LFB43:
	.loc 1 1901 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$36, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1903 0
	call	get_insns@PLT
	movl	%eax, -16(%ebp)
	jmp	.L985
.L986:
	.loc 1 1904 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L987
.LBB98:
	.loc 1 1906 0
	movl	-16(%ebp), %eax
	addl	$68, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1907 0
	jmp	.L1000
.L990:
.LBB99:
	.loc 1 1909 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1910 0
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	je	.L991
	movl	-8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$10, %al
	jne	.L993
.L991:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L993
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	regnos_coalesced_to_hardregs@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	je	.L993
	.loc 1 1915 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1910 0
	jmp	.L989
.L993:
	.loc 1 1917 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	%eax, -12(%ebp)
.L989:
.L1000:
.LBE99:
	.loc 1 1907 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L990
.L987:
.LBE98:
	.loc 1 1903 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L985:
	cmpl	$0, -16(%ebp)
	jne	.L986
	.loc 1 1920 0
	movl	regnos_coalesced_to_hardregs@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L997
	movl	regnos_coalesced_to_hardregs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	regnos_coalesced_to_hardregs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, regnos_coalesced_to_hardregs@GOTOFF(%ebx)
.L997:
	.loc 1 1921 0
	movl	$0, regnos_coalesced_to_hardregs@GOTOFF(%ebx)
	.loc 1 1922 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	remove_suspicious_death_notes, .-remove_suspicious_death_notes
.globl setup_renumber
	.type	setup_renumber, @function
setup_renumber:
.LFB44:
	.loc 1 1931 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$36, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1933 0
	call	max_reg_num@PLT
	movl	%eax, %edx
	movl	max_regno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1934 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
	.loc 1 1935 0
	movl	$0, -8(%ebp)
	jmp	.L1002
.L1003:
	.loc 1 1937 0
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	%edx, -28(%ebp)
	movl	ra_max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jge	.L1004
	movl	-8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	movw	%ax, -22(%ebp)
	jmp	.L1006
.L1004:
	movw	$-1, -22(%ebp)
.L1006:
	movzwl	-22(%ebp), %edx
	movl	-28(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 1935 0
	addl	$1, -8(%ebp)
.L1002:
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	.L1003
	.loc 1 1939 0
	cmpl	$0, 8(%ebp)
	je	.L1010
	.loc 1 1941 0
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1942 0
	movl	ra_reg_renumber@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1943 0
	movl	ra_max_regno@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1010:
	.loc 1 1945 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	setup_renumber, .-setup_renumber
	.section	.rodata
	.align 4
.LC5:
	.string	"Instructions for spilling\n added:\n"
.LC6:
	.string	"  loads =%d cost="
.LC7:
	.string	"%llu"
.LC8:
	.string	"\n  stores=%d cost="
.LC9:
	.string	"\n  remat =%d cost="
.LC10:
	.string	"\n removed:\n  moves =%d cost="
.LC11:
	.string	"\n  others=%d cost="
.LC12:
	.string	"\n"
	.text
.globl dump_cost
	.type	dump_cost, @function
dump_cost:
.LFB45:
	.loc 1 1953 0
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
	.loc 1 1954 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1955 0
	movl	emitted_spill_loads@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1956 0
	movl	spill_load_cost@GOTOFF(%ebx), %eax
	movl	4+spill_load_cost@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1957 0
	movl	emitted_spill_stores@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1958 0
	movl	spill_store_cost@GOTOFF(%ebx), %eax
	movl	4+spill_store_cost@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1959 0
	movl	emitted_remat@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1960 0
	movl	spill_remat_cost@GOTOFF(%ebx), %eax
	movl	4+spill_remat_cost@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1961 0
	movl	deleted_move_insns@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1962 0
	movl	deleted_move_cost@GOTOFF(%ebx), %eax
	movl	4+deleted_move_cost@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1963 0
	movl	deleted_def_insns@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1964 0
	movl	deleted_def_cost@GOTOFF(%ebx), %eax
	movl	4+deleted_def_cost@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1965 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1966 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	dump_cost, .-dump_cost
.globl ra_rewrite_init
	.type	ra_rewrite_init, @function
ra_rewrite_init:
.LFB46:
	.loc 1 1972 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1973 0
	movl	$0, emitted_spill_loads@GOTOFF(%ecx)
	.loc 1 1974 0
	movl	$0, emitted_spill_stores@GOTOFF(%ecx)
	.loc 1 1975 0
	movl	$0, emitted_remat@GOTOFF(%ecx)
	.loc 1 1976 0
	movl	$0, spill_load_cost@GOTOFF(%ecx)
	movl	$0, 4+spill_load_cost@GOTOFF(%ecx)
	.loc 1 1977 0
	movl	$0, spill_store_cost@GOTOFF(%ecx)
	movl	$0, 4+spill_store_cost@GOTOFF(%ecx)
	.loc 1 1978 0
	movl	$0, spill_remat_cost@GOTOFF(%ecx)
	movl	$0, 4+spill_remat_cost@GOTOFF(%ecx)
	.loc 1 1979 0
	movl	$0, deleted_move_insns@GOTOFF(%ecx)
	.loc 1 1980 0
	movl	$0, deleted_move_cost@GOTOFF(%ecx)
	movl	$0, 4+deleted_move_cost@GOTOFF(%ecx)
	.loc 1 1981 0
	movl	$0, deleted_def_insns@GOTOFF(%ecx)
	.loc 1 1982 0
	movl	$0, deleted_def_cost@GOTOFF(%ecx)
	movl	$0, 4+deleted_def_cost@GOTOFF(%ecx)
	.loc 1 1983 0
	popl	%ebp
	ret
.LFE46:
	.size	ra_rewrite_init, .-ra_rewrite_init
	.local	deleted_move_insns
	.comm	deleted_move_insns,4,4
	.local	deleted_move_cost
	.comm	deleted_move_cost,8,8
	.local	emitted_spill_loads
	.comm	emitted_spill_loads,4,4
	.local	emitted_spill_stores
	.comm	emitted_spill_stores,4,4
	.local	emitted_remat
	.comm	emitted_remat,4,4
	.local	spill_load_cost
	.comm	spill_load_cost,8,8
	.local	spill_store_cost
	.comm	spill_store_cost,8,8
	.local	spill_remat_cost
	.comm	spill_remat_cost,8,8
	.local	useless_defs
	.comm	useless_defs,4,4
	.local	deleted_def_insns
	.comm	deleted_def_insns,4,4
	.local	deleted_def_cost
	.comm	deleted_def_cost,8,8
	.local	regnos_coalesced_to_hardregs
	.comm	regnos_coalesced_to_hardregs,4,4
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
	.long	.LCFI33-.LCFI31
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
	.long	.LCFI34-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI40-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI41
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI59-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI60
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
	.long	.LCFI63-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI69-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI73-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI77-.LCFI74
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
	.long	.LCFI78-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI84-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI89-.LCFI85
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
	.long	.LCFI90-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI91
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
	.long	.LCFI96-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI101-.LCFI97
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
	.long	.LCFI102-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI107-.LCFI103
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
	.long	.LCFI108-.LFB35
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI114-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI119-.LCFI115
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
	.long	.LCFI120-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI121
	.byte	0x83
	.uleb128 0x5
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
	.long	.LCFI126-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI129-.LCFI127
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
	.long	.LCFI130-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI131-.LCFI130
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
	.long	.LCFI133-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI138-.LCFI134
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
	.long	.LCFI139-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI140
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
	.long	.LCFI145-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI150-.LCFI146
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
	.long	.LCFI151-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI154-.LCFI152
	.byte	0x83
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
	.long	.LCFI155-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI158-.LCFI156
	.byte	0x83
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
	.long	.LCFI159-.LFB45
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
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI163-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE62:
	.file 2 "../../../kg++fe/gnu/sbitmap.h"
	.file 3 "../../../kg++fe/gnu/ra.h"
	.file 4 "../../../kg++fe/gnu/MIPS/config.h"
	.file 5 "../../../kg++fe/gnu/rtl.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/bitmap.h"
	.file 8 "../../../kg++fe/gnu/basic-block.h"
	.file 9 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 10 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 11 "../../../kg++fe/gnu/df.h"
	.file 12 "../../../kg++fe/gnu/function.h"
	.file 13 "../../../kg++fe/gnu/regs.h"
	.file 14 "../../../kg++fe/gnu/output.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI59-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI60-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI90-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI91-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI130-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI131-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI133-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI134-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI151-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI152-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI155-.Ltext0
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI156-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x5cef
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/ra-rewrite.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xaa
	.uleb128 0x3
	.byte	0x4
	.long	0xb0
	.uleb128 0x4
	.long	0x1a0
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x5
	.byte	0x84
	.long	0xc52
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x5
	.byte	0x87
	.long	0xa09
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x5
	.byte	0x8e
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x5
	.byte	0x91
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x5
	.byte	0x99
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x5
	.byte	0xa2
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x5
	.byte	0xb4
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x5
	.byte	0xbb
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x5
	.byte	0xc0
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x5
	.byte	0xc9
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x5
	.byte	0xce
	.long	0x186f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1ad
	.uleb128 0x3
	.byte	0x4
	.long	0x1b3
	.uleb128 0x4
	.long	0x1e8
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x5
	.byte	0xf2
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x5
	.byte	0xf3
	.long	0x187f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1f4
	.uleb128 0x3
	.byte	0x4
	.long	0x1fa
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x8
	.long	0x386
	.string	"processor_type"
	.byte	0x4
	.byte	0x9
	.byte	0x3b
	.uleb128 0x9
	.string	"PROCESSOR_DEFAULT"
	.sleb128 0
	.uleb128 0x9
	.string	"PROCESSOR_R3000"
	.sleb128 1
	.uleb128 0x9
	.string	"PROCESSOR_R3900"
	.sleb128 2
	.uleb128 0x9
	.string	"PROCESSOR_R6000"
	.sleb128 3
	.uleb128 0x9
	.string	"PROCESSOR_R4000"
	.sleb128 4
	.uleb128 0x9
	.string	"PROCESSOR_R4100"
	.sleb128 5
	.uleb128 0x9
	.string	"PROCESSOR_R4111"
	.sleb128 6
	.uleb128 0x9
	.string	"PROCESSOR_R4120"
	.sleb128 7
	.uleb128 0x9
	.string	"PROCESSOR_R4300"
	.sleb128 8
	.uleb128 0x9
	.string	"PROCESSOR_R4600"
	.sleb128 9
	.uleb128 0x9
	.string	"PROCESSOR_R4650"
	.sleb128 10
	.uleb128 0x9
	.string	"PROCESSOR_R5000"
	.sleb128 11
	.uleb128 0x9
	.string	"PROCESSOR_R5400"
	.sleb128 12
	.uleb128 0x9
	.string	"PROCESSOR_R5500"
	.sleb128 13
	.uleb128 0x9
	.string	"PROCESSOR_R8000"
	.sleb128 14
	.uleb128 0x9
	.string	"PROCESSOR_R4KC"
	.sleb128 15
	.uleb128 0x9
	.string	"PROCESSOR_R5KC"
	.sleb128 16
	.uleb128 0x9
	.string	"PROCESSOR_R20KC"
	.sleb128 17
	.uleb128 0x9
	.string	"PROCESSOR_SR71000"
	.sleb128 18
	.uleb128 0x9
	.string	"PROCESSOR_SB1"
	.sleb128 19
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x38c
	.uleb128 0xa
	.long	0x391
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x516
	.string	"reg_class"
	.byte	0x4
	.byte	0x9
	.value	0x7ec
	.uleb128 0x9
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0x9
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0x9
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0x9
	.string	"T_REG"
	.sleb128 3
	.uleb128 0x9
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0x9
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0x9
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0x9
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0x9
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0x9
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0x9
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0x9
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0x9
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0x9
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0x9
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0x9
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0x9
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0x9
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0x9
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0x9
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0x9
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0x9
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0x9
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0x9
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0x9
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0x9
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xd
	.long	0x5e8
	.string	"mips_args"
	.byte	0x40
	.byte	0x9
	.value	0xaaa
	.uleb128 0xe
	.string	"gp_reg_found"
	.byte	0x9
	.value	0xaad
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg_number"
	.byte	0x9
	.value	0xab0
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"num_gprs"
	.byte	0x9
	.value	0xab5
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"num_fprs"
	.byte	0x9
	.value	0xab8
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"stack_words"
	.byte	0x9
	.value	0xabb
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fp_code"
	.byte	0x9
	.value	0xac8
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"prototype"
	.byte	0x9
	.value	0xacb
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"num_adjusts"
	.byte	0x9
	.value	0xad3
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"adjust"
	.byte	0x9
	.value	0xad4
	.long	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xf
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x10
	.long	0x5ff
	.long	0x9f
	.uleb128 0x11
	.long	0x5ff
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.string	"CUMULATIVE_ARGS"
	.byte	0x9
	.value	0xad5
	.long	0x516
	.uleb128 0x2
	.string	"size_t"
	.byte	0x12
	.byte	0xd6
	.long	0x5e8
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
	.long	0x684
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x11
	.byte	0x90
	.long	0x6ce
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x11
	.byte	0x91
	.long	0x6af
	.uleb128 0x13
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x391
	.uleb128 0x2
	.string	"FILE"
	.byte	0xf
	.byte	0x2e
	.long	0x6ff
	.uleb128 0x14
	.long	0x97a
	.long	.LASF1
	.byte	0x94
	.byte	0xf
	.byte	0x2e
	.uleb128 0xe
	.string	"_flags"
	.byte	0x10
	.value	0x10c
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_IO_read_ptr"
	.byte	0x10
	.value	0x111
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_IO_read_end"
	.byte	0x10
	.value	0x112
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"_IO_read_base"
	.byte	0x10
	.value	0x113
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"_IO_write_base"
	.byte	0x10
	.value	0x114
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_IO_write_ptr"
	.byte	0x10
	.value	0x115
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"_IO_write_end"
	.byte	0x10
	.value	0x116
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"_IO_buf_base"
	.byte	0x10
	.value	0x117
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"_IO_buf_end"
	.byte	0x10
	.value	0x118
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"_IO_save_base"
	.byte	0x10
	.value	0x11a
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"_IO_backup_base"
	.byte	0x10
	.value	0x11b
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"_IO_save_end"
	.byte	0x10
	.value	0x11c
	.long	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_markers"
	.byte	0x10
	.value	0x11e
	.long	0x9d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_chain"
	.byte	0x10
	.value	0x120
	.long	0x9d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"_fileno"
	.byte	0x10
	.value	0x122
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_flags2"
	.byte	0x10
	.value	0x126
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"_old_offset"
	.byte	0x10
	.value	0x128
	.long	0x6bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"_cur_column"
	.byte	0x10
	.value	0x12c
	.long	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"_vtable_offset"
	.byte	0x10
	.value	0x12d
	.long	0x668
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.string	"_shortbuf"
	.byte	0x10
	.value	0x12e
	.long	0x9dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.string	"_lock"
	.byte	0x10
	.value	0x132
	.long	0x9ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"_offset"
	.byte	0x10
	.value	0x13b
	.long	0x6da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x10
	.value	0x144
	.long	0x6eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x10
	.value	0x145
	.long	0x6eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"__pad3"
	.byte	0x10
	.value	0x146
	.long	0x6eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"__pad4"
	.byte	0x10
	.value	0x147
	.long	0x6eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"__pad5"
	.byte	0x10
	.value	0x148
	.long	0x61e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"_mode"
	.byte	0x10
	.value	0x14a
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"_unused2"
	.byte	0x10
	.value	0x14c
	.long	0x9f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62c
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0x10
	.byte	0xb0
	.uleb128 0x4
	.long	0x9d1
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x10
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x10
	.byte	0xb7
	.long	0x9d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x10
	.byte	0xb8
	.long	0x9d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x10
	.byte	0xbc
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x98e
	.uleb128 0x3
	.byte	0x4
	.long	0x6ff
	.uleb128 0x10
	.long	0x9ed
	.long	0x391
	.uleb128 0x11
	.long	0x5ff
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x980
	.uleb128 0x10
	.long	0xa03
	.long	0x391
	.uleb128 0x11
	.long	0x5ff
	.byte	0x27
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x399
	.uleb128 0x8
	.long	0xc52
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.uleb128 0x9
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x9
	.string	"BImode"
	.sleb128 1
	.uleb128 0x9
	.string	"QImode"
	.sleb128 2
	.uleb128 0x9
	.string	"HImode"
	.sleb128 3
	.uleb128 0x9
	.string	"SImode"
	.sleb128 4
	.uleb128 0x9
	.string	"DImode"
	.sleb128 5
	.uleb128 0x9
	.string	"TImode"
	.sleb128 6
	.uleb128 0x9
	.string	"OImode"
	.sleb128 7
	.uleb128 0x9
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x9
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x9
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x9
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x9
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x9
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x9
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x9
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x9
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x9
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x9
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x9
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x9
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x9
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x9
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x9
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x9
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x9
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x9
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x9
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x9
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x9
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x9
	.string	"COImode"
	.sleb128 30
	.uleb128 0x9
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x9
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x9
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x9
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x9
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x9
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x9
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x9
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x9
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x9
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x9
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x9
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x9
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x9
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x9
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x9
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x9
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x9
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x9
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x9
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x9
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x9
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x9
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x9
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x8
	.long	0x1421
	.string	"rtx_code"
	.byte	0x4
	.byte	0x5
	.byte	0x29
	.uleb128 0x9
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x9
	.string	"NIL"
	.sleb128 1
	.uleb128 0x9
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x9
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x9
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x9
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x9
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x9
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x9
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x9
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x9
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x9
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x9
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x9
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x9
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x9
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x9
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x9
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x9
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x9
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x9
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x9
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x9
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x9
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x9
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x9
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x9
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x9
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x9
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x9
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x9
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x9
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x9
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x9
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x9
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x9
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x9
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x9
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x9
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x9
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x9
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x9
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x9
	.string	"INSN"
	.sleb128 42
	.uleb128 0x9
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x9
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x9
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x9
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x9
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x9
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x9
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x9
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x9
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x9
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x9
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x9
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x9
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x9
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x9
	.string	"SET"
	.sleb128 57
	.uleb128 0x9
	.string	"USE"
	.sleb128 58
	.uleb128 0x9
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x9
	.string	"CALL"
	.sleb128 60
	.uleb128 0x9
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x9
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x9
	.string	"RESX"
	.sleb128 63
	.uleb128 0x9
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x9
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x9
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x9
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x9
	.string	"CONST"
	.sleb128 68
	.uleb128 0x9
	.string	"PC"
	.sleb128 69
	.uleb128 0x9
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x9
	.string	"REG"
	.sleb128 71
	.uleb128 0x9
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x9
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x9
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x9
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x9
	.string	"MEM"
	.sleb128 76
	.uleb128 0x9
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x9
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x9
	.string	"CC0"
	.sleb128 79
	.uleb128 0x9
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x9
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x9
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x9
	.string	"COND"
	.sleb128 83
	.uleb128 0x9
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x9
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x9
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x9
	.string	"NEG"
	.sleb128 87
	.uleb128 0x9
	.string	"MULT"
	.sleb128 88
	.uleb128 0x9
	.string	"DIV"
	.sleb128 89
	.uleb128 0x9
	.string	"MOD"
	.sleb128 90
	.uleb128 0x9
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x9
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x9
	.string	"AND"
	.sleb128 93
	.uleb128 0x9
	.string	"IOR"
	.sleb128 94
	.uleb128 0x9
	.string	"XOR"
	.sleb128 95
	.uleb128 0x9
	.string	"NOT"
	.sleb128 96
	.uleb128 0x9
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x9
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x9
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x9
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x9
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x9
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x9
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x9
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x9
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x9
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x9
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x9
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x9
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x9
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x9
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x9
	.string	"NE"
	.sleb128 112
	.uleb128 0x9
	.string	"EQ"
	.sleb128 113
	.uleb128 0x9
	.string	"GE"
	.sleb128 114
	.uleb128 0x9
	.string	"GT"
	.sleb128 115
	.uleb128 0x9
	.string	"LE"
	.sleb128 116
	.uleb128 0x9
	.string	"LT"
	.sleb128 117
	.uleb128 0x9
	.string	"GEU"
	.sleb128 118
	.uleb128 0x9
	.string	"GTU"
	.sleb128 119
	.uleb128 0x9
	.string	"LEU"
	.sleb128 120
	.uleb128 0x9
	.string	"LTU"
	.sleb128 121
	.uleb128 0x9
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x9
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x9
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x9
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x9
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x9
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x9
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x9
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x9
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x9
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x9
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x9
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x9
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x9
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x9
	.string	"FIX"
	.sleb128 136
	.uleb128 0x9
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x9
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x9
	.string	"ABS"
	.sleb128 139
	.uleb128 0x9
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x9
	.string	"FFS"
	.sleb128 141
	.uleb128 0x9
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x9
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x9
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x9
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x9
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x9
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x9
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x9
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x9
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x9
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x9
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x9
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x9
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x9
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x9
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x9
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x9
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x9
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x9
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x9
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x9
	.string	"PHI"
	.sleb128 162
	.uleb128 0x9
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x16
	.long	0x14fb
	.byte	0x4
	.byte	0x5
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x5
	.byte	0x49
	.long	0x5e8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x5
	.byte	0x4b
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x5
	.byte	0x4c
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x5
	.byte	0x4e
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x5
	.byte	0x50
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x5
	.byte	0x52
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x5
	.byte	0x55
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x5
	.byte	0x57
	.long	0x5e8
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
	.byte	0x58
	.long	0x1421
	.uleb128 0x14
	.long	0x1572
	.long	.LASF2
	.byte	0x18
	.byte	0x5
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x5
	.byte	0x63
	.long	0x684
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x5
	.byte	0x64
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x5
	.byte	0x65
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x5
	.byte	0x66
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x5
	.byte	0x67
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x5
	.byte	0x68
	.long	0x1516
	.uleb128 0x18
	.long	0x164f
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x5
	.byte	0x6d
	.uleb128 0x19
	.string	"rtwint"
	.byte	0x5
	.byte	0x6e
	.long	0x684
	.uleb128 0x19
	.string	"rtint"
	.byte	0x5
	.byte	0x6f
	.long	0x399
	.uleb128 0x19
	.string	"rtuint"
	.byte	0x5
	.byte	0x70
	.long	0x5e8
	.uleb128 0x19
	.string	"rtstr"
	.byte	0x5
	.byte	0x71
	.long	0x386
	.uleb128 0x19
	.string	"rtx"
	.byte	0x5
	.byte	0x72
	.long	0x9f
	.uleb128 0x19
	.string	"rtvec"
	.byte	0x5
	.byte	0x73
	.long	0x1a0
	.uleb128 0x19
	.string	"rttype"
	.byte	0x5
	.byte	0x74
	.long	0xa09
	.uleb128 0x19
	.string	"rt_addr_diff_vec_flags"
	.byte	0x5
	.byte	0x75
	.long	0x14fb
	.uleb128 0x19
	.string	"rt_cselib"
	.byte	0x5
	.byte	0x76
	.long	0x1663
	.uleb128 0x19
	.string	"rtbit"
	.byte	0x5
	.byte	0x77
	.long	0x16cb
	.uleb128 0x19
	.string	"rttree"
	.byte	0x5
	.byte	0x78
	.long	0x1e8
	.uleb128 0x19
	.string	"bb"
	.byte	0x5
	.byte	0x79
	.long	0x1854
	.uleb128 0x19
	.string	"rtmem"
	.byte	0x5
	.byte	0x7a
	.long	0x185a
	.byte	0x0
	.uleb128 0x1a
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x164f
	.uleb128 0x4
	.long	0x16cb
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x5
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x7
	.byte	0x3d
	.long	0x273f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x273f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x3f
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1669
	.uleb128 0x4
	.long	0x1854
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x5
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x8
	.byte	0xb5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x8
	.byte	0xb5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x8
	.byte	0xb8
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x8
	.byte	0xb9
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x8
	.byte	0xbc
	.long	0x2894
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x8
	.byte	0xbc
	.long	0x2894
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x8
	.byte	0xc1
	.long	0x27c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x8
	.byte	0xc5
	.long	0x27c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x8
	.byte	0xcb
	.long	0x27c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x8
	.byte	0xcd
	.long	0x27c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0xd0
	.long	0x6eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x8
	.byte	0xd3
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x1854
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x1854
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x8
	.byte	0xd9
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x8
	.byte	0xdc
	.long	0x2b0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x8
	.byte	0xdf
	.long	0x27d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x8
	.byte	0xe2
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x8
	.byte	0xe5
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x16d1
	.uleb128 0x3
	.byte	0x4
	.long	0x1572
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x5
	.byte	0x7c
	.long	0x157d
	.uleb128 0x10
	.long	0x187f
	.long	0x1860
	.uleb128 0x11
	.long	0x5ff
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	0x188f
	.long	0x9f
	.uleb128 0x11
	.long	0x5ff
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9f
	.uleb128 0x4
	.long	0x18fa
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xc
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xc
	.byte	0x18
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xc
	.byte	0x19
	.long	0xa09
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xc
	.byte	0x1a
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF4
	.byte	0xc
	.byte	0x1b
	.long	0x18fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1895
	.uleb128 0x14
	.long	0x1948
	.long	.LASF5
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xc
	.byte	0x26
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xc
	.byte	0x27
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF6
	.byte	0xc
	.byte	0x28
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF4
	.byte	0xc
	.byte	0x29
	.long	0x1948
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1900
	.uleb128 0x4
	.long	0x1a9d
	.string	"emit_status"
	.byte	0x34
	.byte	0xc
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xc
	.byte	0x3a
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xc
	.byte	0x3d
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xc
	.byte	0x44
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xc
	.byte	0x45
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF6
	.byte	0xc
	.byte	0x4a
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF5
	.byte	0xc
	.byte	0x50
	.long	0x1948
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xc
	.byte	0x54
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xc
	.byte	0x58
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xc
	.byte	0x59
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xc
	.byte	0x5f
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xc
	.byte	0x65
	.long	0x97a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xc
	.byte	0x69
	.long	0x1a9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xc
	.byte	0x70
	.long	0x188f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e8
	.uleb128 0x4
	.long	0x1b83
	.string	"expr_status"
	.byte	0x1c
	.byte	0xc
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xc
	.byte	0x80
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xc
	.byte	0x91
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xc
	.byte	0x97
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xc
	.byte	0x9c
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xc
	.byte	0x9f
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xc
	.byte	0xa2
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xc
	.byte	0xa5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1c
	.long	0x1bed
	.long	.LASF7
	.byte	0x4
	.byte	0xc
	.value	0x1f1
	.uleb128 0x9
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x9
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x9
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1d
	.long	0x25ac
	.string	"function"
	.value	0x134
	.byte	0x5
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x25b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x25cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x25d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x25d8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x25ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0xc
	.byte	0xbe
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xc
	.byte	0xc1
	.long	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xc
	.byte	0xc4
	.long	0x25f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xc
	.byte	0xc9
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0xc
	.byte	0xce
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xc
	.byte	0xd3
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xc
	.byte	0xd7
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xc
	.byte	0xdb
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xc
	.byte	0xdf
	.long	0x606
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xc
	.byte	0xe5
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xc
	.byte	0xe8
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xc
	.byte	0xec
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xc
	.byte	0xf0
	.long	0x2611
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xc
	.byte	0xf3
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xc
	.byte	0xf8
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xc
	.byte	0xfe
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xc
	.value	0x102
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xc
	.value	0x107
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"x_cleanup_label"
	.byte	0xc
	.value	0x10d
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"x_return_label"
	.byte	0xc
	.value	0x112
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xe
	.string	"computed_goto_common_label"
	.byte	0xc
	.value	0x115
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"computed_goto_common_reg"
	.byte	0xc
	.value	0x116
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"x_save_expr_regs"
	.byte	0xc
	.value	0x11a
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xe
	.string	"x_stack_slot_list"
	.byte	0xc
	.value	0x11e
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xe
	.string	"x_rtl_expr_chain"
	.byte	0xc
	.value	0x121
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.string	"x_tail_recursion_label"
	.byte	0xc
	.value	0x125
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xe
	.string	"x_tail_recursion_reentry"
	.byte	0xc
	.value	0x128
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xe
	.string	"x_arg_pointer_save_area"
	.byte	0xc
	.value	0x12e
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"x_clobber_return_insn"
	.byte	0xc
	.value	0x133
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"x_frame_offset"
	.byte	0xc
	.value	0x138
	.long	0x684
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"x_context_display"
	.byte	0xc
	.value	0x13d
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"x_trampoline_list"
	.byte	0xc
	.value	0x146
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"x_parm_birth_insn"
	.byte	0xc
	.value	0x149
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"x_last_parm_insn"
	.byte	0xc
	.value	0x14d
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"x_max_parm_reg"
	.byte	0xc
	.value	0x151
	.long	0x5e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"x_parm_reg_stack_loc"
	.byte	0xc
	.value	0x157
	.long	0x188f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"x_temp_slots"
	.byte	0xc
	.value	0x15a
	.long	0x2623
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xe
	.string	"x_temp_slot_level"
	.byte	0xc
	.value	0x15d
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xe
	.string	"x_var_temp_slot_level"
	.byte	0xc
	.value	0x160
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xe
	.string	"x_target_temp_slot_level"
	.byte	0xc
	.value	0x166
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xe
	.string	"fixup_var_refs_queue"
	.byte	0xc
	.value	0x16a
	.long	0x18fa
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xe
	.string	"inlinable"
	.byte	0xc
	.value	0x16d
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"no_debugging_symbols"
	.byte	0xc
	.value	0x16e
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xe
	.string	"original_arg_vector"
	.byte	0xc
	.value	0x16f
	.long	0x1a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xe
	.string	"original_decl_initial"
	.byte	0xc
	.value	0x170
	.long	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xe
	.string	"inl_last_parm_insn"
	.byte	0xc
	.value	0x173
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xe
	.string	"inl_max_label_num"
	.byte	0xc
	.value	0x175
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xe
	.string	"funcdef_no"
	.byte	0xc
	.value	0x178
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xe
	.string	"machine"
	.byte	0xc
	.value	0x17d
	.long	0x263c
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xe
	.string	"stack_alignment_needed"
	.byte	0xc
	.value	0x17f
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xe
	.string	"preferred_stack_boundary"
	.byte	0xc
	.value	0x181
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xe
	.string	"language"
	.byte	0xc
	.value	0x184
	.long	0x2656
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xe
	.string	"epilogue_delay_list"
	.byte	0xc
	.value	0x18a
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
	.string	"returns_struct"
	.byte	0xc
	.value	0x190
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pcc_struct"
	.byte	0xc
	.value	0x194
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pointer"
	.byte	0xc
	.value	0x197
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"needs_context"
	.byte	0xc
	.value	0x19a
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_setjmp"
	.byte	0xc
	.value	0x19d
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_longjmp"
	.byte	0xc
	.value	0x1a0
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_alloca"
	.byte	0xc
	.value	0x1a4
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_eh_return"
	.byte	0xc
	.value	0x1a7
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_label"
	.byte	0xc
	.value	0x1ab
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_goto"
	.byte	0xc
	.value	0x1af
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"contains_functions"
	.byte	0xc
	.value	0x1b2
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_computed_jump"
	.byte	0xc
	.value	0x1b5
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"is_thunk"
	.byte	0xc
	.value	0x1ba
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"all_throwers_are_sibcalls"
	.byte	0xc
	.value	0x1c1
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"instrument_entry_exit"
	.byte	0xc
	.value	0x1c5
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arc_profile"
	.byte	0xc
	.value	0x1c8
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"profile"
	.byte	0xc
	.value	0x1cb
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"limit_stack"
	.byte	0xc
	.value	0x1cf
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"stdarg"
	.byte	0xc
	.value	0x1d2
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_whole_function_mode_p"
	.byte	0xc
	.value	0x1d8
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xc
	.value	0x1e1
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_const_pool"
	.byte	0xc
	.value	0x1e4
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_pic_offset_table"
	.byte	0xc
	.value	0x1e7
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_eh_lsda"
	.byte	0xc
	.value	0x1ea
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arg_pointer_save_area_init"
	.byte	0xc
	.value	0x1ed
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.long	.LASF7
	.byte	0xc
	.value	0x1fa
	.long	0x1b83
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xe
	.string	"max_jumptable_ents"
	.byte	0xc
	.value	0x1fe
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1a
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x25ac
	.uleb128 0x1a
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x25be
	.uleb128 0x3
	.byte	0x4
	.long	0x1aa3
	.uleb128 0x3
	.byte	0x4
	.long	0x194e
	.uleb128 0x1a
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x25de
	.uleb128 0x3
	.byte	0x4
	.long	0x1bed
	.uleb128 0x1a
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x25fa
	.uleb128 0x1a
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2617
	.uleb128 0x1a
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2629
	.uleb128 0x1a
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2642
	.uleb128 0x10
	.long	0x266c
	.long	0x695
	.uleb128 0x11
	.long	0x5ff
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0xa
	.byte	0x29
	.long	0x695
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0xa
	.byte	0x34
	.long	0x2699
	.uleb128 0x10
	.long	0x26a9
	.long	0x266c
	.uleb128 0x11
	.long	0x5ff
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x653
	.uleb128 0x4
	.long	0x2713
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x7
	.byte	0x35
	.long	0x2713
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x2713
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x37
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x2719
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x26bc
	.uleb128 0x10
	.long	0x2729
	.long	0x26a9
	.uleb128 0x11
	.long	0x5ff
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x26bc
	.uleb128 0x3
	.byte	0x4
	.long	0x2729
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0x16cb
	.uleb128 0x4
	.long	0x27ad
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x2
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x2
	.byte	0x21
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x2
	.byte	0x22
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x2
	.byte	0x23
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x2
	.byte	0x24
	.long	0x265c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x2
	.byte	0x25
	.long	0x27bc
	.uleb128 0x3
	.byte	0x4
	.long	0x2753
	.uleb128 0x3
	.byte	0x4
	.long	0x695
	.uleb128 0x2
	.string	"regset"
	.byte	0x8
	.byte	0x22
	.long	0x2745
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x8
	.byte	0x75
	.long	0x684
	.uleb128 0x4
	.long	0x288e
	.string	"edge_def"
	.byte	0x28
	.byte	0x8
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x8
	.byte	0x7a
	.long	0x288e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x8
	.byte	0x7a
	.long	0x288e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x8
	.byte	0x7d
	.long	0x1854
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x8
	.byte	0x7d
	.long	0x1854
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x8
	.byte	0x80
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0x83
	.long	0x6eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x8
	.byte	0x85
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x8
	.byte	0x86
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x8
	.byte	0x87
	.long	0x27d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x27e7
	.uleb128 0x2
	.string	"edge"
	.byte	0x8
	.byte	0x89
	.long	0x288e
	.uleb128 0x4
	.long	0x2b0f
	.string	"loop"
	.byte	0x80
	.byte	0x8
	.byte	0xdc
	.uleb128 0xe
	.string	"num"
	.byte	0x8
	.value	0x176
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"header"
	.byte	0x8
	.value	0x179
	.long	0x2b15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"latch"
	.byte	0x8
	.value	0x17c
	.long	0x2b15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"pre_header"
	.byte	0x8
	.value	0x17f
	.long	0x2b15
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"pre_header_edges"
	.byte	0x8
	.value	0x184
	.long	0x2b28
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"num_pre_header_edges"
	.byte	0x8
	.value	0x187
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"first"
	.byte	0x8
	.value	0x18b
	.long	0x2b15
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"last"
	.byte	0x8
	.value	0x18f
	.long	0x2b15
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"nodes"
	.byte	0x8
	.value	0x192
	.long	0x27ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"num_nodes"
	.byte	0x8
	.value	0x195
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"entry_edges"
	.byte	0x8
	.value	0x198
	.long	0x2b28
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"num_entries"
	.byte	0x8
	.value	0x19b
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"exit_edges"
	.byte	0x8
	.value	0x19e
	.long	0x2b28
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"num_exits"
	.byte	0x8
	.value	0x1a1
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"exits_doms"
	.byte	0x8
	.value	0x1a4
	.long	0x27ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"depth"
	.byte	0x8
	.value	0x1a7
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"pred"
	.byte	0x8
	.value	0x1aa
	.long	0x2b2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"level"
	.byte	0x8
	.value	0x1ae
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"outer"
	.byte	0x8
	.value	0x1b1
	.long	0x2b0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"inner"
	.byte	0x8
	.value	0x1b4
	.long	0x2b0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x8
	.value	0x1b7
	.long	0x2b0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"invalid"
	.byte	0x8
	.value	0x1ba
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"aux"
	.byte	0x8
	.value	0x1bd
	.long	0x6eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.string	"vtop"
	.byte	0x8
	.value	0x1c3
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.string	"cont"
	.byte	0x8
	.value	0x1c7
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"start"
	.byte	0x8
	.value	0x1ca
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"end"
	.byte	0x8
	.value	0x1cd
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"top"
	.byte	0x8
	.value	0x1d1
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"scan_start"
	.byte	0x8
	.value	0x1d4
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"sink"
	.byte	0x8
	.value	0x1d7
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"exit_labels"
	.byte	0x8
	.value	0x1e2
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"exit_count"
	.byte	0x8
	.value	0x1e6
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x28a0
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x8
	.byte	0xe6
	.long	0x1854
	.uleb128 0x3
	.byte	0x4
	.long	0x2894
	.uleb128 0x3
	.byte	0x4
	.long	0x2b0f
	.uleb128 0x8
	.long	0x2b98
	.string	"df_ref_type"
	.byte	0x4
	.byte	0xb
	.byte	0x23
	.uleb128 0x9
	.string	"DF_REF_REG_DEF"
	.sleb128 0
	.uleb128 0x9
	.string	"DF_REF_REG_USE"
	.sleb128 1
	.uleb128 0x9
	.string	"DF_REF_REG_MEM_LOAD"
	.sleb128 2
	.uleb128 0x9
	.string	"DF_REF_REG_MEM_STORE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	0x2bc5
	.string	"df_link"
	.byte	0x8
	.byte	0xb
	.byte	0x2e
	.uleb128 0x1b
	.long	.LASF4
	.byte	0xb
	.byte	0x2f
	.long	0x2bc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ref"
	.byte	0xb
	.byte	0x30
	.long	0x2c3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2b98
	.uleb128 0x4
	.long	0x2c3c
	.string	"ref"
	.byte	0x1c
	.byte	0xb
	.byte	0x30
	.uleb128 0x6
	.string	"reg"
	.byte	0xb
	.byte	0x44
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF9
	.byte	0xb
	.byte	0x45
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"loc"
	.byte	0xb
	.byte	0x46
	.long	0x188f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"chain"
	.byte	0xb
	.byte	0x47
	.long	0x2bc5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"type"
	.byte	0xb
	.byte	0x48
	.long	0x2b34
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"id"
	.byte	0xb
	.byte	0x49
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1b
	.long	.LASF3
	.byte	0xb
	.byte	0x4a
	.long	0x2c42
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2bcb
	.uleb128 0x8
	.long	0x2c81
	.string	"df_ref_flags"
	.byte	0x4
	.byte	0xb
	.byte	0x34
	.uleb128 0x9
	.string	"DF_REF_READ_WRITE"
	.sleb128 1
	.uleb128 0x9
	.string	"DF_REF_MODE_CHANGE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x2cc1
	.string	"insn_info"
	.byte	0xc
	.byte	0xb
	.byte	0x50
	.uleb128 0x6
	.string	"defs"
	.byte	0xb
	.byte	0x51
	.long	0x2bc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0xb
	.byte	0x52
	.long	0x2bc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0xb
	.byte	0x55
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.long	0x2d21
	.long	.LASF10
	.byte	0x14
	.byte	0xb
	.byte	0x5e
	.uleb128 0x6
	.string	"defs"
	.byte	0xb
	.byte	0x5f
	.long	0x2bc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0xb
	.byte	0x60
	.long	0x2bc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"lifetime"
	.byte	0xb
	.byte	0x61
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"n_defs"
	.byte	0xb
	.byte	0x62
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"n_uses"
	.byte	0xb
	.byte	0x63
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	0x2e36
	.string	"bb_info"
	.byte	0x3c
	.byte	0xb
	.byte	0x69
	.uleb128 0x6
	.string	"rd_kill"
	.byte	0xb
	.byte	0x6b
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"rd_gen"
	.byte	0xb
	.byte	0x6c
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"rd_in"
	.byte	0xb
	.byte	0x6d
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"rd_out"
	.byte	0xb
	.byte	0x6e
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"ru_kill"
	.byte	0xb
	.byte	0x70
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"ru_gen"
	.byte	0xb
	.byte	0x71
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ru_in"
	.byte	0xb
	.byte	0x72
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"ru_out"
	.byte	0xb
	.byte	0x73
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"lr_def"
	.byte	0xb
	.byte	0x75
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"lr_use"
	.byte	0xb
	.byte	0x76
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"lr_in"
	.byte	0xb
	.byte	0x77
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"lr_out"
	.byte	0xb
	.byte	0x78
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"rd_valid"
	.byte	0xb
	.byte	0x79
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"ru_valid"
	.byte	0xb
	.byte	0x7a
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"lr_valid"
	.byte	0xb
	.byte	0x7b
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x4
	.long	0x3069
	.string	"df"
	.byte	0x74
	.byte	0xb
	.byte	0x80
	.uleb128 0x1b
	.long	.LASF3
	.byte	0xb
	.byte	0x81
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bbs"
	.byte	0xb
	.byte	0x82
	.long	0x3069
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"defs"
	.byte	0xb
	.byte	0x83
	.long	0x306f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"uses"
	.byte	0xb
	.byte	0x84
	.long	0x306f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"reg_def_last"
	.byte	0xb
	.byte	0x85
	.long	0x306f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"regs"
	.byte	0xb
	.byte	0x86
	.long	0x3075
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reg_size"
	.byte	0xb
	.byte	0x87
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1b
	.long	.LASF8
	.byte	0xb
	.byte	0x88
	.long	0x307b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"insn_size"
	.byte	0xb
	.byte	0x89
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"def_id"
	.byte	0xb
	.byte	0x8a
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"def_size"
	.byte	0xb
	.byte	0x8b
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"n_defs"
	.byte	0xb
	.byte	0x8c
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"use_id"
	.byte	0xb
	.byte	0x8d
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"use_size"
	.byte	0xb
	.byte	0x8e
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"n_uses"
	.byte	0xb
	.byte	0x8f
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"n_bbs"
	.byte	0xb
	.byte	0x90
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"n_regs"
	.byte	0xb
	.byte	0x91
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"def_id_save"
	.byte	0xb
	.byte	0x92
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"use_id_save"
	.byte	0xb
	.byte	0x93
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"insns_modified"
	.byte	0xb
	.byte	0x94
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"bbs_modified"
	.byte	0xb
	.byte	0x95
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"all_blocks"
	.byte	0xb
	.byte	0x96
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"dom"
	.byte	0xb
	.byte	0x99
	.long	0x3081
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"dfs_order"
	.byte	0xb
	.byte	0x9a
	.long	0xa03
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"rc_order"
	.byte	0xb
	.byte	0x9b
	.long	0xa03
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"rts_order"
	.byte	0xb
	.byte	0x9c
	.long	0xa03
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"inverse_rc_map"
	.byte	0xb
	.byte	0x9d
	.long	0xa03
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"inverse_dfs_map"
	.byte	0xb
	.byte	0x9e
	.long	0xa03
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x6
	.string	"inverse_rts_map"
	.byte	0xb
	.byte	0x9f
	.long	0xa03
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d21
	.uleb128 0x3
	.byte	0x4
	.long	0x2c3c
	.uleb128 0x3
	.byte	0x4
	.long	0x2cc1
	.uleb128 0x3
	.byte	0x4
	.long	0x2c81
	.uleb128 0x3
	.byte	0x4
	.long	0x27ad
	.uleb128 0x20
	.long	0x30a7
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.uleb128 0x19
	.string	"web"
	.byte	0x3
	.byte	0x1d
	.long	0x3523
	.uleb128 0x19
	.string	"move"
	.byte	0x3
	.byte	0x1e
	.long	0x3593
	.byte	0x0
	.uleb128 0x4
	.long	0x3523
	.string	"web"
	.byte	0xe8
	.byte	0x3
	.byte	0x1d
	.uleb128 0x6
	.string	"id"
	.byte	0x3
	.byte	0x5d
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"regno"
	.byte	0x3
	.byte	0x60
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"span_deaths"
	.byte	0x3
	.byte	0x63
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"spill_temp"
	.byte	0x3
	.byte	0x6b
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"orig_spill_temp"
	.byte	0x3
	.byte	0x6f
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"spill_cost"
	.byte	0x3
	.byte	0x72
	.long	0x695
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"orig_spill_cost"
	.byte	0x3
	.byte	0x73
	.long	0x695
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"num_aliased"
	.byte	0x3
	.byte	0x76
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"color"
	.byte	0x3
	.byte	0x79
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"old_color"
	.byte	0x3
	.byte	0x7c
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"use_my_regs"
	.byte	0x3
	.byte	0x82
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"was_spilled"
	.byte	0x3
	.byte	0x86
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"is_coalesced"
	.byte	0x3
	.byte	0x8c
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"artificial"
	.byte	0x3
	.byte	0x9c
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x21
	.long	.LASF11
	.byte	0x3
	.byte	0x9f
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"move_related"
	.byte	0x3
	.byte	0xa2
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"live_over_abnormal"
	.byte	0x3
	.byte	0xa5
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"mode_changed"
	.byte	0x3
	.byte	0xa9
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"old_web"
	.byte	0x3
	.byte	0xad
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"in_load"
	.byte	0x3
	.byte	0xb1
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"one_load"
	.byte	0x3
	.byte	0xb7
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"changed"
	.byte	0x3
	.byte	0xbd
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"target_of_spilled_move"
	.byte	0x3
	.byte	0xc3
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"have_orig_conflicts"
	.byte	0x3
	.byte	0xc9
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"type"
	.byte	0x3
	.byte	0xcc
	.long	0x35db
	.byte	0x4
	.byte	0x5
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"regclass"
	.byte	0x3
	.byte	0xd1
	.long	0x3a0
	.byte	0x4
	.byte	0xa
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"add_hardregs"
	.byte	0x3
	.byte	0xd4
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"num_conflicts"
	.byte	0x3
	.byte	0xd7
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1b
	.long	.LASF12
	.byte	0x3
	.byte	0xda
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1b
	.long	.LASF13
	.byte	0x3
	.byte	0xdb
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"orig_x"
	.byte	0x3
	.byte	0xe0
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"parent_web"
	.byte	0x3
	.byte	0xe4
	.long	0x3523
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"subreg_next"
	.byte	0x3
	.byte	0xe8
	.long	0x3523
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"conflict_list"
	.byte	0x3
	.byte	0xeb
	.long	0x3792
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"orig_conflict_list"
	.byte	0x3
	.byte	0xf1
	.long	0x3792
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"useless_conflicts"
	.byte	0x3
	.byte	0xf6
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"usable_regs"
	.byte	0x3
	.byte	0xf9
	.long	0x2685
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"orig_usable_regs"
	.byte	0x3
	.byte	0xfb
	.long	0x2685
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"bias_colors"
	.byte	0x3
	.byte	0xfe
	.long	0x2685
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"prefer_colors"
	.byte	0x3
	.value	0x100
	.long	0x2685
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xe
	.string	"num_freedom"
	.byte	0x3
	.value	0x103
	.long	0x399
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xe
	.string	"reg_rtx"
	.byte	0x3
	.value	0x107
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"stack_slot"
	.byte	0x3
	.value	0x10b
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xe
	.string	"last_use_insn"
	.byte	0x3
	.value	0x10f
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xe
	.string	"pattern"
	.byte	0x3
	.value	0x113
	.long	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xe
	.string	"defs"
	.byte	0x3
	.value	0x117
	.long	0x306f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xe
	.string	"uses"
	.byte	0x3
	.value	0x118
	.long	0x306f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.string	"alias"
	.byte	0x3
	.value	0x11d
	.long	0x3523
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.string	"moves"
	.byte	0x3
	.value	0x121
	.long	0x37cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.string	"dlink"
	.byte	0x3
	.value	0x124
	.long	0x35d5
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xe
	.string	"temp_refs"
	.byte	0x3
	.value	0x128
	.long	0x2bc5
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x30a7
	.uleb128 0x4
	.long	0x3593
	.string	"move"
	.byte	0x14
	.byte	0x3
	.byte	0x1e
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x154
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"source_web"
	.byte	0x3
	.value	0x155
	.long	0x3523
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"target_web"
	.byte	0x3
	.value	0x156
	.long	0x3523
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"type"
	.byte	0x3
	.value	0x157
	.long	0x3817
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dlink"
	.byte	0x3
	.value	0x158
	.long	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3529
	.uleb128 0x4
	.long	0x35d5
	.string	"dlist"
	.byte	0xc
	.byte	0x3
	.byte	0x18
	.uleb128 0x6
	.string	"prev"
	.byte	0x3
	.byte	0x19
	.long	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x3
	.byte	0x1a
	.long	0x35d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"value"
	.byte	0x3
	.byte	0x1f
	.long	0x3087
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3599
	.uleb128 0x8
	.long	0x3682
	.string	"node_type"
	.byte	0x4
	.byte	0x3
	.byte	0x27
	.uleb128 0x9
	.string	"INITIAL"
	.sleb128 0
	.uleb128 0x9
	.string	"FREE"
	.sleb128 1
	.uleb128 0x9
	.string	"PRECOLORED"
	.sleb128 2
	.uleb128 0x9
	.string	"SIMPLIFY"
	.sleb128 3
	.uleb128 0x9
	.string	"SIMPLIFY_SPILL"
	.sleb128 4
	.uleb128 0x9
	.string	"SIMPLIFY_FAT"
	.sleb128 5
	.uleb128 0x9
	.string	"FREEZE"
	.sleb128 6
	.uleb128 0x9
	.string	"SPILL"
	.sleb128 7
	.uleb128 0x9
	.string	"SELECT"
	.sleb128 8
	.uleb128 0x9
	.string	"SPILLED"
	.sleb128 9
	.uleb128 0x9
	.string	"COALESCED"
	.sleb128 10
	.uleb128 0x9
	.string	"COLORED"
	.sleb128 11
	.uleb128 0x9
	.string	"LAST_NODE_TYPE"
	.sleb128 12
	.byte	0x0
	.uleb128 0x4
	.long	0x36d1
	.string	"tagged_conflict"
	.byte	0xc
	.byte	0x3
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x3
	.byte	0x35
	.long	0x36d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"conflicts"
	.byte	0x3
	.byte	0x36
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"size_word"
	.byte	0x3
	.byte	0x3a
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3682
	.uleb128 0x4
	.long	0x374a
	.string	"web_part"
	.byte	0x14
	.byte	0x3
	.byte	0x44
	.uleb128 0x6
	.string	"ref"
	.byte	0x3
	.byte	0x46
	.long	0x2c3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uplink"
	.byte	0x3
	.byte	0x48
	.long	0x374a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"spanned_deaths"
	.byte	0x3
	.byte	0x4f
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sub_conflicts"
	.byte	0x3
	.byte	0x51
	.long	0x36d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x21
	.long	.LASF11
	.byte	0x3
	.byte	0x53
	.long	0x5e8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x36d7
	.uleb128 0x4
	.long	0x3792
	.string	"conflict_link"
	.byte	0xc
	.byte	0x3
	.byte	0xeb
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x3
	.value	0x140
	.long	0x3792
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"t"
	.byte	0x3
	.value	0x143
	.long	0x3523
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"sub"
	.byte	0x3
	.value	0x147
	.long	0x3811
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3750
	.uleb128 0xd
	.long	0x37cb
	.string	"move_list"
	.byte	0x8
	.byte	0x3
	.value	0x121
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x3
	.value	0x15e
	.long	0x37cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"move"
	.byte	0x3
	.value	0x15f
	.long	0x3593
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3798
	.uleb128 0xd
	.long	0x3811
	.string	"sub_conflict"
	.byte	0xc
	.byte	0x3
	.value	0x135
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x3
	.value	0x138
	.long	0x3811
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"s"
	.byte	0x3
	.value	0x139
	.long	0x3523
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"t"
	.byte	0x3
	.value	0x13a
	.long	0x3523
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x37d1
	.uleb128 0xc
	.long	0x3876
	.string	"move_type"
	.byte	0x4
	.byte	0x3
	.value	0x14c
	.uleb128 0x9
	.string	"WORKLIST"
	.sleb128 0
	.uleb128 0x9
	.string	"MV_COALESCED"
	.sleb128 1
	.uleb128 0x9
	.string	"CONSTRAINED"
	.sleb128 2
	.uleb128 0x9
	.string	"FROZEN"
	.sleb128 3
	.uleb128 0x9
	.string	"ACTIVE"
	.sleb128 4
	.uleb128 0x9
	.string	"LAST_MOVE_TYPE"
	.sleb128 5
	.byte	0x0
	.uleb128 0xd
	.long	0x38cb
	.string	"ra_insn_info"
	.byte	0x10
	.byte	0x3
	.value	0x169
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x3
	.value	0x16a
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.value	0x16a
	.long	0x5e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"defs"
	.byte	0x3
	.value	0x16b
	.long	0x306f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"uses"
	.byte	0x3
	.value	0x16b
	.long	0x306f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x22
	.long	0x39c1
	.string	"spill_coalescing"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x23
	.string	"coalesce"
	.byte	0x1
	.byte	0x56
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF14
	.byte	0x1
	.byte	0x56
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"ml"
	.byte	0x1
	.byte	0x58
	.long	0x37cb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"m"
	.byte	0x1
	.byte	0x59
	.long	0x3593
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	0x39b0
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0x5d
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.byte	0x5e
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x25
	.string	"wl"
	.byte	0x1
	.byte	0x62
	.long	0x3792
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.string	"pweb"
	.byte	0x1
	.byte	0x84
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x25
	.string	"sl"
	.byte	0x1
	.byte	0x89
	.long	0x3811
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x25
	.string	"sweb"
	.byte	0x1
	.byte	0x8c
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LASF15
	.long	0x5758
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11056
	.byte	0x0
	.uleb128 0x29
	.long	0x3a7b
	.string	"spill_prop_savings"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x695
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x23
	.string	"web"
	.byte	0x1
	.byte	0xa2
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF14
	.byte	0x1
	.byte	0xa3
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"savings"
	.byte	0x1
	.byte	0xa5
	.long	0x695
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"ml"
	.byte	0x1
	.byte	0xa6
	.long	0x37cb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"m"
	.byte	0x1
	.byte	0xa7
	.long	0x3593
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"cost"
	.byte	0x1
	.byte	0xa8
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0xb0
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.byte	0xb1
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x25
	.string	"h"
	.byte	0x1
	.byte	0xb4
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x3b1e
	.string	"spill_prop_insert"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x23
	.string	"web"
	.byte	0x1
	.byte	0xc6
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"list"
	.byte	0x1
	.byte	0xc7
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF16
	.byte	0x1
	.byte	0xc7
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"ml"
	.byte	0x1
	.byte	0xc9
	.long	0x37cb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"m"
	.byte	0x1
	.byte	0xca
	.long	0x3593
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.byte	0xce
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.byte	0xcf
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x25
	.string	"h"
	.byte	0x1
	.byte	0xd2
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	0x3c36
	.string	"spill_propagation"
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x399
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x23
	.string	"to_prop"
	.byte	0x1
	.byte	0xea
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF14
	.byte	0x1
	.byte	0xea
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF16
	.byte	0x1
	.byte	0xea
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"id"
	.byte	0x1
	.byte	0xec
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"again"
	.byte	0x1
	.byte	0xed
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"list"
	.byte	0x1
	.byte	0xee
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	0x3c1d
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2a
	.long	.LASF17
	.byte	0x1
	.byte	0xf2
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF18
	.byte	0x1
	.byte	0xf2
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"size_"
	.byte	0x1
	.byte	0xf2
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.byte	0xf2
	.long	0x27c2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.byte	0xf2
	.long	0x695
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x25
	.string	"_mask"
	.byte	0x1
	.byte	0xf2
	.long	0x695
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x25
	.string	"web"
	.byte	0x1
	.byte	0xfc
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3caa
	.string	"spill_coalprop"
	.byte	0x1
	.value	0x115
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2c
	.long	.LASF14
	.byte	0x1
	.value	0x116
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF16
	.byte	0x1
	.value	0x116
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"to_prop"
	.byte	0x1
	.value	0x116
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x117
	.long	0x35d5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"again"
	.byte	0x1
	.value	0x118
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2b
	.long	0x3d03
	.string	"allocate_spill_web"
	.byte	0x1
	.value	0x13a
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x139
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"regno"
	.byte	0x1
	.value	0x13b
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"slot"
	.byte	0x1
	.value	0x13c
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2b
	.long	0x3e14
	.string	"choose_spill_colors"
	.byte	0x1
	.value	0x148
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x149
	.long	0x35d5
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"costs"
	.byte	0x1
	.value	0x14a
	.long	0x27c2
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x14e
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"wl"
	.byte	0x1
	.value	0x14f
	.long	0x3792
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"bestc"
	.byte	0x1
	.value	0x150
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.value	0x150
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"avail"
	.byte	0x1
	.value	0x151
	.long	0x2685
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	0x3dbf
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2d
	.string	"pweb"
	.byte	0x1
	.value	0x155
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x26
	.long	0x3deb
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x15a
	.long	0x3e14
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF22
	.byte	0x1
	.value	0x15a
	.long	0x3e14
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x27
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x169
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"size"
	.byte	0x1
	.value	0x169
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x266c
	.uleb128 0x2b
	.long	0x3f92
	.string	"rewrite_program"
	.byte	0x1
	.value	0x191
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x190
	.long	0x2745
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x192
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x193
	.long	0x35d5
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.value	0x194
	.long	0x2745
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x19c
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x19d
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x19e
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"slot"
	.byte	0x1
	.value	0x19f
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	0x3f2c
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x1ad
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"target"
	.byte	0x1
	.value	0x1ad
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x1ad
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF9
	.byte	0x1
	.value	0x1ae
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"prev"
	.byte	0x1
	.value	0x1af
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x1b0
	.long	0x2b15
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x27
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x1df
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x1df
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"dest"
	.byte	0x1
	.value	0x1df
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF9
	.byte	0x1
	.value	0x1e0
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF26
	.byte	0x1
	.value	0x1e1
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x1e2
	.long	0x2b15
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x3fc0
	.string	"rtx_list"
	.byte	0x8
	.byte	0x1
	.byte	0x2b
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x215
	.long	0x3fc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.value	0x216
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3f92
	.uleb128 0x2b
	.long	0x4014
	.string	"remember_slot"
	.byte	0x1
	.value	0x21f
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.string	"list"
	.byte	0x1
	.value	0x21d
	.long	0x4014
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x21e
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x220
	.long	0x3fc0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3fc0
	.uleb128 0x30
	.long	0x40d4
	.string	"slots_overlap_p"
	.byte	0x1
	.value	0x230
	.byte	0x1
	.long	0x399
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2e
	.string	"s1"
	.byte	0x1
	.value	0x22f
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"s2"
	.byte	0x1
	.value	0x22f
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"base1"
	.byte	0x1
	.value	0x231
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"base2"
	.byte	0x1
	.value	0x231
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"ofs1"
	.byte	0x1
	.value	0x232
	.long	0x684
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"ofs2"
	.byte	0x1
	.value	0x232
	.long	0x684
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"size1"
	.byte	0x1
	.value	0x233
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"size2"
	.byte	0x1
	.value	0x234
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF15
	.long	0x5753
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11824
	.byte	0x0
	.uleb128 0x2b
	.long	0x4120
	.string	"delete_overlapping_slots"
	.byte	0x1
	.value	0x264
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2e
	.string	"list"
	.byte	0x1
	.value	0x262
	.long	0x4014
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x263
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x4165
	.string	"slot_member_p"
	.byte	0x1
	.value	0x274
	.byte	0x1
	.long	0x399
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2e
	.string	"list"
	.byte	0x1
	.value	0x272
	.long	0x3fc0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x273
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2b
	.long	0x42b9
	.string	"insert_stores"
	.byte	0x1
	.value	0x284
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x283
	.long	0x2745
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF9
	.byte	0x1
	.value	0x285
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"last_slot"
	.byte	0x1
	.value	0x286
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"slots"
	.byte	0x1
	.value	0x287
	.long	0x3fc0
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2d
	.string	"uid"
	.byte	0x1
	.value	0x28c
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	0x429e
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x29c
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF26
	.byte	0x1
	.value	0x29d
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x29e
	.long	0x2b15
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"info"
	.byte	0x1
	.value	0x29f
	.long	0x3876
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x2a4
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x2a5
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"slot"
	.byte	0x1
	.value	0x2a6
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.value	0x2a6
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2c
	.long	.LASF8
	.byte	0x1
	.value	0x2b7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"ni"
	.byte	0x1
	.value	0x2b7
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0x2de
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x4343
	.string	"spill_same_color_p"
	.byte	0x1
	.value	0x2f2
	.byte	0x1
	.long	0x399
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2e
	.string	"web1"
	.byte	0x1
	.value	0x2f1
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x2f1
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"c1"
	.byte	0x1
	.value	0x2f3
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"size1"
	.byte	0x1
	.value	0x2f3
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"c2"
	.byte	0x1
	.value	0x2f3
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"size2"
	.byte	0x1
	.value	0x2f3
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x438d
	.string	"is_partly_live_1"
	.byte	0x1
	.value	0x309
	.byte	0x1
	.long	0x438d
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.string	"live"
	.byte	0x1
	.value	0x307
	.long	0x27ad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x308
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x2b
	.long	0x440d
	.string	"update_spill_colors"
	.byte	0x1
	.value	0x31f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2e
	.string	"in_use"
	.byte	0x1
	.value	0x31c
	.long	0x440d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x31d
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"add"
	.byte	0x1
	.value	0x31e
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.value	0x320
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"size"
	.byte	0x1
	.value	0x320
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2685
	.uleb128 0x30
	.long	0x4479
	.string	"spill_is_free"
	.byte	0x1
	.value	0x33e
	.byte	0x1
	.long	0x399
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.string	"in_use"
	.byte	0x1
	.value	0x33c
	.long	0x440d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x33d
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.value	0x33f
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"size"
	.byte	0x1
	.value	0x33f
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x4
	.long	0x4553
	.string	"rewrite_info"
	.byte	0x38
	.byte	0x1
	.byte	0x2a
	.uleb128 0xe
	.string	"need_reload"
	.byte	0x1
	.value	0x352
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"scratch"
	.byte	0x1
	.value	0x355
	.long	0x2745
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"live"
	.byte	0x1
	.value	0x359
	.long	0x27ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"needed_loads"
	.byte	0x1
	.value	0x35c
	.long	0x4553
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"nl_size"
	.byte	0x1
	.value	0x35e
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF28
	.byte	0x1
	.value	0x360
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"colors_in_use"
	.byte	0x1
	.value	0x362
	.long	0x2685
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"any_spilltemps_spilled"
	.byte	0x1
	.value	0x366
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"need_load"
	.byte	0x1
	.value	0x369
	.long	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3523
	.uleb128 0x2b
	.long	0x4696
	.string	"emit_loads"
	.byte	0x1
	.value	0x377
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.string	"ri"
	.byte	0x1
	.value	0x374
	.long	0x4696
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF29
	.byte	0x1
	.value	0x375
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF30
	.byte	0x1
	.value	0x376
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x378
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	0x4685
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x37b
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x37c
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x37d
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"ni"
	.byte	0x1
	.value	0x37e
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"slot"
	.byte	0x1
	.value	0x37e
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.value	0x37e
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"before"
	.byte	0x1
	.value	0x37f
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"after"
	.byte	0x1
	.value	0x37f
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x380
	.long	0x2b15
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	0x466a
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x2d
	.string	"foll"
	.byte	0x1
	.value	0x3c8
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x27
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x2d
	.string	"prev"
	.byte	0x1
	.value	0x3d5
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LASF15
	.long	0x573e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12291
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4479
	.uleb128 0x2b
	.long	0x4841
	.string	"reloads_to_loads"
	.byte	0x1
	.value	0x401
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2e
	.string	"ri"
	.byte	0x1
	.value	0x3fd
	.long	0x4696
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"refs"
	.byte	0x1
	.value	0x3fe
	.long	0x306f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"num_refs"
	.byte	0x1
	.value	0x3ff
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"ref2web"
	.byte	0x1
	.value	0x400
	.long	0x4553
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x402
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF28
	.byte	0x1
	.value	0x403
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	0x4830
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x406
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x407
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF32
	.byte	0x1
	.value	0x408
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x409
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x2d
	.string	"old_num_r"
	.byte	0x1
	.value	0x419
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x41b
	.long	0x273f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x41b
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x41b
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x41b
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x41b
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x41b
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x41b
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"aweb2"
	.byte	0x1
	.value	0x41b
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LASF15
	.long	0x5729
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12449
	.byte	0x0
	.uleb128 0x2b
	.long	0x4f9e
	.string	"rewrite_program2"
	.byte	0x1
	.value	0x43d
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x43c
	.long	0x2745
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x43e
	.long	0x2b15
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2c
	.long	.LASF29
	.byte	0x1
	.value	0x43f
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x2d
	.string	"ri"
	.byte	0x1
	.value	0x440
	.long	0x4479
	.byte	0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2c
	.long	.LASF9
	.byte	0x1
	.value	0x441
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x26
	.long	0x4f8d
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x2d
	.string	"last_bb"
	.byte	0x1
	.value	0x44a
	.long	0x2b15
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x2c
	.long	.LASF30
	.byte	0x1
	.value	0x44b
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x44c
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x44c
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x26
	.long	0x491f
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x457
	.long	0x3e14
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.byte	0x0
	.uleb128 0x26
	.long	0x49cb
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x458
	.long	0x273f
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x458
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x458
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x458
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x27
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x458
	.long	0x26a9
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x27
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x458
	.long	0x26a9
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x27
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x458
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x458
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4a22
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x470
	.long	0x35d5
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2d
	.string	"pass"
	.byte	0x1
	.value	0x471
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x27
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x477
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x478
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4d46
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x2d
	.string	"info"
	.byte	0x1
	.value	0x489
	.long	0x3876
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x48a
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x26
	.long	0x4bd8
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x2d
	.string	"index"
	.byte	0x1
	.value	0x48e
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x26
	.long	0x4b19
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x48f
	.long	0x273f
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x48f
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x48f
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x48f
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x27
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x48f
	.long	0x26a9
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x27
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x48f
	.long	0x26a9
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x27
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x48f
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x48f
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x49a
	.long	0x273f
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x49a
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x49a
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x49a
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x27
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x49a
	.long	0x26a9
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x27
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x49a
	.long	0x26a9
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x27
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x49a
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.string	"supweb2"
	.byte	0x1
	.value	0x49a
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2d
	.string	"aweb2"
	.byte	0x1
	.value	0x49a
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4c75
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2d
	.string	"ref"
	.byte	0x1
	.value	0x4b9
	.long	0x2c3c
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x4ba
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x4bb
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2d
	.string	"is_non_def"
	.byte	0x1
	.value	0x4bc
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.string	"n2"
	.byte	0x1
	.value	0x4bd
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x26
	.long	0x4c59
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x4c7
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x0
	.uleb128 0x27
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x2d
	.string	"sweb"
	.byte	0x1
	.value	0x4eb
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x4cb3
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x509
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x50a
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2c
	.long	.LASF32
	.byte	0x1
	.value	0x50b
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x0
	.uleb128 0x26
	.long	0x4cdd
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2d
	.string	"old_num_reloads"
	.byte	0x1
	.value	0x51b
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x0
	.uleb128 0x26
	.long	0x4d0b
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x532
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x533
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x27
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x53c
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF31
	.byte	0x1
	.value	0x53d
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x53e
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2d
	.string	"in_ir"
	.byte	0x1
	.value	0x562
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.string	"e"
	.byte	0x1
	.value	0x563
	.long	0x2894
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.string	"num"
	.byte	0x1
	.value	0x564
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.string	"cum_colors"
	.byte	0x1
	.value	0x565
	.long	0x2685
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2d
	.string	"colors"
	.byte	0x1
	.value	0x565
	.long	0x2685
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x26
	.long	0x4dc7
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x566
	.long	0x3e14
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x26
	.long	0x4ed6
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x569
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	0x4e00
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x56a
	.long	0x3e14
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x26
	.long	0x4eac
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x56b
	.long	0x273f
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x56b
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x56b
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x56b
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x56b
	.long	0x26a9
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x56b
	.long	0x26a9
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x56b
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF24
	.byte	0x1
	.value	0x56b
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x2c
	.long	.LASF21
	.byte	0x1
	.value	0x572
	.long	0x3e14
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF22
	.byte	0x1
	.value	0x572
	.long	0x3e14
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x578
	.long	0x273f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x578
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x578
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x578
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x578
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x578
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x578
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"supweb2"
	.byte	0x1
	.value	0x578
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"aweb2"
	.byte	0x1
	.value	0x578
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.long	.LASF15
	.long	0x5724
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12764
	.byte	0x0
	.uleb128 0x2b
	.long	0x502a
	.string	"mark_refs_for_checking"
	.byte	0x1
	.value	0x5aa
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x5a8
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF35
	.byte	0x1
	.value	0x5a9
	.long	0x2745
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x5ab
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	0x5011
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x2d
	.string	"id"
	.byte	0x1
	.value	0x5ae
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x27
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x2d
	.string	"id"
	.byte	0x1
	.value	0x5b6
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x51d0
	.string	"detect_web_parts_to_rebuild"
	.byte	0x1
	.value	0x5c4
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x2c
	.long	.LASF35
	.byte	0x1
	.value	0x5c5
	.long	0x2745
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x5c6
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.string	"pass"
	.byte	0x1
	.value	0x5c6
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x5c7
	.long	0x35d5
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"already_webs"
	.byte	0x1
	.value	0x5c8
	.long	0x27ad
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	0x51b5
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x5d7
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"wl"
	.byte	0x1
	.value	0x5d8
	.long	0x3792
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x5d9
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	0x5107
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2d
	.string	"id"
	.byte	0x1
	.value	0x5e3
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x26
	.long	0x5123
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x2d
	.string	"id"
	.byte	0x1
	.value	0x5ec
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x27
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x5fe
	.long	0x273f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x5fe
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x5fe
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x5fe
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x5fe
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x5fe
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x2c
	.long	.LASF27
	.byte	0x1
	.value	0x5fe
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2d
	.string	"link"
	.byte	0x1
	.value	0x613
	.long	0x2bc5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x52b6
	.string	"delete_useless_defs"
	.byte	0x1
	.value	0x634
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x635
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x639
	.long	0x273f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x639
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x639
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x639
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x639
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x639
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x2c
	.long	.LASF9
	.byte	0x1
	.value	0x639
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0x639
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x639
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x531c
	.string	"detect_non_changed_webs"
	.byte	0x1
	.value	0x650
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x651
	.long	0x35d5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"d_next"
	.byte	0x1
	.value	0x651
	.long	0x35d5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x654
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x5352
	.string	"reset_changed_flag"
	.byte	0x1
	.value	0x66a
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.value	0x66b
	.long	0x35d5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x31
	.long	0x540a
	.byte	0x1
	.string	"actual_spill"
	.byte	0x1
	.value	0x677
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x678
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF23
	.byte	0x1
	.value	0x679
	.long	0x2745
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2c
	.long	.LASF19
	.byte	0x1
	.value	0x689
	.long	0x273f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF33
	.byte	0x1
	.value	0x689
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF18
	.byte	0x1
	.value	0x689
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF17
	.byte	0x1
	.value	0x689
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.value	0x689
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2c
	.long	.LASF34
	.byte	0x1
	.value	0x689
	.long	0x26a9
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x5582
	.byte	0x1
	.string	"emit_colors"
	.byte	0x1
	.value	0x69b
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2e
	.string	"df"
	.byte	0x1
	.value	0x69a
	.long	0x5582
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x69c
	.long	0x5e8
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.string	"si"
	.byte	0x1
	.value	0x69d
	.long	0x399
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"web"
	.byte	0x1
	.value	0x69e
	.long	0x3523
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"old_max_regno"
	.byte	0x1
	.value	0x69f
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"old_regs"
	.byte	0x1
	.value	0x6a0
	.long	0x27c8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x6a1
	.long	0x2b15
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	0x54fa
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x2d
	.string	"place"
	.byte	0x1
	.value	0x6b5
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x2d
	.string	"inherent_size"
	.byte	0x1
	.value	0x6b8
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"total_size"
	.byte	0x1
	.value	0x6b9
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x5528
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x2d
	.string	"rs"
	.byte	0x1
	.value	0x6ec
	.long	0x27c8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"regrtx"
	.byte	0x1
	.value	0x6ed
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x26
	.long	0x5556
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x2d
	.string	"rs"
	.byte	0x1
	.value	0x700
	.long	0x27c8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"regrtx"
	.byte	0x1
	.value	0x701
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x26
	.long	0x5571
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.value	0x71d
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x28
	.long	.LASF15
	.long	0x570f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14071
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2e36
	.uleb128 0x31
	.long	0x55ec
	.byte	0x1
	.string	"delete_moves"
	.byte	0x1
	.value	0x733
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2d
	.string	"ml"
	.byte	0x1
	.value	0x734
	.long	0x37cb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x735
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x735
	.long	0x3523
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2d
	.string	"bb"
	.byte	0x1
	.value	0x758
	.long	0x2b15
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x5665
	.byte	0x1
	.string	"remove_suspicious_death_notes"
	.byte	0x1
	.value	0x76d
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2c
	.long	.LASF9
	.byte	0x1
	.value	0x76e
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x2d
	.string	"pnote"
	.byte	0x1
	.value	0x772
	.long	0x188f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2d
	.string	"note"
	.byte	0x1
	.value	0x775
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x56ab
	.byte	0x1
	.string	"setup_renumber"
	.byte	0x1
	.value	0x78b
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2e
	.string	"free_it"
	.byte	0x1
	.value	0x78a
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x78c
	.long	0x399
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x56dd
	.byte	0x1
	.string	"dump_cost"
	.byte	0x1
	.value	0x7a1
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2e
	.string	"level"
	.byte	0x1
	.value	0x7a0
	.long	0x5e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.string	"ra_rewrite_init"
	.byte	0x1
	.value	0x7b4
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x10
	.long	0x570f
	.long	0x391
	.uleb128 0x11
	.long	0x5ff
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x56ff
	.uleb128 0x10
	.long	0x5724
	.long	0x391
	.uleb128 0x11
	.long	0x5ff
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x5714
	.uleb128 0xa
	.long	0x5714
	.uleb128 0x10
	.long	0x573e
	.long	0x391
	.uleb128 0x11
	.long	0x5ff
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0x572e
	.uleb128 0x10
	.long	0x5753
	.long	0x391
	.uleb128 0x11
	.long	0x5ff
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x5743
	.uleb128 0xa
	.long	0x5714
	.uleb128 0x25
	.string	"deleted_move_insns"
	.byte	0x1
	.byte	0x4b
	.long	0x5e8
	.byte	0x5
	.byte	0x3
	.long	deleted_move_insns
	.uleb128 0x25
	.string	"deleted_move_cost"
	.byte	0x1
	.byte	0x4c
	.long	0x695
	.byte	0x5
	.byte	0x3
	.long	deleted_move_cost
	.uleb128 0x2d
	.string	"emitted_spill_loads"
	.byte	0x1
	.value	0x17a
	.long	0x5e8
	.byte	0x5
	.byte	0x3
	.long	emitted_spill_loads
	.uleb128 0x2d
	.string	"emitted_spill_stores"
	.byte	0x1
	.value	0x17b
	.long	0x5e8
	.byte	0x5
	.byte	0x3
	.long	emitted_spill_stores
	.uleb128 0x2d
	.string	"emitted_remat"
	.byte	0x1
	.value	0x17c
	.long	0x5e8
	.byte	0x5
	.byte	0x3
	.long	emitted_remat
	.uleb128 0x2d
	.string	"spill_load_cost"
	.byte	0x1
	.value	0x17d
	.long	0x695
	.byte	0x5
	.byte	0x3
	.long	spill_load_cost
	.uleb128 0x2d
	.string	"spill_store_cost"
	.byte	0x1
	.value	0x17e
	.long	0x695
	.byte	0x5
	.byte	0x3
	.long	spill_store_cost
	.uleb128 0x2d
	.string	"spill_remat_cost"
	.byte	0x1
	.value	0x17f
	.long	0x695
	.byte	0x5
	.byte	0x3
	.long	spill_remat_cost
	.uleb128 0x2d
	.string	"useless_defs"
	.byte	0x1
	.value	0x184
	.long	0x2745
	.byte	0x5
	.byte	0x3
	.long	useless_defs
	.uleb128 0x2d
	.string	"deleted_def_insns"
	.byte	0x1
	.value	0x62c
	.long	0x5e8
	.byte	0x5
	.byte	0x3
	.long	deleted_def_insns
	.uleb128 0x2d
	.string	"deleted_def_cost"
	.byte	0x1
	.value	0x62d
	.long	0x695
	.byte	0x5
	.byte	0x3
	.long	deleted_def_cost
	.uleb128 0x2d
	.string	"regnos_coalesced_to_hardregs"
	.byte	0x1
	.value	0x693
	.long	0x2745
	.byte	0x5
	.byte	0x3
	.long	regnos_coalesced_to_hardregs
	.uleb128 0x33
	.string	"mips_tune"
	.byte	0x9
	.byte	0xa4
	.long	0x206
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x5902
	.long	0x391
	.uleb128 0x34
	.uleb128 0x11
	.long	0x5ff
	.byte	0xaf
	.byte	0x0
	.uleb128 0x35
	.string	"mips_hard_regno_mode_ok"
	.byte	0x9
	.value	0x778
	.long	0x58f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x5934
	.long	0x62c
	.uleb128 0x11
	.long	0x5ff
	.byte	0x35
	.byte	0x0
	.uleb128 0x33
	.string	"mode_size"
	.byte	0x6
	.byte	0x59
	.long	0x5947
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x5924
	.uleb128 0x10
	.long	0x595c
	.long	0x391
	.uleb128 0x11
	.long	0x5ff
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_class"
	.byte	0x5
	.byte	0x3f
	.long	0x596f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x594c
	.uleb128 0x35
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x25f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x5993
	.long	0x391
	.uleb128 0x11
	.long	0x5ff
	.byte	0xaf
	.byte	0x0
	.uleb128 0x35
	.string	"fixed_regs"
	.byte	0xa
	.value	0x18b
	.long	0x5983
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"call_used_reg_set"
	.byte	0xa
	.value	0x19e
	.long	0x2685
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"last_basic_block"
	.byte	0x8
	.byte	0xf6
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x59ee
	.long	0x16d1
	.uleb128 0x11
	.long	0x5ff
	.byte	0x1
	.byte	0x0
	.uleb128 0x35
	.string	"entry_exit_blocks"
	.byte	0x8
	.value	0x139
	.long	0x59de
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"max_regno"
	.byte	0xd
	.byte	0x2c
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"reg_renumber"
	.byte	0xd
	.byte	0x9a
	.long	0x5a33
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x677
	.uleb128 0x35
	.string	"rtl_dump_file"
	.byte	0xe
	.value	0x1b8
	.long	0x5a51
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6f3
	.uleb128 0x35
	.string	"insn_df"
	.byte	0x3
	.value	0x16f
	.long	0x5a69
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3876
	.uleb128 0x35
	.string	"insn_df_max_uid"
	.byte	0x3
	.value	0x171
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"sup_igraph"
	.byte	0x3
	.value	0x17e
	.long	0x27ad
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"insns_with_deaths"
	.byte	0x3
	.value	0x183
	.long	0x27ad
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"death_insns_max_uid"
	.byte	0x3
	.value	0x185
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"web_parts"
	.byte	0x3
	.value	0x189
	.long	0x374a
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"num_webs"
	.byte	0x3
	.value	0x18c
	.long	0x5e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"num_subwebs"
	.byte	0x3
	.value	0x18e
	.long	0x5e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"id2web"
	.byte	0x3
	.value	0x193
	.long	0x4553
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"def2web"
	.byte	0x3
	.value	0x199
	.long	0x4553
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"use2web"
	.byte	0x3
	.value	0x19b
	.long	0x4553
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"wl_moves"
	.byte	0x3
	.value	0x19e
	.long	0x37cb
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"ra_reg_renumber"
	.byte	0x3
	.value	0x1a4
	.long	0x5a33
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"ra_max_regno"
	.byte	0x3
	.value	0x1a7
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"df"
	.byte	0x3
	.value	0x1ab
	.long	0x5582
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"live_at_end"
	.byte	0x3
	.value	0x1af
	.long	0x5bb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2745
	.uleb128 0x35
	.string	"ra_pass"
	.byte	0x3
	.value	0x1b3
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"max_normal_pseudo"
	.byte	0x3
	.value	0x1b9
	.long	0x5e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"an_unusable_color"
	.byte	0x3
	.value	0x1c4
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x5c11
	.long	0x35d5
	.uleb128 0x11
	.long	0x5ff
	.byte	0xb
	.byte	0x0
	.uleb128 0x35
	.string	"web_lists"
	.byte	0x3
	.value	0x1cb
	.long	0x5c01
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"last_max_uid"
	.byte	0x3
	.value	0x1d5
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"last_check_uses"
	.byte	0x3
	.value	0x1da
	.long	0x27ad
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"never_use_colors"
	.byte	0x3
	.value	0x1e8
	.long	0x2685
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"debug_new_regalloc"
	.byte	0x3
	.value	0x215
	.long	0x5e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"flag_ra_improved_spilling"
	.byte	0x3
	.value	0x21c
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"flag_ra_ir_spilling"
	.byte	0x3
	.value	0x220
	.long	0x399
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"flag_ra_spill_every_use"
	.byte	0x3
	.value	0x230
	.long	0x399
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0x17
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x97
	.value	0x2
	.long	.Ldebug_info0
	.long	0x5cf3
	.long	0x5352
	.string	"actual_spill"
	.long	0x540a
	.string	"emit_colors"
	.long	0x5588
	.string	"delete_moves"
	.long	0x55ec
	.string	"remove_suspicious_death_notes"
	.long	0x5665
	.string	"setup_renumber"
	.long	0x56ab
	.string	"dump_cost"
	.long	0x56dd
	.string	"ra_rewrite_init"
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
.LASF29:
	.string	"nl_first_reload"
.LASF26:
	.string	"following"
.LASF4:
	.string	"next"
.LASF9:
	.string	"insn"
.LASF31:
	.string	"supweb"
.LASF25:
	.string	"source"
.LASF12:
	.string	"num_uses"
.LASF18:
	.string	"bit_num_"
.LASF10:
	.string	"reg_info"
.LASF21:
	.string	"scan_tp_"
.LASF17:
	.string	"word_num_"
.LASF2:
	.string	"mem_attrs"
.LASF19:
	.string	"ptr_"
.LASF16:
	.string	"processed"
.LASF33:
	.string	"indx_"
.LASF27:
	.string	"web2"
.LASF28:
	.string	"num_reloads"
.LASF5:
	.string	"sequence_stack"
.LASF15:
	.string	"__FUNCTION__"
.LASF13:
	.string	"num_defs"
.LASF34:
	.string	"mask_"
.LASF30:
	.string	"last_block_insn"
.LASF1:
	.string	"_IO_FILE"
.LASF8:
	.string	"insns"
.LASF14:
	.string	"spilled"
.LASF20:
	.string	"word_"
.LASF6:
	.string	"sequence_rtl_expr"
.LASF32:
	.string	"is_death"
.LASF35:
	.string	"uses_as_bitmap"
.LASF24:
	.string	"aweb"
.LASF23:
	.string	"new_deaths"
.LASF7:
	.string	"function_frequency"
.LASF22:
	.string	"scan_fp_"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"crosses_call"
.LASF3:
	.string	"flags"
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
