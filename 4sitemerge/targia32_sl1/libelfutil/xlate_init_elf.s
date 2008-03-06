	.file	"xlate_init_elf.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_init_elf
	.type	_xlate_init_elf, @function
_xlate_init_elf:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$68, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_kind@PLT
	cmpl	$3, %eax
	je	.L2
	movl	$-33, -56(%ebp)
	jmp	.L4
.L2:
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_getident@PLT
	movl	%eax, -32(%ebp)
	cmpl	$0, 12(%ebp)
	jne	.L5
	movl	$1879048228, -44(%ebp)
	jmp	.L7
.L5:
	cmpl	$1, 12(%ebp)
	jne	.L8
	movl	$1879048229, -44(%ebp)
	jmp	.L7
.L8:
	movl	$-27, -56(%ebp)
	jmp	.L4
.L7:
	movl	$-27, -48(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L10
	movl	-52(%ebp), %eax
	cmpl	$15, %eax
	ja	.L12
.L10:
	movl	$-25, -56(%ebp)
	jmp	.L4
.L12:
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	cmpb	$2, %al
	jne	.L13
	movl	$1, -36(%ebp)
.L13:
	cmpl	$0, -36(%ebp)
	je	.L15
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf64_getehdr@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L17
	movl	$-56, -56(%ebp)
	jmp	.L4
.L17:
	movl	-16(%ebp), %eax
	movzwl	62(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	jmp	.L19
.L15:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf32_getehdr@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L20
	movl	$-56, -56(%ebp)
	jmp	.L4
.L20:
	movl	-20(%ebp), %eax
	movzwl	50(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
.L19:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_nextscn@PLT
	movl	%eax, -40(%ebp)
	jmp	.L22
.L23:
	cmpl	$0, -36(%ebp)
	je	.L24
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf64_getshdr@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L26
	movl	$-26, -56(%ebp)
	jmp	.L4
.L26:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_strptr@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L28
	movl	$-57, -56(%ebp)
	jmp	.L4
.L28:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L30
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_named_init_elf@PLT
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L4
.L24:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	elf32_getshdr@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L32
	movl	$-26, -56(%ebp)
	jmp	.L4
.L32:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_strptr@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L34
	movl	$-57, -56(%ebp)
	jmp	.L4
.L34:
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-44(%ebp), %eax
	jne	.L30
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_named_init_elf@PLT
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L4
.L30:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	elf_nextscn@PLT
	movl	%eax, -40(%ebp)
.L22:
	cmpl	$0, -40(%ebp)
	jne	.L23
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
.L4:
	movl	-56(%ebp), %eax
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_init_elf, .-_xlate_init_elf
	.weak	xlate_init_elf
	.set	xlate_init_elf,_xlate_init_elf
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
