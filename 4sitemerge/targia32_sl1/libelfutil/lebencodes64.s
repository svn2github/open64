	.file	"lebencodes64.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _leb128_signed_encode64
	.type	_leb128_signed_encode64, @function
_leb128_signed_encode64:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	.L2
	movl	$-1, -28(%ebp)
	jmp	.L4
.L2:
	movl	$0, -28(%ebp)
.L4:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
.L5:
	movl	-24(%ebp), %eax
	andl	$127, %eax
	movb	%al, -1(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	$7, %edx, %eax
	sarl	$7, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
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
	movl	16(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -32(%ebp)
	jmp	.L1
.L6:
	orb	$-128, -1(%ebp)
	movl	-8(%ebp), %edx
	movzbl	-1(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -8(%ebp)
	jmp	.L5
.L1:
	movl	-32(%ebp), %eax
	leave
	ret
	.size	_leb128_signed_encode64, .-_leb128_signed_encode64
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
