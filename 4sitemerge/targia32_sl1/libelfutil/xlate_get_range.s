	.file	"xlate_get_range.c"
	.ident	"$Revision: 1.1 $"
	.text
	.type	_xlate_binary_search_xlate_block_table, @function
_xlate_binary_search_xlate_block_table:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	24(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jbe	.L19
	movl	$0, -28(%ebp)
	jmp	.L4
.L6:
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	shrl	%eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	sall	$5, %eax
	addl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_found_address
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	jne	.L7
	movl	32(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$1, -28(%ebp)
	jmp	.L4
.L7:
	cmpl	$0, -4(%ebp)
	jns	.L9
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L5
.L9:
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
.L5:
.L19:
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	$1, %eax
	ja	.L6
	movl	-16(%ebp), %eax
	sall	$5, %eax
	addl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_found_address
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	jne	.L12
	movl	32(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	movl	$1, -28(%ebp)
	jmp	.L4
.L12:
	cmpl	$0, -4(%ebp)
	jns	.L14
	movl	$0, -28(%ebp)
	jmp	.L4
.L14:
	movl	-12(%ebp), %eax
	sall	$5, %eax
	addl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_found_address
	testl	%eax, %eax
	jne	.L16
	movl	32(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	movl	$1, -28(%ebp)
	jmp	.L4
.L16:
	movl	$0, -28(%ebp)
.L4:
	movl	-28(%ebp), %eax
	leave
	ret
	.size	_xlate_binary_search_xlate_block_table, .-_xlate_binary_search_xlate_block_table
	.type	_xlate_found_address, @function
_xlate_found_address:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 16(%ebp)
	je	.L21
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-52(%ebp), %ecx
	cmpl	-12(%ebp), %ecx
	jb	.L23
	movl	-52(%ebp), %esi
	cmpl	-12(%ebp), %esi
	ja	.L25
	movl	-56(%ebp), %edi
	cmpl	-16(%ebp), %edi
	jbe	.L23
.L25:
	movl	$-1, -44(%ebp)
	jmp	.L26
.L23:
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	20(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -40(%ebp)
	movl	%edi, -36(%ebp)
	movl	-36(%ebp), %edi
	cmpl	-12(%ebp), %edi
	ja	.L27
	movl	-36(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L29
	movl	-40(%ebp), %edx
	cmpl	-16(%ebp), %edx
	ja	.L27
.L29:
	movl	$1, -44(%ebp)
	jmp	.L26
.L27:
	movl	$0, -44(%ebp)
	jmp	.L26
.L21:
	movl	20(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	movl	-28(%ebp), %edi
	cmpl	-12(%ebp), %edi
	jb	.L30
	movl	-28(%ebp), %eax
	cmpl	-12(%ebp), %eax
	ja	.L32
	movl	-32(%ebp), %edx
	cmpl	-16(%ebp), %edx
	jbe	.L30
.L32:
	movl	$-1, -44(%ebp)
	jmp	.L26
.L30:
	movl	20(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	20(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -24(%ebp)
	movl	%edi, -20(%ebp)
	movl	-20(%ebp), %edi
	cmpl	-12(%ebp), %edi
	ja	.L33
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L35
	movl	-24(%ebp), %edx
	cmpl	-16(%ebp), %edx
	ja	.L33
.L35:
	movl	$1, -44(%ebp)
	jmp	.L26
.L33:
	movl	$0, -44(%ebp)
.L26:
	movl	-44(%ebp), %eax
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_found_address, .-_xlate_found_address
.globl _xlate_get_out_from_ranges
	.type	_xlate_get_out_from_ranges, @function
_xlate_get_out_from_ranges:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %edx
	cmpl	-52(%ebp), %edx
	jb	.L38
	movl	-60(%ebp), %eax
	cmpl	-52(%ebp), %eax
	ja	.L40
	movl	-64(%ebp), %edx
	cmpl	-56(%ebp), %edx
	jb	.L38
.L40:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.L38:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	addl	-48(%ebp), %eax
	adcl	-44(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_get_out_from_ranges, .-_xlate_get_out_from_ranges
	.type	_xlate_expand_block_v1_ps, @function
_xlate_expand_block_v1_ps:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -40(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -16(%ebp)
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_signed_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	$32, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L43
	movl	$-1, -96(%ebp)
	jmp	.L45
.L43:
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L46
.L47:
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_signed_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	addl	$1, -24(%ebp)
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -48(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-16(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-68(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-56(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-52(%ebp), %eax
	movl	%eax, 28(%edx)
.L46:
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jae	.L48
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L47
.L48:
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 64(%edx)
	movl	-40(%ebp), %eax
	movl	%eax, -96(%ebp)
.L45:
	movl	-96(%ebp), %eax
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_block_v1_ps, .-_xlate_expand_block_v1_ps
.globl _xlate_get_range_from_block_v1_ps
	.type	_xlate_get_range_from_block_v1_ps, @function
_xlate_get_range_from_block_v1_ps:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L52
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_block_v1_ps
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L52
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L55
.L52:
	cmpl	$0, 12(%ebp)
	je	.L56
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -16(%ebp)
	jmp	.L58
.L56:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -16(%ebp)
.L58:
	cmpl	$0, 24(%ebp)
	je	.L59
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L61
.L59:
	movl	28(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -24(%ebp)
.L61:
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L62
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jae	.L62
	leal	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_binary_search_xlate_block_table
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L65
	movl	$-46, -60(%ebp)
	jmp	.L55
.L65:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
.L62:
	movl	-20(%ebp), %eax
	sall	$5, %eax
	addl	%eax, -12(%ebp)
	jmp	.L67
.L68:
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_ck_in_range_and_calc_out_addr
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L69
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 36(%ebp)
	je	.L71
	movl	36(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L71:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_memodata_valid
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L55
.L69:
	addl	$1, -20(%ebp)
	addl	$32, -12(%ebp)
.L67:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L68
	movl	$-46, -60(%ebp)
.L55:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_get_range_from_block_v1_ps, .-_xlate_get_range_from_block_v1_ps
	.type	_xlate_ck_in_range_and_calc_out_addr, @function
_xlate_ck_in_range_and_calc_out_addr:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_found_address
	testl	%eax, %eax
	je	.L76
	movl	$0, -44(%ebp)
	jmp	.L78
.L76:
	cmpl	$0, 16(%ebp)
	je	.L79
	movl	20(%ebp), %eax
	movl	24(%eax), %edx
	movl	28(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	20(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_get_out_from_ranges@PLT
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L81
.L79:
	movl	20(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	movl	20(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	20(%ebp), %eax
	movl	16(%eax), %edx
	movl	20(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_get_out_from_ranges@PLT
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L81:
	movl	$1, -44(%ebp)
.L78:
	movl	-44(%ebp), %eax
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_ck_in_range_and_calc_out_addr, .-_xlate_ck_in_range_and_calc_out_addr
	.type	set_memodata_valid, @function
set_memodata_valid:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movb	$1, (%eax)
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, 52(%ecx)
	movl	4(%edx), %eax
	movl	%eax, 56(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 60(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 64(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 68(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 72(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 76(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 80(%ecx)
	movl	16(%ebp), %eax
	movl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	24(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 1(%eax)
	movl	32(%ebp), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	cmpl	$0, 28(%ebp)
	jne	.L86
	movl	32(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
	movl	32(%ebp), %eax
	movl	36(%eax), %edx
	movl	32(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 28(%ecx)
	movl	%edx, 32(%ecx)
	movl	32(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 36(%ecx)
	movl	%edx, 40(%ecx)
	movl	32(%ebp), %eax
	movl	44(%eax), %edx
	movl	40(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 44(%ecx)
	movl	%edx, 48(%ecx)
.L86:
	popl	%ebp
	ret
	.size	set_memodata_valid, .-set_memodata_valid
	.type	_xlate_expand_block_v1_po, @function
_xlate_expand_block_v1_po:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -44(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	$-1, -72(%ebp)
	movl	$-1, -68(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
	movl	$32, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L88
	movl	$-1, -148(%ebp)
	jmp	.L90
.L88:
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L91
.L92:
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-52(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	addl	$1, -28(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -48(%ebp)
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -52(%ebp)
	movl	-48(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-52(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-140(%ebp), %edx
	cmpl	-68(%ebp), %edx
	ja	.L93
	movl	-140(%ebp), %ecx
	cmpl	-68(%ebp), %ecx
	jb	.L95
	movl	-144(%ebp), %esi
	cmpl	-72(%ebp), %esi
	jae	.L93
.L95:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L93:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	%edx, -156(%ebp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	-160(%ebp), %esi
	movl	-156(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-132(%ebp), %edi
	cmpl	-60(%ebp), %edi
	jb	.L96
	movl	-132(%ebp), %eax
	cmpl	-60(%ebp), %eax
	ja	.L98
	movl	-136(%ebp), %edx
	cmpl	-64(%ebp), %edx
	jbe	.L96
.L98:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
.L96:
	movl	-20(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	%eax, (%edx)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-92(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-88(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-84(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-80(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 28(%edx)
	addl	$32, -20(%ebp)
.L91:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jae	.L99
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L92
.L99:
	movl	12(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 64(%eax)
	movl	12(%ebp), %eax
	movl	40(%eax), %esi
	movl	44(%eax), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-124(%ebp), %edi
	cmpl	-60(%ebp), %edi
	ja	.L101
	movl	-124(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jb	.L103
	movl	-128(%ebp), %edx
	cmpl	-64(%ebp), %edx
	jae	.L101
.L103:
	movl	12(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 40(%ecx)
	movl	%edx, 44(%ecx)
.L101:
	movl	12(%ebp), %eax
	movl	24(%eax), %esi
	movl	28(%eax), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-116(%ebp), %edi
	cmpl	-68(%ebp), %edi
	jb	.L104
	movl	-116(%ebp), %eax
	cmpl	-68(%ebp), %eax
	ja	.L106
	movl	-120(%ebp), %edx
	cmpl	-72(%ebp), %edx
	jbe	.L104
.L106:
	movl	12(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
.L104:
	movl	-44(%ebp), %ecx
	movl	%ecx, -148(%ebp)
.L90:
	movl	-148(%ebp), %eax
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_block_v1_po, .-_xlate_expand_block_v1_po
.globl _xlate_get_range_from_block_v1_po
	.type	_xlate_get_range_from_block_v1_po, @function
_xlate_get_range_from_block_v1_po:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$156, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -36(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L109
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_block_v1_po
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L109
	movl	-44(%ebp), %eax
	movl	%eax, -124(%ebp)
	jmp	.L112
.L109:
	cmpl	$0, 12(%ebp)
	je	.L113
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -32(%ebp)
	jmp	.L115
.L113:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -32(%ebp)
.L115:
	cmpl	$0, 24(%ebp)
	je	.L116
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L118
.L116:
	movl	28(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	addl	$1, -36(%ebp)
.L118:
	movl	-32(%ebp), %eax
	movb	$0, (%eax)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jae	.L119
	leal	-48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_binary_search_xlate_block_table
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L121
	movl	$-46, -124(%ebp)
	jmp	.L112
.L121:
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
.L119:
	movl	-36(%ebp), %eax
	sall	$5, %eax
	addl	%eax, -28(%ebp)
	jmp	.L123
.L124:
	leal	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_ck_in_range_and_calc_out_addr
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L125
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 36(%ebp)
	je	.L127
	movl	36(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L127:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	set_memodata_valid
	movl	-44(%ebp), %edx
	movl	%edx, -124(%ebp)
	jmp	.L112
.L125:
	addl	$32, -28(%ebp)
	addl	$1, -36(%ebp)
.L123:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jb	.L124
	cmpl	$0, 24(%ebp)
	jne	.L130
	cmpl	$0, 12(%ebp)
	je	.L132
	movl	28(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-116(%ebp), %edi
	cmpl	-100(%ebp), %edi
	jb	.L130
	movl	-116(%ebp), %eax
	cmpl	-100(%ebp), %eax
	ja	.L136
	movl	-120(%ebp), %edx
	cmpl	-104(%ebp), %edx
	jbe	.L130
.L136:
	movl	28(%ebp), %eax
	movl	32(%eax), %esi
	movl	36(%eax), %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	28(%ebp), %eax
	movl	40(%eax), %edx
	movl	44(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	cmpl	$0, 36(%ebp)
	je	.L137
	movl	36(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-68(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-64(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 28(%edx)
.L137:
	movl	-44(%ebp), %edi
	movl	%edi, -124(%ebp)
	jmp	.L112
.L132:
	movl	28(%ebp), %eax
	movl	40(%eax), %edx
	movl	44(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-108(%ebp), %ecx
	cmpl	-100(%ebp), %ecx
	jb	.L130
	movl	-108(%ebp), %esi
	cmpl	-100(%ebp), %esi
	ja	.L140
	movl	-112(%ebp), %edi
	cmpl	-104(%ebp), %edi
	jbe	.L130
.L140:
	movl	28(%ebp), %eax
	movl	32(%eax), %edx
	movl	36(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	28(%ebp), %eax
	movl	40(%eax), %edx
	movl	44(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	cmpl	$0, 36(%ebp)
	je	.L141
	movl	36(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-72(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-68(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-64(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 28(%edx)
.L141:
	movl	-44(%ebp), %edi
	movl	%edi, -124(%ebp)
	jmp	.L112
.L130:
	movl	$-46, -124(%ebp)
.L112:
	movl	-124(%ebp), %eax
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_get_range_from_block_v1_po, .-_xlate_get_range_from_block_v1_po
.globl _xlate_get_range_from_block_v1_ge
	.type	_xlate_get_range_from_block_v1_ge, @function
_xlate_get_range_from_block_v1_ge:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	$-8, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	ret
	.size	_xlate_get_range_from_block_v1_ge, .-_xlate_get_range_from_block_v1_ge
	.type	_xlate_expand_block_v2_32_ps, @function
_xlate_expand_block_v2_32_ps:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -40(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -16(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$32, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L147
	movl	$-1, -96(%ebp)
	jmp	.L149
.L147:
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	jmp	.L150
.L151:
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_signed_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	addl	$1, -24(%ebp)
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -48(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-16(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-68(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-56(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-52(%ebp), %eax
	movl	%eax, 28(%edx)
	addl	$32, -16(%ebp)
.L150:
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jae	.L152
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L151
.L152:
	movl	-40(%ebp), %eax
	movl	%eax, -96(%ebp)
.L149:
	movl	-96(%ebp), %eax
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_block_v2_32_ps, .-_xlate_expand_block_v2_32_ps
.globl _xlate_get_range_from_block_v2_32_ps
	.type	_xlate_get_range_from_block_v2_32_ps, @function
_xlate_get_range_from_block_v2_32_ps:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L156
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_block_v2_32_ps
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L156
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L159
.L156:
	cmpl	$0, 12(%ebp)
	je	.L160
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -16(%ebp)
	jmp	.L162
.L160:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -16(%ebp)
.L162:
	cmpl	$0, 24(%ebp)
	je	.L163
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L165
.L163:
	movl	28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
.L165:
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L166
	leal	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_binary_search_xlate_block_table
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L168
	movl	$-46, -60(%ebp)
	jmp	.L159
.L168:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
.L166:
	movl	-20(%ebp), %eax
	sall	$5, %eax
	addl	%eax, -12(%ebp)
	jmp	.L170
.L171:
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_ck_in_range_and_calc_out_addr
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L172
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 36(%ebp)
	je	.L174
	movl	36(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L174:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_memodata_valid
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L159
.L172:
	addl	$32, -12(%ebp)
	addl	$1, -20(%ebp)
.L170:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L171
	movl	$-46, -60(%ebp)
.L159:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_get_range_from_block_v2_32_ps, .-_xlate_get_range_from_block_v2_32_ps
	.type	_xlate_expand_block_v2_32_po, @function
_xlate_expand_block_v2_32_po:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -40(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$32, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L179
	movl	$-1, -96(%ebp)
	jmp	.L181
.L179:
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	jmp	.L182
.L183:
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	addl	$1, -24(%ebp)
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -48(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-48(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-16(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-68(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-64(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-56(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-52(%ebp), %eax
	movl	%eax, 28(%edx)
	addl	$32, -16(%ebp)
.L182:
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jae	.L184
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L183
.L184:
	movl	-40(%ebp), %eax
	movl	%eax, -96(%ebp)
.L181:
	movl	-96(%ebp), %eax
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_block_v2_32_po, .-_xlate_expand_block_v2_32_po
.globl _xlate_get_range_from_block_v2_32_po
	.type	_xlate_get_range_from_block_v2_32_po, @function
_xlate_get_range_from_block_v2_32_po:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L188
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_block_v2_32_po
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L188
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L191
.L188:
	cmpl	$0, 12(%ebp)
	je	.L192
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -16(%ebp)
	jmp	.L194
.L192:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -16(%ebp)
.L194:
	cmpl	$0, 24(%ebp)
	je	.L195
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L197
.L195:
	movl	28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
.L197:
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -8(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_binary_search_xlate_block_table
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L198
	movl	$-46, -60(%ebp)
	jmp	.L191
.L198:
	movl	-20(%ebp), %eax
	sall	$5, %eax
	addl	%eax, -8(%ebp)
	jmp	.L200
.L201:
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_ck_in_range_and_calc_out_addr
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L202
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 36(%ebp)
	je	.L204
	movl	36(%ebp), %ecx
	movl	-8(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L204:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_memodata_valid
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L191
.L202:
	addl	$32, -8(%ebp)
	addl	$1, -20(%ebp)
.L200:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L201
	movl	$-46, -60(%ebp)
.L191:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_get_range_from_block_v2_32_po, .-_xlate_get_range_from_block_v2_32_po
	.type	_xlate_expand_block_v2_32_ge, @function
_xlate_expand_block_v2_32_ge:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -40(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -52(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -64(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$32, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L209
	movl	$-1, -96(%ebp)
	jmp	.L211
.L209:
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	%edx, -80(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	%edx, -64(%ebp)
	jmp	.L212
.L213:
	movl	-84(%ebp), %esi
	movl	-80(%ebp), %edi
	movl	-44(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -84(%ebp)
	movl	%edx, -80(%ebp)
	leal	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_signed_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_signed_decode32@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
	addl	$1, -24(%ebp)
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -44(%ebp)
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -52(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -48(%ebp)
	movl	-68(%ebp), %esi
	movl	-64(%ebp), %edi
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -68(%ebp)
	movl	%edx, -64(%ebp)
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -76(%ebp)
	movl	%edx, -72(%ebp)
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	$0, %edx
	movl	%eax, -60(%ebp)
	movl	%edx, -56(%ebp)
	movl	-16(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, (%edx)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-72(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-68(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-64(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-60(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-56(%ebp), %eax
	movl	%eax, 28(%edx)
	addl	$32, -16(%ebp)
.L212:
	movl	-24(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jae	.L214
	movl	-36(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L213
.L214:
	movl	-40(%ebp), %eax
	movl	%eax, -96(%ebp)
.L211:
	movl	-96(%ebp), %eax
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_block_v2_32_ge, .-_xlate_expand_block_v2_32_ge
.globl _xlate_get_range_from_block_v2_32_ge
	.type	_xlate_get_range_from_block_v2_32_ge, @function
_xlate_get_range_from_block_v2_32_ge:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L218
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_block_v2_32_ge
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L218
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L221
.L218:
	cmpl	$0, 12(%ebp)
	je	.L222
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -16(%ebp)
	jmp	.L224
.L222:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -16(%ebp)
.L224:
	cmpl	$0, 24(%ebp)
	je	.L225
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L227
.L225:
	movl	28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
.L227:
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L228
	leal	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_binary_search_xlate_block_table
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L230
	movl	$-46, -60(%ebp)
	jmp	.L221
.L230:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
.L228:
	movl	-20(%ebp), %eax
	sall	$5, %eax
	addl	%eax, -12(%ebp)
	jmp	.L232
.L233:
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_ck_in_range_and_calc_out_addr
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L234
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 36(%ebp)
	je	.L236
	movl	36(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L236:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_memodata_valid
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L221
.L234:
	addl	$32, -12(%ebp)
	addl	$1, -20(%ebp)
.L232:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L233
	movl	$-46, -60(%ebp)
.L221:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_get_range_from_block_v2_32_ge, .-_xlate_get_range_from_block_v2_32_ge
	.type	_xlate_expand_block_v2_64_ps, @function
_xlate_expand_block_v2_64_ps:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -44(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$32, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L241
	movl	$-1, -100(%ebp)
	jmp	.L243
.L241:
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	jmp	.L244
.L245:
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode64@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -40(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_signed_decode64@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	%eax, -40(%ebp)
	addl	$1, -28(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-24(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	%eax, (%edx)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-84(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-80(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-72(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-68(%ebp), %eax
	movl	%eax, 28(%edx)
	addl	$32, -24(%ebp)
.L244:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jae	.L246
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L245
.L246:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
.L243:
	movl	-100(%ebp), %eax
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_block_v2_64_ps, .-_xlate_expand_block_v2_64_ps
.globl _xlate_get_range_from_block_v2_64_ps
	.type	_xlate_get_range_from_block_v2_64_ps, @function
_xlate_get_range_from_block_v2_64_ps:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L250
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_block_v2_64_ps
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L250
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L253
.L250:
	cmpl	$0, 12(%ebp)
	je	.L254
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -16(%ebp)
	jmp	.L256
.L254:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -16(%ebp)
.L256:
	cmpl	$0, 24(%ebp)
	je	.L257
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L259
.L257:
	movl	28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
.L259:
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L260
	leal	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_binary_search_xlate_block_table
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L262
	movl	$-46, -60(%ebp)
	jmp	.L253
.L262:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
.L260:
	movl	-20(%ebp), %eax
	sall	$5, %eax
	addl	%eax, -12(%ebp)
	jmp	.L264
.L265:
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_ck_in_range_and_calc_out_addr
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L266
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 36(%ebp)
	je	.L268
	movl	36(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L268:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_memodata_valid
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L253
.L266:
	addl	$32, -12(%ebp)
	addl	$1, -20(%ebp)
.L264:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L265
	movl	$-46, -60(%ebp)
.L253:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_get_range_from_block_v2_64_ps, .-_xlate_get_range_from_block_v2_64_ps
	.type	_xlate_expand_block_v2_64_po, @function
_xlate_expand_block_v2_64_po:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -44(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -72(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$32, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L273
	movl	$-1, -100(%ebp)
	jmp	.L275
.L273:
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	jmp	.L276
.L277:
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode64@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode64@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	addl	$1, -28(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-20(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	%eax, (%edx)
	movl	-92(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-84(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-80(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-72(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-68(%ebp), %eax
	movl	%eax, 28(%edx)
	addl	$32, -20(%ebp)
.L276:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jae	.L278
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L277
.L278:
	movl	-44(%ebp), %eax
	movl	%eax, -100(%ebp)
.L275:
	movl	-100(%ebp), %eax
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_block_v2_64_po, .-_xlate_expand_block_v2_64_po
.globl _xlate_get_range_from_block_v2_64_po
	.type	_xlate_get_range_from_block_v2_64_po, @function
_xlate_get_range_from_block_v2_64_po:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L282
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_block_v2_64_po
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L282
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L285
.L282:
	cmpl	$0, 12(%ebp)
	je	.L286
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -16(%ebp)
	jmp	.L288
.L286:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -16(%ebp)
.L288:
	cmpl	$0, 24(%ebp)
	je	.L289
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L291
.L289:
	movl	28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
.L291:
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	leal	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_binary_search_xlate_block_table
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L292
	movl	$-46, -60(%ebp)
	jmp	.L285
.L292:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	sall	$5, %eax
	addl	%eax, -12(%ebp)
	jmp	.L294
.L295:
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_ck_in_range_and_calc_out_addr
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L296
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 36(%ebp)
	je	.L298
	movl	36(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L298:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	set_memodata_valid
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L285
.L296:
	addl	$32, -12(%ebp)
	addl	$1, -20(%ebp)
.L294:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L295
	movl	$-46, -60(%ebp)
.L285:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_get_range_from_block_v2_64_po, .-_xlate_get_range_from_block_v2_64_po
	.type	_xlate_expand_block_v2_64_ge, @function
_xlate_expand_block_v2_64_ge:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -44(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -104(%ebp)
	movl	4+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	movl	8+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -96(%ebp)
	movl	12+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	movl	16+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -88(%ebp)
	movl	20+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	24+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -80(%ebp)
	movl	28+zero_xlate_block@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$32, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 48(%eax)
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L303
	movl	$-1, -116(%ebp)
	jmp	.L305
.L303:
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	jmp	.L306
.L307:
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode64@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_signed_decode64@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_signed_decode64@PLT
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -40(%ebp)
	addl	$1, -28(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-20(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	%eax, (%edx)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-92(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-88(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-84(%ebp), %eax
	movl	%eax, 20(%edx)
	movl	-80(%ebp), %eax
	movl	%eax, 24(%edx)
	movl	-76(%ebp), %eax
	movl	%eax, 28(%edx)
	addl	$32, -20(%ebp)
.L306:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jae	.L308
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L307
.L308:
	movl	-44(%ebp), %edi
	movl	%edi, -116(%ebp)
.L305:
	movl	-116(%ebp), %eax
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_block_v2_64_ge, .-_xlate_expand_block_v2_64_ge
.globl _xlate_get_range_from_block_v2_64_ge
	.type	_xlate_get_range_from_block_v2_64_ge, @function
_xlate_get_range_from_block_v2_64_ge:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$104, %esp
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -20(%ebp)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L312
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_block_v2_64_ge
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L312
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L315
.L312:
	cmpl	$0, 12(%ebp)
	je	.L316
	movl	8(%ebp), %eax
	addl	$112, %eax
	movl	%eax, -12(%ebp)
	jmp	.L318
.L316:
	movl	8(%ebp), %eax
	addl	$196, %eax
	movl	%eax, -12(%ebp)
.L318:
	cmpl	$0, 24(%ebp)
	je	.L319
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L321
.L319:
	movl	28(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -24(%ebp)
.L321:
	movl	-12(%ebp), %eax
	movb	$0, (%eax)
	movl	28(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, 12(%ebp)
	je	.L322
	leal	-32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_binary_search_xlate_block_table
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L324
	movl	$-46, -60(%ebp)
	jmp	.L315
.L324:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
.L322:
	movl	-20(%ebp), %eax
	sall	$5, %eax
	addl	%eax, -16(%ebp)
	jmp	.L326
.L327:
	leal	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_xlate_ck_in_range_and_calc_out_addr
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	je	.L328
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	cmpl	$0, 36(%ebp)
	je	.L330
	movl	36(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 24(%ecx)
	movl	28(%edx), %eax
	movl	%eax, 28(%ecx)
.L330:
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	set_memodata_valid
	movl	-28(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L315
.L328:
	addl	$32, -16(%ebp)
	addl	$1, -20(%ebp)
.L326:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L327
	movl	$-46, -60(%ebp)
.L315:
	movl	-60(%ebp), %eax
	leave
	ret
	.size	_xlate_get_range_from_block_v2_64_ge, .-_xlate_get_range_from_block_v2_64_ge
	.local	zero_xlate_block
	.comm	zero_xlate_block,32,32
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
