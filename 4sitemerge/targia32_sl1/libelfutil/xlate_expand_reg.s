	.file	"xlate_expand_reg.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_expand_reg_info
	.type	_xlate_expand_reg_info, @function
_xlate_expand_reg_info:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$852, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1593774028, %eax
	je	.L2
	movl	$-43, -824(%ebp)
	jmp	.L4
.L2:
	leal	-24(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-816(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_reg_info_internal@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L5
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L7
	movl	$-1, -824(%ebp)
	jmp	.L4
.L7:
	movl	$0, -8(%ebp)
	jmp	.L9
.L10:
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	addl	$1, -8(%ebp)
.L9:
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L10
	movl	16(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, (%eax)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L5:
	movl	-16(%ebp), %eax
	movl	%eax, -824(%ebp)
.L4:
	movl	-824(%ebp), %eax
	addl	$852, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_expand_reg_info, .-_xlate_expand_reg_info
	.weak	xlate_expand_reg_info
	.set	xlate_expand_reg_info,_xlate_expand_reg_info
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
