	.file	"xlate_get_info.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_get_infov1
	.type	_xlate_get_infov1, @function
_xlate_get_infov1:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L2
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L2:
	cmpl	$0, 16(%ebp)
	je	.L4
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	je	.L4
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L4:
	cmpl	$0, 20(%ebp)
	je	.L7
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	je	.L7
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	-32(%ebp), %eax
	orl	%esi, %eax
	movl	-28(%ebp), %edx
	orl	%edi, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L7:
	cmpl	$0, 24(%ebp)
	je	.L10
	movl	-12(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L10:
	cmpl	$0, 28(%ebp)
	je	.L12
	movl	-12(%ebp), %eax
	movl	60(%eax), %eax
	movzbl	%al,%edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
.L12:
	cmpl	$0, 32(%ebp)
	je	.L16
	movl	-12(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	%al,%edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
.L16:
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_get_infov1, .-_xlate_get_infov1
.globl _xlate_get_infov2_32
	.type	_xlate_get_infov2_32, @function
_xlate_get_infov2_32:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L18
	movl	-4(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L18:
	cmpl	$0, 16(%ebp)
	je	.L20
	movl	-4(%ebp), %eax
	movl	44(%eax), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L20:
	cmpl	$0, 20(%ebp)
	je	.L22
	movl	-4(%ebp), %eax
	movl	48(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L22:
	cmpl	$0, 24(%ebp)
	je	.L24
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L24:
	cmpl	$0, 28(%ebp)
	je	.L26
	movl	-4(%ebp), %eax
	movzbl	5(%eax), %eax
	movzbl	%al, %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
.L26:
	cmpl	$0, 32(%ebp)
	je	.L30
	movl	-4(%ebp), %eax
	movzbl	6(%eax), %eax
	movzbl	%al, %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
.L30:
	leave
	ret
	.size	_xlate_get_infov2_32, .-_xlate_get_infov2_32
.globl _xlate_get_infov2_64
	.type	_xlate_get_infov2_64, @function
_xlate_get_infov2_64:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L32
	movl	-4(%ebp), %eax
	movl	68(%eax), %edx
	movl	64(%eax), %eax
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L32:
	cmpl	$0, 16(%ebp)
	je	.L34
	movl	-4(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L34:
	cmpl	$0, 20(%ebp)
	je	.L36
	movl	-4(%ebp), %eax
	movl	84(%eax), %edx
	movl	80(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L36:
	cmpl	$0, 24(%ebp)
	je	.L38
	movl	-4(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L38:
	cmpl	$0, 28(%ebp)
	je	.L40
	movl	-4(%ebp), %eax
	movzbl	5(%eax), %eax
	movzbl	%al, %edx
	movl	28(%ebp), %eax
	movl	%edx, (%eax)
.L40:
	cmpl	$0, 32(%ebp)
	je	.L44
	movl	-4(%ebp), %eax
	movzbl	6(%eax), %eax
	movzbl	%al, %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
.L44:
	leave
	ret
	.size	_xlate_get_infov2_64, .-_xlate_get_infov2_64
.globl _xlate_get_info
	.type	_xlate_get_info, @function
_xlate_get_info:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1593774028, %eax
	je	.L46
	movl	$-43, -20(%ebp)
	jmp	.L48
.L46:
	cmpl	$0, 24(%ebp)
	je	.L49
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L49:
	cmpl	$0, 16(%ebp)
	je	.L51
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	80(%eax), %eax
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L51:
	cmpl	$0, 28(%ebp)
	je	.L53
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	104(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L53:
	cmpl	$0, 20(%ebp)
	je	.L55
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	96(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L55:
	cmpl	$0, 52(%ebp)
	je	.L57
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	movzbl	%al, %edx
	movl	52(%ebp), %eax
	movl	%edx, (%eax)
.L57:
	cmpl	$0, 56(%ebp)
	je	.L59
	movl	8(%ebp), %eax
	movzbl	60(%eax), %eax
	movzbl	%al, %edx
	movl	56(%ebp), %eax
	movl	%edx, (%eax)
.L59:
	cmpl	$0, 60(%ebp)
	je	.L61
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	60(%ebp), %eax
	movl	%edx, (%eax)
.L61:
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	44(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L48:
	movl	-20(%ebp), %eax
	leave
	ret
	.size	_xlate_get_info, .-_xlate_get_info
	.weak	xlate_get_info
	.set	xlate_get_info,_xlate_get_info
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
