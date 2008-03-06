	.file	"lebencodeu32.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _leb128_unsigned_encode32
	.type	_leb128_unsigned_encode32, @function
_leb128_unsigned_encode32:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L2:
	movl	8(%ebp), %eax
	andl	$127, %eax
	movb	%al, -1(%ebp)
	shrl	$7, 8(%ebp)
	cmpl	$0, 8(%ebp)
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
	movl	12(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leave
	ret
	.size	_leb128_unsigned_encode32, .-_leb128_unsigned_encode32
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
