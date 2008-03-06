	.file	"xlate_expand_reg2.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_expand_reg_info2
	.type	_xlate_expand_reg_info2, @function
_xlate_expand_reg_info2:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$836, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-800(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_reg_info_internal@PLT
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	addl	$836, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_expand_reg_info2, .-_xlate_expand_reg_info2
	.weak	xlate_expand_reg_info2
	.set	xlate_expand_reg_info2,_xlate_expand_reg_info2
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
