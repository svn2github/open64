	.file	"xlate_pro_add_range_internal.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_final_update_highwater_addrs
	.type	_xlate_final_update_highwater_addrs, @function
_xlate_final_update_highwater_addrs:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$64, %esp
	cmpl	$0, 12(%ebp)
	je	.L15
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-52(%ebp), %ecx
	cmpl	%ecx, -60(%ebp)
	jb	.L4
	movl	-52(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	ja	.L6
	movl	-56(%ebp), %edx
	cmpl	%edx, -64(%ebp)
	jbe	.L4
.L6:
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
.L4:
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	%ecx, -44(%ebp)
	jb	.L7
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	ja	.L9
	movl	-40(%ebp), %edx
	cmpl	%edx, -48(%ebp)
	jbe	.L7
.L9:
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L7:
	movl	16(%ebp), %eax
	movl	24(%eax), %edx
	movl	28(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	40(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	-20(%ebp), %ecx
	cmpl	%ecx, -28(%ebp)
	ja	.L10
	movl	-20(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jb	.L12
	movl	-24(%ebp), %edx
	cmpl	%edx, -32(%ebp)
	jae	.L10
.L12:
	movl	12(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
.L10:
	movl	16(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%eax), %ecx
	movl	%edx, -16(%ebp)
	movl	%ecx, -12(%ebp)
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	48(%eax), %ecx
	movl	%edx, -8(%ebp)
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %ecx
	cmpl	%ecx, -12(%ebp)
	ja	.L15
	movl	-4(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jb	.L14
	movl	-8(%ebp), %edx
	cmpl	%edx, -16(%ebp)
	jae	.L15
.L14:
	movl	12(%ebp), %eax
	movl	48(%eax), %edx
	movl	44(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
.L15:
	leave
	ret
	.size	_xlate_final_update_highwater_addrs, .-_xlate_final_update_highwater_addrs
	.type	update_block_highwater, @function
update_block_highwater:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$64, %esp
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-60(%ebp), %ecx
	cmpl	-4(%ebp), %ecx
	jb	.L17
	movl	-60(%ebp), %eax
	cmpl	-4(%ebp), %eax
	ja	.L19
	movl	-64(%ebp), %edx
	cmpl	-8(%ebp), %edx
	jbe	.L17
.L19:
	movl	8(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%eax, 28(%ecx)
	movl	%edx, 32(%ecx)
.L17:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-52(%ebp), %ecx
	cmpl	-20(%ebp), %ecx
	jb	.L20
	movl	-52(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L22
	movl	-56(%ebp), %edx
	cmpl	-24(%ebp), %edx
	jbe	.L20
.L22:
	movl	8(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
.L20:
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	48(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-44(%ebp), %ecx
	cmpl	-12(%ebp), %ecx
	ja	.L23
	movl	-44(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L25
	movl	-48(%ebp), %edx
	cmpl	-16(%ebp), %edx
	jae	.L23
.L25:
	movl	8(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 44(%ecx)
	movl	%edx, 48(%ecx)
.L23:
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	40(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	-28(%ebp), %ecx
	ja	.L29
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L28
	movl	-40(%ebp), %edx
	cmpl	-32(%ebp), %edx
	jae	.L29
.L28:
	movl	8(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 36(%ecx)
	movl	%edx, 40(%ecx)
.L29:
	leave
	ret
	.size	update_block_highwater, .-update_block_highwater
	.type	do_blk_alloc, @function
do_blk_alloc:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$68, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$4228, (%esp)
	call	malloc@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L31
	movl	$-1, -60(%ebp)
	jmp	.L33
.L31:
	movl	-12(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	movl	-12(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	movl	-12(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
	movl	-12(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 28(%ecx)
	movl	%edx, 32(%ecx)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	-48(%ebp), %eax
	adcl	-44(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%eax, 36(%ecx)
	movl	%edx, 40(%ecx)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	-32(%ebp), %eax
	adcl	-28(%ebp), %edx
	movl	-12(%ebp), %ecx
	movl	%eax, 44(%ecx)
	movl	%edx, 48(%ecx)
	movl	-12(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	movl	-12(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	movl	-12(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	movl	-12(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 76(%ecx)
	movl	%edx, 80(%ecx)
	movl	-12(%ebp), %eax
	movl	$0, 84(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 88(%eax)
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L34
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L36
.L34:
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L36:
	movl	$0, -60(%ebp)
.L33:
	movl	-60(%ebp), %eax
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	do_blk_alloc, .-do_blk_alloc
.globl _xlate_pro_add_range_ps32
	.type	_xlate_pro_add_range_ps32, @function
_xlate_pro_add_range_ps32:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	$0, -68(%ebp)
	movl	-88(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L39
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L41
	movl	-68(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L43
.L41:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-48(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L44
.L39:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	52(%eax), %esi
	movl	56(%eax), %edi
	movl	-48(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %ecx
	xorl	-84(%ebp), %ecx
	xorl	-88(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L45
	movl	$-55, -124(%ebp)
	jmp	.L43
.L45:
	movl	-48(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-48(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-48(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -36(%ebp)
.L44:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%edx, %ecx
	xorl	-108(%ebp), %ecx
	xorl	-112(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L47
	movl	$-53, -124(%ebp)
	jmp	.L43
.L47:
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	sarl	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_signed_encode32@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	$4096, %eax
	jbe	.L49
	movl	52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_final_update_highwater_addrs@PLT
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L51
	movl	-68(%ebp), %edx
	movl	%edx, -124(%ebp)
	jmp	.L43
.L51:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -20(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-36(%ebp), %eax
	sarl	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_signed_encode32@PLT
	addl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-24(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 84(%eax)
	jmp	.L53
.L49:
	movl	-48(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	addl	-88(%ebp), %eax
	adcl	-84(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block_highwater
	movl	-64(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	movl	-56(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	movl	-52(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 76(%ecx)
	movl	%edx, 80(%ecx)
	movl	-48(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 84(%eax)
.L53:
	movl	-68(%ebp), %edx
	movl	%edx, -124(%ebp)
.L43:
	movl	-124(%ebp), %eax
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_pro_add_range_ps32, .-_xlate_pro_add_range_ps32
.globl _xlate_pro_add_range_ps64
	.type	_xlate_pro_add_range_ps64, @function
_xlate_pro_add_range_ps64:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	$0, -44(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L56
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L58
	movl	-44(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L60
.L58:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	jmp	.L61
.L56:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	52(%eax), %esi
	movl	56(%eax), %edi
	movl	-40(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %ecx
	xorl	-100(%ebp), %ecx
	xorl	-104(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L62
	movl	$-55, -140(%ebp)
	jmp	.L60
.L62:
	movl	-40(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-40(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L61:
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%edx, %ecx
	xorl	-124(%ebp), %ecx
	xorl	-128(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L64
	movl	$-53, -140(%ebp)
	jmp	.L60
.L64:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	shrdl	$2, %ecx, %edx
	shrl	$2, %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	-36(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_signed_encode64@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	$4096, %eax
	jbe	.L66
	movl	52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_final_update_highwater_addrs@PLT
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L68
	movl	-44(%ebp), %edx
	movl	%edx, -140(%ebp)
	jmp	.L60
.L68:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -20(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	shrdl	$2, %ecx, %edx
	shrl	$2, %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_signed_encode64@PLT
	addl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-24(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 84(%eax)
	jmp	.L70
.L66:
	movl	-40(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	-120(%ebp), %esi
	movl	-116(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	addl	-104(%ebp), %eax
	adcl	-100(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block_highwater
	movl	-40(%ebp), %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	movl	-40(%ebp), %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	movl	-40(%ebp), %ecx
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	movl	-40(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 76(%ecx)
	movl	%edx, 80(%ecx)
	movl	-40(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 84(%eax)
.L70:
	movl	-44(%ebp), %edx
	movl	%edx, -140(%ebp)
.L60:
	movl	-140(%ebp), %eax
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_pro_add_range_ps64, .-_xlate_pro_add_range_ps64
.globl _xlate_pro_add_range_ge32
	.type	_xlate_pro_add_range_ge32, @function
_xlate_pro_add_range_ge32:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	$0, -68(%ebp)
	movl	-88(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -40(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L73
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L75
	movl	-68(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L77
.L75:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-48(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L78
.L73:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	52(%eax), %esi
	movl	56(%eax), %edi
	movl	-48(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %ecx
	xorl	-84(%ebp), %ecx
	xorl	-88(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L79
	movl	$-55, -124(%ebp)
	jmp	.L77
.L79:
	movl	-48(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-48(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-52(%ebp), %edx
	movl	-56(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -36(%ebp)
	movl	-48(%ebp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %eax
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -40(%ebp)
.L78:
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-40(%ebp), %eax
	sarl	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_signed_encode32@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	sarl	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_signed_encode32@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	$4096, %eax
	jbe	.L81
	movl	52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_final_update_highwater_addrs@PLT
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L83
	movl	-68(%ebp), %edx
	movl	%edx, -124(%ebp)
	jmp	.L77
.L83:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -40(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-40(%ebp), %eax
	sarl	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_signed_encode32@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-36(%ebp), %eax
	sarl	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_signed_encode32@PLT
	addl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-24(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 84(%eax)
	jmp	.L85
.L81:
	movl	-48(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	addl	-88(%ebp), %eax
	adcl	-84(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block_highwater
	movl	-64(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	movl	-56(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	movl	-52(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 76(%ecx)
	movl	%edx, 80(%ecx)
	movl	-48(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 84(%eax)
.L85:
	movl	-68(%ebp), %edx
	movl	%edx, -124(%ebp)
.L77:
	movl	-124(%ebp), %eax
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_pro_add_range_ge32, .-_xlate_pro_add_range_ge32
.globl _xlate_pro_add_range_ge64
	.type	_xlate_pro_add_range_ge64, @function
_xlate_pro_add_range_ge64:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	$0, -44(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L88
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L90
	movl	-44(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L92
.L90:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L93
.L88:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	52(%eax), %esi
	movl	56(%eax), %edi
	movl	-40(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %ecx
	xorl	-100(%ebp), %ecx
	xorl	-104(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L94
	movl	$-55, -140(%ebp)
	jmp	.L92
.L94:
	movl	-40(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-40(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
.L93:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	-36(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_signed_encode64@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	-36(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_signed_encode64@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	$4096, %eax
	jbe	.L96
	movl	52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_final_update_highwater_addrs@PLT
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L98
	movl	-44(%ebp), %edx
	movl	%edx, -140(%ebp)
	jmp	.L92
.L98:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_signed_encode64@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$2, %edx, %eax
	sarl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_signed_encode64@PLT
	addl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-24(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 84(%eax)
	jmp	.L100
.L96:
	movl	-40(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	-120(%ebp), %esi
	movl	-116(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	addl	-104(%ebp), %eax
	adcl	-100(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block_highwater
	movl	-40(%ebp), %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	movl	-40(%ebp), %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 76(%ecx)
	movl	%edx, 80(%ecx)
	movl	-40(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 84(%eax)
.L100:
	movl	-44(%ebp), %edx
	movl	%edx, -140(%ebp)
.L92:
	movl	-140(%ebp), %eax
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_pro_add_range_ge64, .-_xlate_pro_add_range_ge64
.globl _xlate_pro_add_range_po32
	.type	_xlate_pro_add_range_po32, @function
_xlate_pro_add_range_po32:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	$0, -68(%ebp)
	movl	-88(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-104(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L103
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L105
	movl	-68(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L107
.L105:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-48(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L108
.L103:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	52(%eax), %esi
	movl	56(%eax), %edi
	movl	-48(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %ecx
	xorl	-84(%ebp), %ecx
	xorl	-88(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L109
	movl	$-55, -124(%ebp)
	jmp	.L107
.L109:
	movl	-48(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	-48(%ebp), %eax
	movl	80(%eax), %edx
	movl	76(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %ecx
	xorl	-100(%ebp), %ecx
	xorl	-104(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L111
	movl	$-55, -124(%ebp)
	jmp	.L107
.L111:
	movl	-48(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-48(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -36(%ebp)
.L108:
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-44(%ebp), %edx
	movl	-36(%ebp), %eax
	shrl	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_unsigned_encode32@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	$4096, %eax
	jbe	.L113
	movl	52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_final_update_highwater_addrs@PLT
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -68(%ebp)
	cmpl	$0, -68(%ebp)
	je	.L115
	movl	-68(%ebp), %edx
	movl	%edx, -124(%ebp)
	jmp	.L107
.L115:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -20(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_leb128_unsigned_encode32@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-36(%ebp), %eax
	shrl	$2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_leb128_unsigned_encode32@PLT
	addl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-24(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 84(%eax)
	jmp	.L117
.L113:
	movl	-48(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	addl	-88(%ebp), %eax
	adcl	-84(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block_highwater
	movl	-64(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	movl	-56(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	movl	-52(%ebp), %eax
	movl	$0, %edx
	movl	-48(%ebp), %ecx
	movl	%eax, 76(%ecx)
	movl	%edx, 80(%ecx)
	movl	-48(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, 84(%eax)
.L117:
	movl	-68(%ebp), %edx
	movl	%edx, -124(%ebp)
.L107:
	movl	-124(%ebp), %eax
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_pro_add_range_po32, .-_xlate_pro_add_range_po32
.globl _xlate_pro_add_range_po64
	.type	_xlate_pro_add_range_po64, @function
_xlate_pro_add_range_po64:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	20(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	$0, -44(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L120
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L122
	movl	-44(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L124
.L122:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	jmp	.L125
.L120:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	52(%eax), %esi
	movl	56(%eax), %edi
	movl	-40(%ebp), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %ecx
	xorl	-100(%ebp), %ecx
	xorl	-104(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L126
	movl	$-55, -140(%ebp)
	jmp	.L124
.L126:
	movl	-40(%ebp), %eax
	movl	68(%eax), %esi
	movl	72(%eax), %edi
	movl	-40(%ebp), %eax
	movl	80(%eax), %edx
	movl	76(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %ecx
	xorl	-116(%ebp), %ecx
	xorl	-120(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L128
	movl	$-55, -140(%ebp)
	jmp	.L124
.L128:
	movl	-40(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %edx
	addl	$92, %edx
	movl	-28(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L125:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	shrdl	$2, %ecx, %edx
	shrl	$2, %ecx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	-36(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	addl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	$4096, %eax
	jbe	.L130
	movl	52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_final_update_highwater_addrs@PLT
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_blk_alloc
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L132
	movl	-44(%ebp), %edx
	movl	%edx, -140(%ebp)
	jmp	.L124
.L132:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -20(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	shrdl	$2, %ecx, %edx
	shrl	$2, %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_leb128_unsigned_encode64@PLT
	addl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-24(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 84(%eax)
	jmp	.L134
.L130:
	movl	-40(%ebp), %eax
	movl	88(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	-120(%ebp), %esi
	movl	-116(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	addl	-104(%ebp), %eax
	adcl	-100(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	update_block_highwater
	movl	-40(%ebp), %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 52(%ecx)
	movl	%edx, 56(%ecx)
	movl	-40(%ebp), %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 68(%ecx)
	movl	%edx, 72(%ecx)
	movl	-40(%ebp), %ecx
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 60(%ecx)
	movl	%edx, 64(%ecx)
	movl	-40(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 76(%ecx)
	movl	%edx, 80(%ecx)
	movl	-40(%ebp), %eax
	movl	84(%eax), %eax
	leal	1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 84(%eax)
.L134:
	movl	-44(%ebp), %edx
	movl	%edx, -140(%ebp)
.L124:
	movl	-140(%ebp), %eax
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_pro_add_range_po64, .-_xlate_pro_add_range_po64
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
