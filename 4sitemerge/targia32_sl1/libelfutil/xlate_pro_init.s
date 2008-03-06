	.file	"xlate_pro_init.c"
	.ident	"$Revision: 1.1 $"
	.text
	.type	determine_func, @function
determine_func:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L4
	cmpl	$1, -24(%ebp)
	jb	.L3
	cmpl	$2, -24(%ebp)
	je	.L5
	jmp	.L2
.L3:
	cmpl	$0, 8(%ebp)
	je	.L6
	movl	_xlate_pro_add_range_ge64@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L9
.L6:
	movl	_xlate_pro_add_range_ge32@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L9
.L5:
	cmpl	$0, 8(%ebp)
	je	.L10
	movl	_xlate_pro_add_range_po64@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L9
.L10:
	movl	_xlate_pro_add_range_po32@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L9
.L4:
	cmpl	$0, 8(%ebp)
	je	.L13
	movl	_xlate_pro_add_range_ps64@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L9
.L13:
	movl	_xlate_pro_add_range_ps32@GOT(%ecx), %eax
	movl	%eax, -4(%ebp)
	jmp	.L9
.L2:
	movl	$-3, -20(%ebp)
	jmp	.L16
.L9:
	movl	16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	movl	$0, -20(%ebp)
.L16:
	movl	-20(%ebp), %eax
	leave
	ret
	.size	determine_func, .-determine_func
.globl _xlate_pro_init
	.type	_xlate_pro_init, @function
_xlate_pro_init:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -12(%ebp)
	movl	$192, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L19
	movl	$-1, -24(%ebp)
	jmp	.L21
.L19:
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	$192, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	20(%ebp), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 130(%eax)
	movl	-8(%ebp), %eax
	movl	$-1, 16(%eax)
	movl	$-1, 20(%eax)
	movl	-8(%ebp), %eax
	movl	$-1, 24(%eax)
	movl	$-1, 28(%eax)
	cmpl	$0, 16(%ebp)
	je	.L22
	movl	-8(%ebp), %eax
	movl	$-1, 64(%eax)
	movl	$-1, 68(%eax)
	movl	-8(%ebp), %eax
	movl	$-1, 72(%eax)
	movl	$-1, 76(%eax)
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 100(%edx)
	movl	$0, 52(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 48(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, 44(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_get_info@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L24
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L21
.L24:
	movl	-16(%ebp), %eax
	cmpl	%eax, 20(%ebp)
	je	.L26
	movl	$-59, -24(%ebp)
	jmp	.L21
.L26:
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L28
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L28
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 52(%edx)
	jmp	.L31
.L28:
	movl	-8(%ebp), %eax
	movl	$0, 52(%eax)
.L31:
	movl	-8(%ebp), %edx
	addl	$48, %edx
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	determine_func
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L32
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L21
.L32:
	movl	-8(%ebp), %edx
	addl	$96, %edx
	movl	-8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	determine_func
	movl	%eax, -12(%ebp)
	jmp	.L34
.L22:
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 52(%edx)
	movl	-8(%ebp), %edx
	addl	$48, %edx
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	determine_func
	movl	%eax, -12(%ebp)
.L34:
	movl	-8(%ebp), %eax
	movl	$-268984062, (%eax)
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L21:
	movl	-24(%ebp), %eax
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_pro_init, .-_xlate_pro_init
.globl _xlate_pro_finish
	.type	_xlate_pro_finish, @function
_xlate_pro_finish:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -8(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-268984062, %eax
	je	.L37
	movl	$-43, -24(%ebp)
	jmp	.L39
.L37:
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	.L40
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L40:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L42
.L43:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L42:
	cmpl	$0, -16(%ebp)
	jne	.L43
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L45
.L46:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L45:
	cmpl	$0, -16(%ebp)
	jne	.L46
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L39:
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_pro_finish, .-_xlate_pro_finish
	.weak	xlate_pro_finish
	.set	xlate_pro_finish,_xlate_pro_finish
	.weak	xlate_pro_init
	.set	xlate_pro_init,_xlate_pro_init
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
.globl __i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl	(%esp), %ecx
	ret
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
