	.file	"lebencodeu64.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _leb128_unsigned_encode64
	.type	_leb128_unsigned_encode64, @function
_leb128_unsigned_encode64:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
.L2:
	movl	-24(%ebp), %eax
	andl	$127, %eax
	movb	%al, -1(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	$7, %edx, %eax
	shrl	$7, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L3
	orb	$-128, -1(%ebp)
	movl	-8(%ebp), %edx
	movzbl	-1(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -8(%ebp)
	jmp	.L2
.L3:
	movl	-8(%ebp), %edx
	movzbl	-1(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -8(%ebp)
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leave
	ret
	.size	_leb128_unsigned_encode64, .-_leb128_unsigned_encode64
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
