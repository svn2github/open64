	.file	"xlate_address.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_address
	.type	_xlate_address, @function
_xlate_address:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$88, %esp
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1593774028, %eax
	je	.L2
	movl	$-43, -60(%ebp)
	jmp	.L4
.L2:
	cmpl	$0, 12(%ebp)
	je	.L5
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	84(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-52(%ebp), %ecx
	cmpl	-20(%ebp), %ecx
	ja	.L7
	movl	-52(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L9
	movl	-56(%ebp), %edx
	cmpl	-24(%ebp), %edx
	ja	.L7
.L9:
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	92(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-44(%ebp), %ecx
	cmpl	-20(%ebp), %ecx
	ja	.L10
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L7
	movl	-48(%ebp), %edx
	cmpl	-24(%ebp), %edx
	ja	.L10
.L7:
	movl	$-46, -4(%ebp)
	jmp	.L13
.L10:
	movl	8(%ebp), %eax
	movl	40(%eax), %ecx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -4(%ebp)
	jmp	.L13
.L5:
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	100(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	-20(%ebp), %ecx
	ja	.L14
	movl	-36(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L16
	movl	-40(%ebp), %edx
	cmpl	-24(%ebp), %edx
	ja	.L14
.L16:
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	108(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %ecx
	cmpl	-20(%ebp), %ecx
	ja	.L17
	movl	-28(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L14
	movl	-32(%ebp), %edx
	cmpl	-24(%ebp), %edx
	ja	.L17
.L14:
	movl	$-46, -4(%ebp)
	jmp	.L13
.L17:
	movl	8(%ebp), %eax
	movl	36(%eax), %ecx
	movl	28(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -4(%ebp)
.L13:
	cmpl	$-46, -4(%ebp)
	jne	.L19
	movl	24(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 28(%ebp)
	je	.L21
	movl	28(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	28(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	28(%ebp), %eax
	movl	$4, 24(%eax)
	movl	$0, 28(%eax)
	movl	28(%ebp), %eax
	movl	$4, 8(%eax)
	movl	$0, 12(%eax)
.L21:
	movl	$0, -4(%ebp)
.L19:
	movl	-4(%ebp), %ecx
	movl	%ecx, -60(%ebp)
.L4:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_address, .-_xlate_address
	.weak	xlate_address
	.set	xlate_address,_xlate_address
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
