	.file	"xlate_pro_add_info.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_pro_add_info
	.type	_xlate_pro_add_info, @function
_xlate_pro_add_info:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$48, %esp
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-268984062, %eax
	je	.L2
	movl	$-43, -44(%ebp)
	jmp	.L4
.L2:
	movl	8(%ebp), %eax
	movzbl	131(%eax), %eax
	testb	%al, %al
	je	.L5
	movl	$-35, -44(%ebp)
	jmp	.L4
.L5:
	movl	8(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 104(%ecx)
	movl	%edx, 108(%ecx)
	movl	8(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 112(%ecx)
	movl	%edx, 116(%ecx)
	movl	8(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 120(%ecx)
	movl	%edx, 124(%ecx)
	movl	36(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 128(%eax)
	movl	40(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 129(%eax)
	movl	-4(%ebp), %eax
	movl	%eax, -44(%ebp)
.L4:
	movl	-44(%ebp), %eax
	leave
	ret
	.size	_xlate_pro_add_info, .-_xlate_pro_add_info
	.weak	xlate_pro_add_info
	.set	xlate_pro_add_info,_xlate_pro_add_info
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
