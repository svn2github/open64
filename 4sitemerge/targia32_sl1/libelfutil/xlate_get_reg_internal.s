	.file	"xlate_get_reg_internal.c"
	.ident	"$Revision: 1.1 $"
	.text
	.type	_xlate_push_curr_state, @function
_xlate_push_curr_state:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$796, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L2
	movl	$-1, -24(%ebp)
	jmp	.L4
.L2:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 792(%eax)
	movl	-8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, %ecx
	movl	$792, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	movl	$0, -24(%ebp)
.L4:
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_push_curr_state, .-_xlate_push_curr_state
	.type	_xlate_pop_curr_state, @function
_xlate_pop_curr_state:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L7
	movl	$-52, -24(%ebp)
	jmp	.L9
.L7:
	movl	12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%eax, %ecx
	movl	$792, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memcpy@PLT
	movl	-8(%ebp), %eax
	movl	792(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -24(%ebp)
.L9:
	movl	-24(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_pop_curr_state, .-_xlate_pop_curr_state
	.type	_xlate_pop_all_state, @function
_xlate_pop_all_state:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	jmp	.L12
.L13:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	792(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L12:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L13
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_pop_all_state, .-_xlate_pop_all_state
.globl _xlate_expand_reg_info_internal
	.type	_xlate_expand_reg_info_internal, @function
_xlate_expand_reg_info_internal:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$84, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	addl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	jne	.L17
	movl	$-39, -36(%ebp)
	jmp	.L19
.L17:
	movl	8(%ebp), %eax
	movl	56(%eax), %ecx
	movl	32(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_expand_reg_info_internal_given_ptrs@PLT
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L19:
	movl	-36(%ebp), %eax
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	_xlate_expand_reg_info_internal, .-_xlate_expand_reg_info_internal
.globl _xlate_expand_reg_info_internal_given_ptrs
	.type	_xlate_expand_reg_info_internal_given_ptrs, @function
_xlate_expand_reg_info_internal_given_ptrs:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	28(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	$0, -44(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -28(%ebp)
	cmpl	$0, 44(%ebp)
	je	.L22
	movl	$64, -52(%ebp)
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L22
	movl	$-1, -164(%ebp)
	jmp	.L25
.L22:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L26
.L27:
	movl	-40(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movb	$0, (%eax,%ecx)
	movl	-40(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movw	$1035, 2(%eax,%ecx)
	movl	-40(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	addl	$1, -40(%ebp)
.L26:
	cmpl	$65, -40(%ebp)
	jbe	.L27
	jmp	.L160
.L30:
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	movl	$-64, %eax
	andb	-19(%ebp), %al
	movb	%al, -17(%ebp)
	cmpb	$0, -17(%ebp)
	jne	.L31
	movzbl	-19(%ebp), %eax
	movb	%al, -157(%ebp)
	jmp	.L33
.L31:
	movzbl	-17(%ebp), %edx
	movb	%dl, -157(%ebp)
.L33:
	movzbl	-157(%ebp), %ecx
	movb	%cl, -18(%ebp)
	addl	$1, 8(%ebp)
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movzbl	-18(%ebp), %eax
	movl	%eax, -156(%ebp)
	cmpl	$8, -156(%ebp)
	je	.L43
	cmpl	$8, -156(%ebp)
	jg	.L52
	cmpl	$3, -156(%ebp)
	je	.L38
	cmpl	$3, -156(%ebp)
	jg	.L53
	cmpl	$1, -156(%ebp)
	je	.L36
	cmpl	$1, -156(%ebp)
	jg	.L37
	cmpl	$0, -156(%ebp)
	je	.L56
	jmp	.L34
.L53:
	cmpl	$5, -156(%ebp)
	je	.L40
	cmpl	$5, -156(%ebp)
	jl	.L39
	cmpl	$6, -156(%ebp)
	je	.L41
	cmpl	$7, -156(%ebp)
	je	.L42
	jmp	.L34
.L52:
	cmpl	$13, -156(%ebp)
	je	.L47
	cmpl	$13, -156(%ebp)
	jg	.L54
	cmpl	$10, -156(%ebp)
	je	.L45
	cmpl	$10, -156(%ebp)
	jl	.L44
	cmpl	$11, -156(%ebp)
	je	.L46
	cmpl	$12, -156(%ebp)
	je	.L40
	jmp	.L34
.L54:
	cmpl	$64, -156(%ebp)
	je	.L49
	cmpl	$64, -156(%ebp)
	jg	.L55
	cmpl	$14, -156(%ebp)
	je	.L48
	jmp	.L34
.L55:
	cmpl	$128, -156(%ebp)
	je	.L50
	cmpl	$192, -156(%ebp)
	je	.L51
	jmp	.L34
.L49:
	movzbl	-19(%ebp), %eax
	andl	$63, %eax
	sall	$2, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	jmp	.L56
.L50:
	movzbl	-19(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%ecx, -96(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L57
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L59
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L59:
	movl	$-36, -164(%ebp)
	jmp	.L25
.L57:
	leal	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode64@PLT
	movl	%eax, -48(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movb	$1, (%eax,%ecx)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movw	$0, 2(%eax,%ecx)
	movl	-60(%ebp), %edx
	movl	-128(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%esi, 4(%eax,%ecx)
	movl	%edi, 8(%eax,%ecx)
	jmp	.L56
.L51:
	movzbl	-19(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%ecx, -96(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L56
	cmpl	$0, -28(%ebp)
	je	.L63
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L63:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-36, -164(%ebp)
	jmp	.L25
.L36:
	cmpl	$0, 16(%ebp)
	jne	.L65
	cmpl	$4, 20(%ebp)
	jg	.L67
.L65:
	leal	-120(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	addl	$8, 8(%ebp)
	jmp	.L56
.L67:
	leal	-68(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	-68(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-68(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	addl	$4, 8(%ebp)
	jmp	.L56
.L37:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	addl	$1, 8(%ebp)
	jmp	.L56
.L38:
	cmpl	$4, 20(%ebp)
	jg	.L69
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbw	%al, %ax
	movw	%ax, -76(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzwl	-76(%ebp), %eax
	orl	%edx, %eax
	movw	%ax, -76(%ebp)
	jmp	.L71
.L69:
	leal	-76(%ebp), %eax
	movl	8(%ebp), %edx
	movzwl	(%edx), %edx
	movw	%dx, (%eax)
.L71:
	movzwl	-76(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, -104(%ebp)
	movl	-104(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	addl	$2, 8(%ebp)
	jmp	.L56
.L39:
	cmpl	$4, 20(%ebp)
	jg	.L72
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-76(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -76(%ebp)
	jmp	.L74
.L72:
	leal	-76(%ebp), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
.L74:
	movl	-76(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	addl	$4, 8(%ebp)
	jmp	.L56
.L40:
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -48(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L75
	cmpl	$0, -28(%ebp)
	je	.L77
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L77:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-36, -164(%ebp)
	jmp	.L25
.L75:
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	leal	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode64@PLT
	movl	%eax, -48(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	movl	36(%ebp), %eax
	movb	$1, (%eax)
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	movl	36(%ebp), %eax
	movw	%dx, 2(%eax)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	jmp	.L56
.L41:
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -48(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L79
	cmpl	$0, -28(%ebp)
	je	.L81
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L81:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-36, -164(%ebp)
	jmp	.L25
.L79:
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	jmp	.L56
.L42:
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -48(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L83
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L85
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L85:
	movl	$-36, -164(%ebp)
	jmp	.L25
.L83:
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movb	$0, (%eax,%ecx)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movw	$1034, 2(%eax,%ecx)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	jmp	.L56
.L43:
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -48(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L87
	cmpl	$0, -28(%ebp)
	je	.L89
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L89:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-36, -164(%ebp)
	jmp	.L25
.L87:
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movb	$0, (%eax,%ecx)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movw	$1035, 2(%eax,%ecx)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	jmp	.L56
.L47:
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -48(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L91
	cmpl	$0, -28(%ebp)
	je	.L93
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L93:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-36, -164(%ebp)
	jmp	.L25
.L91:
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	movl	36(%ebp), %eax
	movw	%dx, 2(%eax)
	jmp	.L56
.L44:
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -48(%ebp)
	movl	-60(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L95
	cmpl	$0, -28(%ebp)
	je	.L97
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L97:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-36, -164(%ebp)
	jmp	.L25
.L95:
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode32@PLT
	movl	%eax, -48(%ebp)
	movl	-64(%ebp), %eax
	cmpl	$65, %eax
	jbe	.L99
	cmpl	$0, -28(%ebp)
	je	.L101
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L101:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-36, -164(%ebp)
	jmp	.L25
.L99:
	movl	-64(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movb	$0, (%eax,%ecx)
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, %esi
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movw	%si, 2(%eax,%ecx)
	movl	-60(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	jmp	.L56
.L45:
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_push_curr_state
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L56
	cmpl	$0, -28(%ebp)
	je	.L105
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L105:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	-44(%ebp), %edx
	movl	%edx, -164(%ebp)
	jmp	.L25
.L46:
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_curr_state
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	je	.L56
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L109
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L109:
	movl	-44(%ebp), %ecx
	movl	%ecx, -164(%ebp)
	jmp	.L25
.L48:
	leal	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_leb128_unsigned_decode64@PLT
	movl	%eax, -48(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-48(%ebp), %eax
	addl	%eax, 8(%ebp)
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	36(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	jmp	.L56
.L34:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L111
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L111:
	movl	$-38, -164(%ebp)
	jmp	.L25
.L56:
	cmpl	$1, 24(%ebp)
	jne	.L113
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L115
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	-112(%ebp), %eax
	adcl	-108(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L115:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	movl	-148(%ebp), %edx
	cmpl	-132(%ebp), %edx
	ja	.L117
	movl	-148(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	jb	.L119
	movl	-152(%ebp), %eax
	cmpl	-136(%ebp), %eax
	ja	.L117
.L119:
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L120
.L117:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L121
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L121:
	movl	$0, -164(%ebp)
	jmp	.L25
.L120:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	jmp	.L29
.L113:
	cmpl	$2, 24(%ebp)
	jne	.L123
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L125
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	-112(%ebp), %eax
	adcl	-108(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
.L125:
	movl	-120(%ebp), %edx
	movl	-116(%ebp), %ecx
	movl	%edx, -144(%ebp)
	movl	%ecx, -140(%ebp)
	movl	-140(%ebp), %ecx
	cmpl	-132(%ebp), %ecx
	ja	.L127
	movl	-140(%ebp), %eax
	cmpl	-132(%ebp), %eax
	jb	.L129
	movl	-144(%ebp), %edx
	cmpl	-136(%ebp), %edx
	ja	.L127
.L129:
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L130
.L127:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L131
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L131:
	movl	$0, -164(%ebp)
	jmp	.L25
.L130:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	jmp	.L29
.L123:
	cmpl	$0, 24(%ebp)
	jne	.L133
	cmpl	$0, -28(%ebp)
	jne	.L135
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-48, -164(%ebp)
	jmp	.L25
.L135:
	movl	-56(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L137
	addl	$64, -52(%ebp)
	movl	-52(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	realloc@PLT
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L139
	cmpl	$0, -28(%ebp)
	je	.L141
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L141:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$-1, -164(%ebp)
	jmp	.L25
.L139:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L137:
	movl	-56(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	addl	-28(%ebp), %edx
	movzbl	-18(%ebp), %eax
	movb	%al, (%edx)
	movl	-56(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	addl	-28(%ebp), %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	movl	-56(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	addl	-28(%ebp), %ecx
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, 12(%ecx)
	movl	%edx, 16(%ecx)
	movl	-56(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	addl	-28(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
	addl	$1, -56(%ebp)
	jmp	.L29
.L133:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L143
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L143:
	movl	$-48, -164(%ebp)
	jmp	.L25
.L29:
.L160:
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L30
	cmpl	$1, 24(%ebp)
	jne	.L146
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L148
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L148:
	movl	$0, -164(%ebp)
	jmp	.L25
.L146:
	cmpl	$2, 24(%ebp)
	jne	.L150
	cmpl	$0, -28(%ebp)
	je	.L154
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L154
.L150:
	cmpl	$0, 24(%ebp)
	jne	.L155
	movl	44(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	-56(%ebp), %eax
	movl	$0, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L154
.L155:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	cmpl	$0, -28(%ebp)
	je	.L157
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L157:
	movl	$-48, -164(%ebp)
	jmp	.L25
.L154:
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_pop_all_state
	movl	$0, -164(%ebp)
.L25:
	movl	-164(%ebp), %eax
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_expand_reg_info_internal_given_ptrs, .-_xlate_expand_reg_info_internal_given_ptrs
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
