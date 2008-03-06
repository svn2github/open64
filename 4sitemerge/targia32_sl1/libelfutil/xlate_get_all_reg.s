	.file	"xlate_get_all_reg.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_get_all_reg_rules
	.type	_xlate_get_all_reg_rules, @function
_xlate_get_all_reg_rules:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$68, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-1593774028, %eax
	je	.L2
	movl	$-43, -36(%ebp)
	jmp	.L4
.L2:
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_reg_info_internal@PLT
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L4:
	movl	-36(%ebp), %eax
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_get_all_reg_rules, .-_xlate_get_all_reg_rules
	.weak	xlate_get_all_reg_rules
	.set	xlate_get_all_reg_rules,_xlate_get_all_reg_rules
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
