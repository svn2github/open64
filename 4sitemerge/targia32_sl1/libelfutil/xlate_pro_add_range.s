	.file	"xlate_pro_add_range.c"
	.ident	"$Revision: 1.1 $"
	.text
.globl _xlate_pro_add_range
	.type	_xlate_pro_add_range, @function
_xlate_pro_add_range:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	$0, -20(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$-268984062, %eax
	je	.L2
	movl	$-43, -68(%ebp)
	jmp	.L4
.L2:
	movl	8(%ebp), %eax
	movzbl	131(%eax), %eax
	testb	%al, %al
	je	.L5
	movl	$-35, -68(%ebp)
	jmp	.L4
.L5:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L7
	movl	8(%ebp), %eax
	movl	96(%eax), %ecx
	movl	8(%ebp), %eax
	addl	$64, %eax
	movl	8(%ebp), %esi
	addl	$60, %esi
	movl	8(%ebp), %edi
	addl	$56, %edi
	movl	%eax, 44(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L11
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_merge_range@PLT
	movl	%eax, -20(%ebp)
	jmp	.L11
.L7:
	movl	8(%ebp), %eax
	movl	48(%eax), %ecx
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	8(%ebp), %edi
	addl	$8, %edi
	movl	%eax, 44(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -20(%ebp)
.L11:
	movl	-20(%ebp), %eax
	movl	%eax, -68(%ebp)
.L4:
	movl	-68(%ebp), %eax
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_pro_add_range, .-_xlate_pro_add_range
.globl _xlate_pro_reset_saved_range
	.type	_xlate_pro_reset_saved_range, @function
_xlate_pro_reset_saved_range:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	$0, 156(%eax)
	popl	%ebp
	ret
	.size	_xlate_pro_reset_saved_range, .-_xlate_pro_reset_saved_range
	.type	_xlate_finish_saved_range, @function
_xlate_finish_saved_range:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$112, %esp
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -52(%ebp)
	movl	8(%ebp), %eax
	movl	184(%eax), %edx
	movl	188(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	8(%ebp), %eax
	movl	176(%eax), %esi
	movl	180(%eax), %edi
	movl	8(%ebp), %eax
	movl	168(%eax), %edx
	movl	172(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	8(%ebp), %eax
	movl	160(%eax), %edx
	movl	164(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	8(%ebp), %ecx
	addl	$8, %ecx
	movl	%ecx, -28(%ebp)
	movl	-52(%ebp), %edx
	movl	%edx, 44(%esp)
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %ecx
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*-56(%ebp)
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$112, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_finish_saved_range, .-_xlate_finish_saved_range
.globl _xlate_add_tentative_new_range
	.type	_xlate_add_tentative_new_range, @function
_xlate_add_tentative_new_range:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$80, %esp
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	156(%eax), %eax
	testl	%eax, %eax
	je	.L18
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L20
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_finish_saved_range
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	$0, 156(%eax)
	jmp	.L40
.L20:
	movl	8(%ebp), %eax
	movl	160(%eax), %esi
	movl	164(%eax), %edi
	movl	8(%ebp), %eax
	movl	172(%eax), %edx
	movl	168(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, %ecx
	xorl	-36(%ebp), %ecx
	xorl	-40(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L23
	movl	8(%ebp), %eax
	movl	176(%eax), %esi
	movl	180(%eax), %edi
	movl	8(%ebp), %eax
	movl	188(%eax), %edx
	movl	184(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %ecx
	xorl	-28(%ebp), %ecx
	xorl	-32(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L25
	movl	8(%ebp), %eax
	movl	184(%eax), %esi
	movl	188(%eax), %edi
	movl	8(%ebp), %eax
	movl	172(%eax), %edx
	movl	168(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L27
	movl	8(%ebp), %eax
	movl	188(%eax), %edx
	movl	184(%eax), %eax
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	movl	8(%ebp), %eax
	movl	172(%eax), %edx
	movl	168(%eax), %eax
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	jmp	.L40
.L27:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_finish_saved_range
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 160(%ecx)
	movl	%edx, 164(%ecx)
	movl	8(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 176(%ecx)
	movl	%edx, 180(%ecx)
	movl	8(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	movl	8(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	movl	8(%ebp), %eax
	movl	$1, 156(%eax)
	jmp	.L40
.L25:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L31
	movl	8(%ebp), %eax
	movl	172(%eax), %edx
	movl	168(%eax), %eax
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	movl	8(%ebp), %eax
	movl	188(%eax), %edx
	movl	184(%eax), %eax
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	jmp	.L40
.L31:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_finish_saved_range
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 160(%ecx)
	movl	%edx, 164(%ecx)
	movl	8(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 176(%ecx)
	movl	%edx, 180(%ecx)
	movl	8(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	movl	8(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	movl	8(%ebp), %eax
	movl	$1, 156(%eax)
	jmp	.L40
.L23:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	%edx, %ecx
	xorl	-44(%ebp), %ecx
	xorl	-48(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L33
	movl	8(%ebp), %eax
	movl	176(%eax), %esi
	movl	180(%eax), %edi
	movl	8(%ebp), %eax
	movl	188(%eax), %edx
	movl	184(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L35
	movl	8(%ebp), %eax
	movl	188(%eax), %edx
	movl	184(%eax), %eax
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	movl	8(%ebp), %eax
	movl	172(%eax), %edx
	movl	168(%eax), %eax
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	jmp	.L40
.L35:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L38
	movl	8(%ebp), %eax
	movl	188(%eax), %edx
	movl	184(%eax), %eax
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	movl	8(%ebp), %eax
	movl	172(%eax), %edx
	movl	168(%eax), %eax
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	jmp	.L40
.L38:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_finish_saved_range
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 160(%ecx)
	movl	%edx, 164(%ecx)
	movl	8(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 176(%ecx)
	movl	%edx, 180(%ecx)
	movl	8(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	movl	8(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	movl	8(%ebp), %eax
	movl	$1, 156(%eax)
	jmp	.L40
.L33:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_finish_saved_range
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 160(%ecx)
	movl	%edx, 164(%ecx)
	movl	8(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 176(%ecx)
	movl	%edx, 180(%ecx)
	movl	8(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	movl	8(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	movl	8(%ebp), %eax
	movl	$1, 156(%eax)
	jmp	.L40
.L18:
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L40
	movl	8(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 160(%ecx)
	movl	%edx, 164(%ecx)
	movl	8(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 176(%ecx)
	movl	%edx, 180(%ecx)
	movl	8(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 168(%ecx)
	movl	%edx, 172(%ecx)
	movl	8(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 184(%ecx)
	movl	%edx, 188(%ecx)
	movl	8(%ebp), %eax
	movl	$1, 156(%eax)
.L40:
	movl	-12(%ebp), %eax
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_add_tentative_new_range, .-_xlate_add_tentative_new_range
.globl _xlate_merge_range
	.type	_xlate_merge_range, @function
_xlate_merge_range:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$252, %esp
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -140(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	jmp	.L44
.L45:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	-152(%ebp), %eax
	adcl	-148(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, %ecx
	xorl	-44(%ebp), %ecx
	xorl	-48(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L46
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	movl	-196(%ebp), %edx
	cmpl	-44(%ebp), %edx
	jb	.L46
	movl	-196(%ebp), %esi
	cmpl	-44(%ebp), %esi
	ja	.L49
	movl	-200(%ebp), %edi
	cmpl	-48(%ebp), %edi
	jbe	.L46
.L49:
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	addl	$4, %eax
	adcl	$0, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	.L50
.L46:
	movl	$4, -40(%ebp)
	movl	$0, -36(%ebp)
.L50:
	movl	8(%ebp), %eax
	movl	4(%eax), %ecx
	leal	-120(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$1, 4(%esp)
	movl	%ecx, (%esp)
	call	_xlate_address@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L51
	movl	-20(%ebp), %eax
	movl	%eax, -188(%ebp)
	jmp	.L53
.L51:
	movl	$4, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	-120(%ebp), %esi
	movl	-116(%ebp), %edi
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	addl	$-4, %eax
	adcl	$-1, %edx
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L54
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	-172(%ebp), %edx
	cmpl	%edx, -180(%ebp)
	jb	.L54
	movl	-172(%ebp), %esi
	cmpl	%esi, -180(%ebp)
	ja	.L57
	movl	-176(%ebp), %edi
	cmpl	%edi, -184(%ebp)
	jbe	.L54
.L57:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -216(%ebp)
	movl	%edx, -212(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	-216(%ebp), %esi
	movl	-212(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	addl	$4, %eax
	adcl	$0, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L54:
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	addl	-136(%ebp), %eax
	adcl	-132(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-168(%ebp), %esi
	movl	-164(%ebp), %edi
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_xlate_add_tentative_new_range@PLT
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L58
	movl	-20(%ebp), %edi
	movl	%edi, -188(%ebp)
	jmp	.L53
.L58:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	%eax, -80(%ebp)
	adcl	%edx, -76(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	%eax, -72(%ebp)
	adcl	%edx, -68(%ebp)
.L44:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	movl	-204(%ebp), %edx
	cmpl	-156(%ebp), %edx
	jb	.L45
	movl	-204(%ebp), %esi
	cmpl	-156(%ebp), %esi
	ja	.L61
	movl	-208(%ebp), %edi
	cmpl	-160(%ebp), %edi
	jb	.L45
.L61:
	movl	-20(%ebp), %eax
	movl	%eax, -188(%ebp)
.L53:
	movl	-188(%ebp), %eax
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	_xlate_merge_range, .-_xlate_merge_range
	.weak	xlate_pro_add_range
	.set	xlate_pro_add_range,_xlate_pro_add_range
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
