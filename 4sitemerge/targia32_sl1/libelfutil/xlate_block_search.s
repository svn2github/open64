	.file	"xlate_block_search.c"
	.ident	"$Revision: 1.1 $"
	.text
	.type	look_in_memo_data, @function
look_in_memo_data:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L2
	movl	16(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -128(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-124(%ebp), %ecx
	cmpl	-36(%ebp), %ecx
	ja	.L4
	movl	-124(%ebp), %esi
	cmpl	-36(%ebp), %esi
	jb	.L6
	movl	-128(%ebp), %edi
	cmpl	-40(%ebp), %edi
	ja	.L4
.L6:
	movl	16(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-116(%ebp), %ecx
	cmpl	-36(%ebp), %ecx
	ja	.L7
	movl	-116(%ebp), %esi
	cmpl	-36(%ebp), %esi
	jb	.L4
	movl	-120(%ebp), %edi
	cmpl	-40(%ebp), %edi
	ja	.L7
.L4:
	movl	$-46, -108(%ebp)
	jmp	.L9
.L7:
	movl	16(%ebp), %eax
	addl	$52, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-100(%ebp), %ecx
	cmpl	-36(%ebp), %ecx
	ja	.L10
	movl	-100(%ebp), %esi
	cmpl	-36(%ebp), %esi
	jb	.L12
	movl	-104(%ebp), %edi
	cmpl	-40(%ebp), %edi
	ja	.L10
.L12:
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	movl	-92(%ebp), %edi
	cmpl	-36(%ebp), %edi
	jb	.L10
	movl	-92(%ebp), %eax
	cmpl	-36(%ebp), %eax
	ja	.L14
	movl	-96(%ebp), %edx
	cmpl	-40(%ebp), %edx
	jbe	.L10
.L14:
	movl	-24(%ebp), %eax
	movl	24(%eax), %esi
	movl	28(%eax), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_get_out_from_ranges@PLT
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 32(%ebp)
	je	.L15
	movl	32(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L15:
	movl	$0, -108(%ebp)
	jmp	.L9
.L10:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	imull	$76, %eax, %eax
	addl	%eax, %edx
	movl	32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %ecx
	movl	%ecx, -108(%ebp)
	jmp	.L9
.L2:
	movl	16(%ebp), %eax
	movl	36(%eax), %esi
	movl	40(%eax), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-76(%ebp), %edi
	cmpl	-36(%ebp), %edi
	ja	.L17
	movl	-76(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L19
	movl	-80(%ebp), %edx
	cmpl	-40(%ebp), %edx
	ja	.L17
.L19:
	movl	16(%ebp), %eax
	movl	44(%eax), %esi
	movl	48(%eax), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-68(%ebp), %edi
	cmpl	-36(%ebp), %edi
	ja	.L20
	movl	-68(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L17
	movl	-72(%ebp), %edx
	cmpl	-40(%ebp), %edx
	ja	.L20
.L17:
	movl	$-46, -108(%ebp)
	jmp	.L9
.L20:
	movl	16(%ebp), %eax
	addl	$52, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	-60(%ebp), %edi
	cmpl	-36(%ebp), %edi
	ja	.L22
	movl	-60(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L24
	movl	-64(%ebp), %edx
	cmpl	-40(%ebp), %edx
	ja	.L22
.L24:
	movl	-20(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	%esi, -144(%ebp)
	movl	%edi, -140(%ebp)
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	-144(%ebp), %esi
	movl	-140(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-52(%ebp), %edi
	cmpl	-36(%ebp), %edi
	jb	.L22
	movl	-52(%ebp), %eax
	cmpl	-36(%ebp), %eax
	ja	.L26
	movl	-56(%ebp), %edx
	cmpl	-40(%ebp), %edx
	jbe	.L22
.L26:
	movl	-20(%ebp), %eax
	movl	8(%eax), %esi
	movl	12(%eax), %edi
	movl	%esi, -48(%ebp)
	movl	%edi, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-136(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_get_out_from_ranges@PLT
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 32(%ebp)
	je	.L27
	movl	32(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L27:
	movl	$0, -108(%ebp)
	jmp	.L9
.L22:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	16(%ebp), %eax
	movl	12(%eax), %eax
	imull	$76, %eax, %eax
	addl	%eax, %edx
	movl	32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$1, 16(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %ecx
	movl	%ecx, -108(%ebp)
.L9:
	movl	-108(%ebp), %eax
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	look_in_memo_data, .-look_in_memo_data
.globl _xlate_binary_search_for_addr
	.type	_xlate_binary_search_for_addr, @function
_xlate_binary_search_for_addr:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$152, %esp
	movl	16(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -8(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L31
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -4(%ebp)
	jmp	.L33
.L31:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -4(%ebp)
.L33:
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L34
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	look_in_memo_data
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L34
	movl	-8(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L37
.L34:
	movl	-4(%ebp), %eax
	movb	$0, (%eax)
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-20(%ebp), %eax
	imull	$76, %eax, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 20(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L38
	movl	-8(%ebp), %edx
	movl	%edx, -108(%ebp)
	jmp	.L37
.L38:
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L40
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	jmp	.L64
.L40:
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-24(%ebp), %eax
	imull	$76, %eax, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 20(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L64
	movl	-8(%ebp), %ecx
	movl	%ecx, -108(%ebp)
	jmp	.L37
.L45:
	movl	-24(%ebp), %eax
	addl	-20(%ebp), %eax
	shrl	%eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-16(%ebp), %eax
	imull	$76, %eax, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 20(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L46
	movl	-8(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L37
.L46:
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-100(%ebp), %ecx
	cmpl	-68(%ebp), %ecx
	ja	.L48
	movl	-100(%ebp), %eax
	cmpl	-68(%ebp), %eax
	jb	.L50
	movl	-104(%ebp), %edx
	cmpl	-72(%ebp), %edx
	ja	.L48
.L50:
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	.L44
.L48:
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L44:
.L64:
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	$1, %eax
	ja	.L45
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-92(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	ja	.L52
	movl	-92(%ebp), %ecx
	cmpl	%ecx, -68(%ebp)
	jb	.L54
	movl	-96(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jae	.L52
.L54:
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L55
.L52:
	movl	-24(%ebp), %eax
	movl	%eax, -12(%ebp)
.L55:
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$76, %eax, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 20(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L56
	movl	-8(%ebp), %edx
	movl	%edx, -108(%ebp)
	jmp	.L37
.L56:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-84(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	ja	.L58
	movl	-84(%ebp), %ecx
	cmpl	%ecx, -68(%ebp)
	jb	.L60
	movl	-88(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jae	.L58
.L60:
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %ecx
	cmpl	%ecx, -68(%ebp)
	ja	.L61
	movl	-76(%ebp), %eax
	cmpl	%eax, -68(%ebp)
	jb	.L58
	movl	-80(%ebp), %edx
	cmpl	%edx, -72(%ebp)
	jae	.L61
.L58:
	movl	$-46, -108(%ebp)
	jmp	.L37
.L61:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$76, %eax, %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$0, 16(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %ecx
	movl	%ecx, -108(%ebp)
.L37:
	movl	-108(%ebp), %eax
	leave
	ret
	.size	_xlate_binary_search_for_addr, .-_xlate_binary_search_for_addr
.globl _xlate_special_search_for_addr
	.type	_xlate_special_search_for_addr, @function
_xlate_special_search_for_addr:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	$0, -8(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L66
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -4(%ebp)
	jmp	.L68
.L66:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -4(%ebp)
.L68:
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L69
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	look_in_memo_data
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L69
	movl	-8(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L72
.L69:
	movl	-4(%ebp), %eax
	movb	$0, (%eax)
	movl	$0, -12(%ebp)
	jmp	.L73
.L74:
	movl	8(%ebp), %eax
	movl	44(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$76, %eax, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 20(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L75
	movl	-8(%ebp), %edx
	movl	%edx, -60(%ebp)
	jmp	.L72
.L75:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-52(%ebp), %edx
	cmpl	%edx, -36(%ebp)
	jb	.L77
	movl	-52(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	ja	.L79
	movl	-56(%ebp), %edx
	cmpl	%edx, -40(%ebp)
	jb	.L77
.L79:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-44(%ebp), %edx
	cmpl	%edx, -36(%ebp)
	ja	.L77
	movl	-44(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jb	.L81
	movl	-48(%ebp), %edx
	cmpl	%edx, -40(%ebp)
	jae	.L77
.L81:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	-12(%ebp), %eax
	imull	$76, %eax, %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$0, 16(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -8(%ebp)
	cmpl	$-46, -8(%ebp)
	je	.L77
	movl	-8(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L72
.L77:
	addl	$1, -12(%ebp)
.L73:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jbe	.L74
	movl	$-46, -60(%ebp)
.L72:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_special_search_for_addr, .-_xlate_special_search_for_addr
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
