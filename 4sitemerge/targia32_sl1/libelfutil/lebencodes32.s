	.file	"lebencodes32.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _leb128_signed_encode32
	.type	_leb128_signed_encode32, @function
_leb128_signed_encode32:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	jns	.L2
	movl	$-1, -20(%ebp)
	jmp	.L4
.L2:
	movl	$0, -20(%ebp)
.L4:
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L5:
	movl	8(%ebp), %eax
	andl	$127, %eax
	movb	%al, -1(%ebp)
	sarl	$7, 8(%ebp)
	movl	8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L6
	movzbl	-1(%ebp), %eax
	movl	%eax, %edx
	andl	$64, %edx
	movl	-12(%ebp), %eax
	movzbl	%al, %eax
	andl	$64, %eax
	cmpl	%eax, %edx
	jne	.L6
	movl	-8(%ebp), %edx
	movzbl	-1(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -8(%ebp)
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%ebp)
	jmp	.L1
.L6:
	orb	$-128, -1(%ebp)
	movl	-8(%ebp), %edx
	movzbl	-1(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -8(%ebp)
	jmp	.L5
.L1:
	movl	-24(%ebp), %eax
	leave
	ret
	.size	_leb128_signed_encode32, .-_leb128_signed_encode32
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
