	.file	"xlate_pro_disk_next_block.c"
	.ident	"$Revision: 1.1 $"
	.text
	.type	do_64bit_merge_header, @function
do_64bit_merge_header:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$204, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$88, -52(%ebp)
	movl	$40, -48(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L2
.L3:
	addl	$1, -56(%ebp)
	movl	-28(%ebp), %eax
	movl	84(%eax), %eax
	addl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L2:
	cmpl	$0, -28(%ebp)
	jne	.L3
	movl	-56(%ebp), %eax
	imull	-48(%ebp), %eax
	addl	-52(%ebp), %eax
	movl	%eax, -64(%ebp)
	cmpl	$0, 12(%ebp)
	jne	.L5
	movl	-64(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -148(%ebp)
	jmp	.L7
.L5:
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	jne	.L8
	movl	$-1, -148(%ebp)
	jmp	.L7
.L8:
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	addl	$88, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	$6, (%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 48(%ecx)
	movl	%edx, 52(%ecx)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 56(%ecx)
	movl	%edx, 60(%ecx)
	leal	-84(%ebp), %eax
	movl	%eax, 52(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 48(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_get_info@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L10
	movl	-20(%ebp), %eax
	movl	%eax, -148(%ebp)
	jmp	.L7
.L10:
	movl	-68(%ebp), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movb	%dl, 5(%eax)
	movl	-72(%ebp), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movb	%dl, 6(%eax)
	movl	-40(%ebp), %eax
	movl	$4096, 8(%eax)
	movl	8(%ebp), %eax
	movl	152(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-56(%ebp), %eax
	movl	$0, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	-24(%ebp), %eax
	movl	$0, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	8(%ebp), %eax
	movl	104(%eax), %esi
	movl	108(%eax), %edi
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	movl	8(%ebp), %eax
	movl	116(%eax), %edx
	movl	112(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 72(%ecx)
	movl	%edx, 76(%ecx)
	movl	-40(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L12
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 72(%ecx)
	movl	%edx, 76(%ecx)
.L12:
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	120(%eax), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
	movl	-40(%ebp), %eax
	movl	84(%eax), %edx
	movl	80(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L14
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
.L14:
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L16
.L17:
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-28(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	-28(%ebp), %eax
	movl	84(%eax), %eax
	movl	$0, %edx
	movl	-32(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	-28(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	movl	-28(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	addl	$40, -32(%ebp)
.L16:
	cmpl	$0, -28(%ebp)
	jne	.L17
	movl	12(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, (%edx)
	movl	-64(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -148(%ebp)
.L7:
	movl	-148(%ebp), %eax
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	do_64bit_merge_header, .-do_64bit_merge_header
	.type	do_32bit_merge_header, @function
do_32bit_merge_header:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%ebx
	subl	$192, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$52, -44(%ebp)
	movl	$20, -40(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L21
.L22:
	addl	$1, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	84(%eax), %eax
	addl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L21:
	cmpl	$0, -20(%ebp)
	jne	.L22
	movl	-48(%ebp), %eax
	imull	-40(%ebp), %eax
	addl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
	cmpl	$0, 12(%ebp)
	jne	.L24
	movl	-56(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -140(%ebp)
	jmp	.L26
.L24:
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	.L27
	movl	$-1, -140(%ebp)
	jmp	.L26
.L27:
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	movl	-52(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	addl	$52, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	$5, (%eax)
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 36(%eax)
	leal	-76(%ebp), %eax
	movl	%eax, 52(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, 48(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 40(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	$0, 32(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_get_info@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L29
	movl	-12(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L26
.L29:
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movb	%dl, 5(%eax)
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movb	%dl, 6(%eax)
	movl	-32(%ebp), %eax
	movl	$4096, 8(%eax)
	movl	8(%ebp), %eax
	movl	152(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-32(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	104(%eax), %eax
	movl	%eax, %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	leal	(%ecx,%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	8(%ebp), %eax
	movl	116(%eax), %edx
	movl	112(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 44(%eax)
	movl	-32(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	.L31
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 44(%eax)
.L31:
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	120(%eax), %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	-32(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L33
	movl	-136(%ebp), %eax
	movl	-132(%ebp), %edx
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 48(%eax)
.L33:
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L35
.L36:
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-20(%ebp), %eax
	movl	84(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-20(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-20(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	addl	$20, -24(%ebp)
.L35:
	cmpl	$0, -20(%ebp)
	jne	.L36
	movl	12(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	movl	-56(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -140(%ebp)
.L26:
	movl	-140(%ebp), %eax
	addl	$192, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
	.size	do_32bit_merge_header, .-do_32bit_merge_header
	.type	do_reginfo_merge, @function
do_reginfo_merge:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L40
	movl	$-10, -48(%ebp)
	jmp	.L42
.L40:
	cmpl	$0, 12(%ebp)
	jne	.L43
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -48(%ebp)
	jmp	.L42
.L43:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L45
	movl	$-1, -48(%ebp)
	jmp	.L42
.L45:
	cmpl	$0, -24(%ebp)
	je	.L47
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
.L47:
	cmpl	$0, -36(%ebp)
	je	.L49
	movl	8(%ebp), %eax
	movl	144(%eax), %edx
	movl	-24(%ebp), %eax
	addl	-16(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
.L49:
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	movl	$0, -48(%ebp)
.L42:
	movl	-48(%ebp), %eax
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	do_reginfo_merge, .-do_reginfo_merge
	.type	_xlate_do_simple_32bit_header, @function
_xlate_do_simple_32bit_header:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%ebx
	subl	$64, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$52, -36(%ebp)
	movl	$20, -32(%ebp)
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L53
.L54:
	addl	$1, -40(%ebp)
	movl	-16(%ebp), %eax
	movl	84(%eax), %eax
	addl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L53:
	cmpl	$0, -16(%ebp)
	jne	.L54
	movl	-40(%ebp), %eax
	imull	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, 12(%ebp)
	jne	.L56
	movl	-48(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -60(%ebp)
	jmp	.L58
.L56:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jne	.L59
	movl	$-1, -60(%ebp)
	jmp	.L58
.L59:
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$52, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	$5, (%eax)
	movl	8(%ebp), %eax
	movzbl	134(%eax), %eax
	cmpb	$1, %al
	jne	.L61
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 36(%eax)
	jmp	.L63
.L61:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	80(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 32(%eax)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 36(%eax)
.L63:
	movl	8(%ebp), %eax
	movzbl	128(%eax), %edx
	movl	-28(%ebp), %eax
	movb	%dl, 5(%eax)
	movl	8(%ebp), %eax
	movzbl	129(%eax), %edx
	movl	-28(%ebp), %eax
	movb	%dl, 6(%eax)
	movl	-28(%ebp), %eax
	movl	$4096, 8(%eax)
	movl	8(%ebp), %eax
	movl	152(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-28(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	104(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 40(%eax)
	movl	8(%ebp), %eax
	movl	116(%eax), %edx
	movl	112(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 44(%eax)
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	120(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L64
.L65:
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-16(%ebp), %eax
	movl	84(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$20, -20(%ebp)
.L64:
	cmpl	$0, -16(%ebp)
	jne	.L65
	movl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	movl	-48(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -60(%ebp)
.L58:
	movl	-60(%ebp), %eax
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_do_simple_32bit_header, .-_xlate_do_simple_32bit_header
	.type	_xlate_do_simple_64bit_header, @function
_xlate_do_simple_64bit_header:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%ebx
	subl	$64, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$88, -36(%ebp)
	movl	$40, -32(%ebp)
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	.L69
.L70:
	addl	$1, -40(%ebp)
	movl	-16(%ebp), %eax
	movl	84(%eax), %eax
	addl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L69:
	cmpl	$0, -16(%ebp)
	jne	.L70
	movl	-40(%ebp), %eax
	imull	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$0, 12(%ebp)
	jne	.L72
	movl	-48(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -60(%ebp)
	jmp	.L74
.L72:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jne	.L75
	movl	$-1, -60(%ebp)
	jmp	.L74
.L75:
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	movl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	addl	$88, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	$6, (%eax)
	movl	8(%ebp), %eax
	movzbl	134(%eax), %eax
	cmpb	$1, %al
	jne	.L77
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 48(%ecx)
	movl	%edx, 52(%ecx)
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 56(%ecx)
	movl	%edx, 60(%ecx)
	jmp	.L79
.L77:
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	80(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 48(%ecx)
	movl	%edx, 52(%ecx)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 56(%ecx)
	movl	%edx, 60(%ecx)
.L79:
	movl	8(%ebp), %eax
	movzbl	128(%eax), %edx
	movl	-28(%ebp), %eax
	movb	%dl, 5(%eax)
	movl	8(%ebp), %eax
	movzbl	129(%eax), %edx
	movl	-28(%ebp), %eax
	movb	%dl, 6(%eax)
	movl	-28(%ebp), %eax
	movl	$4096, 8(%eax)
	movl	8(%ebp), %eax
	movl	152(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	-12(%ebp), %eax
	movl	$0, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	104(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 64(%ecx)
	movl	%edx, 68(%ecx)
	movl	8(%ebp), %eax
	movl	116(%eax), %edx
	movl	112(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 72(%ecx)
	movl	%edx, 76(%ecx)
	movl	8(%ebp), %eax
	movl	124(%eax), %edx
	movl	120(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L80
.L81:
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	-16(%ebp), %eax
	movl	84(%eax), %eax
	movl	$0, %edx
	movl	-20(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	-16(%ebp), %eax
	movl	40(%eax), %edx
	movl	36(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	addl	$40, -20(%ebp)
.L80:
	cmpl	$0, -16(%ebp)
	jne	.L81
	movl	12(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	movl	-48(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -60(%ebp)
.L74:
	movl	-60(%ebp), %eax
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_do_simple_64bit_header, .-_xlate_do_simple_64bit_header
	.type	_xlate_do_local_reginfo, @function
_xlate_do_local_reginfo:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, 12(%ebp)
	jne	.L85
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, -32(%ebp)
	jmp	.L87
.L85:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L88
	movl	$-1, -32(%ebp)
	jmp	.L87
.L88:
	movl	8(%ebp), %eax
	movl	144(%eax), %edx
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	movl	$0, -32(%ebp)
.L87:
	movl	-32(%ebp), %eax
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_do_local_reginfo, .-_xlate_do_local_reginfo
	.type	_xlate_do_current_block, @function
_xlate_do_current_block:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 140(%eax)
	cmpl	$0, 12(%ebp)
	jne	.L92
	movl	16(%ebp), %eax
	movl	$4096, (%eax)
	movl	$0, 4(%eax)
	movl	$0, -32(%ebp)
	jmp	.L94
.L92:
	movl	$4096, (%esp)
	call	malloc@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L95
	movl	$-1, -32(%ebp)
	jmp	.L94
.L95:
	movl	-20(%ebp), %edx
	addl	$92, %edx
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	cmpl	$4095, -16(%ebp)
	ja	.L97
	movl	$4096, %eax
	movl	%eax, %edx
	subl	-16(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
.L97:
	movl	16(%ebp), %eax
	movl	$4096, (%eax)
	movl	$0, 4(%eax)
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	movl	$0, -32(%ebp)
.L94:
	movl	-32(%ebp), %eax
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_do_current_block, .-_xlate_do_current_block
.globl _xlate_pro_disk_next_block
	.type	_xlate_pro_disk_next_block, @function
_xlate_pro_disk_next_block:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-268984062, %eax
	je	.L101
	movl	$-43, -20(%ebp)
	jmp	.L103
.L101:
	movl	8(%ebp), %eax
	movzbl	131(%eax), %eax
	testb	%al, %al
	jne	.L104
	movl	$-51, -20(%ebp)
	jmp	.L103
.L104:
	movl	8(%ebp), %eax
	movzbl	134(%eax), %eax
	cmpb	$1, %al
	jne	.L106
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L108
	movl	8(%ebp), %eax
	movzbl	135(%eax), %eax
	testb	%al, %al
	jne	.L110
	movl	8(%ebp), %eax
	movzbl	130(%eax), %eax
	testb	%al, %al
	je	.L112
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_64bit_merge_header
	movl	%eax, -4(%ebp)
	jmp	.L114
.L112:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_32bit_merge_header
	movl	%eax, -4(%ebp)
.L114:
	movl	8(%ebp), %eax
	movb	$1, 135(%eax)
	jmp	.L131
.L110:
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	testl	%eax, %eax
	je	.L116
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_current_block
	movl	%eax, -4(%ebp)
	jmp	.L131
.L116:
	movl	8(%ebp), %eax
	movzbl	137(%eax), %eax
	testb	%al, %al
	jne	.L118
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_reginfo_merge
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movb	$1, 137(%eax)
	jmp	.L131
.L118:
	movl	$-10, -20(%ebp)
	jmp	.L103
.L108:
	movl	8(%ebp), %eax
	movzbl	135(%eax), %eax
	testb	%al, %al
	jne	.L121
	movl	8(%ebp), %eax
	movzbl	130(%eax), %eax
	testb	%al, %al
	je	.L123
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_simple_64bit_header
	movl	%eax, -4(%ebp)
	jmp	.L125
.L123:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_simple_32bit_header
	movl	%eax, -4(%ebp)
.L125:
	movl	8(%ebp), %eax
	movb	$1, 135(%eax)
	jmp	.L131
.L121:
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	testl	%eax, %eax
	je	.L126
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_current_block
	movl	%eax, -4(%ebp)
	jmp	.L131
.L126:
	movl	8(%ebp), %eax
	movzbl	137(%eax), %eax
	testb	%al, %al
	jne	.L128
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	testl	%eax, %eax
	je	.L128
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_local_reginfo
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movb	$1, 137(%eax)
	jmp	.L131
.L128:
	movl	$-10, -20(%ebp)
	jmp	.L103
.L106:
	movl	8(%ebp), %eax
	movzbl	134(%eax), %eax
	cmpb	$2, %al
	jne	.L132
	movl	8(%ebp), %eax
	movzbl	135(%eax), %eax
	testb	%al, %al
	jne	.L134
	movl	8(%ebp), %eax
	movzbl	130(%eax), %eax
	testb	%al, %al
	je	.L136
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_simple_64bit_header
	movl	%eax, -4(%ebp)
	jmp	.L138
.L136:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_simple_32bit_header
	movl	%eax, -4(%ebp)
.L138:
	movl	8(%ebp), %eax
	movb	$1, 135(%eax)
	jmp	.L131
.L134:
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	testl	%eax, %eax
	je	.L140
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_current_block
	movl	%eax, -4(%ebp)
	jmp	.L131
.L140:
	movl	8(%ebp), %eax
	movzbl	137(%eax), %eax
	testb	%al, %al
	jne	.L142
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	testl	%eax, %eax
	je	.L142
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_do_local_reginfo
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movb	$1, 137(%eax)
	jmp	.L131
.L142:
	movl	$-10, -20(%ebp)
	jmp	.L103
.L132:
	movl	$-50, -20(%ebp)
	jmp	.L103
.L131:
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L103:
	movl	-20(%ebp), %eax
	leave
	ret
	.size	_xlate_pro_disk_next_block, .-_xlate_pro_disk_next_block
	.weak	xlate_pro_disk_next_block
	.set	xlate_pro_disk_next_block,_xlate_pro_disk_next_block
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
