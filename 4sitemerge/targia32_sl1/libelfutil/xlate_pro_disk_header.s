	.file	"xlate_pro_disk_header.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_pro_disk_header
	.type	_xlate_pro_disk_header, @function
_xlate_pro_disk_header:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-268984062, %eax
	je	.L2
	movl	$-43, -44(%ebp)
	jmp	.L4
.L2:
	movl	$0, 28(%esp)
	movl	$0, 32(%esp)
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	movl	$0, 12(%esp)
	movl	$0, 16(%esp)
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_add_tentative_new_range@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L5
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4
.L5:
	movl	8(%ebp), %eax
	movb	$1, 131(%eax)
	movl	8(%ebp), %eax
	movb	$0, 135(%eax)
	movl	8(%ebp), %eax
	movb	$0, 136(%eax)
	movl	8(%ebp), %eax
	movb	$0, 137(%eax)
	movl	12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 134(%eax)
	cmpl	$1, 12(%ebp)
	jne	.L7
	movl	8(%ebp), %eax
	movb	$1, 132(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 140(%eax)
	movl	8(%ebp), %edx
	addl	$16, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_final_update_highwater_addrs@PLT
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	testl	%eax, %eax
	jne	.L16
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	testl	%eax, %eax
	jne	.L16
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L12
	movl	-12(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L16
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4
.L12:
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4
.L7:
	cmpl	$2, 12(%ebp)
	jne	.L17
	movl	8(%ebp), %eax
	movb	$1, 133(%eax)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 140(%eax)
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	testl	%eax, %eax
	jne	.L19
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	testl	%eax, %eax
	jne	.L19
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4
.L19:
	movl	8(%ebp), %edx
	addl	$64, %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_final_update_highwater_addrs@PLT
	jmp	.L16
.L17:
	movl	$-50, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4
.L16:
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pro_disk_next_block@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L22
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	%eax, -28(%ebp)
	addl	$1, -24(%ebp)
	jmp	.L16
.L22:
	cmpl	$-10, -16(%ebp)
	je	.L24
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4
.L24:
	movl	8(%ebp), %eax
	movb	$1, 131(%eax)
	movl	8(%ebp), %eax
	movb	$0, 135(%eax)
	movl	8(%ebp), %eax
	movb	$0, 136(%eax)
	movl	8(%ebp), %eax
	movb	$0, 137(%eax)
	movl	12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 134(%eax)
	cmpl	$1, 12(%ebp)
	jne	.L26
	movl	8(%ebp), %eax
	movb	$1, 132(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 140(%eax)
	jmp	.L28
.L26:
	cmpl	$2, 12(%ebp)
	jne	.L29
	movl	8(%ebp), %eax
	movb	$1, 133(%eax)
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 140(%eax)
	jmp	.L28
.L29:
	movl	$-50, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L4
.L28:
	movl	-28(%ebp), %eax
	movl	$0, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
.L4:
	movl	-44(%ebp), %eax
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_pro_disk_header, .-_xlate_pro_disk_header
	.weak	xlate_pro_disk_header
	.set	xlate_pro_disk_header,_xlate_pro_disk_header
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
