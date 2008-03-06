	.file	"xlate_update_for_movement.c"
	.ident	"$Revision: 1.1 $"
	.text
	.type	update_blockheader32, @function
update_blockheader32:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$36, %esp
	cmpl	$19, 12(%ebp)
	ja	.L2
	movl	$-43, -36(%ebp)
	jmp	.L4
.L2:
	leal	-20(%ebp), %ecx
	movl	8(%ebp), %edx
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
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L5
	movl	-20(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L5:
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L7
	movl	-16(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
.L7:
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	je	.L9
	movl	-8(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
.L9:
	movl	-4(%ebp), %eax
	testl	%eax, %eax
	je	.L11
	movl	-4(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
.L11:
	movl	8(%ebp), %ecx
	leal	-20(%ebp), %edx
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
	movl	$0, -36(%ebp)
.L4:
	movl	-36(%ebp), %eax
	leave
	ret
	.size	update_blockheader32, .-update_blockheader32
	.type	do_xlate_fix_32, @function
do_xlate_fix_32:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1020, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	cmpl	$51, 12(%ebp)
	ja	.L15
	movl	$-43, -972(%ebp)
	jmp	.L17
.L15:
	leal	-156(%ebp), %ecx
	movl	8(%ebp), %edx
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
	movl	32(%edx), %eax
	movl	%eax, 32(%ecx)
	movl	36(%edx), %eax
	movl	%eax, 36(%ecx)
	movl	40(%edx), %eax
	movl	%eax, 40(%ecx)
	movl	44(%edx), %eax
	movl	%eax, 44(%ecx)
	movl	48(%edx), %eax
	movl	%eax, 48(%ecx)
	movl	-132(%ebp), %eax
	testl	%eax, %eax
	je	.L18
	movl	-132(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -132(%ebp)
.L18:
	movl	-128(%ebp), %eax
	testl	%eax, %eax
	je	.L20
	movl	-128(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -128(%ebp)
.L20:
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	je	.L22
	movl	-124(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -124(%ebp)
.L22:
	movl	-120(%ebp), %eax
	testl	%eax, %eax
	je	.L24
	movl	-120(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -120(%ebp)
.L24:
	movl	-112(%ebp), %eax
	testl	%eax, %eax
	je	.L26
	movl	-112(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -112(%ebp)
.L26:
	movl	-108(%ebp), %eax
	testl	%eax, %eax
	je	.L28
	movl	-108(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -108(%ebp)
.L28:
	movl	8(%ebp), %ecx
	leal	-156(%ebp), %edx
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
	movl	32(%edx), %eax
	movl	%eax, 32(%ecx)
	movl	36(%edx), %eax
	movl	%eax, 36(%ecx)
	movl	40(%edx), %eax
	movl	%eax, 40(%ecx)
	movl	44(%edx), %eax
	movl	%eax, 44(%ecx)
	movl	48(%edx), %eax
	movl	%eax, 48(%ecx)
	addl	$52, -56(%ebp)
	subl	$52, -52(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L30
.L31:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	update_blockheader32
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L32
	movl	-48(%ebp), %eax
	movl	%eax, -972(%ebp)
	jmp	.L17
.L32:
	addl	$1, -60(%ebp)
	addl	$20, -56(%ebp)
	subl	$20, -52(%ebp)
.L30:
	movl	-140(%ebp), %eax
	cmpl	-60(%ebp), %eax
	ja	.L31
	movl	-140(%ebp), %edx
	movl	-148(%ebp), %eax
	imull	%edx, %eax
	addl	%eax, -56(%ebp)
	movl	-144(%ebp), %eax
	testl	%eax, %eax
	je	.L35
	movl	-56(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-144(%ebp), %eax
	addl	-56(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-156(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %eax
	cmpl	-40(%ebp), %eax
	jae	.L37
	movl	$-43, -972(%ebp)
	jmp	.L17
.L37:
	leal	-64(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-948(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_reg_info_internal_given_ptrs@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L39
	movl	-28(%ebp), %edx
	movl	%edx, -972(%ebp)
	jmp	.L17
.L39:
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	jmp	.L41
.L42:
	movl	-80(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-80(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-64(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$1, %al
	jne	.L43
	addl	$1, -20(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L45
	leal	-104(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	%esi, -984(%ebp)
	movl	%edi, -980(%ebp)
	movl	16(%ebp), %eax
	movl	$0, %edx
	movl	-984(%ebp), %esi
	movl	-980(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-20(%ebp), %ecx
	leal	-104(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	jmp	.L43
.L45:
	leal	-68(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	-68(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-20(%ebp), %edx
	leal	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
.L43:
	addl	$1, -80(%ebp)
	adcl	$0, -76(%ebp)
.L41:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -968(%ebp)
	movl	%edx, -964(%ebp)
	movl	-964(%ebp), %edx
	cmpl	%edx, -76(%ebp)
	jb	.L42
	movl	-964(%ebp), %esi
	cmpl	%esi, -76(%ebp)
	ja	.L35
	movl	-968(%ebp), %edi
	cmpl	%edi, -80(%ebp)
	jb	.L42
.L35:
	movl	$0, -972(%ebp)
.L17:
	movl	-972(%ebp), %eax
	addl	$1020, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	do_xlate_fix_32, .-do_xlate_fix_32
	.type	update_blockheader64, @function
update_blockheader64:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	movl	12(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -52(%ebp)
	ja	.L50
	cmpl	$0, -52(%ebp)
	jb	.L52
	cmpl	$39, -56(%ebp)
	ja	.L50
.L52:
	movl	$-43, -68(%ebp)
	jmp	.L53
.L50:
	leal	-40(%ebp), %ecx
	movl	8(%ebp), %edx
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
	movl	32(%edx), %eax
	movl	%eax, 32(%ecx)
	movl	36(%edx), %eax
	movl	%eax, 36(%ecx)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L54
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.L54:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L56
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L56:
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L58
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
.L58:
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L60
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	subl	-64(%ebp), %eax
	sbbl	-60(%ebp), %edx
	movl	%eax, -8(%ebp)
	movl	%edx, -4(%ebp)
.L60:
	movl	8(%ebp), %ecx
	leal	-40(%ebp), %edx
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
	movl	32(%edx), %eax
	movl	%eax, 32(%ecx)
	movl	36(%edx), %eax
	movl	%eax, 36(%ecx)
	movl	$0, -68(%ebp)
.L53:
	movl	-68(%ebp), %eax
	leave
	ret
	.size	update_blockheader64, .-update_blockheader64
	.type	do_xlate_fix_64, @function
do_xlate_fix_64:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1068, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -1000(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -996(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -1008(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -1004(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-1000(%ebp), %eax
	movl	-996(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	cmpl	$0, -996(%ebp)
	ja	.L64
	cmpl	$0, -996(%ebp)
	jb	.L66
	cmpl	$87, -1000(%ebp)
	ja	.L64
.L66:
	movl	$-43, -1028(%ebp)
	jmp	.L67
.L64:
	leal	-200(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	movl	$88, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L68
	movl	-168(%ebp), %eax
	movl	-164(%ebp), %edx
	subl	-1008(%ebp), %eax
	sbbl	-1004(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
.L68:
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L70
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	subl	-1008(%ebp), %eax
	sbbl	-1004(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
.L70:
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L72
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	subl	-1008(%ebp), %eax
	sbbl	-1004(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
.L72:
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L74
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	subl	-1008(%ebp), %eax
	sbbl	-1004(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
.L74:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L76
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	subl	-1008(%ebp), %eax
	sbbl	-1004(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
.L76:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L78
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	subl	-1008(%ebp), %eax
	sbbl	-1004(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L78:
	movl	8(%ebp), %eax
	leal	-200(%ebp), %edx
	movl	%eax, %ecx
	movl	$88, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	addl	$88, -52(%ebp)
	addl	$-88, -88(%ebp)
	adcl	$-1, -84(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	jmp	.L80
.L81:
	movl	-1008(%ebp), %eax
	movl	-1004(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	update_blockheader64
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	je	.L82
	movl	-48(%ebp), %eax
	movl	%eax, -1028(%ebp)
	jmp	.L67
.L82:
	addl	$1, -96(%ebp)
	adcl	$0, -92(%ebp)
	addl	$40, -52(%ebp)
	addl	$-40, -88(%ebp)
	adcl	$-1, -84(%ebp)
.L80:
	movl	-184(%ebp), %edx
	movl	-180(%ebp), %ecx
	movl	%edx, -1024(%ebp)
	movl	%ecx, -1020(%ebp)
	movl	-1020(%ebp), %ecx
	cmpl	-92(%ebp), %ecx
	ja	.L81
	movl	-1020(%ebp), %eax
	cmpl	-92(%ebp), %eax
	jb	.L85
	movl	-1024(%ebp), %edx
	cmpl	-96(%ebp), %edx
	ja	.L81
.L85:
	movl	-184(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-192(%ebp), %eax
	movl	%eax, -1040(%ebp)
	movl	$0, -1036(%ebp)
	movl	-1040(%ebp), %ecx
	imull	%edi, %ecx
	movl	-1036(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -1032(%ebp)
	addl	-1032(%ebp), %ecx
	movl	-1040(%ebp), %eax
	mull	%esi
	movl	%eax, -1040(%ebp)
	movl	%edx, -1036(%ebp)
	addl	-1036(%ebp), %ecx
	movl	%ecx, -1036(%ebp)
	movl	-1040(%ebp), %eax
	addl	%eax, -52(%ebp)
	movl	-188(%ebp), %eax
	testl	%eax, %eax
	je	.L86
	movl	-52(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-188(%ebp), %eax
	addl	-52(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-200(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	movl	-1000(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %eax
	cmpl	-40(%ebp), %eax
	jae	.L88
	movl	$-43, -1028(%ebp)
	jmp	.L67
.L88:
	leal	-56(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-992(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_reg_info_internal_given_ptrs@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L90
	movl	-24(%ebp), %edx
	movl	%edx, -1028(%ebp)
	jmp	.L67
.L90:
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L92
.L93:
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-72(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$1, %al
	jne	.L94
	addl	$1, -20(%ebp)
	cmpl	$0, -36(%ebp)
	je	.L96
	leal	-112(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	subl	-1008(%ebp), %eax
	sbbl	-1004(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-20(%ebp), %ecx
	leal	-112(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	jmp	.L94
.L96:
	leal	-60(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	-60(%ebp), %edx
	movl	-1008(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -60(%ebp)
	movl	-20(%ebp), %edx
	leal	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
.L94:
	addl	$1, -72(%ebp)
	adcl	$0, -68(%ebp)
.L92:
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -1016(%ebp)
	movl	%edx, -1012(%ebp)
	movl	-1012(%ebp), %edx
	cmpl	%edx, -68(%ebp)
	jb	.L93
	movl	-1012(%ebp), %ecx
	cmpl	%ecx, -68(%ebp)
	ja	.L86
	movl	-1016(%ebp), %eax
	cmpl	%eax, -72(%ebp)
	jb	.L93
.L86:
	movl	$0, -1028(%ebp)
.L67:
	movl	-1028(%ebp), %eax
	addl	$1068, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	do_xlate_fix_64, .-do_xlate_fix_64
.globl _xlate_fix_addresses_for_dso_movement
	.type	_xlate_fix_addresses_for_dso_movement, @function
_xlate_fix_addresses_for_dso_movement:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$120, %esp
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	$0, -4(%ebp)
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	je	.L101
	cmpl	$0, 8(%ebp)
	jne	.L103
.L101:
	movl	-4(%ebp), %eax
	movl	%eax, -88(%ebp)
	jmp	.L104
.L103:
	cmpl	$0, -68(%ebp)
	ja	.L105
	cmpl	$0, -68(%ebp)
	jb	.L107
	cmpl	$51, -72(%ebp)
	ja	.L105
.L107:
	movl	$-43, -88(%ebp)
	jmp	.L104
.L105:
	leal	-56(%ebp), %ecx
	movl	8(%ebp), %edx
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
	movl	32(%edx), %eax
	movl	%eax, 32(%ecx)
	movl	36(%edx), %eax
	movl	%eax, 36(%ecx)
	movl	40(%edx), %eax
	movl	%eax, 40(%ecx)
	movl	44(%edx), %eax
	movl	%eax, 44(%ecx)
	movl	48(%edx), %eax
	movl	%eax, 48(%ecx)
	movl	-56(%ebp), %eax
	movl	%eax, -84(%ebp)
	cmpl	$5, -84(%ebp)
	je	.L109
	cmpl	$6, -84(%ebp)
	je	.L110
	jmp	.L108
.L109:
	movl	-80(%ebp), %eax
	movl	-72(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_xlate_fix_32
	movl	%eax, -4(%ebp)
	jmp	.L111
.L110:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_xlate_fix_64
	movl	%eax, -4(%ebp)
	jmp	.L111
.L108:
	movl	$-29, -4(%ebp)
.L111:
	movl	-4(%ebp), %eax
	movl	%eax, -88(%ebp)
.L104:
	movl	-88(%ebp), %eax
	leave
	ret
	.size	_xlate_fix_addresses_for_dso_movement, .-_xlate_fix_addresses_for_dso_movement
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
