	.file	"lebdecodeu32.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _leb128_unsigned_decode32
	.type	_leb128_unsigned_decode32, @function
_leb128_unsigned_decode32:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	testb	%al, %al
	js	.L2
	movzbl	-1(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$1, -20(%ebp)
	jmp	.L4
.L2:
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	js	.L5
	movzbl	-1(%ebp), %eax
	andl	$127, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$7, %eax
	orl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$2, -20(%ebp)
	jmp	.L4
.L5:
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	js	.L7
	movzbl	-1(%ebp), %eax
	andl	$127, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$7, %eax
	orl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$14, %eax
	orl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$3, -20(%ebp)
	jmp	.L4
.L7:
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	js	.L9
	movzbl	-1(%ebp), %eax
	andl	$127, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$7, %eax
	orl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$14, %eax
	orl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$21, %eax
	orl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$4, -20(%ebp)
	jmp	.L4
.L9:
	movzbl	-1(%ebp), %eax
	andl	$127, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$7, %eax
	orl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$14, %eax
	orl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$21, %eax
	orl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	sall	$28, %eax
	orl	%eax, -8(%ebp)
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$5, -20(%ebp)
.L4:
	movl	-20(%ebp), %eax
	leave
	ret
	.size	_leb128_unsigned_decode32, .-_leb128_unsigned_decode32
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
