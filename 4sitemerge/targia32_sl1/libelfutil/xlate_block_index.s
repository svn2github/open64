	.file	"xlate_block_index.c"
	.ident	"$Revision: 1.1 $"
	.text
	.type	_xlate_basic_ubh_setup_v1, @function
_xlate_basic_ubh_setup_v1:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	96(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	104(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	cmpl	12(%ebp), %eax
	jbe	.L2
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	jmp	.L4
.L2:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
.L4:
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	16(%ebp), %eax
	movl	8(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	imull	12(%ebp), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	20(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 68(%edx)
	movl	20(%ebp), %eax
	movb	$1, 72(%eax)
	popl	%ebp
	ret
	.size	_xlate_basic_ubh_setup_v1, .-_xlate_basic_ubh_setup_v1
.globl _xlate_index_into_blockhdrs_v1
	.type	_xlate_index_into_blockhdrs_v1, @function
_xlate_index_into_blockhdrs_v1:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$36, %esp
	movl	$0, -8(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	16(%ebp), %eax
	ja	.L7
	movl	$-21, -20(%ebp)
	jmp	.L9
.L7:
	movl	16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%eax, -4(%ebp)
	movl	28(%ebp), %eax
	movzbl	72(%eax), %eax
	testb	%al, %al
	jne	.L10
	movl	28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_basic_ubh_setup_v1
.L10:
	cmpl	$0, 12(%ebp)
	je	.L12
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	cmpl	16(%ebp), %eax
	jbe	.L14
	movl	-4(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L17
.L14:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L17
.L12:
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	cmpl	16(%ebp), %eax
	jbe	.L18
	movl	-4(%ebp), %eax
	addl	$12, %eax
	movl	4(%eax), %eax
	movl	$0, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L17
.L18:
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	104(%eax), %eax
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L17:
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L9:
	movl	-20(%ebp), %eax
	leave
	ret
	.size	_xlate_index_into_blockhdrs_v1, .-_xlate_index_into_blockhdrs_v1
.globl _xlate_index_into_blockhdrs_v2_32
	.type	_xlate_index_into_blockhdrs_v2_32, @function
_xlate_index_into_blockhdrs_v2_32:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	movl	$0, -8(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	16(%ebp), %eax
	ja	.L22
	movl	$-21, -20(%ebp)
	jmp	.L24
.L22:
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%eax, -4(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L25
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	cmpl	16(%ebp), %eax
	jbe	.L27
	movl	-4(%ebp), %eax
	addl	$20, %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L30
.L27:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L30
.L25:
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, %edx
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, %edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L30:
	movl	28(%ebp), %eax
	movzbl	72(%eax), %eax
	cmpb	$1, %al
	jne	.L31
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L24
.L31:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	cmpl	16(%ebp), %eax
	jbe	.L33
	movl	-4(%ebp), %eax
	addl	$20, %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	jmp	.L35
.L33:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
.L35:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	28(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, %edx
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, %edx
	movl	28(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, %edx
	movl	28(%ebp), %ecx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	$0, %edx
	movl	28(%ebp), %ecx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	28(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	imull	16(%ebp), %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	28(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	28(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 68(%edx)
	movl	28(%ebp), %eax
	movb	$1, 72(%eax)
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L24:
	movl	-20(%ebp), %eax
	leave
	ret
	.size	_xlate_index_into_blockhdrs_v2_32, .-_xlate_index_into_blockhdrs_v2_32
.globl _xlate_index_into_blockhdrs_v2_64
	.type	_xlate_index_into_blockhdrs_v2_64, @function
_xlate_index_into_blockhdrs_v2_64:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	movl	$0, -8(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	cmpl	16(%ebp), %eax
	ja	.L38
	movl	$-21, -20(%ebp)
	jmp	.L40
.L38:
	movl	16(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%eax, -4(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L41
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	cmpl	16(%ebp), %eax
	jbe	.L43
	movl	-4(%ebp), %eax
	addl	$40, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L46
.L43:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L46
.L41:
	movl	-4(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	20(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-4(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L46:
	movl	28(%ebp), %eax
	movzbl	72(%eax), %eax
	cmpb	$1, %al
	jne	.L47
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L40
.L47:
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	subl	$1, %eax
	cmpl	16(%ebp), %eax
	jbe	.L49
	movl	-4(%ebp), %eax
	addl	$40, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
	jmp	.L51
.L49:
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	88(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, 32(%ecx)
	movl	%edx, 36(%ecx)
.L51:
	movl	-4(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-4(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	-4(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	28(%ebp), %ecx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 60(%eax)
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	imull	16(%ebp), %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 52(%eax)
	movl	28(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	addl	%eax, %edx
	movl	28(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	28(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 68(%edx)
	movl	28(%ebp), %eax
	movb	$1, 72(%eax)
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L40:
	movl	-20(%ebp), %eax
	leave
	ret
	.size	_xlate_index_into_blockhdrs_v2_64, .-_xlate_index_into_blockhdrs_v2_64
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
