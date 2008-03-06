	.file	"xlate_named_init_fd.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_named_init_fd
	.type	_xlate_named_init_fd, @function
_xlate_named_init_fd:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -16(%ebp)
	movl	$0, -8(%ebp)
	movl	$1, (%esp)
	call	elf_version@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$-31, -24(%ebp)
	jmp	.L4
.L2:
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_begin@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L5
	movl	$-32, -24(%ebp)
	jmp	.L4
.L5:
	leal	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_named_init_elf@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L7
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_end@PLT
	jmp	.L9
.L7:
	movl	-16(%ebp), %eax
	movb	$1, 5(%eax)
	movl	-16(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L9:
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L4:
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_named_init_fd, .-_xlate_named_init_fd
	.weak	xlate_named_init_fd
	.set	xlate_named_init_fd,_xlate_named_init_fd
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
