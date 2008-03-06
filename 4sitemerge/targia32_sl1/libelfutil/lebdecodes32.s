	.file	"lebdecodes32.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _leb128_signed_decode32
	.type	_leb128_signed_decode32, @function
_leb128_signed_decode32:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -2(%ebp)
	movb	$0, -1(%ebp)
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -2(%ebp)
	movzbl	-2(%ebp), %eax
	testb	%al, %al
	js	.L2
	movzbl	-2(%ebp), %eax
	movl	%eax, -8(%ebp)
	movzbl	-2(%ebp), %eax
	andl	$64, %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	je	.L4
	orl	$-128, -8(%ebp)
.L4:
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$1, -20(%ebp)
	jmp	.L6
.L2:
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	js	.L7
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movb	%al, -2(%ebp)
	movzbl	-2(%ebp), %eax
	andl	$127, %eax
	sall	$7, %eax
	orl	%eax, -8(%ebp)
	movzbl	-2(%ebp), %eax
	andl	$64, %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	je	.L9
	orl	$-16384, -8(%ebp)
.L9:
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$2, -20(%ebp)
	jmp	.L6
.L7:
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	js	.L11
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
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
	movb	%al, -2(%ebp)
	movzbl	-2(%ebp), %eax
	andl	$127, %eax
	sall	$14, %eax
	orl	%eax, -8(%ebp)
	movzbl	-2(%ebp), %eax
	andl	$64, %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	je	.L13
	orl	$-2097152, -8(%ebp)
.L13:
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$3, -20(%ebp)
	jmp	.L6
.L11:
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	js	.L15
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
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
	movb	%al, -2(%ebp)
	movzbl	-2(%ebp), %eax
	andl	$127, %eax
	sall	$21, %eax
	orl	%eax, -8(%ebp)
	movzbl	-2(%ebp), %eax
	andl	$64, %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	je	.L17
	orl	$-268435456, -8(%ebp)
.L17:
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$4, -20(%ebp)
	jmp	.L6
.L15:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
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
.L6:
	movl	-20(%ebp), %eax
	leave
	ret
	.size	_leb128_signed_decode32, .-_leb128_signed_decode32
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
