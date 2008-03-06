	.file	"xlate_get_reg.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_get_reg_rule
	.type	_xlate_get_reg_rule, @function
_xlate_get_reg_rule:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$852, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -816(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -812(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1593774028, %eax
	je	.L2
	movl	$-43, -820(%ebp)
	jmp	.L4
.L2:
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	leal	-804(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-816(%ebp), %eax
	movl	-812(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_reg_info_internal@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L5
	movl	20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$796, %eax
	movzwl	2(%eax), %eax
	movzwl	%ax, %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$796, %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$796, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	32(%ebp), %eax
	movl	%edx, (%eax)
.L5:
	movl	-12(%ebp), %eax
	movl	%eax, -820(%ebp)
.L4:
	movl	-820(%ebp), %eax
	addl	$852, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_get_reg_rule, .-_xlate_get_reg_rule
	.weak	xlate_get_reg_rule
	.set	xlate_get_reg_rule,_xlate_get_reg_rule
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
