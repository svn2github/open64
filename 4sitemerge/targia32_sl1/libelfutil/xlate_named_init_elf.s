	.file	"xlate_named_init_elf.c"
	.ident	"$Revision: 1.1 $"
	.text
	.type	_xlate_initialize_v1_table, @function
_xlate_initialize_v1_table:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$71, %eax
	ja	.L2
	movl	$-44, -76(%ebp)
	jmp	.L4
.L2:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 60(%eax)
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L5
	movl	$-45, -76(%ebp)
	jmp	.L4
.L5:
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	-28(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	-28(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	-28(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	movl	-28(%ebp), %eax
	movl	32(%eax), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
	movl	-28(%ebp), %eax
	movl	36(%eax), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 88(%ecx)
	movl	%edx, 92(%ecx)
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 96(%ecx)
	movl	%edx, 100(%ecx)
	movl	-28(%ebp), %eax
	movl	44(%eax), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 104(%ecx)
	movl	%edx, 108(%ecx)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$76, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L7
	movl	$-1, -76(%ebp)
	jmp	.L4
.L7:
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	je	.L9
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	84(%eax), %ecx
	movl	%edx, -72(%ebp)
	movl	%ecx, -68(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	-72(%ebp), %eax
	orl	%esi, %eax
	movl	-68(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	92(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 88(%ecx)
	movl	%edx, 92(%ecx)
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	100(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 96(%ecx)
	movl	%edx, 100(%ecx)
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	108(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	-44(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 104(%ecx)
	movl	%edx, 108(%ecx)
.L9:
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	imull	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	addl	%eax, -24(%ebp)
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-20(%ebp), %eax
	jae	.L11
	movl	$-44, -76(%ebp)
	jmp	.L4
.L11:
	movl	8(%ebp), %edx
	movl	_xlate_get_infov1@GOT(%ebx), %eax
	movl	%eax, 32(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_binary_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 40(%edx)
	movl	8(%ebp), %eax
	movzbl	60(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	cmpl	$1, -36(%ebp)
	je	.L15
	cmpl	$2, -36(%ebp)
	je	.L16
	cmpl	$0, -36(%ebp)
	je	.L14
	jmp	.L13
.L14:
	movl	8(%ebp), %edx
	movl	_xlate_special_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v1_ge@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L17
.L15:
	movl	8(%ebp), %edx
	movl	_xlate_special_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v1_ps@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L17
.L16:
	movl	8(%ebp), %edx
	movl	_xlate_binary_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v1_po@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L17
.L13:
	movl	$-3, -76(%ebp)
	jmp	.L4
.L17:
	movl	8(%ebp), %eax
	movl	_xlate_index_into_blockhdrs_v1@GOT(%ebx), %edx
	movl	%edx, 44(%eax)
	movl	$0, -76(%ebp)
.L4:
	movl	-76(%ebp), %eax
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_initialize_v1_table, .-_xlate_initialize_v1_table
	.type	_xlate_initialize_32_v2_table, @function
_xlate_initialize_32_v2_table:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$51, %eax
	ja	.L20
	movl	$-44, -28(%ebp)
	jmp	.L22
.L20:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	-8(%ebp), %eax
	movzbl	4(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 60(%eax)
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 88(%ecx)
	movl	%edx, 92(%ecx)
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 96(%ecx)
	movl	%edx, 100(%ecx)
	movl	-8(%ebp), %eax
	movl	36(%eax), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 104(%ecx)
	movl	%edx, 108(%ecx)
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	imull	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$76, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L23
	movl	$-1, -28(%ebp)
	jmp	.L22
.L23:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	addl	%eax, -16(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jae	.L25
	movl	$-44, -28(%ebp)
	jmp	.L22
.L25:
	movl	8(%ebp), %edx
	movl	_xlate_get_infov2_32@GOT(%ebx), %eax
	movl	%eax, 32(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_binary_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 40(%edx)
	movl	8(%ebp), %eax
	movzbl	60(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L29
	cmpl	$2, -24(%ebp)
	je	.L30
	cmpl	$0, -24(%ebp)
	je	.L28
	jmp	.L27
.L28:
	movl	8(%ebp), %edx
	movl	_xlate_special_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v2_32_ge@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L31
.L29:
	movl	8(%ebp), %edx
	movl	_xlate_special_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v2_32_ps@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L31
.L30:
	movl	8(%ebp), %edx
	movl	_xlate_binary_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v2_32_po@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L31
.L27:
	movl	$-3, -28(%ebp)
	jmp	.L22
.L31:
	movl	8(%ebp), %eax
	movl	_xlate_index_into_blockhdrs_v2_32@GOT(%ebx), %edx
	movl	%edx, 44(%eax)
	movl	$0, -28(%ebp)
.L22:
	movl	-28(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_initialize_32_v2_table, .-_xlate_initialize_32_v2_table
	.type	_xlate_initialize_64_v2_table, @function
_xlate_initialize_64_v2_table:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$87, %eax
	ja	.L34
	movl	$-44, -28(%ebp)
	jmp	.L36
.L34:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	-16(%ebp), %eax
	movzbl	4(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 60(%eax)
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	movl	-16(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 76(%eax)
	movl	-16(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
	movl	-16(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 88(%ecx)
	movl	%edx, 92(%ecx)
	movl	-16(%ebp), %eax
	movl	52(%eax), %edx
	movl	48(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 96(%ecx)
	movl	%edx, 100(%ecx)
	movl	-16(%ebp), %eax
	movl	60(%eax), %edx
	movl	56(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 104(%ecx)
	movl	%edx, 108(%ecx)
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	(%ecx,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	imull	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 28(%edx)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$76, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	.L37
	movl	$-1, -28(%ebp)
	jmp	.L36
.L37:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	addl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L39
	movl	$-44, -28(%ebp)
	jmp	.L36
.L39:
	movl	8(%ebp), %edx
	movl	_xlate_get_infov2_64@GOT(%ebx), %eax
	movl	%eax, 32(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_binary_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 40(%edx)
	movl	8(%ebp), %eax
	movzbl	60(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L43
	cmpl	$2, -24(%ebp)
	je	.L44
	cmpl	$0, -24(%ebp)
	je	.L42
	jmp	.L41
.L42:
	movl	8(%ebp), %edx
	movl	_xlate_special_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v2_64_ge@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L45
.L43:
	movl	8(%ebp), %edx
	movl	_xlate_special_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v2_64_ps@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L45
.L44:
	movl	8(%ebp), %edx
	movl	_xlate_binary_search_for_addr@GOT(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8(%ebp), %edx
	movl	_xlate_get_range_from_block_v2_64_po@GOT(%ebx), %eax
	movl	%eax, 48(%edx)
	jmp	.L45
.L41:
	movl	$-3, -28(%ebp)
	jmp	.L36
.L45:
	movl	8(%ebp), %eax
	movl	_xlate_index_into_blockhdrs_v2_64@GOT(%ebx), %edx
	movl	%edx, 44(%eax)
	movl	$0, -28(%ebp)
.L36:
	movl	-28(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_initialize_64_v2_table, .-_xlate_initialize_64_v2_table
	.type	_xlate_fill_in_table_data, @function
_xlate_fill_in_table_data:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$3, %eax
	ja	.L48
	movl	$-44, -72(%ebp)
	jmp	.L50
.L48:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	-56(%ebp), %edx
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	-56(%ebp), %eax
	movl	%eax, -68(%ebp)
	cmpl	$5, -68(%ebp)
	je	.L53
	cmpl	$6, -68(%ebp)
	je	.L54
	cmpl	$1, -68(%ebp)
	je	.L52
	movl	$-3, -72(%ebp)
	jmp	.L50
.L52:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_initialize_v1_table
	movl	%eax, -4(%ebp)
	jmp	.L55
.L53:
	cmpl	$0, 12(%ebp)
	je	.L56
	movl	$-45, -72(%ebp)
	jmp	.L50
.L56:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_initialize_32_v2_table
	movl	%eax, -4(%ebp)
	jmp	.L55
.L54:
	cmpl	$0, 12(%ebp)
	jne	.L58
	movl	$-45, -72(%ebp)
	jmp	.L50
.L58:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_initialize_64_v2_table
	movl	%eax, -4(%ebp)
.L55:
	movl	-4(%ebp), %eax
	movl	%eax, -72(%ebp)
.L50:
	movl	-72(%ebp), %eax
	leave
	ret
	.size	_xlate_fill_in_table_data, .-_xlate_fill_in_table_data
.globl _xlate_named_init_elf
	.type	_xlate_named_init_elf, @function
_xlate_named_init_elf:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_kind@PLT
	cmpl	$3, %eax
	je	.L62
	movl	$-33, -72(%ebp)
	jmp	.L64
.L62:
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getident@PLT
	movl	%eax, -40(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L65
	movl	-60(%ebp), %eax
	cmpl	$15, %eax
	ja	.L67
.L65:
	movl	$-25, -72(%ebp)
	jmp	.L64
.L67:
	movl	-40(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$2, %al
	jne	.L68
	movl	$1, -44(%ebp)
.L68:
	cmpl	$0, -44(%ebp)
	je	.L70
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf64_getehdr@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L72
	movl	$-56, -72(%ebp)
	jmp	.L64
.L72:
	movl	-20(%ebp), %eax
	movzwl	62(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	jmp	.L74
.L70:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf32_getehdr@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L75
	movl	$-56, -72(%ebp)
	jmp	.L64
.L75:
	movl	-24(%ebp), %eax
	movzwl	50(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
.L74:
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_nextscn@PLT
	movl	%eax, -48(%ebp)
	jmp	.L77
.L78:
	cmpl	$0, -44(%ebp)
	je	.L79
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	elf64_getshdr@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.L81
	movl	$-26, -72(%ebp)
	jmp	.L64
.L81:
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_strptr@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L83
	movl	$-57, -72(%ebp)
	jmp	.L64
.L83:
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1879048228, %eax
	je	.L85
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1879048229, %eax
	je	.L85
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1879048232, %eax
	jne	.L88
.L85:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L88
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L90
.L79:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	elf32_getshdr@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L91
	movl	$-26, -72(%ebp)
	jmp	.L64
.L91:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_strptr@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L93
	movl	$-57, -72(%ebp)
	jmp	.L64
.L93:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1879048228, %eax
	je	.L95
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1879048229, %eax
	je	.L95
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$1879048232, %eax
	jne	.L88
.L95:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L88
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L90
.L88:
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_nextscn@PLT
	movl	%eax, -48(%ebp)
.L77:
	cmpl	$0, -48(%ebp)
	je	.L90
	cmpl	$0, -36(%ebp)
	je	.L78
.L90:
	cmpl	$0, -36(%ebp)
	jne	.L100
	movl	$-27, -72(%ebp)
	jmp	.L64
.L100:
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getdata@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L102
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L104
.L102:
	movl	$-28, -72(%ebp)
	jmp	.L64
.L104:
	movl	$280, (%esp)
	call	malloc@PLT
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	.L105
	movl	$-1, -72(%ebp)
	jmp	.L64
.L105:
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	movl	$280, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-52(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	.L107
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$-42, -72(%ebp)
	jmp	.L64
.L107:
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_fill_in_table_data
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	je	.L109
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-56(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L64
.L109:
	movl	-52(%ebp), %eax
	movl	$-1593774028, (%eax)
	movl	16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	movl	-56(%ebp), %eax
	movl	%eax, -72(%ebp)
.L64:
	movl	-72(%ebp), %eax
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_named_init_elf, .-_xlate_named_init_elf
.globl _xlate_finish
	.type	_xlate_finish, @function
_xlate_finish:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -16(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.L113
	movl	$-2, -24(%ebp)
	jmp	.L115
.L113:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1593774028, %eax
	je	.L116
	movl	$-43, -24(%ebp)
	jmp	.L115
.L116:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L118
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L120
.L121:
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L122
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	$0, 48(%eax)
.L122:
	addl	$1, -12(%ebp)
	addl	$76, -8(%ebp)
.L120:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	-12(%ebp), %eax
	ja	.L121
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	8(%ebp), %eax
	movl	$0, 52(%eax)
.L118:
	movl	8(%ebp), %eax
	movzbl	5(%eax), %eax
	testb	%al, %al
	je	.L125
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	elf_end@PLT
.L125:
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	$280, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
.L115:
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_finish, .-_xlate_finish
	.weak	xlate_finish
	.set	xlate_finish,_xlate_finish
	.weak	xlate_named_init_elf
	.set	xlate_named_init_elf,_xlate_named_init_elf
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
