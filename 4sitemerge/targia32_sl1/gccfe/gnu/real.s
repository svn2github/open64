	.file	"real.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	sticky_rshift_significand, @function
sticky_rshift_significand:
.LFB19:
	.file 1 "../../../kgccfe/gnu/real.c"
	.loc 1 202 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$32, %esp
.LCFI2:
	.loc 1 203 0
	movl	$0, -12(%ebp)
	.loc 1 204 0
	movl	$0, -4(%ebp)
	.loc 1 206 0
	cmpl	$31, 16(%ebp)
	jbe	.L2
	.loc 1 208 0
	movl	$0, -8(%ebp)
	movl	16(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -4(%ebp)
	jmp	.L4
.L5:
	.loc 1 209 0
	movl	-8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	orl	%eax, -12(%ebp)
	.loc 1 208 0
	addl	$1, -8(%ebp)
.L4:
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jb	.L5
	.loc 1 210 0
	andl	$31, 16(%ebp)
.L2:
	.loc 1 213 0
	cmpl	$0, 16(%ebp)
	je	.L7
	.loc 1 215 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	16(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	andl	%edx, %eax
	orl	%eax, -12(%ebp)
	.loc 1 216 0
	movl	$0, -8(%ebp)
	jmp	.L9
.L10:
	.loc 1 218 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	cmpl	$4, %eax
	ja	.L11
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	%edx, -28(%ebp)
	jmp	.L13
.L11:
	movl	$0, -28(%ebp)
.L13:
	movl	16(%ebp), %ecx
	movl	-28(%ebp), %eax
	shrl	%cl, %eax
	movl	%eax, -24(%ebp)
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	addl	$1, %eax
	cmpl	$4, %eax
	ja	.L14
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	%edx, -20(%ebp)
	jmp	.L16
.L14:
	movl	$0, -20(%ebp)
.L16:
	movl	$32, %eax
	subl	16(%ebp), %eax
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	sall	%cl, %eax
	movl	-24(%ebp), %edx
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 216 0
	addl	$1, -8(%ebp)
.L9:
	cmpl	$4, -8(%ebp)
	jbe	.L10
	jmp	.L18
.L7:
	.loc 1 226 0
	movl	$0, -8(%ebp)
	jmp	.L19
.L20:
	.loc 1 227 0
	movl	-8(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 226 0
	addl	$1, -8(%ebp)
.L19:
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	cmpl	$4, %eax
	jbe	.L20
	.loc 1 228 0
	jmp	.L22
.L23:
	.loc 1 229 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$0, 4(%eax,%edx,4)
	.loc 1 228 0
	addl	$1, -8(%ebp)
.L22:
	cmpl	$4, -8(%ebp)
	jbe	.L23
.L18:
	.loc 1 232 0
	cmpl	$0, -12(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 233 0
	leave
	ret
.LFE19:
	.size	sticky_rshift_significand, .-sticky_rshift_significand
	.type	rshift_significand, @function
rshift_significand:
.LFB20:
	.loc 1 243 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$32, %esp
.LCFI5:
	.loc 1 244 0
	movl	16(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -4(%ebp)
	.loc 1 246 0
	andl	$31, 16(%ebp)
	.loc 1 247 0
	cmpl	$0, 16(%ebp)
	je	.L26
	.loc 1 249 0
	movl	$0, -8(%ebp)
	jmp	.L28
.L29:
	.loc 1 251 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	cmpl	$4, %eax
	ja	.L30
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	%edx, -28(%ebp)
	jmp	.L32
.L30:
	movl	$0, -28(%ebp)
.L32:
	movl	16(%ebp), %ecx
	movl	-28(%ebp), %eax
	shrl	%cl, %eax
	movl	%eax, -24(%ebp)
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	addl	$1, %eax
	cmpl	$4, %eax
	ja	.L33
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	%edx, -20(%ebp)
	jmp	.L35
.L33:
	movl	$0, -20(%ebp)
.L35:
	movl	$32, %eax
	subl	16(%ebp), %eax
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	sall	%cl, %eax
	movl	-24(%ebp), %edx
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 249 0
	addl	$1, -8(%ebp)
.L28:
	cmpl	$4, -8(%ebp)
	jbe	.L29
	jmp	.L43
.L26:
	.loc 1 259 0
	movl	$0, -8(%ebp)
	jmp	.L38
.L39:
	.loc 1 260 0
	movl	-8(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 259 0
	addl	$1, -8(%ebp)
.L38:
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	cmpl	$4, %eax
	jbe	.L39
	.loc 1 261 0
	jmp	.L41
.L42:
	.loc 1 262 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$0, 4(%eax,%edx,4)
	.loc 1 261 0
	addl	$1, -8(%ebp)
.L41:
	cmpl	$4, -8(%ebp)
	jbe	.L42
.L43:
	.loc 1 264 0
	leave
	ret
.LFE20:
	.size	rshift_significand, .-rshift_significand
	.type	lshift_significand, @function
lshift_significand:
.LFB21:
	.loc 1 274 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	subl	$32, %esp
.LCFI8:
	.loc 1 275 0
	movl	16(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -4(%ebp)
	.loc 1 277 0
	andl	$31, 16(%ebp)
	.loc 1 278 0
	cmpl	$0, 16(%ebp)
	jne	.L45
	.loc 1 280 0
	movl	$0, -8(%ebp)
	jmp	.L47
.L48:
	.loc 1 281 0
	movl	$4, %eax
	movl	%eax, %ecx
	subl	-8(%ebp), %ecx
	movl	-8(%ebp), %eax
	negl	%eax
	subl	-4(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 280 0
	addl	$1, -8(%ebp)
.L47:
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	cmpl	$4, %eax
	jbe	.L48
	.loc 1 282 0
	jmp	.L50
.L51:
	.loc 1 283 0
	movl	$4, %eax
	movl	%eax, %edx
	subl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$0, 4(%eax,%edx,4)
	.loc 1 282 0
	addl	$1, -8(%ebp)
.L50:
	cmpl	$4, -8(%ebp)
	jbe	.L51
	jmp	.L62
.L45:
	.loc 1 286 0
	movl	$0, -8(%ebp)
	jmp	.L54
.L55:
	.loc 1 288 0
	movl	$4, %eax
	movl	%eax, %edx
	subl	-8(%ebp), %edx
	movl	%edx, -32(%ebp)
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	cmpl	$4, %eax
	ja	.L56
	movl	-8(%ebp), %eax
	negl	%eax
	subl	-4(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	%edx, -28(%ebp)
	jmp	.L58
.L56:
	movl	$0, -28(%ebp)
.L58:
	movl	16(%ebp), %ecx
	movl	-28(%ebp), %eax
	sall	%cl, %eax
	movl	%eax, -24(%ebp)
	movl	-8(%ebp), %eax
	addl	-4(%ebp), %eax
	addl	$1, %eax
	cmpl	$4, %eax
	ja	.L59
	movl	-8(%ebp), %eax
	negl	%eax
	subl	-4(%ebp), %eax
	leal	3(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	%edx, -20(%ebp)
	jmp	.L61
.L59:
	movl	$0, -20(%ebp)
.L61:
	movl	$32, %eax
	subl	16(%ebp), %eax
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	shrl	%cl, %eax
	movl	-24(%ebp), %edx
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	-32(%ebp), %ecx
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 286 0
	addl	$1, -8(%ebp)
.L54:
	cmpl	$4, -8(%ebp)
	jbe	.L55
.L62:
	.loc 1 293 0
	leave
	ret
.LFE21:
	.size	lshift_significand, .-lshift_significand
	.type	clear_significand_below, @function
clear_significand_below:
.LFB31:
	.loc 1 480 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%esi
.LCFI11:
	subl	$16, %esp
.LCFI12:
	.loc 1 481 0
	movl	12(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -8(%ebp)
	.loc 1 483 0
	movl	$0, -12(%ebp)
	jmp	.L64
.L65:
	.loc 1 484 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$0, 4(%eax,%edx,4)
	.loc 1 483 0
	addl	$1, -12(%ebp)
.L64:
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jl	.L65
	.loc 1 486 0
	movl	-8(%ebp), %esi
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	negl	%eax
	andl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%esi,4)
	.loc 1 487 0
	addl	$16, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	clear_significand_below, .-clear_significand_below
	.type	normalize, @function
normalize:
.LFB33:
	.loc 1 533 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	subl	$40, %esp
.LCFI15:
	.loc 1 534 0
	movl	$0, -16(%ebp)
	.loc 1 538 0
	movl	$4, -8(%ebp)
	jmp	.L69
.L70:
	.loc 1 539 0
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L71
	.loc 1 540 0
	addl	$32, -16(%ebp)
	.loc 1 538 0
	subl	$1, -8(%ebp)
.L69:
	cmpl	$0, -8(%ebp)
	jns	.L70
.L71:
	.loc 1 545 0
	cmpl	$0, -8(%ebp)
	jns	.L73
	.loc 1 547 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	movb	%al, (%edx)
	.loc 1 548 0
	movl	8(%ebp), %edx
	movl	(%edx), %eax
	andl	$7, %eax
	movl	%eax, (%edx)
	.loc 1 549 0
	jmp	.L84
.L73:
	.loc 1 553 0
	movl	$0, -4(%ebp)
.L76:
	.loc 1 554 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	$31, %eax
	movl	%eax, %ecx
	subl	-4(%ebp), %ecx
	movl	%edx, %eax
	shrl	%cl, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L77
	.loc 1 553 0
	addl	$1, -4(%ebp)
	.loc 1 556 0
	jmp	.L76
.L77:
	movl	-4(%ebp), %eax
	addl	%eax, -16(%ebp)
	.loc 1 558 0
	cmpl	$0, -16(%ebp)
	jle	.L84
	.loc 1 560 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	subl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 561 0
	cmpl	$268435455, -12(%ebp)
	jle	.L80
	.loc 1 562 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
	jmp	.L84
.L80:
	.loc 1 563 0
	cmpl	$-268435455, -12(%ebp)
	jge	.L82
	.loc 1 564 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	jmp	.L84
.L82:
	.loc 1 567 0
	movl	-12(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	8(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 568 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
.L84:
	.loc 1 571 0
	leave
	ret
.LFE33:
	.size	normalize, .-normalize
	.type	get_inf, @function
get_inf:
.LFB18:
	.loc 1 187 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	.loc 1 188 0
	movl	8(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 189 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, (%edx)
	.loc 1 190 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 191 0
	popl	%ebp
	ret
.LFE18:
	.size	get_inf, .-get_inf
	.type	get_zero, @function
get_zero:
.LFB15:
	.loc 1 154 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	.loc 1 155 0
	movl	8(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 156 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 157 0
	popl	%ebp
	ret
.LFE15:
	.size	get_zero, .-get_zero
	.section	.rodata
	.type	__FUNCTION__.11260, @object
	.size	__FUNCTION__.11260, 7
__FUNCTION__.11260:
	.string	"do_add"
.LC0:
	.string	"../../../kgccfe/gnu/real.c"
	.text
	.type	do_add, @function
do_add:
.LFB34:
	.loc 1 580 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%esi
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$80, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 583 0
	movb	$0, -9(%ebp)
	.loc 1 586 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	.loc 1 587 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	xorl	-24(%ebp), %eax
	xorl	%eax, 20(%ebp)
	.loc 1 589 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -60(%ebp)
	cmpl	$15, -60(%ebp)
	ja	.L90
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L96@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L96:
	.long	.L91@GOTOFF
	.long	.L92@GOTOFF
	.long	.L92@GOTOFF
	.long	.L92@GOTOFF
	.long	.L93@GOTOFF
	.long	.L94@GOTOFF
	.long	.L92@GOTOFF
	.long	.L92@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L95@GOTOFF
	.long	.L92@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L93@GOTOFF
	.long	.L92@GOTOFF
	.text
.L91:
	.loc 1 593 0
	cmpl	$0, 20(%ebp)
	sete	%al
	movzbl	%al, %eax
	andl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 594 0
	jmp	.L116
.L92:
	.loc 1 606 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 607 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	xorl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 608 0
	jmp	.L116
.L93:
	.loc 1 619 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
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
	.loc 1 620 0
	jmp	.L116
.L95:
	.loc 1 623 0
	cmpl	$0, 20(%ebp)
	je	.L98
	.loc 1 625 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_canonical_qnan
	jmp	.L116
.L98:
	.loc 1 628 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
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
	.loc 1 629 0
	jmp	.L116
.L94:
	.loc 1 639 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%ebp)
	.loc 1 640 0
	cmpl	$0, -28(%ebp)
	js	.L101
	jmp	.L102
.L90:
	.loc 1 635 0
	leal	__FUNCTION__.11260@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$635, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L101:
.LBB2:
	.loc 1 643 0
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%ebp)
	.loc 1 644 0
	negl	-28(%ebp)
	.loc 1 645 0
	movl	20(%ebp), %eax
	xorl	%eax, -24(%ebp)
.L102:
.LBE2:
	.loc 1 647 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 651 0
	cmpl	$0, -28(%ebp)
	jle	.L103
	.loc 1 655 0
	cmpl	$159, -28(%ebp)
	jle	.L105
	.loc 1 657 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
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
	.loc 1 658 0
	movl	-24(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 659 0
	jmp	.L116
.L105:
	.loc 1 662 0
	movzbl	-9(%ebp), %esi
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	sticky_rshift_significand
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
	.loc 1 663 0
	leal	-52(%ebp), %eax
	movl	%eax, 16(%ebp)
.L103:
	.loc 1 666 0
	cmpl	$0, 20(%ebp)
	je	.L107
	.loc 1 668 0
	movzbl	-9(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sub_significands
	testb	%al, %al
	je	.L111
	.loc 1 674 0
	xorl	$1, -24(%ebp)
	.loc 1 675 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	neg_significand
	jmp	.L111
.L107:
	.loc 1 680 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_significands
	testb	%al, %al
	je	.L111
	.loc 1 685 0
	movzbl	-9(%ebp), %esi
	movl	$1, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sticky_rshift_significand
	movzbl	%al, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
	.loc 1 686 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	orl	$-2147483648, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 687 0
	addl	$1, -20(%ebp)
	cmpl	$268435455, -20(%ebp)
	jle	.L111
	.loc 1 689 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
	.loc 1 690 0
	jmp	.L116
.L111:
	.loc 1 695 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 696 0
	movl	-24(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 697 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	8(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 700 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 704 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	testb	%al, %al
	jne	.L114
	.loc 1 705 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %edx
	andl	$-5, %edx
	movb	%dl, (%eax)
	jmp	.L116
.L114:
	.loc 1 707 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	-9(%ebp), %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L116:
	.loc 1 708 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	do_add, .-do_add
	.type	get_canonical_qnan, @function
get_canonical_qnan:
.LFB16:
	.loc 1 165 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	.loc 1 166 0
	movl	8(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 167 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$3, %eax
	movb	%al, (%edx)
	.loc 1 168 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 169 0
	movl	8(%ebp), %eax
	movl	$1073741824, 20(%eax)
	.loc 1 170 0
	popl	%ebp
	ret
.LFE16:
	.size	get_canonical_qnan, .-get_canonical_qnan
	.type	sub_significands, @function
sub_significands:
.LFB24:
	.loc 1 348 0
	pushl	%ebp
.LCFI27:
	movl	%esp, %ebp
.LCFI28:
	subl	$16, %esp
.LCFI29:
	.loc 1 351 0
	movl	$0, -12(%ebp)
	jmp	.L120
.L121:
.LBB3:
	.loc 1 353 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 354 0
	movl	-12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	-8(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 356 0
	cmpl	$0, 20(%ebp)
	je	.L122
	.loc 1 358 0
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	seta	%al
	movzbl	%al, %eax
	movl	%eax, 20(%ebp)
	.loc 1 359 0
	subl	$1, -4(%ebp)
	movl	-4(%ebp), %eax
	notl	%eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	orl	%eax, 20(%ebp)
	jmp	.L124
.L122:
	.loc 1 362 0
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	seta	%al
	movzbl	%al, %eax
	movl	%eax, 20(%ebp)
.L124:
	.loc 1 364 0
	movl	-12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,4)
.LBE3:
	.loc 1 351 0
	addl	$1, -12(%ebp)
.L120:
	cmpl	$4, -12(%ebp)
	jle	.L121
	.loc 1 367 0
	cmpl	$0, 20(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 368 0
	leave
	ret
.LFE24:
	.size	sub_significands, .-sub_significands
	.type	neg_significand, @function
neg_significand:
.LFB25:
	.loc 1 376 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	subl	$16, %esp
.LCFI32:
	.loc 1 377 0
	movb	$1, -1(%ebp)
	.loc 1 380 0
	movl	$0, -16(%ebp)
	jmp	.L128
.L129:
.LBB4:
	.loc 1 382 0
	movl	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 384 0
	cmpb	$0, -1(%ebp)
	je	.L130
	.loc 1 386 0
	cmpl	$0, -8(%ebp)
	je	.L132
	.loc 1 388 0
	movl	-8(%ebp), %eax
	negl	%eax
	movl	%eax, -12(%ebp)
	.loc 1 389 0
	movb	$0, -1(%ebp)
	jmp	.L135
.L132:
	.loc 1 392 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L135
.L130:
	.loc 1 395 0
	movl	-8(%ebp), %eax
	notl	%eax
	movl	%eax, -12(%ebp)
.L135:
	.loc 1 397 0
	movl	-16(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,4)
.LBE4:
	.loc 1 380 0
	addl	$1, -16(%ebp)
.L128:
	cmpl	$4, -16(%ebp)
	jle	.L129
	.loc 1 399 0
	leave
	ret
.LFE25:
	.size	neg_significand, .-neg_significand
	.type	add_significands, @function
add_significands:
.LFB23:
	.loc 1 316 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	subl	$16, %esp
.LCFI35:
	.loc 1 317 0
	movb	$0, -1(%ebp)
	.loc 1 320 0
	movl	$0, -16(%ebp)
	jmp	.L139
.L140:
.LBB5:
	.loc 1 322 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 323 0
	movl	-16(%ebp), %edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	addl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 325 0
	cmpb	$0, -1(%ebp)
	je	.L141
	.loc 1 327 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	setb	%al
	movb	%al, -1(%ebp)
	.loc 1 328 0
	movzbl	-1(%ebp), %edx
	addl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -1(%ebp)
	jmp	.L143
.L141:
	.loc 1 331 0
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	setb	%al
	movb	%al, -1(%ebp)
.L143:
	.loc 1 333 0
	movl	-16(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,4)
.LBE5:
	.loc 1 320 0
	addl	$1, -16(%ebp)
.L139:
	cmpl	$4, -16(%ebp)
	jle	.L140
	.loc 1 336 0
	movzbl	-1(%ebp), %eax
	.loc 1 337 0
	leave
	ret
.LFE23:
	.size	add_significands, .-add_significands
	.section	.rodata
	.type	__FUNCTION__.11361, @object
	.size	__FUNCTION__.11361, 12
__FUNCTION__.11361:
	.string	"do_multiply"
	.text
	.type	do_multiply, @function
do_multiply:
.LFB35:
	.loc 1 716 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%esi
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$112, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 719 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 721 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -92(%ebp)
	cmpl	$15, -92(%ebp)
	ja	.L147
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	.L154@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L154:
	.long	.L148@GOTOFF
	.long	.L148@GOTOFF
	.long	.L149@GOTOFF
	.long	.L150@GOTOFF
	.long	.L148@GOTOFF
	.long	.L151@GOTOFF
	.long	.L152@GOTOFF
	.long	.L150@GOTOFF
	.long	.L149@GOTOFF
	.long	.L152@GOTOFF
	.long	.L152@GOTOFF
	.long	.L150@GOTOFF
	.long	.L153@GOTOFF
	.long	.L153@GOTOFF
	.long	.L153@GOTOFF
	.long	.L150@GOTOFF
	.text
.L148:
	.loc 1 727 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 728 0
	jmp	.L180
.L150:
	.loc 1 735 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 736 0
	movl	-24(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 737 0
	jmp	.L180
.L153:
	.loc 1 743 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
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
	.loc 1 744 0
	movl	-24(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 745 0
	jmp	.L180
.L149:
	.loc 1 750 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_canonical_qnan
	.loc 1 751 0
	jmp	.L180
.L152:
	.loc 1 758 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
	.loc 1 759 0
	jmp	.L180
.L151:
	.loc 1 768 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L156
	jmp	.L157
.L147:
	.loc 1 765 0
	leal	__FUNCTION__.11361@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$765, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L157:
	.loc 1 768 0
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L158
.L156:
	.loc 1 769 0
	leal	-88(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 768 0
	jmp	.L159
.L158:
	.loc 1 771 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L159:
	.loc 1 772 0
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 792 0
	movl	$0, -36(%ebp)
	jmp	.L160
.L161:
.LBB6:
	.loc 1 794 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	shrl	%edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 795 0
	movl	-36(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L162
	.loc 1 796 0
	shrl	$16, -20(%ebp)
	jmp	.L164
.L162:
	.loc 1 798 0
	andl	$65535, -20(%ebp)
.L164:
	.loc 1 800 0
	cmpl	$0, -20(%ebp)
	je	.L165
	.loc 1 803 0
	movl	$0, -32(%ebp)
	jmp	.L167
.L168:
.LBB7:
	.loc 1 806 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	$9, %eax
	subl	-36(%ebp), %eax
	sall	$4, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	$1, %eax
	subl	-32(%ebp), %eax
	sall	$4, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 808 0
	cmpl	$268435455, -16(%ebp)
	jg	.L152
	.loc 1 810 0
	cmpl	$-268435455, -16(%ebp)
	jl	.L170
	.loc 1 814 0
	movzbl	-64(%ebp), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, -64(%ebp)
	.loc 1 815 0
	movzbl	-64(%ebp), %eax
	andl	$-5, %eax
	movb	%al, -64(%ebp)
	.loc 1 816 0
	movl	-16(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	leal	0(,%eax,8), %edx
	movl	-64(%ebp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -64(%ebp)
	.loc 1 818 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L172
.L173:
.LBB8:
	.loc 1 820 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	shrl	%edx
	movl	16(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 821 0
	movl	-28(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L174
	.loc 1 822 0
	shrl	$16, -12(%ebp)
	jmp	.L176
.L174:
	.loc 1 824 0
	andl	$65535, -12(%ebp)
.L176:
	.loc 1 826 0
	movl	-28(%ebp), %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-20(%ebp), %eax
	imull	-12(%ebp), %eax
	movl	%eax, -60(%ebp,%edx,4)
.LBE8:
	.loc 1 818 0
	addl	$2, -28(%ebp)
.L172:
	cmpl	$9, -28(%ebp)
	jbe	.L173
	.loc 1 829 0
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 830 0
	movl	$0, 12(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	do_add
.L170:
.LBE7:
	.loc 1 803 0
	addl	$1, -32(%ebp)
.L167:
	cmpl	$1, -32(%ebp)
	jbe	.L168
.L165:
.LBE6:
	.loc 1 792 0
	addl	$1, -36(%ebp)
.L160:
	cmpl	$9, -36(%ebp)
	jbe	.L161
	.loc 1 834 0
	movl	-24(%ebp), %eax
	andl	$1, %eax
	movl	-40(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 835 0
	movl	-40(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L180
	.loc 1 836 0
	movl	8(%ebp), %edx
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
.L180:
	.loc 1 837 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE35:
	.size	do_multiply, .-do_multiply
	.section	.rodata
	.type	__FUNCTION__.11458, @object
	.size	__FUNCTION__.11458, 10
__FUNCTION__.11458:
	.string	"do_divide"
	.text
	.type	do_divide, @function
do_divide:
.LFB36:
	.loc 1 845 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$68, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 846 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 850 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -56(%ebp)
	cmpl	$15, -56(%ebp)
	ja	.L182
	movl	-56(%ebp), %eax
	sall	$2, %eax
	movl	.L190@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L190:
	.long	.L183@GOTOFF
	.long	.L184@GOTOFF
	.long	.L184@GOTOFF
	.long	.L185@GOTOFF
	.long	.L186@GOTOFF
	.long	.L187@GOTOFF
	.long	.L184@GOTOFF
	.long	.L185@GOTOFF
	.long	.L186@GOTOFF
	.long	.L188@GOTOFF
	.long	.L183@GOTOFF
	.long	.L185@GOTOFF
	.long	.L189@GOTOFF
	.long	.L189@GOTOFF
	.long	.L189@GOTOFF
	.long	.L185@GOTOFF
	.text
.L183:
	.loc 1 856 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_canonical_qnan
	.loc 1 857 0
	jmp	.L199
.L184:
	.loc 1 865 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 866 0
	jmp	.L199
.L186:
	.loc 1 872 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
	.loc 1 873 0
	jmp	.L199
.L185:
	.loc 1 880 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 881 0
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 882 0
	jmp	.L199
.L189:
	.loc 1 888 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
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
	.loc 1 889 0
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 890 0
	jmp	.L199
.L188:
	.loc 1 895 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
	.loc 1 896 0
	jmp	.L199
.L187:
	.loc 1 905 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L192
	jmp	.L193
.L182:
	.loc 1 902 0
	leal	__FUNCTION__.11458@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$902, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L193:
	.loc 1 905 0
	movl	8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L194
.L192:
	.loc 1 906 0
	leal	-44(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 905 0
	jmp	.L195
.L194:
	.loc 1 908 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L195:
	.loc 1 910 0
	movl	-12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 911 0
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 913 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 914 0
	cmpl	$268435455, -20(%ebp)
	jg	.L188
	.loc 1 916 0
	cmpl	$-268435455, -20(%ebp)
	jl	.L184
	.loc 1 918 0
	movl	-20(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	-12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 920 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	div_significands
	movb	%al, -5(%ebp)
	.loc 1 923 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 924 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movzbl	-5(%ebp), %eax
	orl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 926 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L199
	.loc 1 927 0
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-28(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-24(%ebp), %eax
	movl	%eax, 20(%edx)
.L199:
	.loc 1 928 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	do_divide, .-do_divide
	.type	div_significands, @function
div_significands:
.LFB32:
	.loc 1 496 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	subl	$72, %esp
.LCFI47:
	.loc 1 498 0
	movl	$159, -12(%ebp)
	.loc 1 501 0
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -24(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 502 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 504 0
	movl	$0, -8(%ebp)
	.loc 1 505 0
	jmp	.L201
.L202:
	.loc 1 508 0
	movl	-20(%ebp), %eax
	andl	$-2147483648, %eax
	movl	%eax, -8(%ebp)
	.loc 1 509 0
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand_1
.L201:
	.loc 1 511 0
	cmpl	$0, -8(%ebp)
	jne	.L203
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	cmp_significands
	testl	%eax, %eax
	js	.L205
.L203:
	.loc 1 513 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sub_significands
	.loc 1 514 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	set_significand_bit
.L205:
	.loc 1 517 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L202
	.loc 1 519 0
	movl	$0, -16(%ebp)
	movl	$0, -4(%ebp)
	jmp	.L207
.L208:
	.loc 1 520 0
	movl	-16(%ebp), %eax
	movl	-36(%ebp,%eax,4), %eax
	orl	%eax, -4(%ebp)
	.loc 1 519 0
	addl	$1, -16(%ebp)
.L207:
	cmpl	$4, -16(%ebp)
	jle	.L208
	.loc 1 522 0
	cmpl	$0, -4(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 523 0
	leave
	ret
.LFE32:
	.size	div_significands, .-div_significands
	.type	lshift_significand_1, @function
lshift_significand_1:
.LFB22:
	.loc 1 301 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%esi
.LCFI50:
	subl	$16, %esp
.LCFI51:
	.loc 1 304 0
	movl	$4, -8(%ebp)
	jmp	.L212
.L213:
	.loc 1 305 0
	movl	-8(%ebp), %esi
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	leal	(%eax,%eax), %ecx
	movl	-8(%ebp), %edx
	subl	$1, %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	shrl	$31, %eax
	movl	%ecx, %edx
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%esi,4)
	.loc 1 304 0
	subl	$1, -8(%ebp)
.L212:
	cmpl	$0, -8(%ebp)
	jne	.L213
	.loc 1 306 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%eax,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 307 0
	addl	$16, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE22:
	.size	lshift_significand_1, .-lshift_significand_1
	.type	cmp_significands, @function
cmp_significands:
.LFB26:
	.loc 1 406 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	subl	$20, %esp
.LCFI54:
	.loc 1 409 0
	movl	$4, -12(%ebp)
	jmp	.L217
.L218:
.LBB9:
	.loc 1 411 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 412 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	%eax, -4(%ebp)
	.loc 1 414 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jbe	.L219
	.loc 1 415 0
	movl	$1, -20(%ebp)
	jmp	.L221
.L219:
	.loc 1 416 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jae	.L222
	.loc 1 417 0
	movl	$-1, -20(%ebp)
	jmp	.L221
.L222:
.LBE9:
	.loc 1 409 0
	subl	$1, -12(%ebp)
.L217:
	cmpl	$0, -12(%ebp)
	jns	.L218
	.loc 1 420 0
	movl	$0, -20(%ebp)
.L221:
	movl	-20(%ebp), %eax
	.loc 1 421 0
	leave
	ret
.LFE26:
	.size	cmp_significands, .-cmp_significands
	.type	set_significand_bit, @function
set_significand_bit:
.LFB28:
	.loc 1 444 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%esi
.LCFI57:
	.loc 1 445 0
	movl	12(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax,%esi,4)
	.loc 1 447 0
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	set_significand_bit, .-set_significand_bit
	.section	.rodata
	.type	__FUNCTION__.11518, @object
	.size	__FUNCTION__.11518, 11
__FUNCTION__.11518:
	.string	"do_compare"
	.text
	.type	do_compare, @function
do_compare:
.LFB37:
	.loc 1 937 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$52, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 940 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -40(%ebp)
	cmpl	$15, -40(%ebp)
	ja	.L229
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L236@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L236:
	.long	.L230@GOTOFF
	.long	.L231@GOTOFF
	.long	.L231@GOTOFF
	.long	.L232@GOTOFF
	.long	.L233@GOTOFF
	.long	.L234@GOTOFF
	.long	.L231@GOTOFF
	.long	.L232@GOTOFF
	.long	.L233@GOTOFF
	.long	.L233@GOTOFF
	.long	.L235@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.long	.L232@GOTOFF
	.text
.L230:
	.loc 1 944 0
	movl	$0, -36(%ebp)
	jmp	.L237
.L233:
	.loc 1 949 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L238
	movl	$-1, -32(%ebp)
	jmp	.L240
.L238:
	movl	$1, -32(%ebp)
.L240:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L237
.L235:
	.loc 1 952 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%ebp)
	jmp	.L237
.L231:
	.loc 1 957 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L241
	movl	$1, -28(%ebp)
	jmp	.L243
.L241:
	movl	$-1, -28(%ebp)
.L243:
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L237
.L232:
	.loc 1 966 0
	movl	16(%ebp), %edx
	movl	%edx, -36(%ebp)
	jmp	.L237
.L234:
	.loc 1 975 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movl	%eax, %edx
	shrb	$2, %dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L244
	jmp	.L245
.L229:
	.loc 1 972 0
	leal	__FUNCTION__.11518@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$972, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L244:
	.loc 1 976 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%ebp)
	jmp	.L237
.L245:
	.loc 1 978 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	%eax, %edx
	jle	.L246
	.loc 1 979 0
	movl	$1, -8(%ebp)
	jmp	.L248
.L246:
	.loc 1 980 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	%eax, %edx
	jge	.L249
	.loc 1 981 0
	movl	$-1, -8(%ebp)
	jmp	.L248
.L249:
	.loc 1 983 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cmp_significands
	movl	%eax, -8(%ebp)
.L248:
	.loc 1 985 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L251
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	negl	%edx
	movl	%edx, -24(%ebp)
	jmp	.L253
.L251:
	movl	-8(%ebp), %ecx
	movl	%ecx, -24(%ebp)
.L253:
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
.L237:
	movl	-36(%ebp), %eax
	.loc 1 986 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	do_compare, .-do_compare
	.section	.rodata
	.type	__FUNCTION__.11578, @object
	.size	__FUNCTION__.11578, 13
__FUNCTION__.11578:
	.string	"do_fix_trunc"
	.text
	.type	do_fix_trunc, @function
do_fix_trunc:
.LFB38:
	.loc 1 994 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$20, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 995 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
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
	.loc 1 997 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	cmpl	$1, -8(%ebp)
	je	.L258
	cmpl	$1, -8(%ebp)
	jg	.L259
	cmpl	$0, -8(%ebp)
	je	.L265
	jmp	.L256
.L259:
	cmpl	$3, -8(%ebp)
	jg	.L256
	.loc 1 1002 0
	jmp	.L265
.L258:
	.loc 1 1005 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	testl	%eax, %eax
	jg	.L261
	.loc 1 1006 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	jmp	.L265
.L261:
	.loc 1 1007 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	$159, %eax
	jg	.L265
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	$160, %eax
	subl	%edx, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_significand_below
	.loc 1 1009 0
	jmp	.L265
.L256:
	.loc 1 1012 0
	leal	__FUNCTION__.11578@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1012, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L265:
	.loc 1 1014 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	do_fix_trunc, .-do_fix_trunc
	.section	.rodata
	.type	__FUNCTION__.11613, @object
	.size	__FUNCTION__.11613, 16
__FUNCTION__.11613:
	.string	"real_arithmetic"
	.text
.globl real_arithmetic
	.type	real_arithmetic, @function
real_arithmetic:
.LFB39:
	.loc 1 1024 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%ebx
.LCFI68:
	subl	$36, %esp
.LCFI69:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1025 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1027 0
	movl	-8(%ebp), %eax
	subl	$60, %eax
	movl	%eax, -24(%ebp)
	cmpl	$22, -24(%ebp)
	ja	.L267
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L277@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L277:
	.long	.L268@GOTOFF
	.long	.L269@GOTOFF
	.long	.L270@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L271@GOTOFF
	.long	.L267@GOTOFF
	.long	.L272@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L273@GOTOFF
	.long	.L274@GOTOFF
	.long	.L275@GOTOFF
	.long	.L276@GOTOFF
	.text
.L268:
	.loc 1 1030 0
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_add
	.loc 1 1031 0
	jmp	.L289
.L269:
	.loc 1 1034 0
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_add
	.loc 1 1035 0
	jmp	.L289
.L270:
	.loc 1 1038 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1039 0
	jmp	.L289
.L271:
	.loc 1 1042 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_divide
	.loc 1 1043 0
	jmp	.L289
.L274:
	.loc 1 1046 0
	movl	20(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$3, %al
	jne	.L279
	.loc 1 1047 0
	movl	8(%ebp), %ecx
	movl	20(%ebp), %edx
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
	jmp	.L289
.L279:
	.loc 1 1048 0
	movl	$-1, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	jns	.L282
	.loc 1 1049 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
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
	jmp	.L289
.L282:
	.loc 1 1051 0
	movl	8(%ebp), %ecx
	movl	20(%ebp), %edx
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
	.loc 1 1052 0
	jmp	.L289
.L275:
	.loc 1 1055 0
	movl	20(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$3, %al
	jne	.L284
	.loc 1 1056 0
	movl	8(%ebp), %ecx
	movl	20(%ebp), %edx
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
	jmp	.L289
.L284:
	.loc 1 1057 0
	movl	$1, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	jns	.L287
	.loc 1 1058 0
	movl	8(%ebp), %ecx
	movl	20(%ebp), %edx
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
	jmp	.L289
.L287:
	.loc 1 1060 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 1061 0
	jmp	.L289
.L273:
	.loc 1 1064 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 1065 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	xorl	$1, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 1066 0
	jmp	.L289
.L276:
	.loc 1 1069 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 1070 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-5, %eax
	movb	%al, (%edx)
	.loc 1 1071 0
	jmp	.L289
.L272:
	.loc 1 1074 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_fix_trunc
	.loc 1 1075 0
	jmp	.L289
.L267:
	.loc 1 1078 0
	leal	__FUNCTION__.11613@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1078, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L289:
	.loc 1 1080 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	real_arithmetic, .-real_arithmetic
.globl real_arithmetic2
	.type	real_arithmetic2, @function
real_arithmetic2:
.LFB40:
	.loc 1 1088 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%esi
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$48, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %esi
	.loc 1 1090 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1091 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esi)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-12(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 1092 0
	movl	%esi, %eax
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret	$4
.LFE40:
	.size	real_arithmetic2, .-real_arithmetic2
	.section	.rodata
	.type	__FUNCTION__.11666, @object
	.size	__FUNCTION__.11666, 13
__FUNCTION__.11666:
	.string	"real_compare"
	.text
.globl real_compare
	.type	real_compare, @function
real_compare:
.LFB41:
	.loc 1 1098 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$52, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1099 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1101 0
	movl	-8(%ebp), %eax
	subl	$99, %eax
	movl	%eax, -36(%ebp)
	cmpl	$12, -36(%ebp)
	ja	.L293
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L307@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L307:
	.long	.L294@GOTOFF
	.long	.L295@GOTOFF
	.long	.L296@GOTOFF
	.long	.L297@GOTOFF
	.long	.L298@GOTOFF
	.long	.L299@GOTOFF
	.long	.L300@GOTOFF
	.long	.L301@GOTOFF
	.long	.L302@GOTOFF
	.long	.L303@GOTOFF
	.long	.L304@GOTOFF
	.long	.L305@GOTOFF
	.long	.L306@GOTOFF
	.text
.L294:
	.loc 1 1104 0
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -32(%ebp)
	jmp	.L308
.L295:
	.loc 1 1106 0
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L296:
	.loc 1 1108 0
	movl	$-1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L297:
	.loc 1 1110 0
	movl	$-1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	notl	%eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -32(%ebp)
	jmp	.L308
.L298:
	.loc 1 1112 0
	movl	$-1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L299:
	.loc 1 1114 0
	movl	$-1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L300:
	.loc 1 1116 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$3, %al
	je	.L309
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$3, %al
	jne	.L311
.L309:
	movl	$1, -28(%ebp)
	jmp	.L312
.L311:
	movl	$0, -28(%ebp)
.L312:
	movzbl	-28(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L301:
	.loc 1 1118 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$3, %al
	je	.L313
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$3, %al
	je	.L313
	movl	$1, -24(%ebp)
	jmp	.L316
.L313:
	movl	$0, -24(%ebp)
.L316:
	movzbl	-24(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L302:
	.loc 1 1120 0
	movl	$-1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -32(%ebp)
	jmp	.L308
.L303:
	.loc 1 1122 0
	movl	$-1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L304:
	.loc 1 1124 0
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L305:
	.loc 1 1126 0
	movl	$1, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	notl	%eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -32(%ebp)
	jmp	.L308
.L306:
	.loc 1 1128 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	jmp	.L308
.L293:
	.loc 1 1131 0
	leal	__FUNCTION__.11666@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1131, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L308:
	movl	-32(%ebp), %eax
	.loc 1 1133 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	real_compare, .-real_compare
	.section	.rodata
	.type	__FUNCTION__.11708, @object
	.size	__FUNCTION__.11708, 14
__FUNCTION__.11708:
	.string	"real_exponent"
	.text
.globl real_exponent
	.type	real_exponent, @function
real_exponent:
.LFB42:
	.loc 1 1140 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$20, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1141 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	cmpl	$1, -12(%ebp)
	je	.L321
	cmpl	$1, -12(%ebp)
	jg	.L323
	cmpl	$0, -12(%ebp)
	je	.L320
	jmp	.L319
.L323:
	cmpl	$3, -12(%ebp)
	jg	.L319
	jmp	.L322
.L320:
	.loc 1 1144 0
	movl	$0, -8(%ebp)
	jmp	.L324
.L322:
	.loc 1 1147 0
	movl	$2147483647, -8(%ebp)
	jmp	.L324
.L321:
	.loc 1 1149 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, -8(%ebp)
	jmp	.L324
.L319:
	.loc 1 1151 0
	leal	__FUNCTION__.11708@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1151, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L324:
	movl	-8(%ebp), %eax
	.loc 1 1153 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	real_exponent, .-real_exponent
	.section	.rodata
	.type	__FUNCTION__.11726, @object
	.size	__FUNCTION__.11726, 11
__FUNCTION__.11726:
	.string	"real_ldexp"
	.text
.globl real_ldexp
	.type	real_ldexp, @function
real_ldexp:
.LFB43:
	.loc 1 1162 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$20, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1163 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
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
	.loc 1 1164 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	cmpl	$1, -8(%ebp)
	je	.L329
	cmpl	$1, -8(%ebp)
	jg	.L330
	cmpl	$0, -8(%ebp)
	je	.L337
	jmp	.L327
.L330:
	cmpl	$3, -8(%ebp)
	jg	.L327
	.loc 1 1169 0
	jmp	.L337
.L329:
	.loc 1 1172 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	%eax, 16(%ebp)
	.loc 1 1173 0
	cmpl	$268435455, 16(%ebp)
	jle	.L332
	.loc 1 1174 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
	jmp	.L337
.L332:
	.loc 1 1175 0
	cmpl	$-268435455, 16(%ebp)
	jge	.L335
	.loc 1 1176 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	jmp	.L337
.L335:
	.loc 1 1178 0
	movl	16(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	8(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 1179 0
	jmp	.L337
.L327:
	.loc 1 1182 0
	leal	__FUNCTION__.11726@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1182, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L337:
	.loc 1 1184 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	real_ldexp, .-real_ldexp
.globl real_isinf
	.type	real_isinf, @function
real_isinf:
.LFB44:
	.loc 1 1191 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	.loc 1 1192 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$2, %al
	sete	%al
	movzbl	%al, %eax
	.loc 1 1193 0
	popl	%ebp
	ret
.LFE44:
	.size	real_isinf, .-real_isinf
.globl real_isnan
	.type	real_isnan, @function
real_isnan:
.LFB45:
	.loc 1 1200 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	.loc 1 1201 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$3, %al
	sete	%al
	movzbl	%al, %eax
	.loc 1 1202 0
	popl	%ebp
	ret
.LFE45:
	.size	real_isnan, .-real_isnan
.globl real_isneg
	.type	real_isneg, @function
real_isneg:
.LFB46:
	.loc 1 1209 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	.loc 1 1210 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	.loc 1 1211 0
	popl	%ebp
	ret
.LFE46:
	.size	real_isneg, .-real_isneg
.globl real_isnegzero
	.type	real_isnegzero, @function
real_isnegzero:
.LFB47:
	.loc 1 1218 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	subl	$4, %esp
.LCFI95:
	.loc 1 1219 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L345
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	testb	%al, %al
	jne	.L345
	movl	$1, -4(%ebp)
	jmp	.L348
.L345:
	movl	$0, -4(%ebp)
.L348:
	movzbl	-4(%ebp), %eax
	movzbl	%al, %eax
	.loc 1 1220 0
	leave
	ret
.LFE47:
	.size	real_isnegzero, .-real_isnegzero
	.section	.rodata
	.type	__FUNCTION__.11793, @object
	.size	__FUNCTION__.11793, 15
__FUNCTION__.11793:
	.string	"real_identical"
	.text
.globl real_identical
	.type	real_identical, @function
real_identical:
.LFB48:
	.loc 1 1227 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$36, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1230 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %edx
	andl	$3, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	%al, %dl
	je	.L351
	.loc 1 1231 0
	movl	$0, -28(%ebp)
	jmp	.L353
.L351:
	.loc 1 1232 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movl	%eax, %edx
	shrb	$2, %dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L354
	.loc 1 1233 0
	movl	$0, -28(%ebp)
	jmp	.L353
.L354:
	.loc 1 1235 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L358
	cmpl	$1, -24(%ebp)
	jg	.L360
	cmpl	$0, -24(%ebp)
	je	.L361
	jmp	.L356
.L360:
	cmpl	$2, -24(%ebp)
	je	.L361
	cmpl	$3, -24(%ebp)
	je	.L359
	jmp	.L356
.L358:
	.loc 1 1242 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	%eax, %edx
	je	.L359
	.loc 1 1243 0
	movl	$0, -28(%ebp)
	jmp	.L353
.L359:
	.loc 1 1246 0
	movl	$0, -8(%ebp)
	jmp	.L363
.L364:
	.loc 1 1247 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,4), %ecx
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	cmpl	%eax, %ecx
	je	.L365
	.loc 1 1248 0
	movl	$0, -28(%ebp)
	jmp	.L353
.L365:
	.loc 1 1246 0
	addl	$1, -8(%ebp)
.L363:
	cmpl	$4, -8(%ebp)
	jle	.L364
	.loc 1 1249 0
	jmp	.L361
.L356:
	.loc 1 1252 0
	leal	__FUNCTION__.11793@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1252, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L361:
	.loc 1 1255 0
	movl	$1, -28(%ebp)
.L353:
	movl	-28(%ebp), %eax
	.loc 1 1256 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	real_identical, .-real_identical
.globl exact_real_inverse
	.type	exact_real_inverse, @function
exact_real_inverse:
.LFB49:
	.loc 1 1265 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$52, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1266 0
	movl	$1, (%esp)
	call	real_digit
	movl	%eax, -12(%ebp)
	.loc 1 1270 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$1, %al
	je	.L370
	.loc 1 1271 0
	movl	$0, -40(%ebp)
	jmp	.L372
.L370:
	.loc 1 1274 0
	movl	$0, -8(%ebp)
	jmp	.L373
.L374:
	.loc 1 1275 0
	movl	-8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L375
	.loc 1 1276 0
	movl	$0, -40(%ebp)
	jmp	.L372
.L375:
	.loc 1 1274 0
	addl	$1, -8(%ebp)
.L373:
	cmpl	$3, -8(%ebp)
	jle	.L374
	.loc 1 1277 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$-2147483648, %eax
	je	.L378
	.loc 1 1278 0
	movl	$0, -40(%ebp)
	jmp	.L372
.L378:
	.loc 1 1281 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	do_divide
	.loc 1 1282 0
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	real_convert@PLT
	.loc 1 1285 0
	movzbl	-36(%ebp), %eax
	andl	$3, %eax
	cmpb	$1, %al
	je	.L380
	.loc 1 1286 0
	movl	$0, -40(%ebp)
	jmp	.L372
.L380:
	.loc 1 1287 0
	movl	$0, -8(%ebp)
	jmp	.L382
.L383:
	.loc 1 1288 0
	movl	-8(%ebp), %eax
	movl	-32(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L384
	.loc 1 1289 0
	movl	$0, -40(%ebp)
	jmp	.L372
.L384:
	.loc 1 1287 0
	addl	$1, -8(%ebp)
.L382:
	cmpl	$3, -8(%ebp)
	jle	.L383
	.loc 1 1290 0
	movl	-16(%ebp), %eax
	cmpl	$-2147483648, %eax
	je	.L387
	.loc 1 1291 0
	movl	$0, -40(%ebp)
	jmp	.L372
.L387:
	.loc 1 1293 0
	movl	12(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 1294 0
	movl	$1, -40(%ebp)
.L372:
	movl	-40(%ebp), %eax
	.loc 1 1295 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	exact_real_inverse, .-exact_real_inverse
	.section	.rodata
	.type	__FUNCTION__.11865, @object
	.size	__FUNCTION__.11865, 16
__FUNCTION__.11865:
	.string	"real_to_integer"
	.text
.globl real_to_integer
	.type	real_to_integer, @function
real_to_integer:
.LFB50:
	.loc 1 1302 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%edi
.LCFI106:
	pushl	%esi
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$60, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1305 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$1, -44(%ebp)
	je	.L393
	cmpl	$1, -44(%ebp)
	jg	.L395
	cmpl	$0, -44(%ebp)
	je	.L392
	jmp	.L391
.L395:
	cmpl	$3, -44(%ebp)
	jg	.L391
	jmp	.L394
.L392:
	.loc 1 1309 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L396
.L394:
	.loc 1 1314 0
	movl	$0, -24(%ebp)
	movl	$-2147483648, -20(%ebp)
	.loc 1 1315 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L397
	.loc 1 1316 0
	addl	$-1, -24(%ebp)
	adcl	$-1, -20(%ebp)
.L397:
	.loc 1 1317 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	.L396
.L393:
	.loc 1 1320 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	testl	%eax, %eax
	jle	.L392
	.loc 1 1322 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	$64, %eax
	jg	.L394
	.loc 1 1329 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1330 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1331 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-24(%ebp), %eax
	orl	%esi, %eax
	movl	-20(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1336 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	$64, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L404
	movl	%edx, %eax
	xorl	%edx, %edx
.L404:
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 1338 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L401
	.loc 1 1339 0
	negl	-24(%ebp)
	adcl	$0, -20(%ebp)
	negl	-20(%ebp)
.L401:
	.loc 1 1340 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	.L396
.L391:
	.loc 1 1343 0
	leal	__FUNCTION__.11865@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1343, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L396:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	.loc 1 1345 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE50:
	.size	real_to_integer, .-real_to_integer
	.section	.rodata
	.type	__FUNCTION__.11907, @object
	.size	__FUNCTION__.11907, 17
__FUNCTION__.11907:
	.string	"real_to_integer2"
	.text
.globl real_to_integer2
	.type	real_to_integer2, @function
real_to_integer2:
.LFB51:
	.loc 1 1353 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%edi
.LCFI112:
	pushl	%esi
.LCFI113:
	pushl	%ebx
.LCFI114:
	subl	$76, %esp
.LCFI115:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1358 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	cmpl	$1, -68(%ebp)
	je	.L408
	cmpl	$1, -68(%ebp)
	jg	.L410
	cmpl	$0, -68(%ebp)
	je	.L407
	jmp	.L406
.L410:
	cmpl	$3, -68(%ebp)
	jg	.L406
	jmp	.L409
.L407:
	.loc 1 1362 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 1363 0
	jmp	.L411
.L409:
	.loc 1 1368 0
	movl	$0, -32(%ebp)
	movl	$-2147483648, -28(%ebp)
	.loc 1 1369 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L412
	.loc 1 1370 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L411
.L412:
	.loc 1 1373 0
	addl	$-1, -32(%ebp)
	adcl	$-1, -28(%ebp)
	.loc 1 1374 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
	.loc 1 1376 0
	jmp	.L411
.L408:
	.loc 1 1379 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1380 0
	cmpl	$0, -20(%ebp)
	jle	.L407
	.loc 1 1382 0
	cmpl	$128, -20(%ebp)
	jg	.L409
	.loc 1 1385 0
	movl	$128, %eax
	subl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	rshift_significand
	.loc 1 1393 0
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 1394 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 1395 0
	movl	-48(%ebp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-32(%ebp), %eax
	orl	%esi, %eax
	movl	-28(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 1397 0
	movl	-52(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 1398 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 1399 0
	movl	-56(%ebp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 1404 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L411
	.loc 1 1406 0
	movl	-40(%ebp), %eax
	orl	-36(%ebp), %eax
	testl	%eax, %eax
	jne	.L419
	.loc 1 1407 0
	negl	-32(%ebp)
	adcl	$0, -28(%ebp)
	negl	-28(%ebp)
	jmp	.L411
.L419:
	.loc 1 1409 0
	negl	-40(%ebp)
	adcl	$0, -36(%ebp)
	negl	-36(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %esi
	movl	%eax, %edx
	notl	%edx
	movl	%esi, %ecx
	notl	%ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	.loc 1 1411 0
	jmp	.L411
.L406:
	.loc 1 1414 0
	leal	__FUNCTION__.11907@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1414, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L411:
	.loc 1 1417 0
	movl	8(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 1418 0
	movl	12(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 1419 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	real_to_integer2, .-real_to_integer2
	.type	rtd_divmod, @function
rtd_divmod:
.LFB52:
	.loc 1 1429 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	subl	$40, %esp
.LCFI118:
	.loc 1 1431 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, -4(%ebp)
	.loc 1 1433 0
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jge	.L423
	.loc 1 1434 0
	movl	$0, -20(%ebp)
	jmp	.L425
.L423:
	.loc 1 1436 0
	movl	$0, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1437 0
	jmp	.L426
.L427:
	.loc 1 1440 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	andl	$-2147483648, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1441 0
	sall	-16(%ebp)
	.loc 1 1442 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand_1
.L426:
	.loc 1 1444 0
	cmpl	$0, -12(%ebp)
	jne	.L428
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cmp_significands
	testl	%eax, %eax
	js	.L430
.L428:
	.loc 1 1446 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	sub_significands
	.loc 1 1447 0
	orl	$1, -16(%ebp)
.L430:
	.loc 1 1450 0
	subl	$1, -8(%ebp)
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jge	.L427
	.loc 1 1452 0
	movl	-4(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	8(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 1453 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 1455 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L425:
	movl	-20(%ebp), %eax
	.loc 1 1456 0
	leave
	ret
.LFE52:
	.size	rtd_divmod, .-rtd_divmod
	.section	.rodata
	.type	__FUNCTION__.11987, @object
	.size	__FUNCTION__.11987, 16
__FUNCTION__.11987:
	.string	"real_to_decimal"
.LC1:
	.string	"-0.0"
.LC2:
	.string	"0.0"
.LC3:
	.string	"-Inf"
.LC4:
	.string	"+Inf"
.LC5:
	.string	"-NaN"
.LC6:
	.string	"+NaN"
.LC8:
	.string	"e%+d"
	.align 8
.LC7:
	.long	1352628735
	.long	1070810131
	.text
.globl real_to_decimal
	.type	real_to_decimal, @function
real_to_decimal:
.LFB53:
	.loc 1 1471 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$244, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1479 0
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -88(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -84(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -80(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -76(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -72(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1480 0
	movzbl	-88(%ebp), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -220(%ebp)
	cmpl	$1, -220(%ebp)
	je	.L436
	cmpl	$1, -220(%ebp)
	jg	.L439
	cmpl	$0, -220(%ebp)
	je	.L435
	jmp	.L434
.L439:
	cmpl	$2, -220(%ebp)
	je	.L437
	cmpl	$3, -220(%ebp)
	je	.L438
	jmp	.L434
.L435:
	.loc 1 1483 0
	movzbl	-88(%ebp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L440
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -216(%ebp)
	jmp	.L442
.L440:
	leal	.LC2@GOTOFF(%ebx), %ecx
	movl	%ecx, -216(%ebp)
.L442:
	movl	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 1484 0
	jmp	.L516
.L436:
	.loc 1 1499 0
	movl	$48, -44(%ebp)
	.loc 1 1500 0
	cmpl	$0, 20(%ebp)
	je	.L444
	jmp	.L445
.L437:
	.loc 1 1488 0
	movzbl	-88(%ebp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L446
	leal	.LC3@GOTOFF(%ebx), %ecx
	movl	%ecx, -212(%ebp)
	jmp	.L448
.L446:
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -212(%ebp)
.L448:
	movl	8(%ebp), %eax
	movl	-212(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, (%eax)
	movl	-212(%ebp), %ecx
	movzbl	4(%ecx), %edx
	movb	%dl, 4(%eax)
	.loc 1 1489 0
	jmp	.L516
.L438:
	.loc 1 1492 0
	movzbl	-88(%ebp), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L449
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -208(%ebp)
	jmp	.L451
.L449:
	leal	.LC6@GOTOFF(%ebx), %ecx
	movl	%ecx, -208(%ebp)
.L451:
	movl	8(%ebp), %eax
	movl	-208(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, (%eax)
	movl	-208(%ebp), %ecx
	movzbl	4(%ecx), %edx
	movb	%dl, 4(%eax)
	.loc 1 1493 0
	jmp	.L516
.L434:
	.loc 1 1495 0
	leal	__FUNCTION__.11987@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1495, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L445:
	.loc 1 1500 0
	movl	20(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jbe	.L452
.L444:
	.loc 1 1501 0
	movl	-44(%ebp), %eax
	movl	%eax, 20(%ebp)
.L452:
	.loc 1 1506 0
	movl	-88(%ebp), %eax
	sarl	$3, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	.LC7@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-198(%ebp)
	movzwl	-198(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -200(%ebp)
	fldcw	-200(%ebp)
	fistpl	-56(%ebp)
	fldcw	-198(%ebp)
	.loc 1 1507 0
	movl	$1, -44(%ebp)
	jmp	.L453
.L454:
	.loc 1 1508 0
	movl	-56(%ebp), %ecx
	movl	$1717986919, -224(%ebp)
	movl	-224(%ebp), %eax
	imull	%ecx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -56(%ebp)
	.loc 1 1507 0
	addl	$1, -44(%ebp)
.L453:
	cmpl	$0, -56(%ebp)
	jne	.L454
	.loc 1 1511 0
	movl	-44(%ebp), %edx
	movl	16(%ebp), %eax
	subl	%edx, %eax
	subl	$5, %eax
	movl	%eax, -44(%ebp)
	.loc 1 1512 0
	movl	-44(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	.L456
	.loc 1 1513 0
	leal	__FUNCTION__.11987@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1513, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L456:
	.loc 1 1514 0
	movl	20(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jbe	.L458
	.loc 1 1515 0
	movl	-44(%ebp), %eax
	movl	%eax, 20(%ebp)
.L458:
	.loc 1 1517 0
	movl	$1, (%esp)
	call	real_digit
	movl	%eax, -64(%ebp)
	.loc 1 1518 0
	movl	$0, (%esp)
	call	ten_to_ptwo
	movl	%eax, -60(%ebp)
	.loc 1 1520 0
	movzbl	-88(%ebp), %eax
	andl	$4, %eax
	testb	%al, %al
	setne	%al
	movb	%al, -5(%ebp)
	.loc 1 1521 0
	movzbl	-88(%ebp), %eax
	andl	$-5, %eax
	movb	%al, -88(%ebp)
	.loc 1 1523 0
	movl	$0, -56(%ebp)
	.loc 1 1524 0
	movl	-64(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -112(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -108(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -104(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -100(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -96(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1526 0
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	movl	%eax, -52(%ebp)
	.loc 1 1527 0
	cmpl	$0, -52(%ebp)
	jle	.L460
.LBB10:
	.loc 1 1534 0
	movl	-88(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1535 0
	movl	-136(%ebp), %eax
	andl	$7, %eax
	orl	$1272, %eax
	movl	%eax, -136(%ebp)
	.loc 1 1538 0
	movl	-44(%ebp), %eax
	movl	$0, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, -28(%ebp)
.L462:
.LBB11:
	.loc 1 1548 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	ten_to_ptwo
	movl	%eax, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	do_divide
	.loc 1 1549 0
	leal	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	do_fix_trunc
	.loc 1 1550 0
	leal	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	cmp_significands
	testl	%eax, %eax
	jne	.L463
	.loc 1 1552 0
	movl	-184(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	-180(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-176(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-172(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	-168(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	-164(%ebp), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1553 0
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	addl	%eax, -56(%ebp)
.L463:
.LBE11:
	.loc 1 1556 0
	subl	$1, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jns	.L462
	.loc 1 1559 0
	movl	-136(%ebp), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	-88(%ebp), %eax
	sarl	$3, %eax
	leal	(%edx,%eax), %eax
	subl	$159, %eax
	sall	$3, %eax
	sarl	$3, %eax
	leal	0(,%eax,8), %edx
	movl	-136(%ebp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -136(%ebp)
	.loc 1 1560 0
	movl	-136(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-132(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-120(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1565 0
	movl	-88(%ebp), %eax
	sarl	$3, %eax
	testl	%eax, %eax
	jle	.L466
	.loc 1 1567 0
	movl	-88(%ebp), %eax
	sarl	$3, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	.LC7@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-198(%ebp)
	movzwl	-198(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -200(%ebp)
	fldcw	-200(%ebp)
	fistpl	-204(%ebp)
	fldcw	-198(%ebp)
	movl	-204(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	addl	$1, %eax
	movl	%eax, -28(%ebp)
.L468:
.LBB12:
	.loc 1 1570 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	ten_to_ptwo
	movl	%eax, -24(%ebp)
	.loc 1 1571 0
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	js	.L469
	.loc 1 1573 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	do_divide
	.loc 1 1574 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1575 0
	movl	-28(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	addl	%eax, -56(%ebp)
.L469:
.LBE12:
	.loc 1 1578 0
	subl	$1, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jns	.L468
	jmp	.L460
.L466:
	.loc 1 1584 0
	movl	$-1, -52(%ebp)
.L460:
.LBE10:
	.loc 1 1586 0
	cmpl	$0, -52(%ebp)
	jns	.L472
.LBB13:
	.loc 1 1593 0
	movl	-88(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	-80(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-76(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, -140(%ebp)
.L474:
	.loc 1 1597 0
	movl	-156(%ebp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L475
	.loc 1 1600 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1603 0
	movl	-136(%ebp), %eax
	sarl	$3, %eax
	testl	%eax, %eax
	jg	.L475
	.loc 1 1606 0
	movl	-136(%ebp), %eax
	movl	%eax, -160(%ebp)
	movl	-132(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-120(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-116(%ebp), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1607 0
	subl	$1, -56(%ebp)
	.loc 1 1608 0
	jmp	.L474
.L475:
	.loc 1 1609 0
	movl	-160(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	-156(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-152(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-148(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-144(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-140(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 1614 0
	movl	-88(%ebp), %eax
	sarl	$3, %eax
	negl	%eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	fldl	.LC7@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fnstcw	-198(%ebp)
	movzwl	-198(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -200(%ebp)
	fldcw	-200(%ebp)
	fistpl	-204(%ebp)
	fldcw	-198(%ebp)
	movl	-204(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	addl	$1, %eax
	movl	%eax, -20(%ebp)
.L478:
.LBB14:
	.loc 1 1617 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ten_to_ptwo
	movl	%eax, -16(%ebp)
	.loc 1 1618 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ten_to_mptwo
	movl	%eax, -12(%ebp)
	.loc 1 1620 0
	movl	$0, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	do_compare
	testl	%eax, %eax
	jg	.L479
	.loc 1 1622 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1623 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1624 0
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	subl	%eax, -56(%ebp)
.L479:
.LBE14:
	.loc 1 1627 0
	subl	$1, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jns	.L478
	.loc 1 1630 0
	leal	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	do_divide
.L472:
.LBE13:
	.loc 1 1633 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1634 0
	cmpb	$0, -5(%ebp)
	je	.L482
	.loc 1 1635 0
	movl	-40(%ebp), %eax
	movb	$45, (%eax)
	addl	$1, -40(%ebp)
.L482:
	.loc 1 1636 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	addl	$1, -40(%ebp)
	.loc 1 1646 0
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	rtd_divmod
	movl	%eax, -48(%ebp)
	.loc 1 1649 0
	cmpl	$0, -48(%ebp)
	jne	.L484
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	cmp_significand_0
	testl	%eax, %eax
	je	.L484
	.loc 1 1652 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1653 0
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	rtd_divmod
	movl	%eax, -48(%ebp)
	.loc 1 1654 0
	subl	$1, -56(%ebp)
	.loc 1 1655 0
	cmpl	$0, -48(%ebp)
	jne	.L484
	.loc 1 1656 0
	leal	__FUNCTION__.11987@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1656, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L484:
	.loc 1 1660 0
	cmpl	$10, -48(%ebp)
	jne	.L488
	.loc 1 1662 0
	movl	-40(%ebp), %eax
	movb	$49, (%eax)
	addl	$1, -40(%ebp)
	.loc 1 1663 0
	subl	$1, 20(%ebp)
	cmpl	$0, 20(%ebp)
	je	.L490
	.loc 1 1664 0
	movl	-40(%ebp), %eax
	movb	$48, (%eax)
	addl	$1, -40(%ebp)
.L490:
	.loc 1 1665 0
	addl	$1, -56(%ebp)
	jmp	.L495
.L488:
	.loc 1 1667 0
	cmpl	$10, -48(%ebp)
	jle	.L493
	.loc 1 1668 0
	leal	__FUNCTION__.11987@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1668, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L493:
	.loc 1 1670 0
	movl	-48(%ebp), %eax
	leal	48(%eax), %edx
	movl	-40(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -40(%ebp)
	.loc 1 1673 0
	jmp	.L495
.L496:
	.loc 1 1675 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1676 0
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	rtd_divmod
	movl	%eax, -48(%ebp)
	.loc 1 1677 0
	movl	-48(%ebp), %eax
	leal	48(%eax), %edx
	movl	-40(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -40(%ebp)
.L495:
	.loc 1 1673 0
	subl	$1, 20(%ebp)
	cmpl	$0, 20(%ebp)
	jne	.L496
	.loc 1 1679 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1682 0
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1683 0
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	rtd_divmod
	movl	%eax, -48(%ebp)
	.loc 1 1686 0
	cmpl	$5, -48(%ebp)
	jne	.L498
	.loc 1 1690 0
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	cmp_significand_0
	testl	%eax, %eax
	je	.L500
	.loc 1 1691 0
	addl	$1, -48(%ebp)
	jmp	.L498
.L500:
	.loc 1 1693 0
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L498
	.loc 1 1694 0
	addl	$1, -48(%ebp)
.L498:
	.loc 1 1696 0
	cmpl	$5, -48(%ebp)
	jle	.L503
	.loc 1 1698 0
	jmp	.L505
.L506:
	.loc 1 1700 0
	subl	$1, -40(%ebp)
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 1701 0
	cmpl	$57, -48(%ebp)
	jne	.L507
	.loc 1 1702 0
	movl	-40(%ebp), %eax
	movb	$48, (%eax)
	jmp	.L505
.L507:
	.loc 1 1705 0
	movl	-48(%ebp), %eax
	leal	1(%eax), %edx
	movl	-40(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 1706 0
	jmp	.L509
.L505:
	.loc 1 1698 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	ja	.L506
.L509:
	.loc 1 1712 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jne	.L503
	.loc 1 1714 0
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movb	$49, (%eax)
	.loc 1 1715 0
	addl	$1, -56(%ebp)
.L503:
	.loc 1 1720 0
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %edx
	movl	-36(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 1721 0
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movb	$46, (%eax)
	.loc 1 1724 0
	cmpl	$0, 24(%ebp)
	je	.L511
	.loc 1 1725 0
	jmp	.L513
.L514:
	.loc 1 1726 0
	subl	$1, -32(%ebp)
.L513:
	.loc 1 1725 0
	movl	-36(%ebp), %eax
	addl	$3, %eax
	cmpl	-32(%ebp), %eax
	jae	.L511
	movl	-32(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L514
.L511:
	.loc 1 1729 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L516:
	.loc 1 1730 0
	addl	$244, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	real_to_decimal, .-real_to_decimal
	.type	cmp_significand_0, @function
cmp_significand_0:
.LFB27:
	.loc 1 428 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	subl	$20, %esp
.LCFI125:
	.loc 1 431 0
	movl	$4, -4(%ebp)
	jmp	.L518
.L519:
	.loc 1 432 0
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L520
	.loc 1 433 0
	movl	$1, -20(%ebp)
	jmp	.L522
.L520:
	.loc 1 431 0
	subl	$1, -4(%ebp)
.L518:
	cmpl	$0, -4(%ebp)
	jns	.L519
	.loc 1 435 0
	movl	$0, -20(%ebp)
.L522:
	movl	-20(%ebp), %eax
	.loc 1 436 0
	leave
	ret
.LFE27:
	.size	cmp_significand_0, .-cmp_significand_0
	.section	.rodata
	.type	__FUNCTION__.12182, @object
	.size	__FUNCTION__.12182, 20
__FUNCTION__.12182:
	.string	"real_to_hexadecimal"
.LC9:
	.string	"p%+d"
.LC10:
	.string	"0123456789abcdef"
	.text
.globl real_to_hexadecimal
	.type	real_to_hexadecimal, @function
real_to_hexadecimal:
.LFB54:
	.loc 1 1743 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%edi
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$96, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1743 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 1744 0
	movl	-64(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, -44(%ebp)
	.loc 1 1749 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -76(%ebp)
	cmpl	$1, -76(%ebp)
	je	.L532
	cmpl	$1, -76(%ebp)
	jg	.L531
	cmpl	$0, -76(%ebp)
	je	.L527
	jmp	.L526
.L531:
	cmpl	$2, -76(%ebp)
	je	.L529
	cmpl	$3, -76(%ebp)
	je	.L530
	jmp	.L526
.L527:
	.loc 1 1752 0
	movl	$0, -44(%ebp)
	.loc 1 1753 0
	jmp	.L532
.L529:
	.loc 1 1757 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L533
	leal	.LC3@GOTOFF(%ebx), %ecx
	movl	%ecx, -72(%ebp)
	jmp	.L535
.L533:
	leal	.LC4@GOTOFF(%ebx), %edi
	movl	%edi, -72(%ebp)
.L535:
	movl	-60(%ebp), %eax
	movl	-72(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, (%eax)
	movl	-72(%ebp), %edi
	movzbl	4(%edi), %edx
	movb	%dl, 4(%eax)
	.loc 1 1758 0
	jmp	.L560
.L530:
	.loc 1 1761 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L537
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -68(%ebp)
	jmp	.L539
.L537:
	leal	.LC6@GOTOFF(%ebx), %ecx
	movl	%ecx, -68(%ebp)
.L539:
	movl	-60(%ebp), %eax
	movl	-68(%ebp), %edi
	movl	(%edi), %edx
	movl	%edx, (%eax)
	movl	-68(%ebp), %ecx
	movzbl	4(%ecx), %edx
	movb	%dl, 4(%eax)
	.loc 1 1762 0
	jmp	.L560
.L526:
	.loc 1 1764 0
	leal	__FUNCTION__.12182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1764, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L532:
	.loc 1 1767 0
	cmpl	$0, 20(%ebp)
	jne	.L540
	.loc 1 1768 0
	movl	$40, 20(%ebp)
.L540:
	.loc 1 1772 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1773 0
	leal	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -80(%ebp)
	movl	$0, %eax
	cld
	movl	-80(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	subl	$5, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1774 0
	movl	-32(%ebp), %eax
	cmpl	16(%ebp), %eax
	jbe	.L542
	.loc 1 1775 0
	leal	__FUNCTION__.12182@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1775, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L542:
	.loc 1 1776 0
	movl	20(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jbe	.L544
	.loc 1 1777 0
	movl	-32(%ebp), %eax
	movl	%eax, 20(%ebp)
.L544:
	.loc 1 1779 0
	movl	-60(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1780 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L546
	.loc 1 1781 0
	movl	-40(%ebp), %eax
	movb	$45, (%eax)
	addl	$1, -40(%ebp)
.L546:
	.loc 1 1782 0
	movl	-40(%ebp), %eax
	movb	$48, (%eax)
	addl	$1, -40(%ebp)
	.loc 1 1783 0
	movl	-40(%ebp), %eax
	movb	$120, (%eax)
	addl	$1, -40(%ebp)
	.loc 1 1784 0
	movl	-40(%ebp), %eax
	movb	$48, (%eax)
	addl	$1, -40(%ebp)
	.loc 1 1785 0
	movl	-40(%ebp), %eax
	movb	$46, (%eax)
	addl	$1, -40(%ebp)
	.loc 1 1786 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1788 0
	movl	$4, -52(%ebp)
	jmp	.L548
.L549:
	.loc 1 1789 0
	movl	$28, -48(%ebp)
	jmp	.L550
.L551:
	.loc 1 1791 0
	movl	-52(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	4(%eax,%edx,4), %eax
	movl	-48(%ebp), %ecx
	shrl	%cl, %eax
	andl	$15, %eax
	movzbl	.LC10@GOTOFF(%ebx,%eax), %edx
	movl	-40(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -40(%ebp)
	.loc 1 1792 0
	subl	$1, 20(%ebp)
	cmpl	$0, 20(%ebp)
	je	.L552
	.loc 1 1789 0
	subl	$4, -48(%ebp)
.L550:
	cmpl	$0, -48(%ebp)
	jns	.L551
	.loc 1 1788 0
	subl	$1, -52(%ebp)
.L548:
	cmpl	$0, -52(%ebp)
	jns	.L549
.L552:
	.loc 1 1797 0
	cmpl	$0, 24(%ebp)
	je	.L555
	.loc 1 1798 0
	jmp	.L557
.L558:
	.loc 1 1799 0
	subl	$1, -40(%ebp)
.L557:
	.loc 1 1798 0
	movl	-36(%ebp), %eax
	addl	$1, %eax
	cmpl	-40(%ebp), %eax
	jae	.L555
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L558
.L555:
	.loc 1 1801 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
.L560:
	.loc 1 1802 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L561
	call	__stack_chk_fail_local
.L561:
	addl	$96, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE54:
	.size	real_to_hexadecimal, .-real_to_hexadecimal
.globl real_from_string
	.type	real_from_string, @function
real_from_string:
.LFB55:
	.loc 1 1811 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%edi
.LCFI133:
	pushl	%esi
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$60, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1812 0
	movl	$0, -36(%ebp)
	.loc 1 1813 0
	movb	$0, -15(%ebp)
	.loc 1 1815 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 1817 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L563
	.loc 1 1819 0
	movb	$1, -15(%ebp)
	.loc 1 1820 0
	addl	$1, 12(%ebp)
	jmp	.L565
.L563:
	.loc 1 1822 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L565
	.loc 1 1823 0
	addl	$1, 12(%ebp)
.L565:
	.loc 1 1825 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	jne	.L567
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	.L567
.LBB15:
	.loc 1 1828 0
	movl	$156, -32(%ebp)
	.loc 1 1830 0
	addl	$2, 12(%ebp)
	.loc 1 1832 0
	jmp	.L570
.L571:
	.loc 1 1833 0
	addl	$1, 12(%ebp)
.L570:
	.loc 1 1832 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L571
.L572:
	.loc 1 1836 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_hex_value@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1837 0
	cmpl	$99, -28(%ebp)
	je	.L573
	.loc 1 1839 0
	cmpl	$0, -32(%ebp)
	js	.L575
	.loc 1 1841 0
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	addl	%edx, %eax
	sarl	$5, %eax
	movl	%eax, -52(%ebp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,4), %esi
	movl	-28(%ebp), %edi
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$27, %ecx
	leal	(%edx,%ecx), %eax
	andl	$31, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	movl	%edi, %eax
	sall	%cl, %eax
	movl	%esi, %edx
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	-52(%ebp), %ecx
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 1843 0
	subl	$4, -32(%ebp)
.L575:
	.loc 1 1845 0
	addl	$4, -36(%ebp)
	.loc 1 1846 0
	addl	$1, 12(%ebp)
	.loc 1 1847 0
	jmp	.L572
.L573:
	.loc 1 1848 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L577
	.loc 1 1850 0
	addl	$1, 12(%ebp)
	.loc 1 1851 0
	cmpl	$156, -32(%ebp)
	jne	.L579
	.loc 1 1853 0
	jmp	.L581
.L582:
	.loc 1 1854 0
	addl	$1, 12(%ebp)
	subl	$4, -36(%ebp)
.L581:
	.loc 1 1853 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L582
.L579:
	.loc 1 1858 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_hex_value@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1859 0
	cmpl	$99, -28(%ebp)
	je	.L577
	.loc 1 1861 0
	cmpl	$0, -32(%ebp)
	js	.L584
	.loc 1 1863 0
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	addl	%edx, %eax
	sarl	$5, %eax
	movl	%eax, -48(%ebp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,4), %esi
	movl	-28(%ebp), %edi
	movl	-32(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$27, %ecx
	leal	(%edx,%ecx), %eax
	andl	$31, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	movl	%edi, %eax
	sall	%cl, %eax
	movl	%esi, %edx
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%edx, 4(%eax,%ecx,4)
	.loc 1 1865 0
	subl	$4, -32(%ebp)
.L584:
	.loc 1 1867 0
	addl	$1, 12(%ebp)
	.loc 1 1868 0
	jmp	.L579
.L577:
	.loc 1 1870 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$112, %al
	je	.L586
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$80, %al
	jne	.L588
.L586:
.LBB16:
	.loc 1 1872 0
	movb	$0, -14(%ebp)
	.loc 1 1874 0
	addl	$1, 12(%ebp)
	.loc 1 1875 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L589
	.loc 1 1877 0
	movb	$1, -14(%ebp)
	.loc 1 1878 0
	addl	$1, 12(%ebp)
	jmp	.L591
.L589:
	.loc 1 1880 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L591
	.loc 1 1881 0
	addl	$1, 12(%ebp)
.L591:
	.loc 1 1883 0
	movl	$0, -28(%ebp)
	.loc 1 1884 0
	jmp	.L593
.L594:
	.loc 1 1886 0
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1887 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	-28(%ebp), %eax
	subl	$48, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1888 0
	cmpl	$268435455, -28(%ebp)
	jle	.L595
	.loc 1 1891 0
	cmpb	$0, -14(%ebp)
	jne	.L597
	.loc 1 1894 0
	jmp	.L598
.L595:
	.loc 1 1896 0
	addl	$1, 12(%ebp)
.L593:
	.loc 1 1884 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L594
	.loc 1 1898 0
	cmpb	$0, -14(%ebp)
	je	.L600
	.loc 1 1899 0
	negl	-28(%ebp)
.L600:
	.loc 1 1901 0
	movl	-28(%ebp), %eax
	addl	%eax, -36(%ebp)
.L588:
.LBE16:
	.loc 1 1904 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 1905 0
	movl	-36(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	8(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 1907 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 1825 0
	jmp	.L602
.L567:
.LBE15:
.LBB17:
	.loc 1 1912 0
	movl	$0, (%esp)
	call	ten_to_ptwo
	movl	%eax, -24(%ebp)
	.loc 1 1915 0
	jmp	.L603
.L604:
	.loc 1 1916 0
	addl	$1, 12(%ebp)
.L603:
	.loc 1 1915 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L604
	.loc 1 1917 0
	jmp	.L637
.L607:
	.loc 1 1919 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -20(%ebp)
	addl	$1, 12(%ebp)
	.loc 1 1920 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1921 0
	cmpl	$0, -20(%ebp)
	je	.L606
	.loc 1 1922 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	real_digit
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_add
.L606:
.L637:
	.loc 1 1917 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L607
	.loc 1 1924 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L610
	.loc 1 1926 0
	addl	$1, 12(%ebp)
	.loc 1 1927 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	testb	%al, %al
	jne	.L616
	.loc 1 1929 0
	jmp	.L614
.L615:
	.loc 1 1930 0
	addl	$1, 12(%ebp)
	subl	$1, -36(%ebp)
.L614:
	.loc 1 1929 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L615
	.loc 1 1932 0
	jmp	.L616
.L617:
	.loc 1 1934 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -20(%ebp)
	addl	$1, 12(%ebp)
	.loc 1 1935 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
	.loc 1 1936 0
	cmpl	$0, -20(%ebp)
	je	.L618
	.loc 1 1937 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	real_digit
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_add
.L618:
	.loc 1 1938 0
	subl	$1, -36(%ebp)
.L616:
	.loc 1 1932 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L617
.L610:
	.loc 1 1942 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	je	.L620
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L622
.L620:
.LBB18:
	.loc 1 1944 0
	movb	$0, -13(%ebp)
	.loc 1 1946 0
	addl	$1, 12(%ebp)
	.loc 1 1947 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L623
	.loc 1 1949 0
	movb	$1, -13(%ebp)
	.loc 1 1950 0
	addl	$1, 12(%ebp)
	jmp	.L625
.L623:
	.loc 1 1952 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L625
	.loc 1 1953 0
	addl	$1, 12(%ebp)
.L625:
	.loc 1 1955 0
	movl	$0, -20(%ebp)
	.loc 1 1956 0
	jmp	.L627
.L628:
	.loc 1 1958 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1959 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	-20(%ebp), %eax
	subl	$48, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1960 0
	cmpl	$268435455, -20(%ebp)
	jle	.L629
	.loc 1 1963 0
	cmpb	$0, -13(%ebp)
	jne	.L597
	.loc 1 1966 0
	jmp	.L598
.L629:
	.loc 1 1968 0
	addl	$1, 12(%ebp)
.L627:
	.loc 1 1956 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L628
	.loc 1 1970 0
	cmpb	$0, -13(%ebp)
	je	.L632
	.loc 1 1971 0
	negl	-20(%ebp)
.L632:
	.loc 1 1972 0
	movl	-20(%ebp), %eax
	addl	%eax, -36(%ebp)
.L622:
.LBE18:
	.loc 1 1975 0
	cmpl	$0, -36(%ebp)
	je	.L602
	.loc 1 1976 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	times_pten
.L602:
.LBE17:
	.loc 1 1979 0
	movzbl	-15(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 1980 0
	jmp	.L636
.L597:
	.loc 1 1983 0
	movzbl	-15(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 1984 0
	jmp	.L636
.L598:
	.loc 1 1987 0
	movzbl	-15(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
.L636:
	.loc 1 1989 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE55:
	.size	real_from_string, .-real_from_string
.globl real_from_string2
	.type	real_from_string2, @function
real_from_string2:
.LFB56:
	.loc 1 1997 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$52, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2000 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_from_string@PLT
	.loc 1 2001 0
	cmpl	$0, 16(%ebp)
	je	.L639
	.loc 1 2002 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_convert@PLT
.L639:
	.loc 1 2004 0
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	-24(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 16(%edx)
	movl	-8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 20(%edx)
	.loc 1 2005 0
	movl	8(%ebp), %eax
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret	$4
.LFE56:
	.size	real_from_string2, .-real_from_string2
	.section	.rodata
	.type	__FUNCTION__.12433, @object
	.size	__FUNCTION__.12433, 18
__FUNCTION__.12433:
	.string	"real_from_integer"
	.text
.globl real_from_integer
	.type	real_from_integer, @function
real_from_integer:
.LFB57:
	.loc 1 2016 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%esi
.LCFI143:
	pushl	%ebx
.LCFI144:
	subl	$48, %esp
.LCFI145:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2017 0
	movl	-16(%ebp), %eax
	orl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L643
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L643
	.loc 1 2018 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 2017 0
	jmp	.L646
.L643:
	.loc 1 2021 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 2022 0
	cmpl	$0, -20(%ebp)
	jns	.L647
	cmpl	$0, 32(%ebp)
	jne	.L647
	movl	$1, -28(%ebp)
	jmp	.L650
.L647:
	movl	$0, -28(%ebp)
.L650:
	movzbl	-28(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2023 0
	movl	8(%ebp), %edx
	movl	(%edx), %eax
	andl	$7, %eax
	orb	$4, %ah
	movl	%eax, (%edx)
	.loc 1 2025 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L651
	.loc 1 2027 0
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %esi
	movl	%ecx, %eax
	notl	%eax
	movl	%esi, %edx
	notl	%edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 2028 0
	movl	-16(%ebp), %eax
	orl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L653
	.loc 1 2029 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
	jmp	.L651
.L653:
	.loc 1 2031 0
	negl	-16(%ebp)
	adcl	$0, -12(%ebp)
	negl	-12(%ebp)
.L651:
	.loc 1 2042 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2043 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2044 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2045 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2047 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	$0, (%eax)
	.loc 1 2052 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
.L646:
	.loc 1 2055 0
	cmpl	$0, 12(%ebp)
	je	.L657
	.loc 1 2056 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	real_convert@PLT
.L657:
	.loc 1 2057 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE57:
	.size	real_from_integer, .-real_from_integer
	.section	.rodata
	.type	__FUNCTION__.12468, @object
	.size	__FUNCTION__.12468, 12
__FUNCTION__.12468:
	.string	"ten_to_ptwo"
	.local	tens.12467
	.comm	tens.12467,696,32
	.text
	.type	ten_to_ptwo, @function
ten_to_ptwo:
.LFB58:
	.loc 1 2064 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%edi
.LCFI148:
	pushl	%esi
.LCFI149:
	pushl	%ebx
.LCFI150:
	subl	$60, %esp
.LCFI151:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2067 0
	cmpl	$0, 8(%ebp)
	js	.L659
	cmpl	$28, 8(%ebp)
	jle	.L661
.L659:
	.loc 1 2068 0
	leal	__FUNCTION__.12468@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2068, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L661:
	.loc 1 2070 0
	movl	8(%ebp), %edx
	leal	tens.12467@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movzbl	(%eax,%ecx), %eax
	andl	$3, %eax
	testb	%al, %al
	jne	.L662
	.loc 1 2072 0
	cmpl	$4, 8(%ebp)
	jg	.L664
.LBB19:
	.loc 1 2074 0
	movl	$10, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 2077 0
	movl	$0, -24(%ebp)
	jmp	.L666
.L667:
	.loc 1 2078 0
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	imull	-32(%ebp), %ecx
	movl	-28(%ebp), %eax
	imull	-32(%ebp), %eax
	addl	%eax, %ecx
	movl	-32(%ebp), %eax
	mull	-32(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 2077 0
	addl	$1, -24(%ebp)
.L666:
	movl	-24(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L667
	.loc 1 2080 0
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leal	tens.12467@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$1, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	real_from_integer@PLT
	jmp	.L662
.L664:
.LBE19:
.LBB20:
	.loc 1 2084 0
	movl	8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	call	ten_to_ptwo
	movl	%eax, -20(%ebp)
	.loc 1 2085 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leal	tens.12467@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	do_multiply
.L662:
.LBE20:
	.loc 1 2089 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leal	tens.12467@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	.loc 1 2090 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE58:
	.size	ten_to_ptwo, .-ten_to_ptwo
	.section	.rodata
	.type	__FUNCTION__.12505, @object
	.size	__FUNCTION__.12505, 13
__FUNCTION__.12505:
	.string	"ten_to_mptwo"
	.local	tens.12504
	.comm	tens.12504,696,32
	.text
	.type	ten_to_mptwo, @function
ten_to_mptwo:
.LFB59:
	.loc 1 2097 0
	pushl	%ebp
.LCFI152:
	movl	%esp, %ebp
.LCFI153:
	pushl	%esi
.LCFI154:
	pushl	%ebx
.LCFI155:
	subl	$16, %esp
.LCFI156:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2100 0
	cmpl	$0, 8(%ebp)
	js	.L671
	cmpl	$28, 8(%ebp)
	jle	.L673
.L671:
	.loc 1 2101 0
	leal	__FUNCTION__.12505@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2101, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L673:
	.loc 1 2103 0
	movl	8(%ebp), %edx
	leal	tens.12504@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movzbl	(%eax,%ecx), %eax
	andl	$3, %eax
	testb	%al, %al
	jne	.L674
	.loc 1 2104 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ten_to_ptwo
	movl	%eax, %esi
	movl	$1, (%esp)
	call	real_digit
	movl	%eax, %ecx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leal	tens.12504@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	do_divide
.L674:
	.loc 1 2106 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leal	tens.12504@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	.loc 1 2107 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE59:
	.size	ten_to_mptwo, .-ten_to_mptwo
	.section	.rodata
	.type	__FUNCTION__.12528, @object
	.size	__FUNCTION__.12528, 11
__FUNCTION__.12528:
	.string	"real_digit"
	.local	num.12527
	.comm	num.12527,240,32
	.text
	.type	real_digit, @function
real_digit:
.LFB60:
	.loc 1 2114 0
	pushl	%ebp
.LCFI157:
	movl	%esp, %ebp
.LCFI158:
	pushl	%edi
.LCFI159:
	pushl	%esi
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$28, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2117 0
	cmpl	$0, 8(%ebp)
	js	.L678
	cmpl	$9, 8(%ebp)
	jle	.L680
.L678:
	.loc 1 2118 0
	leal	__FUNCTION__.12528@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2118, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L680:
	.loc 1 2120 0
	cmpl	$0, 8(%ebp)
	jle	.L681
	movl	8(%ebp), %edx
	leal	num.12527@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movzbl	(%eax,%ecx), %eax
	andl	$3, %eax
	testb	%al, %al
	jne	.L681
	.loc 1 2121 0
	movl	8(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leal	num.12527@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$1, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	real_from_integer@PLT
.L681:
	.loc 1 2123 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	leal	num.12527@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	.loc 1 2124 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE60:
	.size	real_digit, .-real_digit
	.type	times_pten, @function
times_pten:
.LFB61:
	.loc 1 2132 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	subl	$72, %esp
.LCFI165:
	.loc 1 2134 0
	movl	12(%ebp), %eax
	shrl	$31, %eax
	movb	%al, -1(%ebp)
	.loc 1 2137 0
	cmpb	$0, -1(%ebp)
	je	.L686
	.loc 1 2139 0
	negl	12(%ebp)
	.loc 1 2140 0
	movl	$1, (%esp)
	call	real_digit
	movl	%eax, %edx
	movl	(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -24(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -20(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2141 0
	leal	-36(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L688
.L686:
	.loc 1 2144 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L688:
	.loc 1 2146 0
	movl	$0, -8(%ebp)
	jmp	.L689
.L690:
	.loc 1 2147 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L691
	.loc 1 2148 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ten_to_ptwo
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_multiply
.L691:
	.loc 1 2146 0
	addl	$1, -8(%ebp)
	sarl	12(%ebp)
.L689:
	cmpl	$0, 12(%ebp)
	jg	.L690
	.loc 1 2150 0
	cmpb	$0, -1(%ebp)
	je	.L696
	.loc 1 2151 0
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	do_divide
.L696:
	.loc 1 2152 0
	leave
	ret
.LFE61:
	.size	times_pten, .-times_pten
.globl real_inf
	.type	real_inf, @function
real_inf:
.LFB62:
	.loc 1 2159 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	subl	$8, %esp
.LCFI168:
	.loc 1 2160 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
	.loc 1 2161 0
	leave
	ret
.LFE62:
	.size	real_inf, .-real_inf
	.section	.rodata
	.type	__FUNCTION__.12580, @object
	.size	__FUNCTION__.12580, 9
__FUNCTION__.12580:
	.string	"real_nan"
	.text
.globl real_nan
	.type	real_nan, @function
real_nan:
.LFB63:
	.loc 1 2174 0
	pushl	%ebp
.LCFI169:
	movl	%esp, %ebp
.LCFI170:
	pushl	%ebx
.LCFI171:
	subl	$68, %esp
.LCFI172:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2177 0
	movl	20(%ebp), %eax
	subl	$12, %eax
	movl	real_format_for_mode@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2178 0
	cmpl	$0, -20(%ebp)
	jne	.L700
	.loc 1 2179 0
	leal	__FUNCTION__.12580@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2179, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L700:
	.loc 1 2181 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L702
	.loc 1 2183 0
	cmpl	$0, 16(%ebp)
	je	.L704
	.loc 1 2184 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_canonical_qnan
	jmp	.L707
.L704:
	.loc 1 2186 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_canonical_snan
	jmp	.L707
.L702:
.LBB21:
	.loc 1 2190 0
	movl	$10, -16(%ebp)
	.loc 1 2191 0
	movb	$0, -5(%ebp)
	.loc 1 2193 0
	movl	8(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 2194 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$3, %eax
	movb	%al, (%edx)
	.loc 1 2198 0
	jmp	.L708
.L709:
	.loc 1 2199 0
	addl	$1, 12(%ebp)
.L708:
	.loc 1 2198 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L709
	.loc 1 2200 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L711
	.loc 1 2201 0
	addl	$1, 12(%ebp)
	movb	$1, -5(%ebp)
	jmp	.L713
.L711:
	.loc 1 2202 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L713
	.loc 1 2203 0
	addl	$1, 12(%ebp)
.L713:
	.loc 1 2204 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	jne	.L719
	.loc 1 2206 0
	addl	$1, 12(%ebp)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	.L717
	.loc 1 2207 0
	addl	$1, 12(%ebp)
	movl	$16, -16(%ebp)
	jmp	.L719
.L717:
	.loc 1 2209 0
	movl	$8, -16(%ebp)
	.loc 1 2212 0
	jmp	.L719
.L720:
.LBB22:
	.loc 1 2216 0
	movl	-16(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$10, -60(%ebp)
	je	.L723
	cmpl	$16, -60(%ebp)
	je	.L724
	cmpl	$8, -60(%ebp)
	je	.L722
	jmp	.L721
.L722:
	.loc 1 2219 0
	movl	$3, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
	.loc 1 2220 0
	jmp	.L725
.L724:
	.loc 1 2222 0
	movl	$4, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
	.loc 1 2223 0
	jmp	.L725
.L723:
	.loc 1 2225 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand_1
	.loc 1 2226 0
	movl	$3, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
	.loc 1 2227 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_significands
	.loc 1 2228 0
	jmp	.L725
.L721:
	.loc 1 2230 0
	leal	__FUNCTION__.12580@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2230, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L725:
	.loc 1 2233 0
	movl	$0, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 2234 0
	movl	-12(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2235 0
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_significands
	.loc 1 2237 0
	addl	$1, 12(%ebp)
.L719:
.LBE22:
	.loc 1 2212 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_hex_value@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L720
	.loc 1 2241 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L727
	.loc 1 2242 0
	movl	$0, -56(%ebp)
	jmp	.L729
.L727:
	.loc 1 2246 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	$160, %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
	.loc 1 2249 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	andl	$2147483647, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2252 0
	cmpl	$0, 16(%ebp)
	je	.L730
	.loc 1 2253 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	orl	$1073741824, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L732
.L730:
	.loc 1 2255 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	andl	$-1073741825, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L732:
	.loc 1 2258 0
	movl	$0, -12(%ebp)
	jmp	.L733
.L734:
	.loc 1 2259 0
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L735
	.loc 1 2258 0
	addl	$1, -12(%ebp)
.L733:
	cmpl	$4, -12(%ebp)
	jle	.L734
.L735:
	.loc 1 2261 0
	cmpl	$5, -12(%ebp)
	jne	.L737
	.loc 1 2262 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	orl	$536870912, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L737:
	.loc 1 2267 0
	movl	-20(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L707
	.loc 1 2268 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	xorl	$1610612736, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
.L707:
.LBE21:
	.loc 1 2271 0
	movl	$1, -56(%ebp)
.L729:
	movl	-56(%ebp), %eax
	.loc 1 2272 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE63:
	.size	real_nan, .-real_nan
	.type	get_canonical_snan, @function
get_canonical_snan:
.LFB17:
	.loc 1 176 0
	pushl	%ebp
.LCFI173:
	movl	%esp, %ebp
.LCFI174:
	.loc 1 177 0
	movl	8(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 178 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$3, %eax
	movb	%al, (%edx)
	.loc 1 179 0
	movl	12(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	$536870912, 20(%eax)
	.loc 1 181 0
	popl	%ebp
	ret
.LFE17:
	.size	get_canonical_snan, .-get_canonical_snan
.globl real_2expN
	.type	real_2expN, @function
real_2expN:
.LFB64:
	.loc 1 2280 0
	pushl	%ebp
.LCFI175:
	movl	%esp, %ebp
.LCFI176:
	.loc 1 2281 0
	movl	8(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 2283 0
	addl	$1, 12(%ebp)
	.loc 1 2284 0
	cmpl	$268435455, 12(%ebp)
	jle	.L744
	.loc 1 2285 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, (%edx)
	jmp	.L748
.L744:
	.loc 1 2286 0
	cmpl	$-268435455, 12(%ebp)
	jl	.L748
	.loc 1 2290 0
	movl	8(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 2291 0
	movl	12(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	8(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 2292 0
	movl	8(%ebp), %eax
	movl	$-2147483648, 20(%eax)
.L748:
	.loc 1 2294 0
	popl	%ebp
	ret
.LFE64:
	.size	real_2expN, .-real_2expN
	.section	.rodata
	.type	__FUNCTION__.12696, @object
	.size	__FUNCTION__.12696, 17
__FUNCTION__.12696:
	.string	"round_for_format"
	.text
	.type	round_for_format, @function
round_for_format:
.LFB65:
	.loc 1 2301 0
	pushl	%ebp
.LCFI177:
	movl	%esp, %ebp
.LCFI178:
	pushl	%esi
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$96, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2307 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	imull	%edx, %eax
	movl	%eax, -52(%ebp)
	.loc 1 2308 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	imull	%edx, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2309 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	imull	%edx, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2311 0
	movl	$160, %eax
	subl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2312 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	cmpl	$1, -92(%ebp)
	je	.L752
	cmpl	$1, -92(%ebp)
	jg	.L755
	cmpl	$0, -92(%ebp)
	je	.L751
	jmp	.L750
.L755:
	cmpl	$2, -92(%ebp)
	je	.L789
	cmpl	$3, -92(%ebp)
	je	.L754
	jmp	.L750
.L756:
	.loc 1 2315 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
.L751:
	.loc 1 2317 0
	movl	8(%ebp), %eax
	movzbl	31(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L789
	.loc 1 2318 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %edx
	andl	$-5, %edx
	movb	%dl, (%eax)
	.loc 1 2319 0
	jmp	.L789
.L760:
	.loc 1 2322 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inf
	.loc 1 2324 0
	jmp	.L789
.L754:
	.loc 1 2327 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_significand_below
	.loc 1 2331 0
	movl	$0, -44(%ebp)
	jmp	.L761
.L762:
	.loc 1 2332 0
	movl	-44(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L763
	.loc 1 2331 0
	addl	$1, -44(%ebp)
.L761:
	cmpl	$4, -44(%ebp)
	jle	.L762
.L763:
	.loc 1 2334 0
	cmpl	$5, -44(%ebp)
	jne	.L789
	.loc 1 2335 0
	movl	12(%ebp), %eax
	movl	$536870912, 20(%eax)
	.loc 1 2336 0
	jmp	.L789
.L752:
	.loc 1 2347 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L767
	jmp	.L768
.L750:
	.loc 1 2342 0
	leal	__FUNCTION__.12696@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2342, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L767:
.LBB23:
	.loc 1 2349 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2350 0
	cmpl	$0, -24(%ebp)
	je	.L768
	.loc 1 2352 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	subl	-24(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2353 0
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sticky_rshift_significand
	movzbl	%al, %eax
	movl	%esi, %edx
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2354 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	-24(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
.L768:
.LBE23:
	.loc 1 2360 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	-28(%ebp), %eax
	jg	.L760
	.loc 1 2362 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	-32(%ebp), %eax
	jg	.L771
.LBB24:
	.loc 1 2366 0
	movl	8(%ebp), %eax
	movzbl	30(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L773
	.loc 1 2369 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	-32(%ebp), %eax
	jl	.L756
	.loc 1 2370 0
	jmp	.L771
.L773:
	.loc 1 2374 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2375 0
	movl	-20(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jg	.L756
	.loc 1 2379 0
	movl	12(%ebp), %eax
	movl	4(%eax), %esi
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	sticky_rshift_significand
	movzbl	%al, %eax
	movl	%esi, %edx
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2380 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	-20(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
.L771:
.LBE24:
	.loc 1 2388 0
	movl	$0, -36(%ebp)
	.loc 1 2389 0
	movl	$0, -44(%ebp)
	movl	-48(%ebp), %edx
	subl	$1, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	addl	%edx, %eax
	sarl	$5, %eax
	movl	%eax, -40(%ebp)
	jmp	.L777
.L778:
	.loc 1 2390 0
	movl	-44(%ebp), %eax
	movl	12(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	orl	%eax, -36(%ebp)
	.loc 1 2389 0
	addl	$1, -44(%ebp)
.L777:
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L778
	.loc 1 2391 0
	movl	-40(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,4), %esi
	movl	-48(%ebp), %edx
	subl	$1, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$27, %ecx
	leal	(%edx,%ecx), %eax
	andl	$31, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	andl	%esi, %eax
	orl	%eax, -36(%ebp)
	.loc 1 2394 0
	movl	-48(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	test_significand_bit
	movb	%al, -10(%ebp)
	.loc 1 2395 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	test_significand_bit
	movb	%al, -9(%ebp)
	.loc 1 2398 0
	cmpb	$0, -10(%ebp)
	je	.L780
	cmpl	$0, -36(%ebp)
	jne	.L782
	cmpb	$0, -9(%ebp)
	je	.L780
.L782:
.LBB25:
	.loc 1 2401 0
	movl	$0, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	get_zero
	.loc 1 2402 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	set_significand_bit
	.loc 1 2404 0
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	add_significands
	testb	%al, %al
	je	.L780
	.loc 1 2409 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	$1, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	-28(%ebp), %eax
	jg	.L760
	.loc 1 2411 0
	movl	12(%ebp), %eax
	movl	$-2147483648, 20(%eax)
	.loc 1 2413 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	je	.L780
.LBB26:
	.loc 1 2415 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2416 0
	cmpl	$0, -16(%ebp)
	je	.L780
	.loc 1 2418 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	subl	-16(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2419 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	rshift_significand
	.loc 1 2420 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	-16(%ebp), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 2421 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	-28(%ebp), %eax
	jg	.L760
.L780:
.LBE26:
.LBE25:
	.loc 1 2429 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	cmpl	-32(%ebp), %eax
	jle	.L756
	.loc 1 2433 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_significand_below
.L789:
	.loc 1 2434 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE65:
	.size	round_for_format, .-round_for_format
	.type	test_significand_bit, @function
test_significand_bit:
.LFB30:
	.loc 1 466 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	subl	$16, %esp
.LCFI184:
	.loc 1 470 0
	movl	12(%ebp), %eax
	movl	%eax, %edx
	shrl	$5, %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	%edx, %eax
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -4(%ebp)
	.loc 1 471 0
	cmpl	$0, -4(%ebp)
	setne	%al
	movzbl	%al, %eax
	.loc 1 472 0
	leave
	ret
.LFE30:
	.size	test_significand_bit, .-test_significand_bit
	.section	.rodata
	.type	__FUNCTION__.12833, @object
	.size	__FUNCTION__.12833, 13
__FUNCTION__.12833:
	.string	"real_convert"
	.text
.globl real_convert
	.type	real_convert, @function
real_convert:
.LFB66:
	.loc 1 2443 0
	pushl	%ebp
.LCFI185:
	movl	%esp, %ebp
.LCFI186:
	pushl	%ebx
.LCFI187:
	subl	$36, %esp
.LCFI188:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2446 0
	movl	12(%ebp), %eax
	subl	$12, %eax
	movl	real_format_for_mode@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2447 0
	cmpl	$0, -8(%ebp)
	jne	.L793
	.loc 1 2448 0
	leal	__FUNCTION__.12833@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2448, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L793:
	.loc 1 2450 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 2451 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	round_for_format
	.loc 1 2454 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	cmpb	$1, %al
	jne	.L797
	.loc 1 2455 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
.L797:
	.loc 1 2456 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE66:
	.size	real_convert, .-real_convert
.globl real_value_truncate
	.type	real_value_truncate, @function
real_value_truncate:
.LFB67:
	.loc 1 2464 0
	pushl	%ebp
.LCFI189:
	movl	%esp, %ebp
.LCFI190:
	pushl	%esi
.LCFI191:
	pushl	%ebx
.LCFI192:
	subl	$48, %esp
.LCFI193:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %esi
	.loc 1 2466 0
	leal	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	real_convert@PLT
	.loc 1 2467 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esi)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esi)
	movl	-12(%ebp), %eax
	movl	%eax, 20(%esi)
	.loc 1 2468 0
	movl	%esi, %eax
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret	$4
.LFE67:
	.size	real_value_truncate, .-real_value_truncate
.globl exact_real_truncate
	.type	exact_real_truncate, @function
exact_real_truncate:
.LFB68:
	.loc 1 2476 0
	pushl	%ebp
.LCFI194:
	movl	%esp, %ebp
.LCFI195:
	pushl	%ebx
.LCFI196:
	subl	$52, %esp
.LCFI197:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2478 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_convert@PLT
	.loc 1 2479 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	real_identical@PLT
	movzbl	%al, %eax
	.loc 1 2480 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	exact_real_truncate, .-exact_real_truncate
.globl real_to_target_fmt
	.type	real_to_target_fmt, @function
real_to_target_fmt:
.LFB69:
	.loc 1 2493 0
	pushl	%ebp
.LCFI198:
	movl	%esp, %ebp
.LCFI199:
	subl	$56, %esp
.LCFI200:
	.loc 1 2497 0
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -24(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -20(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -16(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -12(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2498 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	round_for_format
	.loc 1 2500 0
	cmpl	$0, 8(%ebp)
	jne	.L803
	.loc 1 2501 0
	leal	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
.L803:
	.loc 1 2502 0
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2504 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 2505 0
	leave
	ret
.LFE69:
	.size	real_to_target_fmt, .-real_to_target_fmt
	.section	.rodata
	.type	__FUNCTION__.12875, @object
	.size	__FUNCTION__.12875, 15
__FUNCTION__.12875:
	.string	"real_to_target"
	.text
.globl real_to_target
	.type	real_to_target, @function
real_to_target:
.LFB70:
	.loc 1 2514 0
	pushl	%ebp
.LCFI201:
	movl	%esp, %ebp
.LCFI202:
	pushl	%ebx
.LCFI203:
	subl	$36, %esp
.LCFI204:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2517 0
	movl	16(%ebp), %eax
	subl	$12, %eax
	movl	real_format_for_mode@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2518 0
	cmpl	$0, -8(%ebp)
	jne	.L807
	.loc 1 2519 0
	leal	__FUNCTION__.12875@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2519, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L807:
	.loc 1 2521 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_target_fmt@PLT
	.loc 1 2522 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	real_to_target, .-real_to_target
.globl real_from_target_fmt
	.type	real_from_target_fmt, @function
real_from_target_fmt:
.LFB71:
	.loc 1 2533 0
	pushl	%ebp
.LCFI205:
	movl	%esp, %ebp
.LCFI206:
	subl	$24, %esp
.LCFI207:
	.loc 1 2534 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2535 0
	leave
	ret
.LFE71:
	.size	real_from_target_fmt, .-real_from_target_fmt
	.section	.rodata
	.type	__FUNCTION__.12894, @object
	.size	__FUNCTION__.12894, 17
__FUNCTION__.12894:
	.string	"real_from_target"
	.text
.globl real_from_target
	.type	real_from_target, @function
real_from_target:
.LFB72:
	.loc 1 2544 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	pushl	%ebx
.LCFI210:
	subl	$36, %esp
.LCFI211:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2547 0
	movl	16(%ebp), %eax
	subl	$12, %eax
	movl	real_format_for_mode@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2548 0
	cmpl	$0, -8(%ebp)
	jne	.L813
	.loc 1 2549 0
	leal	__FUNCTION__.12894@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2549, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L813:
	.loc 1 2551 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2552 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE72:
	.size	real_from_target, .-real_from_target
.globl significand_size
	.type	significand_size, @function
significand_size:
.LFB73:
	.loc 1 2560 0
	pushl	%ebp
.LCFI212:
	movl	%esp, %ebp
.LCFI213:
	pushl	%ebx
.LCFI214:
	subl	$20, %esp
.LCFI215:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2563 0
	movl	8(%ebp), %eax
	subl	$12, %eax
	movl	real_format_for_mode@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2564 0
	cmpl	$0, -8(%ebp)
	jne	.L817
	.loc 1 2565 0
	movl	$0, -24(%ebp)
	jmp	.L819
.L817:
	.loc 1 2567 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	%ecx, -24(%ebp)
.L819:
	movl	-24(%ebp), %eax
	.loc 1 2568 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	significand_size, .-significand_size
	.section	.rodata
	.type	__FUNCTION__.12928, @object
	.size	__FUNCTION__.12928, 10
__FUNCTION__.12928:
	.string	"real_hash"
	.text
.globl real_hash
	.type	real_hash, @function
real_hash:
.LFB74:
	.loc 1 2577 0
	pushl	%ebp
.LCFI216:
	movl	%esp, %ebp
.LCFI217:
	pushl	%ebx
.LCFI218:
	subl	$36, %esp
.LCFI219:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2581 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	orl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2582 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L824
	cmpl	$1, -24(%ebp)
	jg	.L826
	cmpl	$0, -24(%ebp)
	je	.L827
	jmp	.L822
.L826:
	cmpl	$2, -24(%ebp)
	je	.L827
	cmpl	$3, -24(%ebp)
	je	.L825
	jmp	.L822
.L824:
	.loc 1 2589 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	sall	$3, %eax
	orl	%eax, -16(%ebp)
.L825:
	.loc 1 2600 0
	movl	$0, -12(%ebp)
	jmp	.L828
.L829:
	.loc 1 2601 0
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	xorl	%eax, -16(%ebp)
	.loc 1 2600 0
	addl	$1, -12(%ebp)
.L828:
	cmpl	$4, -12(%ebp)
	jbe	.L829
	.loc 1 2602 0
	jmp	.L827
.L822:
	.loc 1 2605 0
	leal	__FUNCTION__.12928@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2605, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L827:
	.loc 1 2608 0
	movl	-16(%ebp), %eax
	.loc 1 2609 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE74:
	.size	real_hash, .-real_hash
	.section	.rodata
	.type	__FUNCTION__.12975, @object
	.size	__FUNCTION__.12975, 19
__FUNCTION__.12975:
	.string	"encode_ieee_single"
	.text
	.type	encode_ieee_single, @function
encode_ieee_single:
.LFB75:
	.loc 1 2623 0
	pushl	%ebp
.LCFI220:
	movl	%esp, %ebp
.LCFI221:
	pushl	%ebx
.LCFI222:
	subl	$36, %esp
.LCFI223:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2625 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -5(%ebp)
	.loc 1 2627 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$31, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2628 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	shrl	$8, %eax
	andl	$8388607, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2630 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L835
	cmpl	$1, -24(%ebp)
	jg	.L838
	cmpl	$0, -24(%ebp)
	je	.L839
	jmp	.L833
.L838:
	cmpl	$2, -24(%ebp)
	je	.L836
	cmpl	$3, -24(%ebp)
	je	.L837
	jmp	.L833
.L836:
	.loc 1 2636 0
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	testb	%al, %al
	je	.L840
	.loc 1 2637 0
	orl	$2139095040, -20(%ebp)
	jmp	.L839
.L840:
	.loc 1 2639 0
	orl	$2147483647, -20(%ebp)
	.loc 1 2640 0
	jmp	.L839
.L837:
	.loc 1 2643 0
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L843
	.loc 1 2645 0
	orl	$2139095040, -20(%ebp)
	.loc 1 2646 0
	movl	-16(%ebp), %eax
	orl	%eax, -20(%ebp)
	.loc 1 2647 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L839
	.loc 1 2648 0
	xorl	$12582912, -20(%ebp)
	jmp	.L839
.L843:
	.loc 1 2651 0
	orl	$2147483647, -20(%ebp)
	.loc 1 2652 0
	jmp	.L839
.L835:
	.loc 1 2658 0
	cmpb	$0, -5(%ebp)
	je	.L848
	.loc 1 2659 0
	movl	$0, -12(%ebp)
	jmp	.L850
.L848:
	.loc 1 2661 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	$126, %eax
	movl	%eax, -12(%ebp)
.L850:
	.loc 1 2662 0
	movl	-12(%ebp), %eax
	sall	$23, %eax
	orl	%eax, -20(%ebp)
	.loc 1 2663 0
	movl	-16(%ebp), %eax
	orl	%eax, -20(%ebp)
	.loc 1 2664 0
	jmp	.L839
.L833:
	.loc 1 2667 0
	leal	__FUNCTION__.12975@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2667, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L839:
	.loc 1 2670 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2671 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	encode_ieee_single, .-encode_ieee_single
	.type	decode_ieee_single, @function
decode_ieee_single:
.LFB76:
	.loc 1 2678 0
	pushl	%ebp
.LCFI224:
	movl	%esp, %ebp
.LCFI225:
	subl	$24, %esp
.LCFI226:
	.loc 1 2679 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2680 0
	movl	-12(%ebp), %eax
	shrl	$31, %eax
	andl	$1, %eax
	movb	%al, -1(%ebp)
	.loc 1 2681 0
	movl	-12(%ebp), %eax
	shrl	$23, %eax
	andl	$255, %eax
	movl	%eax, -8(%ebp)
	.loc 1 2683 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 2684 0
	sall	$8, -12(%ebp)
	.loc 1 2685 0
	andl	$2147483647, -12(%ebp)
	.loc 1 2687 0
	cmpl	$0, -8(%ebp)
	jne	.L853
	.loc 1 2689 0
	cmpl	$0, -12(%ebp)
	je	.L855
	movl	8(%ebp), %eax
	movzbl	30(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L855
	.loc 1 2691 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 2692 0
	movzbl	-1(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2693 0
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	$-1008, %eax
	movl	%eax, (%edx)
	.loc 1 2694 0
	movl	-12(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2695 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 2689 0
	jmp	.L870
.L855:
	.loc 1 2697 0
	movl	8(%ebp), %eax
	movzbl	31(%eax), %eax
	testb	%al, %al
	je	.L870
	.loc 1 2698 0
	movzbl	-1(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	jmp	.L870
.L853:
	.loc 1 2700 0
	cmpl	$255, -8(%ebp)
	jne	.L861
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	jne	.L863
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	testb	%al, %al
	je	.L861
.L863:
	.loc 1 2702 0
	cmpl	$0, -12(%ebp)
	je	.L865
	.loc 1 2704 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$3, %eax
	movb	%al, (%edx)
	.loc 1 2705 0
	movzbl	-1(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2706 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L867
	.loc 1 2707 0
	xorl	$1610612736, -12(%ebp)
.L867:
	.loc 1 2708 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L870
.L865:
	.loc 1 2712 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, (%edx)
	.loc 1 2713 0
	movzbl	-1(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2700 0
	jmp	.L870
.L861:
	.loc 1 2718 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 2719 0
	movzbl	-1(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2720 0
	movl	-8(%ebp), %eax
	subl	$126, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 2721 0
	movl	-12(%ebp), %edx
	orl	$-2147483648, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
.L870:
	.loc 1 2723 0
	leave
	ret
.LFE76:
	.size	decode_ieee_single, .-decode_ieee_single
.globl ieee_single_format
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	ieee_single_format, @object
	.size	ieee_single_format, 36
ieee_single_format:
	.long	encode_ieee_single
	.long	decode_ieee_single
	.long	2
	.long	1
	.long	24
	.long	-125
	.long	128
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.zero	3
	.section	.rodata
	.type	__FUNCTION__.13080, @object
	.size	__FUNCTION__.13080, 19
__FUNCTION__.13080:
	.string	"encode_ieee_double"
	.text
	.type	encode_ieee_double, @function
encode_ieee_double:
.LFB77:
	.loc 1 2754 0
	pushl	%ebp
.LCFI227:
	movl	%esp, %ebp
.LCFI228:
	pushl	%ebx
.LCFI229:
	subl	$52, %esp
.LCFI230:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2756 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -5(%ebp)
	.loc 1 2758 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$31, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2759 0
	movl	$0, -28(%ebp)
	.loc 1 2769 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2770 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2771 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sall	$21, %edx
	movl	-20(%ebp), %eax
	shrl	$11, %eax
	orl	%edx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2772 0
	movl	-16(%ebp), %eax
	shrl	$11, %eax
	andl	$1048575, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2775 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$1, -40(%ebp)
	je	.L874
	cmpl	$1, -40(%ebp)
	jg	.L877
	cmpl	$0, -40(%ebp)
	je	.L878
	jmp	.L872
.L877:
	cmpl	$2, -40(%ebp)
	je	.L875
	cmpl	$3, -40(%ebp)
	je	.L876
	jmp	.L872
.L875:
	.loc 1 2781 0
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	testb	%al, %al
	je	.L879
	.loc 1 2782 0
	orl	$2146435072, -24(%ebp)
	jmp	.L878
.L879:
	.loc 1 2785 0
	orl	$2147483647, -24(%ebp)
	.loc 1 2786 0
	movl	$-1, -28(%ebp)
	.loc 1 2788 0
	jmp	.L878
.L876:
	.loc 1 2791 0
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L882
	.loc 1 2793 0
	orl	$2146435072, -24(%ebp)
	.loc 1 2794 0
	movl	-16(%ebp), %eax
	orl	%eax, -24(%ebp)
	.loc 1 2795 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L884
	.loc 1 2796 0
	xorl	$786432, -24(%ebp)
.L884:
	.loc 1 2797 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L878
.L882:
	.loc 1 2801 0
	orl	$2147483647, -24(%ebp)
	.loc 1 2802 0
	movl	$-1, -28(%ebp)
	.loc 1 2804 0
	jmp	.L878
.L874:
	.loc 1 2810 0
	cmpb	$0, -5(%ebp)
	je	.L887
	.loc 1 2811 0
	movl	$0, -12(%ebp)
	jmp	.L889
.L887:
	.loc 1 2813 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	$1022, %eax
	movl	%eax, -12(%ebp)
.L889:
	.loc 1 2814 0
	movl	-12(%ebp), %eax
	sall	$20, %eax
	orl	%eax, -24(%ebp)
	.loc 1 2815 0
	movl	-16(%ebp), %eax
	orl	%eax, -24(%ebp)
	.loc 1 2816 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2817 0
	jmp	.L878
.L872:
	.loc 1 2820 0
	leal	__FUNCTION__.13080@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2820, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L878:
	.loc 1 2823 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L890
	.loc 1 2824 0
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L893
.L890:
	.loc 1 2826 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
.L893:
	.loc 1 2827 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	encode_ieee_double, .-encode_ieee_double
	.type	decode_ieee_double, @function
decode_ieee_double:
.LFB78:
	.loc 1 2834 0
	pushl	%ebp
.LCFI231:
	movl	%esp, %ebp
.LCFI232:
	pushl	%ebx
.LCFI233:
	subl	$20, %esp
.LCFI234:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2839 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L895
	.loc 1 2840 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L897
.L895:
	.loc 1 2842 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L897:
	.loc 1 2846 0
	movl	-20(%ebp), %eax
	shrl	$31, %eax
	andl	$1, %eax
	movb	%al, -5(%ebp)
	.loc 1 2847 0
	movl	-20(%ebp), %eax
	shrl	$20, %eax
	andl	$2047, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2849 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 2851 0
	sall	$11, -20(%ebp)
	.loc 1 2852 0
	movl	-16(%ebp), %eax
	shrl	$21, %eax
	orl	%eax, -20(%ebp)
	.loc 1 2853 0
	andl	$2147483647, -20(%ebp)
	.loc 1 2854 0
	sall	$11, -16(%ebp)
	.loc 1 2856 0
	cmpl	$0, -12(%ebp)
	jne	.L898
	.loc 1 2858 0
	cmpl	$0, -20(%ebp)
	jne	.L900
	cmpl	$0, -16(%ebp)
	je	.L902
.L900:
	movl	8(%ebp), %eax
	movzbl	30(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L902
	.loc 1 2860 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 2861 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2862 0
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	$-8176, %eax
	movl	%eax, (%edx)
	.loc 1 2865 0
	movl	-20(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	-16(%ebp), %eax
	shrl	$31, %eax
	orl	%edx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2866 0
	sall	-16(%ebp)
	.loc 1 2867 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 2868 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2875 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 2858 0
	jmp	.L917
.L902:
	.loc 1 2877 0
	movl	8(%ebp), %eax
	movzbl	31(%eax), %eax
	testb	%al, %al
	je	.L917
	.loc 1 2878 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	jmp	.L917
.L898:
	.loc 1 2880 0
	cmpl	$2047, -12(%ebp)
	jne	.L907
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	jne	.L909
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	testb	%al, %al
	je	.L907
.L909:
	.loc 1 2882 0
	cmpl	$0, -20(%ebp)
	jne	.L911
	cmpl	$0, -16(%ebp)
	je	.L913
.L911:
	.loc 1 2884 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$3, %eax
	movb	%al, (%edx)
	.loc 1 2885 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2888 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 2889 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2894 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L917
	.loc 1 2895 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	xorl	$1610612736, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2882 0
	jmp	.L917
.L913:
	.loc 1 2899 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, (%edx)
	.loc 1 2900 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2880 0
	jmp	.L917
.L907:
	.loc 1 2905 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 2906 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 2907 0
	movl	-12(%ebp), %eax
	subl	$1022, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 2910 0
	movl	-20(%ebp), %edx
	orl	$-2147483648, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 2911 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
.L917:
	.loc 1 2916 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	decode_ieee_double, .-decode_ieee_double
.globl ieee_double_format
	.section	.data.rel.ro.local
	.align 32
	.type	ieee_double_format, @object
	.size	ieee_double_format, 36
ieee_double_format:
	.long	encode_ieee_double
	.long	decode_ieee_double
	.long	2
	.long	1
	.long	53
	.long	-1021
	.long	1024
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.zero	3
	.section	.rodata
	.type	__FUNCTION__.13220, @object
	.size	__FUNCTION__.13220, 21
__FUNCTION__.13220:
	.string	"encode_ieee_extended"
	.text
	.type	encode_ieee_extended, @function
encode_ieee_extended:
.LFB79:
	.loc 1 2956 0
	pushl	%ebp
.LCFI235:
	movl	%esp, %ebp
.LCFI236:
	pushl	%ebx
.LCFI237:
	subl	$52, %esp
.LCFI238:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2958 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -5(%ebp)
	.loc 1 2960 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$15, %eax
	movl	%eax, -24(%ebp)
	.loc 1 2961 0
	movl	$0, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2963 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	cmpl	$1, -40(%ebp)
	je	.L921
	cmpl	$1, -40(%ebp)
	jg	.L924
	cmpl	$0, -40(%ebp)
	je	.L925
	jmp	.L919
.L924:
	cmpl	$2, -40(%ebp)
	je	.L922
	cmpl	$3, -40(%ebp)
	je	.L923
	jmp	.L919
.L922:
	.loc 1 2969 0
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	testb	%al, %al
	je	.L926
	.loc 1 2971 0
	orl	$32767, -24(%ebp)
	.loc 1 2976 0
	movl	$-2147483648, -20(%ebp)
	jmp	.L925
.L926:
	.loc 1 2980 0
	orl	$32767, -24(%ebp)
	.loc 1 2981 0
	movl	$-1, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2983 0
	jmp	.L925
.L923:
	.loc 1 2986 0
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L929
	.loc 1 2988 0
	orl	$32767, -24(%ebp)
	.loc 1 2991 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2992 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3000 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L931
	.loc 1 3001 0
	xorl	$1610612736, -20(%ebp)
.L931:
	.loc 1 3006 0
	orl	$-2147483648, -20(%ebp)
	jmp	.L925
.L929:
	.loc 1 3010 0
	orl	$32767, -24(%ebp)
	.loc 1 3011 0
	movl	$-1, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3013 0
	jmp	.L925
.L921:
.LBB27:
	.loc 1 3017 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3028 0
	cmpb	$0, -5(%ebp)
	je	.L934
	.loc 1 3029 0
	movl	$0, -12(%ebp)
	jmp	.L936
.L934:
	.loc 1 3032 0
	addl	$16382, -12(%ebp)
	.loc 1 3033 0
	cmpl	$0, -12(%ebp)
	jns	.L936
	.loc 1 3034 0
	leal	__FUNCTION__.13220@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3034, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L936:
	.loc 1 3036 0
	movl	-12(%ebp), %eax
	orl	%eax, -24(%ebp)
	.loc 1 3040 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3041 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3050 0
	jmp	.L925
.L919:
.LBE27:
	.loc 1 3053 0
	leal	__FUNCTION__.13220@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3053, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L925:
	.loc 1 3056 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L938
	.loc 1 3057 0
	movl	-24(%ebp), %eax
	sall	$16, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	movl	12(%ebp), %edx
	addl	$8, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L941
.L938:
	.loc 1 3059 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	movl	12(%ebp), %edx
	addl	$8, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
.L941:
	.loc 1 3060 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE79:
	.size	encode_ieee_extended, .-encode_ieee_extended
	.type	encode_ieee_extended_128, @function
encode_ieee_extended_128:
.LFB80:
	.loc 1 3067 0
	pushl	%ebp
.LCFI239:
	movl	%esp, %ebp
.LCFI240:
	pushl	%ebx
.LCFI241:
	subl	$20, %esp
.LCFI242:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3068 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L943
	movl	$12, -12(%ebp)
	jmp	.L945
.L943:
	movl	$0, -12(%ebp)
.L945:
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3069 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L946
	movl	$4, -8(%ebp)
	jmp	.L948
.L946:
	movl	$0, -8(%ebp)
.L948:
	movl	-8(%ebp), %eax
	addl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	encode_ieee_extended
	.loc 1 3070 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE80:
	.size	encode_ieee_extended_128, .-encode_ieee_extended_128
	.type	decode_ieee_extended, @function
decode_ieee_extended:
.LFB81:
	.loc 1 3077 0
	pushl	%ebp
.LCFI243:
	movl	%esp, %ebp
.LCFI244:
	pushl	%ebx
.LCFI245:
	subl	$36, %esp
.LCFI246:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3082 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L951
	.loc 1 3083 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$16, %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L953
.L951:
	.loc 1 3085 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L953:
	.loc 1 3090 0
	movl	-24(%ebp), %eax
	shrl	$15, %eax
	andl	$1, %eax
	movb	%al, -5(%ebp)
	.loc 1 3091 0
	movl	-24(%ebp), %eax
	andl	$32767, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3093 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 3095 0
	cmpl	$0, -12(%ebp)
	jne	.L954
	.loc 1 3097 0
	cmpl	$0, -20(%ebp)
	jne	.L956
	cmpl	$0, -16(%ebp)
	je	.L958
.L956:
	movl	8(%ebp), %eax
	movzbl	30(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L958
	.loc 1 3099 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 3100 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3107 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 3110 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 3111 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3116 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 3097 0
	jmp	.L973
.L958:
	.loc 1 3118 0
	movl	8(%ebp), %eax
	movzbl	31(%eax), %eax
	testb	%al, %al
	je	.L973
	.loc 1 3119 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	jmp	.L973
.L954:
	.loc 1 3121 0
	cmpl	$32767, -12(%ebp)
	jne	.L963
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	jne	.L965
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	testb	%al, %al
	je	.L963
.L965:
	.loc 1 3126 0
	andl	$2147483647, -20(%ebp)
	.loc 1 3128 0
	cmpl	$0, -20(%ebp)
	jne	.L967
	cmpl	$0, -16(%ebp)
	je	.L969
.L967:
	.loc 1 3130 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$3, %eax
	movb	%al, (%edx)
	.loc 1 3131 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3134 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 3135 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3140 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L973
	.loc 1 3141 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	xorl	$1610612736, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 3128 0
	jmp	.L973
.L969:
	.loc 1 3145 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, (%edx)
	.loc 1 3146 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3121 0
	jmp	.L973
.L963:
	.loc 1 3151 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 3152 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3153 0
	movl	-12(%ebp), %eax
	subl	$16382, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 3156 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 3157 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
.L973:
	.loc 1 3162 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE81:
	.size	decode_ieee_extended, .-decode_ieee_extended
	.type	decode_ieee_extended_128, @function
decode_ieee_extended_128:
.LFB82:
	.loc 1 3169 0
	pushl	%ebp
.LCFI247:
	movl	%esp, %ebp
.LCFI248:
	pushl	%ebx
.LCFI249:
	subl	$20, %esp
.LCFI250:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3170 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L975
	movl	$4, -8(%ebp)
	jmp	.L977
.L975:
	movl	$0, -8(%ebp)
.L977:
	movl	-8(%ebp), %eax
	addl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_ieee_extended
	.loc 1 3171 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE82:
	.size	decode_ieee_extended_128, .-decode_ieee_extended_128
.globl ieee_extended_motorola_format
	.section	.data.rel.ro.local
	.align 32
	.type	ieee_extended_motorola_format, @object
	.size	ieee_extended_motorola_format, 36
ieee_extended_motorola_format:
	.long	encode_ieee_extended
	.long	decode_ieee_extended
	.long	2
	.long	1
	.long	64
	.long	-16382
	.long	16384
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.zero	3
.globl ieee_extended_intel_96_format
	.align 32
	.type	ieee_extended_intel_96_format, @object
	.size	ieee_extended_intel_96_format, 36
ieee_extended_intel_96_format:
	.long	encode_ieee_extended
	.long	decode_ieee_extended
	.long	2
	.long	1
	.long	64
	.long	-16381
	.long	16384
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.zero	3
.globl ieee_extended_intel_128_format
	.align 32
	.type	ieee_extended_intel_128_format, @object
	.size	ieee_extended_intel_128_format, 36
ieee_extended_intel_128_format:
	.long	encode_ieee_extended_128
	.long	decode_ieee_extended_128
	.long	2
	.long	1
	.long	64
	.long	-16381
	.long	16384
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.zero	3
.globl ieee_extended_intel_96_round_53_format
	.align 32
	.type	ieee_extended_intel_96_round_53_format, @object
	.size	ieee_extended_intel_96_round_53_format, 36
ieee_extended_intel_96_round_53_format:
	.long	encode_ieee_extended
	.long	decode_ieee_extended
	.long	2
	.long	1
	.long	53
	.long	-16381
	.long	16384
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.zero	3
	.section	.rodata
	.type	__FUNCTION__.13389, @object
	.size	__FUNCTION__.13389, 20
__FUNCTION__.13389:
	.string	"encode_ibm_extended"
	.text
	.type	encode_ibm_extended, @function
encode_ibm_extended:
.LFB83:
	.loc 1 3258 0
	pushl	%ebp
.LCFI251:
	movl	%esp, %ebp
.LCFI252:
	pushl	%ebx
.LCFI253:
	subl	$84, %esp
.LCFI254:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3261 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -68(%ebp)
	cmpl	$1, -68(%ebp)
	je	.L982
	cmpl	$1, -68(%ebp)
	jg	.L984
	cmpl	$0, -68(%ebp)
	je	.L981
	jmp	.L980
.L984:
	cmpl	$3, -68(%ebp)
	jg	.L980
	jmp	.L983
.L981:
	.loc 1 3265 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L985
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$31, %edx
	movl	%edx, -64(%ebp)
	jmp	.L987
.L985:
	movl	$0, -64(%ebp)
.L987:
	movl	12(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 3266 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -60(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L988
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, %edx
	sall	$31, %edx
	movl	%edx, -56(%ebp)
	jmp	.L990
.L988:
	movl	$0, -56(%ebp)
.L990:
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3267 0
	movl	12(%ebp), %edx
	addl	$8, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 3268 0
	movl	12(%ebp), %edx
	addl	$12, %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 3269 0
	jmp	.L995
.L983:
	.loc 1 3274 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	ieee_double_format@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	encode_ieee_double
	.loc 1 3275 0
	movl	12(%ebp), %edx
	addl	$8, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 3276 0
	movl	12(%ebp), %edx
	addl	$12, %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 3277 0
	jmp	.L995
.L982:
	.loc 1 3281 0
	movl	16(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -24(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -20(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -16(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -12(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3282 0
	movl	$107, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	clear_significand_below
	.loc 1 3284 0
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 3287 0
	movzbl	-28(%ebp), %eax
	andl	$3, %eax
	testb	%al, %al
	jne	.L992
	.loc 1 3289 0
	movl	-28(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3290 0
	movl	16(%ebp), %edx
	movl	(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -24(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -20(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -16(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -12(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3291 0
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	jmp	.L994
.L992:
	.loc 1 3296 0
	movl	$1, 12(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	do_add
	.loc 1 3297 0
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	ieee_double_format@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	round_for_format
.L994:
	.loc 1 3300 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	ieee_double_format@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	round_for_format
	.loc 1 3302 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	ieee_double_format@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	encode_ieee_double
	.loc 1 3303 0
	movl	12(%ebp), %edx
	addl	$8, %edx
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	ieee_double_format@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	encode_ieee_double
	.loc 1 3304 0
	jmp	.L995
.L980:
	.loc 1 3307 0
	leal	__FUNCTION__.13389@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3307, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L995:
	.loc 1 3309 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE83:
	.size	encode_ibm_extended, .-encode_ibm_extended
	.type	decode_ibm_extended, @function
decode_ibm_extended:
.LFB84:
	.loc 1 3316 0
	pushl	%ebp
.LCFI255:
	movl	%esp, %ebp
.LCFI256:
	pushl	%ebx
.LCFI257:
	subl	$68, %esp
.LCFI258:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3319 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	ieee_double_format@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	decode_ieee_double
	.loc 1 3321 0
	movzbl	-28(%ebp), %eax
	andl	$3, %eax
	testb	%al, %al
	je	.L997
	movzbl	-28(%ebp), %eax
	andl	$3, %eax
	cmpb	$2, %al
	je	.L997
	movzbl	-28(%ebp), %eax
	andl	$3, %eax
	cmpb	$3, %al
	je	.L997
	.loc 1 3323 0
	movl	16(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 8(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	ieee_double_format@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	decode_ieee_double
	.loc 1 3324 0
	movl	$0, 12(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	do_add
	.loc 1 3321 0
	jmp	.L1002
.L997:
	.loc 1 3327 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	movl	-8(%ebp), %eax
	movl	%eax, 20(%edx)
.L1002:
	.loc 1 3328 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE84:
	.size	decode_ibm_extended, .-decode_ibm_extended
.globl ibm_extended_format
	.section	.data.rel.ro.local
	.align 32
	.type	ibm_extended_format, @object
	.size	ibm_extended_format, 36
ibm_extended_format:
	.long	encode_ibm_extended
	.long	decode_ibm_extended
	.long	2
	.long	1
	.long	106
	.long	-968
	.long	1024
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.zero	3
	.section	.rodata
	.type	__FUNCTION__.13473, @object
	.size	__FUNCTION__.13473, 17
__FUNCTION__.13473:
	.string	"encode_ieee_quad"
	.text
	.type	encode_ieee_quad, @function
encode_ieee_quad:
.LFB85:
	.loc 1 3359 0
	pushl	%ebp
.LCFI259:
	movl	%esp, %ebp
.LCFI260:
	pushl	%ebx
.LCFI261:
	subl	$68, %esp
.LCFI262:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3361 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	movb	%al, -5(%ebp)
	.loc 1 3364 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$31, %eax
	movl	%eax, -28(%ebp)
	.loc 1 3365 0
	movl	$0, -24(%ebp)
	.loc 1 3366 0
	movl	$0, -20(%ebp)
	.loc 1 3367 0
	movl	$0, -16(%ebp)
	.loc 1 3369 0
	movl	$47, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	rshift_significand
	.loc 1 3371 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	cmpl	$1, -56(%ebp)
	je	.L1006
	cmpl	$1, -56(%ebp)
	jg	.L1009
	cmpl	$0, -56(%ebp)
	je	.L1010
	jmp	.L1004
.L1009:
	cmpl	$2, -56(%ebp)
	je	.L1007
	cmpl	$3, -56(%ebp)
	je	.L1008
	jmp	.L1004
.L1007:
	.loc 1 3377 0
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	testb	%al, %al
	je	.L1011
	.loc 1 3378 0
	orl	$2147418112, -28(%ebp)
	jmp	.L1010
.L1011:
	.loc 1 3381 0
	orl	$2147483647, -28(%ebp)
	.loc 1 3382 0
	movl	$-1, -24(%ebp)
	.loc 1 3383 0
	movl	$-1, -20(%ebp)
	.loc 1 3384 0
	movl	$-1, -16(%ebp)
	.loc 1 3386 0
	jmp	.L1010
.L1008:
	.loc 1 3389 0
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	je	.L1014
	.loc 1 3391 0
	orl	$2147418112, -28(%ebp)
	.loc 1 3395 0
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3396 0
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3397 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3398 0
	movl	-36(%ebp), %eax
	andl	$65535, %eax
	orl	%eax, -28(%ebp)
	.loc 1 3410 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1010
	.loc 1 3411 0
	xorl	$49152, -28(%ebp)
	jmp	.L1010
.L1014:
	.loc 1 3415 0
	orl	$2147483647, -28(%ebp)
	.loc 1 3416 0
	movl	$-1, -24(%ebp)
	.loc 1 3417 0
	movl	$-1, -20(%ebp)
	.loc 1 3418 0
	movl	$-1, -16(%ebp)
	.loc 1 3420 0
	jmp	.L1010
.L1006:
	.loc 1 3426 0
	cmpb	$0, -5(%ebp)
	je	.L1019
	.loc 1 3427 0
	movl	$0, -12(%ebp)
	jmp	.L1021
.L1019:
	.loc 1 3429 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	$16382, %eax
	movl	%eax, -12(%ebp)
.L1021:
	.loc 1 3430 0
	movl	-12(%ebp), %eax
	sall	$16, %eax
	orl	%eax, -28(%ebp)
	.loc 1 3434 0
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3435 0
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3436 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3437 0
	movl	-36(%ebp), %eax
	andl	$65535, %eax
	orl	%eax, -28(%ebp)
	.loc 1 3448 0
	jmp	.L1010
.L1004:
	.loc 1 3451 0
	leal	__FUNCTION__.13473@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3451, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1010:
	.loc 1 3454 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1022
	.loc 1 3456 0
	movl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3457 0
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3458 0
	movl	12(%ebp), %edx
	addl	$8, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3459 0
	movl	12(%ebp), %edx
	addl	$12, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L1025
.L1022:
	.loc 1 3463 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3464 0
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3465 0
	movl	12(%ebp), %edx
	addl	$8, %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3466 0
	movl	12(%ebp), %edx
	addl	$12, %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L1025:
	.loc 1 3468 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE85:
	.size	encode_ieee_quad, .-encode_ieee_quad
	.type	decode_ieee_quad, @function
decode_ieee_quad:
.LFB86:
	.loc 1 3475 0
	pushl	%ebp
.LCFI263:
	movl	%esp, %ebp
.LCFI264:
	pushl	%ebx
.LCFI265:
	subl	$52, %esp
.LCFI266:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3480 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1027
	.loc 1 3482 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3483 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3484 0
	movl	16(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3485 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1029
.L1027:
	.loc 1 3489 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3490 0
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3491 0
	movl	16(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3492 0
	movl	16(%ebp), %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L1029:
	.loc 1 3498 0
	movl	-28(%ebp), %eax
	shrl	$31, %eax
	andl	$1, %eax
	movb	%al, -5(%ebp)
	.loc 1 3499 0
	movl	-28(%ebp), %eax
	shrl	$16, %eax
	andl	$32767, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3500 0
	andl	$65535, -28(%ebp)
	.loc 1 3502 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 3504 0
	cmpl	$0, -12(%ebp)
	jne	.L1030
	.loc 1 3506 0
	movl	-24(%ebp), %eax
	orl	-28(%ebp), %eax
	orl	-20(%ebp), %eax
	orl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L1032
	movl	8(%ebp), %eax
	movzbl	30(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L1032
	.loc 1 3508 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 3509 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3511 0
	movl	12(%ebp), %edx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	$-130672, %eax
	movl	%eax, (%edx)
	.loc 1 3514 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3515 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 3516 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3517 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3525 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
	.loc 1 3506 0
	jmp	.L1047
.L1032:
	.loc 1 3527 0
	movl	8(%ebp), %eax
	movzbl	31(%eax), %eax
	testb	%al, %al
	je	.L1047
	.loc 1 3528 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	jmp	.L1047
.L1030:
	.loc 1 3530 0
	cmpl	$32767, -12(%ebp)
	jne	.L1038
	movl	8(%ebp), %eax
	movzbl	28(%eax), %eax
	testb	%al, %al
	jne	.L1040
	movl	8(%ebp), %eax
	movzbl	29(%eax), %eax
	testb	%al, %al
	je	.L1038
.L1040:
	.loc 1 3532 0
	movl	-24(%ebp), %eax
	orl	-28(%ebp), %eax
	orl	-20(%ebp), %eax
	orl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L1042
	.loc 1 3534 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	orl	$3, %eax
	movb	%al, (%edx)
	.loc 1 3535 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3539 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3540 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 3541 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3542 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3549 0
	movl	$47, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
	.loc 1 3551 0
	movl	8(%ebp), %eax
	movzbl	32(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1047
	.loc 1 3552 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	xorl	$1610612736, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L1047
.L1042:
	.loc 1 3556 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, (%edx)
	.loc 1 3557 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3530 0
	jmp	.L1047
.L1038:
	.loc 1 3562 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 3563 0
	movzbl	-5(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3564 0
	movl	-12(%ebp), %eax
	subl	$16382, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 3568 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 3569 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 3570 0
	movl	12(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 3571 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3578 0
	movl	$47, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
	.loc 1 3579 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	orl	$-2147483648, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
.L1047:
	.loc 1 3581 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE86:
	.size	decode_ieee_quad, .-decode_ieee_quad
.globl ieee_quad_format
	.section	.data.rel.ro.local
	.align 32
	.type	ieee_quad_format, @object
	.size	ieee_quad_format, 36
ieee_quad_format:
	.long	encode_ieee_quad
	.long	decode_ieee_quad
	.long	2
	.long	1
	.long	113
	.long	-16381
	.long	16384
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.zero	3
	.section	.rodata
	.type	__FUNCTION__.13641, @object
	.size	__FUNCTION__.13641, 13
__FUNCTION__.13641:
	.string	"encode_vax_f"
	.text
	.type	encode_vax_f, @function
encode_vax_f:
.LFB87:
	.loc 1 3627 0
	pushl	%ebp
.LCFI267:
	movl	%esp, %ebp
.LCFI268:
	pushl	%ebx
.LCFI269:
	subl	$36, %esp
.LCFI270:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3630 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$15, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3632 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1051
	cmpl	$1, -24(%ebp)
	jg	.L1053
	cmpl	$0, -24(%ebp)
	je	.L1050
	jmp	.L1049
.L1053:
	cmpl	$3, -24(%ebp)
	jg	.L1049
	jmp	.L1052
.L1050:
	.loc 1 3635 0
	movl	$0, -8(%ebp)
	.loc 1 3636 0
	jmp	.L1054
.L1052:
	.loc 1 3640 0
	movl	-20(%ebp), %eax
	orl	$-32769, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3641 0
	jmp	.L1054
.L1051:
	.loc 1 3644 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	shrl	$8, %eax
	andl	$8388607, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3645 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	subl	$-128, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3647 0
	movl	-12(%ebp), %eax
	sall	$16, %eax
	movw	$0, %ax
	movl	%eax, -8(%ebp)
	.loc 1 3648 0
	movl	-20(%ebp), %eax
	orl	%eax, -8(%ebp)
	.loc 1 3649 0
	movl	-16(%ebp), %eax
	sall	$7, %eax
	orl	%eax, -8(%ebp)
	.loc 1 3650 0
	movl	-12(%ebp), %eax
	shrl	$16, %eax
	orl	%eax, -8(%ebp)
	.loc 1 3651 0
	jmp	.L1054
.L1049:
	.loc 1 3654 0
	leal	__FUNCTION__.13641@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3654, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1054:
	.loc 1 3657 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3658 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE87:
	.size	encode_vax_f, .-encode_vax_f
	.type	decode_vax_f, @function
decode_vax_f:
.LFB88:
	.loc 1 3665 0
	pushl	%ebp
.LCFI271:
	movl	%esp, %ebp
.LCFI272:
	subl	$16, %esp
.LCFI273:
	.loc 1 3666 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3667 0
	movl	-8(%ebp), %eax
	shrl	$7, %eax
	andl	$255, %eax
	movl	%eax, -4(%ebp)
	.loc 1 3669 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 3671 0
	cmpl	$0, -4(%ebp)
	je	.L1059
	.loc 1 3673 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 3674 0
	movl	-8(%ebp), %eax
	shrl	$15, %eax
	andl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3675 0
	movl	-4(%ebp), %eax
	addl	$-128, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 3677 0
	movl	-8(%ebp), %eax
	andl	$127, %eax
	movl	%eax, %edx
	sall	$16, %edx
	movl	-8(%ebp), %eax
	shrl	$16, %eax
	andl	$65535, %eax
	orl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3678 0
	movl	-8(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	orl	$-2147483648, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
.L1059:
	.loc 1 3680 0
	leave
	ret
.LFE88:
	.size	decode_vax_f, .-decode_vax_f
	.section	.rodata
	.type	__FUNCTION__.13695, @object
	.size	__FUNCTION__.13695, 13
__FUNCTION__.13695:
	.string	"encode_vax_d"
	.text
	.type	encode_vax_d, @function
encode_vax_d:
.LFB89:
	.loc 1 3687 0
	pushl	%ebp
.LCFI274:
	movl	%esp, %ebp
.LCFI275:
	pushl	%ebx
.LCFI276:
	subl	$36, %esp
.LCFI277:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3688 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$15, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3690 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1063
	cmpl	$1, -24(%ebp)
	jg	.L1065
	cmpl	$0, -24(%ebp)
	je	.L1062
	jmp	.L1061
.L1065:
	cmpl	$3, -24(%ebp)
	jg	.L1061
	jmp	.L1064
.L1062:
	.loc 1 3693 0
	movl	$0, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3694 0
	jmp	.L1066
.L1064:
	.loc 1 3698 0
	movl	-8(%ebp), %eax
	orl	$-32769, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3699 0
	movl	$-1, -12(%ebp)
	.loc 1 3700 0
	jmp	.L1066
.L1063:
	.loc 1 3712 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3713 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3714 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sall	$24, %edx
	movl	-12(%ebp), %eax
	shrl	$8, %eax
	orl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3715 0
	movl	-16(%ebp), %eax
	shrl	$8, %eax
	andl	$16777215, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3720 0
	movl	-16(%ebp), %eax
	rorl	$16, %eax
	andl	$-65409, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3721 0
	rorl	$16, -12(%ebp)
	.loc 1 3724 0
	movl	-8(%ebp), %eax
	orl	%eax, -16(%ebp)
	.loc 1 3725 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	subl	$-128, %eax
	sall	$7, %eax
	orl	%eax, -16(%ebp)
	.loc 1 3726 0
	jmp	.L1066
.L1061:
	.loc 1 3729 0
	leal	__FUNCTION__.13695@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3729, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1066:
	.loc 1 3732 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1067
	.loc 1 3733 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L1070
.L1067:
	.loc 1 3735 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L1070:
	.loc 1 3736 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE89:
	.size	encode_vax_d, .-encode_vax_d
	.type	decode_vax_d, @function
decode_vax_d:
.LFB90:
	.loc 1 3743 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	pushl	%ebx
.LCFI280:
	subl	$28, %esp
.LCFI281:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3747 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1072
	.loc 1 3748 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1074
.L1072:
	.loc 1 3750 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1074:
	.loc 1 3754 0
	movl	-16(%ebp), %eax
	shrl	$7, %eax
	andl	$127, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3756 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 3758 0
	cmpl	$0, -8(%ebp)
	je	.L1077
	.loc 1 3760 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 3761 0
	movl	-16(%ebp), %eax
	shrl	$15, %eax
	andl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3762 0
	movl	-8(%ebp), %eax
	addl	$-128, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 3766 0
	movl	-16(%ebp), %eax
	andl	$127, %eax
	movl	%eax, %edx
	sall	$16, %edx
	movl	-16(%ebp), %eax
	shrl	$16, %eax
	andl	$65535, %eax
	orl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3767 0
	movzwl	-12(%ebp),%eax
	movl	%eax, %edx
	sall	$16, %edx
	movl	-12(%ebp), %eax
	shrl	$16, %eax
	andl	$65535, %eax
	orl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3778 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 3779 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3780 0
	movl	$8, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
	.loc 1 3781 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	orl	$-2147483648, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
.L1077:
	.loc 1 3784 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE90:
	.size	decode_vax_d, .-decode_vax_d
	.section	.rodata
	.type	__FUNCTION__.13775, @object
	.size	__FUNCTION__.13775, 13
__FUNCTION__.13775:
	.string	"encode_vax_g"
	.text
	.type	encode_vax_g, @function
encode_vax_g:
.LFB91:
	.loc 1 3791 0
	pushl	%ebp
.LCFI282:
	movl	%esp, %ebp
.LCFI283:
	pushl	%ebx
.LCFI284:
	subl	$36, %esp
.LCFI285:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3792 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$15, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3794 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1081
	cmpl	$1, -24(%ebp)
	jg	.L1083
	cmpl	$0, -24(%ebp)
	je	.L1080
	jmp	.L1079
.L1083:
	cmpl	$3, -24(%ebp)
	jg	.L1079
	jmp	.L1082
.L1080:
	.loc 1 3797 0
	movl	$0, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3798 0
	jmp	.L1084
.L1082:
	.loc 1 3802 0
	movl	-8(%ebp), %eax
	orl	$-32769, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3803 0
	movl	$-1, -12(%ebp)
	.loc 1 3804 0
	jmp	.L1084
.L1081:
	.loc 1 3816 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3817 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3818 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sall	$21, %edx
	movl	-12(%ebp), %eax
	shrl	$11, %eax
	orl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3819 0
	movl	-16(%ebp), %eax
	shrl	$11, %eax
	andl	$1048575, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3824 0
	movl	-16(%ebp), %eax
	rorl	$16, %eax
	andl	$-65521, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3825 0
	rorl	$16, -12(%ebp)
	.loc 1 3828 0
	movl	-8(%ebp), %eax
	orl	%eax, -16(%ebp)
	.loc 1 3829 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	addl	$1024, %eax
	sall	$4, %eax
	orl	%eax, -16(%ebp)
	.loc 1 3830 0
	jmp	.L1084
.L1079:
	.loc 1 3833 0
	leal	__FUNCTION__.13775@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3833, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1084:
	.loc 1 3836 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1085
	.loc 1 3837 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L1088
.L1085:
	.loc 1 3839 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L1088:
	.loc 1 3840 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE91:
	.size	encode_vax_g, .-encode_vax_g
	.type	decode_vax_g, @function
decode_vax_g:
.LFB92:
	.loc 1 3847 0
	pushl	%ebp
.LCFI286:
	movl	%esp, %ebp
.LCFI287:
	pushl	%ebx
.LCFI288:
	subl	$28, %esp
.LCFI289:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3851 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1090
	.loc 1 3852 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1092
.L1090:
	.loc 1 3854 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1092:
	.loc 1 3858 0
	movl	-16(%ebp), %eax
	shrl	$4, %eax
	andl	$2047, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3860 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 3862 0
	cmpl	$0, -8(%ebp)
	je	.L1095
	.loc 1 3864 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 3865 0
	movl	-16(%ebp), %eax
	shrl	$15, %eax
	andl	$1, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 3866 0
	movl	-8(%ebp), %eax
	subl	$1024, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 3870 0
	movl	-16(%ebp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	sall	$16, %edx
	movl	-16(%ebp), %eax
	shrl	$16, %eax
	andl	$65535, %eax
	orl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3871 0
	movzwl	-12(%ebp),%eax
	movl	%eax, %edx
	sall	$16, %edx
	movl	-12(%ebp), %eax
	shrl	$16, %eax
	andl	$65535, %eax
	orl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3882 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 3883 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 3884 0
	movl	$11, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	lshift_significand
	.loc 1 3885 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	orl	$-2147483648, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
.L1095:
	.loc 1 3888 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE92:
	.size	decode_vax_g, .-decode_vax_g
.globl vax_f_format
	.section	.data.rel.ro.local
	.align 32
	.type	vax_f_format, @object
	.size	vax_f_format, 36
vax_f_format:
	.long	encode_vax_f
	.long	decode_vax_f
	.long	2
	.long	1
	.long	24
	.long	-127
	.long	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
.globl vax_d_format
	.align 32
	.type	vax_d_format, @object
	.size	vax_d_format, 36
vax_d_format:
	.long	encode_vax_d
	.long	decode_vax_d
	.long	2
	.long	1
	.long	56
	.long	-127
	.long	127
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
.globl vax_g_format
	.align 32
	.type	vax_g_format, @object
	.size	vax_g_format, 36
vax_g_format:
	.long	encode_vax_g
	.long	decode_vax_g
	.long	2
	.long	1
	.long	53
	.long	-1023
	.long	1023
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.section	.rodata
	.type	__FUNCTION__.13875, @object
	.size	__FUNCTION__.13875, 19
__FUNCTION__.13875:
	.string	"encode_i370_single"
	.text
	.type	encode_i370_single, @function
encode_i370_single:
.LFB93:
	.loc 1 3959 0
	pushl	%ebp
.LCFI290:
	movl	%esp, %ebp
.LCFI291:
	pushl	%ebx
.LCFI292:
	subl	$36, %esp
.LCFI293:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3962 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$31, %eax
	movl	%eax, -20(%ebp)
	.loc 1 3964 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1099
	cmpl	$1, -24(%ebp)
	jg	.L1101
	cmpl	$0, -24(%ebp)
	je	.L1098
	jmp	.L1097
.L1101:
	cmpl	$3, -24(%ebp)
	jg	.L1097
	jmp	.L1100
.L1098:
	.loc 1 3967 0
	movl	$0, -8(%ebp)
	.loc 1 3968 0
	jmp	.L1102
.L1100:
	.loc 1 3972 0
	movl	-20(%ebp), %eax
	orl	$2147483647, %eax
	movl	%eax, -8(%ebp)
	.loc 1 3973 0
	jmp	.L1102
.L1099:
	.loc 1 3976 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	shrl	$8, %eax
	andl	$16777215, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3977 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	addl	$64, %eax
	sall	$24, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3978 0
	movl	-16(%ebp), %eax
	orl	-20(%ebp), %eax
	orl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3979 0
	jmp	.L1102
.L1097:
	.loc 1 3982 0
	leal	__FUNCTION__.13875@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3982, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1102:
	.loc 1 3985 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3986 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE93:
	.size	encode_i370_single, .-encode_i370_single
	.type	decode_i370_single, @function
decode_i370_single:
.LFB94:
	.loc 1 3993 0
	pushl	%ebp
.LCFI294:
	movl	%esp, %ebp
.LCFI295:
	subl	$24, %esp
.LCFI296:
	.loc 1 3994 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3997 0
	movl	-8(%ebp), %eax
	shrl	$31, %eax
	andl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3998 0
	movl	-8(%ebp), %eax
	shrl	$24, %eax
	andl	$127, %eax
	movl	%eax, -4(%ebp)
	.loc 1 3999 0
	movl	-8(%ebp), %eax
	andl	$16777215, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4001 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 4003 0
	cmpl	$0, -4(%ebp)
	jne	.L1105
	cmpl	$0, -12(%ebp)
	je	.L1108
.L1105:
	.loc 1 4005 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 4006 0
	movl	-16(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 4007 0
	movl	-4(%ebp), %eax
	sall	$2, %eax
	subl	$256, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 4008 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	sall	$8, %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 4009 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
.L1108:
	.loc 1 4011 0
	leave
	ret
.LFE94:
	.size	decode_i370_single, .-decode_i370_single
	.section	.rodata
	.type	__FUNCTION__.13928, @object
	.size	__FUNCTION__.13928, 19
__FUNCTION__.13928:
	.string	"encode_i370_double"
	.text
	.type	encode_i370_double, @function
encode_i370_double:
.LFB95:
	.loc 1 4018 0
	pushl	%ebp
.LCFI297:
	movl	%esp, %ebp
.LCFI298:
	pushl	%ebx
.LCFI299:
	subl	$36, %esp
.LCFI300:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4021 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$31, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4023 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1112
	cmpl	$1, -24(%ebp)
	jg	.L1114
	cmpl	$0, -24(%ebp)
	je	.L1111
	jmp	.L1110
.L1114:
	cmpl	$3, -24(%ebp)
	jg	.L1110
	jmp	.L1113
.L1111:
	.loc 1 4026 0
	movl	$0, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4027 0
	jmp	.L1115
.L1113:
	.loc 1 4031 0
	movl	-20(%ebp), %eax
	orl	$2147483647, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4032 0
	movl	$-1, -8(%ebp)
	.loc 1 4033 0
	jmp	.L1115
.L1112:
	.loc 1 4044 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4045 0
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4046 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	shrl	$8, %edx
	movl	-12(%ebp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4047 0
	shrl	$8, -12(%ebp)
	.loc 1 4050 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	addl	$64, %eax
	sall	$24, %eax
	movl	%eax, -16(%ebp)
	.loc 1 4051 0
	movl	-16(%ebp), %eax
	orl	-20(%ebp), %eax
	orl	%eax, -12(%ebp)
	.loc 1 4052 0
	jmp	.L1115
.L1110:
	.loc 1 4055 0
	leal	__FUNCTION__.13928@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4055, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1115:
	.loc 1 4058 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1116
	.loc 1 4059 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L1119
.L1116:
	.loc 1 4061 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L1119:
	.loc 1 4062 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE95:
	.size	encode_i370_double, .-encode_i370_double
	.type	decode_i370_double, @function
decode_i370_double:
.LFB96:
	.loc 1 4069 0
	pushl	%ebp
.LCFI301:
	movl	%esp, %ebp
.LCFI302:
	pushl	%ebx
.LCFI303:
	subl	$20, %esp
.LCFI304:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4073 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1121
	.loc 1 4074 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1123
.L1121:
	.loc 1 4076 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1123:
	.loc 1 4078 0
	movl	-16(%ebp), %eax
	shrl	$31, %eax
	andl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4079 0
	movl	-16(%ebp), %eax
	shrl	$24, %eax
	andl	$127, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4080 0
	andl	$16777215, -16(%ebp)
	.loc 1 4083 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 4085 0
	cmpl	$0, -8(%ebp)
	jne	.L1124
	cmpl	$0, -16(%ebp)
	jne	.L1124
	cmpl	$0, -12(%ebp)
	je	.L1128
.L1124:
	.loc 1 4087 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 4088 0
	movl	-20(%ebp), %eax
	andl	$1, %eax
	movl	12(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, (%ecx)
	.loc 1 4089 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	subl	$152, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 4093 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 4094 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 4099 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	normalize
.L1128:
	.loc 1 4101 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE96:
	.size	decode_i370_double, .-decode_i370_double
.globl i370_single_format
	.section	.data.rel.ro.local
	.align 32
	.type	i370_single_format, @object
	.size	i370_single_format, 36
i370_single_format:
	.long	encode_i370_single
	.long	decode_i370_single
	.long	16
	.long	4
	.long	6
	.long	-64
	.long	63
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
.globl i370_double_format
	.align 32
	.type	i370_double_format, @object
	.size	i370_double_format, 36
i370_double_format:
	.long	encode_i370_double
	.long	decode_i370_double
	.long	16
	.long	4
	.long	14
	.long	-64
	.long	63
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.section	.rodata
	.type	__FUNCTION__.14018, @object
	.size	__FUNCTION__.14018, 18
__FUNCTION__.14018:
	.string	"encode_c4x_single"
	.text
	.type	encode_c4x_single, @function
encode_c4x_single:
.LFB97:
	.loc 1 4168 0
	pushl	%ebp
.LCFI305:
	movl	%esp, %ebp
.LCFI306:
	pushl	%ebx
.LCFI307:
	subl	$36, %esp
.LCFI308:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4171 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1132
	cmpl	$1, -24(%ebp)
	jg	.L1134
	cmpl	$0, -24(%ebp)
	je	.L1131
	jmp	.L1130
.L1134:
	cmpl	$3, -24(%ebp)
	jg	.L1130
	jmp	.L1133
.L1131:
	.loc 1 4174 0
	movl	$-128, -12(%ebp)
	.loc 1 4175 0
	movl	$0, -8(%ebp)
	.loc 1 4176 0
	jmp	.L1135
.L1133:
	.loc 1 4180 0
	movl	$127, -12(%ebp)
	.loc 1 4181 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	$8388608, %eax
	subl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4182 0
	jmp	.L1135
.L1132:
	.loc 1 4185 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4186 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	shrl	$8, %eax
	andl	$8388607, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4187 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1135
	.loc 1 4189 0
	cmpl	$0, -8(%ebp)
	je	.L1138
	.loc 1 4190 0
	negl	-8(%ebp)
	jmp	.L1140
.L1138:
	.loc 1 4192 0
	subl	$1, -12(%ebp)
.L1140:
	.loc 1 4193 0
	orl	$8388608, -8(%ebp)
	.loc 1 4195 0
	jmp	.L1135
.L1130:
	.loc 1 4198 0
	leal	__FUNCTION__.14018@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4198, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1135:
	.loc 1 4201 0
	movzbl	-12(%ebp),%eax
	movl	%eax, %edx
	sall	$24, %edx
	movl	-8(%ebp), %eax
	andl	$16777215, %eax
	orl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 4202 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4203 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE97:
	.size	encode_c4x_single, .-encode_c4x_single
	.type	decode_c4x_single, @function
decode_c4x_single:
.LFB98:
	.loc 1 4210 0
	pushl	%ebp
.LCFI309:
	movl	%esp, %ebp
.LCFI310:
	subl	$16, %esp
.LCFI311:
	.loc 1 4211 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4215 0
	movl	-16(%ebp), %eax
	shrl	$24, %eax
	andl	$255, %eax
	xorb	$-128, %al
	addl	$-128, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4216 0
	movl	-16(%ebp), %eax
	andl	$16777215, %eax
	xorl	$8388608, %eax
	subl	$8388608, %eax
	movl	%eax, -4(%ebp)
	.loc 1 4218 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 4220 0
	cmpl	$-128, -8(%ebp)
	je	.L1149
	.loc 1 4222 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 4224 0
	movl	-4(%ebp), %eax
	andl	$8388607, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4225 0
	cmpl	$0, -4(%ebp)
	jns	.L1145
	.loc 1 4227 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %edx
	orl	$4, %edx
	movb	%dl, (%eax)
	.loc 1 4228 0
	cmpl	$0, -12(%ebp)
	je	.L1147
	.loc 1 4229 0
	negl	-12(%ebp)
	jmp	.L1145
.L1147:
	.loc 1 4231 0
	addl	$1, -8(%ebp)
.L1145:
	.loc 1 4233 0
	movl	-12(%ebp), %eax
	sall	$8, %eax
	orl	$-2147483648, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4235 0
	movl	-8(%ebp), %eax
	addl	$1, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 4236 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 20(%edx)
.L1149:
	.loc 1 4238 0
	leave
	ret
.LFE98:
	.size	decode_c4x_single, .-decode_c4x_single
	.section	.rodata
	.type	__FUNCTION__.14082, @object
	.size	__FUNCTION__.14082, 20
__FUNCTION__.14082:
	.string	"encode_c4x_extended"
	.text
	.type	encode_c4x_extended, @function
encode_c4x_extended:
.LFB99:
	.loc 1 4245 0
	pushl	%ebp
.LCFI312:
	movl	%esp, %ebp
.LCFI313:
	pushl	%ebx
.LCFI314:
	subl	$36, %esp
.LCFI315:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4248 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$1, -24(%ebp)
	je	.L1153
	cmpl	$1, -24(%ebp)
	jg	.L1155
	cmpl	$0, -24(%ebp)
	je	.L1152
	jmp	.L1151
.L1155:
	cmpl	$3, -24(%ebp)
	jg	.L1151
	jmp	.L1154
.L1152:
	.loc 1 4251 0
	movl	$-128, -12(%ebp)
	.loc 1 4252 0
	movl	$0, -8(%ebp)
	.loc 1 4253 0
	jmp	.L1156
.L1154:
	.loc 1 4257 0
	movl	$127, -12(%ebp)
	.loc 1 4258 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	$-2147483648, %eax
	subl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4259 0
	jmp	.L1156
.L1153:
	.loc 1 4262 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	sarl	$3, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4264 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4267 0
	andl	$2147483647, -8(%ebp)
	.loc 1 4269 0
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1156
	.loc 1 4271 0
	cmpl	$0, -8(%ebp)
	je	.L1159
	.loc 1 4272 0
	negl	-8(%ebp)
	jmp	.L1161
.L1159:
	.loc 1 4274 0
	subl	$1, -12(%ebp)
.L1161:
	.loc 1 4275 0
	orl	$-2147483648, -8(%ebp)
	.loc 1 4277 0
	jmp	.L1156
.L1151:
	.loc 1 4280 0
	leal	__FUNCTION__.14082@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4280, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1156:
	.loc 1 4283 0
	movzbl	-12(%ebp),%eax
	sall	$24, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4286 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1162
	.loc 1 4287 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$4, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L1165
.L1162:
	.loc 1 4289 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L1165:
	.loc 1 4290 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE99:
	.size	encode_c4x_extended, .-encode_c4x_extended
	.type	decode_c4x_extended, @function
decode_c4x_extended:
.LFB100:
	.loc 1 4297 0
	pushl	%ebp
.LCFI316:
	movl	%esp, %ebp
.LCFI317:
	pushl	%ebx
.LCFI318:
	subl	$16, %esp
.LCFI319:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4301 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1167
	.loc 1 4302 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1169
.L1167:
	.loc 1 4304 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	16(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L1169:
	.loc 1 4306 0
	movl	-12(%ebp), %eax
	sarl	$24, %eax
	andl	$128, %eax
	addl	$-128, %eax
	movl	%eax, -12(%ebp)
	.loc 1 4307 0
	movl	-8(%ebp), %eax
	xorl	$-2147483648, %eax
	subl	$2147483648, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4309 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	addl	$4, %eax
	movl	%edx, (%eax)
	.loc 1 4311 0
	cmpl	$-128, -12(%ebp)
	je	.L1176
	.loc 1 4313 0
	movl	12(%ebp), %edx
	movzbl	(%edx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, (%edx)
	.loc 1 4315 0
	movl	-8(%ebp), %eax
	andl	$2147483647, %eax
	movl	%eax, -16(%ebp)
	.loc 1 4316 0
	cmpl	$0, -8(%ebp)
	jns	.L1172
	.loc 1 4318 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %edx
	orl	$4, %edx
	movb	%dl, (%eax)
	.loc 1 4319 0
	cmpl	$0, -16(%ebp)
	je	.L1174
	.loc 1 4320 0
	negl	-16(%ebp)
	jmp	.L1172
.L1174:
	.loc 1 4322 0
	addl	$1, -12(%ebp)
.L1172:
	.loc 1 4326 0
	orl	$-2147483648, -16(%ebp)
	.loc 1 4328 0
	movl	-12(%ebp), %eax
	addl	$1, %eax
	sall	$3, %eax
	sarl	$3, %eax
	movl	12(%ebp), %edx
	leal	0(,%eax,8), %ecx
	movl	(%edx), %eax
	andl	$7, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 4329 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
.L1176:
	.loc 1 4331 0
	addl	$16, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE100:
	.size	decode_c4x_extended, .-decode_c4x_extended
.globl c4x_single_format
	.section	.data.rel.ro.local
	.align 32
	.type	c4x_single_format, @object
	.size	c4x_single_format, 36
c4x_single_format:
	.long	encode_c4x_single
	.long	decode_c4x_single
	.long	2
	.long	1
	.long	24
	.long	-126
	.long	128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
.globl c4x_extended_format
	.align 32
	.type	c4x_extended_format, @object
	.size	c4x_extended_format, 36
c4x_extended_format:
	.long	encode_c4x_extended
	.long	decode_c4x_extended
	.long	2
	.long	1
	.long	32
	.long	-126
	.long	128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.text
	.type	encode_internal, @function
encode_internal:
.LFB101:
	.loc 1 4381 0
	pushl	%ebp
.LCFI320:
	movl	%esp, %ebp
.LCFI321:
	.loc 1 4382 0
	movl	12(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 4383 0
	popl	%ebp
	ret
.LFE101:
	.size	encode_internal, .-encode_internal
	.type	decode_internal, @function
decode_internal:
.LFB102:
	.loc 1 4390 0
	pushl	%ebp
.LCFI322:
	movl	%esp, %ebp
.LCFI323:
	.loc 1 4391 0
	movl	12(%ebp), %ecx
	movl	16(%ebp), %edx
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
	.loc 1 4392 0
	popl	%ebp
	ret
.LFE102:
	.size	decode_internal, .-decode_internal
.globl real_internal_format
	.section	.data.rel.ro.local
	.align 32
	.type	real_internal_format, @object
	.size	real_internal_format, 36
real_internal_format:
	.long	encode_internal
	.long	decode_internal
	.long	2
	.long	1
	.long	158
	.long	-268435455
	.long	268435455
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.zero	3
.globl real_format_for_mode
	.section	.data.rel,"aw",@progbits
	.align 4
	.type	real_format_for_mode, @object
	.size	real_format_for_mode, 28
real_format_for_mode:
	.long	0
	.long	0
	.long	0
	.long	ieee_single_format
	.long	ieee_double_format
	.long	0
	.long	ieee_quad_format
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI6-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI9-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI10
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI13-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI16-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI18-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI20-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI21
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI25-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI27-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI28-.LCFI27
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI30-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI33-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI36-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI37
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI41-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI42
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI45-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI48-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI49
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI52-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI55-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI58-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI59
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI62-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI65-.LCFI63
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI66-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI69-.LCFI67
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI70-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI71
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI75-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI76
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI79-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI80
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI83-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI84
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI87-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI89-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI91-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI93-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI96-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI99-.LCFI97
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI100-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI101
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI104-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI105
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI110-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI111
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI116-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI119-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI120
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI123-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI126-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI127
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI131-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI132
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI137-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI138
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI141-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI145-.LCFI142
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI146-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI151-.LCFI147
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI152-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI156-.LCFI153
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI157-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI158-.LCFI157
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI162-.LCFI158
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI163-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI166-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI169-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI170-.LCFI169
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI172-.LCFI170
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI173-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI174-.LCFI173
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI175-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI176-.LCFI175
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI177-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI178-.LCFI177
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI178
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI182-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI185-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI186-.LCFI185
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI188-.LCFI186
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI189-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI190-.LCFI189
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI193-.LCFI190
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI194-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI195-.LCFI194
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI197-.LCFI195
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI198-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI199-.LCFI198
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI201-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI204-.LCFI202
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI205-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI206-.LCFI205
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI208-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI211-.LCFI209
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI212-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI213-.LCFI212
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI215-.LCFI213
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI216-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI217-.LCFI216
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI219-.LCFI217
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI220-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI221-.LCFI220
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI223-.LCFI221
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI224-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI225-.LCFI224
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI227-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI228-.LCFI227
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI230-.LCFI228
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI231-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI232-.LCFI231
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI234-.LCFI232
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.byte	0x4
	.long	.LCFI235-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI238-.LCFI236
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.byte	0x4
	.long	.LCFI239-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI240-.LCFI239
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI242-.LCFI240
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.byte	0x4
	.long	.LCFI243-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI244-.LCFI243
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI246-.LCFI244
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.byte	0x4
	.long	.LCFI247-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI248-.LCFI247
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI250-.LCFI248
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.byte	0x4
	.long	.LCFI251-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI252-.LCFI251
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI254-.LCFI252
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.byte	0x4
	.long	.LCFI255-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI256-.LCFI255
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI258-.LCFI256
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.byte	0x4
	.long	.LCFI259-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI260-.LCFI259
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI262-.LCFI260
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.byte	0x4
	.long	.LCFI263-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI264-.LCFI263
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI266-.LCFI264
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.byte	0x4
	.long	.LCFI267-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI268-.LCFI267
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI270-.LCFI268
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.byte	0x4
	.long	.LCFI271-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI272-.LCFI271
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.byte	0x4
	.long	.LCFI274-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI275-.LCFI274
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI275
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.byte	0x4
	.long	.LCFI278-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI279-.LCFI278
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI281-.LCFI279
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.byte	0x4
	.long	.LCFI282-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI285-.LCFI283
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.byte	0x4
	.long	.LCFI286-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI287-.LCFI286
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI289-.LCFI287
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.byte	0x4
	.long	.LCFI290-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI291-.LCFI290
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI293-.LCFI291
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.byte	0x4
	.long	.LCFI294-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI295-.LCFI294
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.byte	0x4
	.long	.LCFI297-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI298-.LCFI297
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI300-.LCFI298
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.byte	0x4
	.long	.LCFI301-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI302-.LCFI301
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI304-.LCFI302
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.byte	0x4
	.long	.LCFI305-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI306-.LCFI305
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI308-.LCFI306
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.byte	0x4
	.long	.LCFI309-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI310-.LCFI309
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE164:
.LSFDE166:
	.long	.LEFDE166-.LASFDE166
.LASFDE166:
	.long	.Lframe0
	.long	.LFB99
	.long	.LFE99-.LFB99
	.byte	0x4
	.long	.LCFI312-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI313-.LCFI312
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI315-.LCFI313
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE166:
.LSFDE168:
	.long	.LEFDE168-.LASFDE168
.LASFDE168:
	.long	.Lframe0
	.long	.LFB100
	.long	.LFE100-.LFB100
	.byte	0x4
	.long	.LCFI316-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI317-.LCFI316
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI319-.LCFI317
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE168:
.LSFDE170:
	.long	.LEFDE170-.LASFDE170
.LASFDE170:
	.long	.Lframe0
	.long	.LFB101
	.long	.LFE101-.LFB101
	.byte	0x4
	.long	.LCFI320-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI321-.LCFI320
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE170:
.LSFDE172:
	.long	.LEFDE172-.LASFDE172
.LASFDE172:
	.long	.Lframe0
	.long	.LFB102
	.long	.LFE102-.LFB102
	.byte	0x4
	.long	.LCFI322-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI323-.LCFI322
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE172:
	.file 2 "../../../kgccfe/gnu/tree.h"
	.file 3 "../../../kgccfe/gnu/real.h"
	.file 4 "../../../kgccfe/gnu/machmode.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 6 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 7 "../../../include/gnu/safe-ctype.h"
	.file 8 "../../../include/gnu/libiberty.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB19-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB20-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB21-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB31-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB33-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI14-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB18-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI16-.Ltext0
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI17-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB15-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI18-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI19-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB34-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI20-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI21-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB16-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI25-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI26-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI27-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI28-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI30-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI31-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB23-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI33-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI34-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB35-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI36-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI37-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB36-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI41-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI42-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB32-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB22-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB26-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI52-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI53-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB28-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI55-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI56-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB37-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI58-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI59-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB38-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI62-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI63-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB39-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI66-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI67-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB40-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI70-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI71-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB41-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB42-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI79-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI80-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB43-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI83-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI84-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB44-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB45-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI90-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB46-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI92-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB47-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI93-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI94-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB48-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB49-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB50-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI104-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI105-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB51-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI110-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI111-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB52-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI116-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI117-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB53-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI119-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI120-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB27-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI123-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI124-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB54-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB55-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI131-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI132-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB56-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI137-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI138-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB57-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI141-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI142-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB58-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI146-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI147-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB59-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI152-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI153-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB60-.Ltext0
	.long	.LCFI157-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI157-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI158-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB61-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI163-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI164-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB62-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI166-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI167-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB63-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI169-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI170-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB17-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI173-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI174-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB64-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI175-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI176-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB65-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI177-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI178-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB30-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI182-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI183-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB66-.Ltext0
	.long	.LCFI185-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI185-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI186-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB67-.Ltext0
	.long	.LCFI189-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI189-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI190-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB68-.Ltext0
	.long	.LCFI194-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI194-.Ltext0
	.long	.LCFI195-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI195-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB69-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI198-.Ltext0
	.long	.LCFI199-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI199-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB70-.Ltext0
	.long	.LCFI201-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI201-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI202-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB71-.Ltext0
	.long	.LCFI205-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI205-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI206-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB72-.Ltext0
	.long	.LCFI208-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI208-.Ltext0
	.long	.LCFI209-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI209-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB73-.Ltext0
	.long	.LCFI212-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI212-.Ltext0
	.long	.LCFI213-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI213-.Ltext0
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB74-.Ltext0
	.long	.LCFI216-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI216-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI217-.Ltext0
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB75-.Ltext0
	.long	.LCFI220-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI220-.Ltext0
	.long	.LCFI221-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI221-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB76-.Ltext0
	.long	.LCFI224-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI224-.Ltext0
	.long	.LCFI225-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI225-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB77-.Ltext0
	.long	.LCFI227-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI227-.Ltext0
	.long	.LCFI228-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI228-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB78-.Ltext0
	.long	.LCFI231-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI231-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI232-.Ltext0
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST63:
	.long	.LFB79-.Ltext0
	.long	.LCFI235-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI235-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI236-.Ltext0
	.long	.LFE79-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST64:
	.long	.LFB80-.Ltext0
	.long	.LCFI239-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI239-.Ltext0
	.long	.LCFI240-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI240-.Ltext0
	.long	.LFE80-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST65:
	.long	.LFB81-.Ltext0
	.long	.LCFI243-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI243-.Ltext0
	.long	.LCFI244-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI244-.Ltext0
	.long	.LFE81-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST66:
	.long	.LFB82-.Ltext0
	.long	.LCFI247-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI247-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI248-.Ltext0
	.long	.LFE82-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST67:
	.long	.LFB83-.Ltext0
	.long	.LCFI251-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI251-.Ltext0
	.long	.LCFI252-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI252-.Ltext0
	.long	.LFE83-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST68:
	.long	.LFB84-.Ltext0
	.long	.LCFI255-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI255-.Ltext0
	.long	.LCFI256-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI256-.Ltext0
	.long	.LFE84-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST69:
	.long	.LFB85-.Ltext0
	.long	.LCFI259-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI259-.Ltext0
	.long	.LCFI260-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI260-.Ltext0
	.long	.LFE85-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST70:
	.long	.LFB86-.Ltext0
	.long	.LCFI263-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI263-.Ltext0
	.long	.LCFI264-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI264-.Ltext0
	.long	.LFE86-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST71:
	.long	.LFB87-.Ltext0
	.long	.LCFI267-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI267-.Ltext0
	.long	.LCFI268-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI268-.Ltext0
	.long	.LFE87-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST72:
	.long	.LFB88-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI271-.Ltext0
	.long	.LCFI272-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI272-.Ltext0
	.long	.LFE88-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST73:
	.long	.LFB89-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI274-.Ltext0
	.long	.LCFI275-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI275-.Ltext0
	.long	.LFE89-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST74:
	.long	.LFB90-.Ltext0
	.long	.LCFI278-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI278-.Ltext0
	.long	.LCFI279-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI279-.Ltext0
	.long	.LFE90-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST75:
	.long	.LFB91-.Ltext0
	.long	.LCFI282-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI282-.Ltext0
	.long	.LCFI283-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI283-.Ltext0
	.long	.LFE91-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST76:
	.long	.LFB92-.Ltext0
	.long	.LCFI286-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI286-.Ltext0
	.long	.LCFI287-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI287-.Ltext0
	.long	.LFE92-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST77:
	.long	.LFB93-.Ltext0
	.long	.LCFI290-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI290-.Ltext0
	.long	.LCFI291-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI291-.Ltext0
	.long	.LFE93-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST78:
	.long	.LFB94-.Ltext0
	.long	.LCFI294-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI294-.Ltext0
	.long	.LCFI295-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI295-.Ltext0
	.long	.LFE94-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST79:
	.long	.LFB95-.Ltext0
	.long	.LCFI297-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI297-.Ltext0
	.long	.LCFI298-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI298-.Ltext0
	.long	.LFE95-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST80:
	.long	.LFB96-.Ltext0
	.long	.LCFI301-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI301-.Ltext0
	.long	.LCFI302-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI302-.Ltext0
	.long	.LFE96-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST81:
	.long	.LFB97-.Ltext0
	.long	.LCFI305-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI305-.Ltext0
	.long	.LCFI306-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI306-.Ltext0
	.long	.LFE97-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST82:
	.long	.LFB98-.Ltext0
	.long	.LCFI309-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI309-.Ltext0
	.long	.LCFI310-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI310-.Ltext0
	.long	.LFE98-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST83:
	.long	.LFB99-.Ltext0
	.long	.LCFI312-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI312-.Ltext0
	.long	.LCFI313-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI313-.Ltext0
	.long	.LFE99-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST84:
	.long	.LFB100-.Ltext0
	.long	.LCFI316-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI316-.Ltext0
	.long	.LCFI317-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI317-.Ltext0
	.long	.LFE100-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST85:
	.long	.LFB101-.Ltext0
	.long	.LCFI320-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI320-.Ltext0
	.long	.LCFI321-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI321-.Ltext0
	.long	.LFE101-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST86:
	.long	.LFB102-.Ltext0
	.long	.LCFI322-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI322-.Ltext0
	.long	.LCFI323-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI323-.Ltext0
	.long	.LFE102-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3f25
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/real.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0x9f
	.uleb128 0x3
	.long	0xa4
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.string	"size_t"
	.byte	0x5
	.byte	0xd6
	.long	0xb3
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.byte	0x4
	.long	0xa4
	.uleb128 0x7
	.long	0x174
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0x13
	.byte	0x0
	.uleb128 0x9
	.long	0x3bd
	.string	"machine_mode"
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.uleb128 0xa
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xa
	.string	"BImode"
	.sleb128 1
	.uleb128 0xa
	.string	"QImode"
	.sleb128 2
	.uleb128 0xa
	.string	"HImode"
	.sleb128 3
	.uleb128 0xa
	.string	"SImode"
	.sleb128 4
	.uleb128 0xa
	.string	"DImode"
	.sleb128 5
	.uleb128 0xa
	.string	"TImode"
	.sleb128 6
	.uleb128 0xa
	.string	"OImode"
	.sleb128 7
	.uleb128 0xa
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xa
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xa
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xa
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xa
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xa
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xa
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xa
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xa
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xa
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xa
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xa
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xa
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xa
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xa
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xa
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xa
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xa
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xa
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xa
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xa
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xa
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xa
	.string	"COImode"
	.sleb128 30
	.uleb128 0xa
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xa
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xa
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xa
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xa
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xa
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xa
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xa
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xa
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xa
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xa
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xa
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xa
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xa
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xa
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xa
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xa
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xa
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xa
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xa
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xa
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xa
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xa
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xa
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x9
	.long	0xcdf
	.string	"tree_code"
	.byte	0x4
	.byte	0x2
	.byte	0x27
	.uleb128 0xa
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0xa
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0xa
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0xa
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0xa
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0xa
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0xa
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0xa
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0xa
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0xa
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0xa
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0xa
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0xa
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0xa
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0xa
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0xa
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0xa
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0xa
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0xa
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0xa
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0xa
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0xa
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0xa
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0xa
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0xa
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0xa
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0xa
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0xa
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0xa
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0xa
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0xa
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0xa
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0xa
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0xa
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0xa
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0xa
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0xa
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0xa
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0xa
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0xa
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0xa
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0xa
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0xa
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0xa
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0xa
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0xa
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0xa
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0xa
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0xa
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0xa
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0xa
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0xa
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0xa
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0xa
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0xa
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0xa
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0xa
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0xa
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0xa
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0xa
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0xa
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0xa
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0xa
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0xa
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0xa
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0xa
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0xa
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0xa
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0xa
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0xa
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0xa
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0xa
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0xa
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0xa
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0xa
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0xa
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0xa
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0xa
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0xa
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0xa
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0xa
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0xa
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0xa
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0xa
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0xa
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0xa
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0xa
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0xa
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0xa
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0xa
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0xa
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0xa
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0xa
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0xa
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0xa
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0xa
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0xa
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0xa
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0xa
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0xa
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0xa
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0xa
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0xa
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0xa
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0xa
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0xa
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0xa
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0xa
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0xa
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0xa
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0xa
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0xa
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0xa
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0xa
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0xa
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0xa
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0xa
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0xa
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0xa
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0xa
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0xa
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0xa
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0xa
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0xa
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0xa
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0xa
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0xa
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0xa
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0xa
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0xa
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0xa
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0xa
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0xa
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0xa
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0xa
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0xa
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0xa
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0xa
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0xa
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0xa
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0xa
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0xa
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0xa
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0xa
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0xa
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0xa
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0xa
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0xa
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0xa
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0xa
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0xa
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0xa
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0xb
	.long	0xd37
	.string	"real_value"
	.byte	0x18
	.byte	0x2
	.value	0x305
	.uleb128 0xc
	.string	"class"
	.byte	0x3
	.byte	0x37
	.long	0xd46
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.long	.LASF1
	.byte	0x3
	.byte	0x39
	.long	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"exp"
	.byte	0x3
	.byte	0x3a
	.long	0xac
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"sig"
	.byte	0x3
	.byte	0x3b
	.long	0xd8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xcdf
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x9
	.long	0xd8c
	.string	"real_value_class"
	.byte	0x4
	.byte	0x3
	.byte	0x24
	.uleb128 0xa
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0xa
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0xa
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0xa
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.long	0xd9c
	.long	0xf6
	.uleb128 0x8
	.long	0xba
	.byte	0x4
	.byte	0x0
	.uleb128 0xf
	.long	0xe85
	.string	"real_format"
	.byte	0x24
	.byte	0x3
	.byte	0x74
	.uleb128 0xe
	.string	"encode"
	.byte	0x3
	.byte	0x76
	.long	0xeb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"decode"
	.byte	0x3
	.byte	0x78
	.long	0xede
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"b"
	.byte	0x3
	.byte	0x7c
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"log2_b"
	.byte	0x3
	.byte	0x7f
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"p"
	.byte	0x3
	.byte	0x82
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"emin"
	.byte	0x3
	.byte	0x85
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"emax"
	.byte	0x3
	.byte	0x88
	.long	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"has_nans"
	.byte	0x3
	.byte	0x8b
	.long	0xd3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"has_inf"
	.byte	0x3
	.byte	0x8c
	.long	0xd3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.uleb128 0xe
	.string	"has_denorm"
	.byte	0x3
	.byte	0x8d
	.long	0xd3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xe
	.string	"has_signed_zero"
	.byte	0x3
	.byte	0x8e
	.long	0xd3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xe
	.string	"qnan_msb_set"
	.byte	0x3
	.byte	0x8f
	.long	0xd3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x10
	.long	0xe9b
	.byte	0x1
	.uleb128 0x11
	.long	0xe9b
	.uleb128 0x11
	.long	0xea6
	.uleb128 0x11
	.long	0xeac
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xea1
	.uleb128 0x3
	.long	0xd9c
	.uleb128 0x2
	.byte	0x4
	.long	0x152
	.uleb128 0x2
	.byte	0x4
	.long	0xeb2
	.uleb128 0x3
	.long	0xcdf
	.uleb128 0x2
	.byte	0x4
	.long	0xe85
	.uleb128 0x10
	.long	0xed3
	.byte	0x1
	.uleb128 0x11
	.long	0xe9b
	.uleb128 0x11
	.long	0xd37
	.uleb128 0x11
	.long	0xed3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xed9
	.uleb128 0x3
	.long	0x152
	.uleb128 0x2
	.byte	0x4
	.long	0xebd
	.uleb128 0x12
	.long	0xf66
	.string	"sticky_rshift_significand"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.long	0xd3d
	.long	.LFB19
	.long	.LFE19
	.long	.LLST0
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0xc7
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0xc8
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.byte	0xc9
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"sticky"
	.byte	0x1
	.byte	0xcb
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xcc
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.string	"ofs"
	.byte	0x1
	.byte	0xcc
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x15
	.long	0xfcc
	.string	"rshift_significand"
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST1
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0xf0
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"a"
	.byte	0x1
	.byte	0xf1
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"n"
	.byte	0x1
	.byte	0xf2
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xf4
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.string	"ofs"
	.byte	0x1
	.byte	0xf4
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x16
	.long	0x1038
	.string	"lshift_significand"
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST2
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x10f
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x110
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x111
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x113
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"ofs"
	.byte	0x1
	.value	0x113
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x16
	.long	0x109a
	.string	"clear_significand_below"
	.byte	0x1
	.value	0x1e0
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST3
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1de
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x1df
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1e1
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x1e1
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x1101
	.string	"normalize"
	.byte	0x1
	.value	0x215
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x214
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"shift"
	.byte	0x1
	.value	0x216
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x216
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x217
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x217
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x15
	.long	0x1138
	.string	"get_inf"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST5
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0xb9
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF1
	.byte	0x1
	.byte	0xba
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x15
	.long	0x1170
	.string	"get_zero"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST6
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0x98
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF1
	.byte	0x1
	.byte	0x99
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x16
	.long	0x123f
	.string	"do_add"
	.byte	0x1
	.value	0x244
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST7
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x241
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x242
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x242
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"subtract_p"
	.byte	0x1
	.value	0x243
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x18
	.string	"dexp"
	.byte	0x1
	.value	0x245
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0x245
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x245
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x246
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LASF2
	.byte	0x1
	.value	0x247
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1b
	.long	0x122e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x282
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3c3f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11260
	.byte	0x0
	.uleb128 0x15
	.long	0x1281
	.string	"get_canonical_qnan"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST8
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0xa3
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF1
	.byte	0x1
	.byte	0xa4
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1d
	.long	0x1317
	.string	"sub_significands"
	.byte	0x1
	.value	0x15c
	.byte	0x1
	.long	0xd3d
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x159
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x15a
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x15a
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"carry"
	.byte	0x1
	.value	0x15b
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x15d
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x18
	.string	"ai"
	.byte	0x1
	.value	0x161
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"ri"
	.byte	0x1
	.value	0x162
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x139b
	.string	"neg_significand"
	.byte	0x1
	.value	0x178
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x176
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x177
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"carry"
	.byte	0x1
	.value	0x179
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x17a
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x18
	.string	"ri"
	.byte	0x1
	.value	0x17e
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"ai"
	.byte	0x1
	.value	0x17e
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x1431
	.string	"add_significands"
	.byte	0x1
	.value	0x13c
	.byte	0x1
	.long	0xd3d
	.long	.LFB23
	.long	.LFE23
	.long	.LLST11
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x13a
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x13b
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x13b
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"carry"
	.byte	0x1
	.value	0x13d
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x13e
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x18
	.string	"ai"
	.byte	0x1
	.value	0x142
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"ri"
	.byte	0x1
	.value	0x143
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x1543
	.string	"do_multiply"
	.byte	0x1
	.value	0x2cc
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST12
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x2ca
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x2cb
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x2cb
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0x2cd
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x2cd
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"rr"
	.byte	0x1
	.value	0x2cd
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x2ce
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x2ce
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x2ce
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0x2cf
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x329
	.long	.L152
	.uleb128 0x1b
	.long	0x1532
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x18
	.string	"ai"
	.byte	0x1
	.value	0x31a
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x325
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x18
	.string	"bi"
	.byte	0x1
	.value	0x334
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3c2a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11361
	.byte	0x0
	.uleb128 0x16
	.long	0x15fa
	.string	"do_divide"
	.byte	0x1
	.value	0x34d
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST13
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x34b
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x34c
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x34c
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x34e
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0x34e
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x34f
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"rr"
	.byte	0x1
	.value	0x34f
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF2
	.byte	0x1
	.value	0x350
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x1
	.value	0x395
	.long	.L184
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x393
	.long	.L188
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3c25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11458
	.byte	0x0
	.uleb128 0x1d
	.long	0x16a1
	.string	"div_significands"
	.byte	0x1
	.value	0x1f0
	.byte	0x1
	.long	0xd3d
	.long	.LFB32
	.long	.LFE32
	.long	.LLST14
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1ee
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1ef
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x1ef
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0x1f1
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1f2
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"bit"
	.byte	0x1
	.value	0x1f2
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"msb"
	.byte	0x1
	.value	0x1f3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.long	.LASF2
	.byte	0x1
	.value	0x1f3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.string	"start"
	.byte	0x1
	.value	0x1fe
	.long	.L201
	.byte	0x0
	.uleb128 0x16
	.long	0x16f3
	.string	"lshift_significand_1"
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST15
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x12b
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x12c
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x12e
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0x176b
	.string	"cmp_significands"
	.byte	0x1
	.value	0x196
	.byte	0x1
	.long	0xac
	.long	.LFB26
	.long	.LFE26
	.long	.LLST16
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x195
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x195
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x197
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x18
	.string	"ai"
	.byte	0x1
	.value	0x19b
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"bi"
	.byte	0x1
	.value	0x19c
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x17af
	.string	"set_significand_bit"
	.byte	0x1
	.value	0x1bc
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST17
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1ba
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x1bb
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1d
	.long	0x1823
	.string	"do_compare"
	.byte	0x1
	.value	0x3a9
	.byte	0x1
	.long	0xac
	.long	.LFB37
	.long	.LFE37
	.long	.LLST18
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x3a7
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x3a7
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"nan_result"
	.byte	0x1
	.value	0x3a8
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.value	0x3aa
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3c20
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11518
	.byte	0x0
	.uleb128 0x16
	.long	0x1870
	.string	"do_fix_trunc"
	.byte	0x1
	.value	0x3e2
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST19
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x3e0
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x3e1
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3c1b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11578
	.byte	0x0
	.uleb128 0x21
	.long	0x18f3
	.byte	0x1
	.string	"real_arithmetic"
	.byte	0x1
	.value	0x400
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST20
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x3fd
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"icode"
	.byte	0x1
	.value	0x3fe
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"op0"
	.byte	0x1
	.value	0x3ff
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"op1"
	.byte	0x1
	.value	0x3ff
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x18
	.string	"code"
	.byte	0x1
	.value	0x401
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3c16
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11613
	.byte	0x0
	.uleb128 0x22
	.long	0x195b
	.byte	0x1
	.string	"real_arithmetic2"
	.byte	0x1
	.value	0x440
	.byte	0x1
	.long	0xcdf
	.long	.LFB40
	.long	.LFE40
	.long	.LLST21
	.uleb128 0x17
	.string	"icode"
	.byte	0x1
	.value	0x43e
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"op0"
	.byte	0x1
	.value	0x43f
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"op1"
	.byte	0x1
	.value	0x43f
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.value	0x441
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x22
	.long	0x19d2
	.byte	0x1
	.string	"real_compare"
	.byte	0x1
	.value	0x44a
	.byte	0x1
	.long	0xd3d
	.long	.LFB41
	.long	.LFE41
	.long	.LLST22
	.uleb128 0x17
	.string	"icode"
	.byte	0x1
	.value	0x448
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"op0"
	.byte	0x1
	.value	0x449
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"op1"
	.byte	0x1
	.value	0x449
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"code"
	.byte	0x1
	.value	0x44b
	.long	0x3bd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3c11
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11666
	.byte	0x0
	.uleb128 0x22
	.long	0x1a18
	.byte	0x1
	.string	"real_exponent"
	.byte	0x1
	.value	0x474
	.byte	0x1
	.long	0xac
	.long	.LFB42
	.long	.LFE42
	.long	.LLST23
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x473
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3c0c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11708
	.byte	0x0
	.uleb128 0x21
	.long	0x1a75
	.byte	0x1
	.string	"real_ldexp"
	.byte	0x1
	.value	0x48a
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST24
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x487
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"op0"
	.byte	0x1
	.value	0x488
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"exp"
	.byte	0x1
	.value	0x489
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3bf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11726
	.byte	0x0
	.uleb128 0x22
	.long	0x1aa8
	.byte	0x1
	.string	"real_isinf"
	.byte	0x1
	.value	0x4a7
	.byte	0x1
	.long	0xd3d
	.long	.LFB44
	.long	.LFE44
	.long	.LLST25
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x4a6
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x1adb
	.byte	0x1
	.string	"real_isnan"
	.byte	0x1
	.value	0x4b0
	.byte	0x1
	.long	0xd3d
	.long	.LFB45
	.long	.LFE45
	.long	.LLST26
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x4af
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x1b0e
	.byte	0x1
	.string	"real_isneg"
	.byte	0x1
	.value	0x4b9
	.byte	0x1
	.long	0xd3d
	.long	.LFB46
	.long	.LFE46
	.long	.LLST27
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x4b8
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x1b45
	.byte	0x1
	.string	"real_isnegzero"
	.byte	0x1
	.value	0x4c2
	.byte	0x1
	.long	0xd3d
	.long	.LFB47
	.long	.LFE47
	.long	.LLST28
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x4c1
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x1ba6
	.byte	0x1
	.string	"real_identical"
	.byte	0x1
	.value	0x4cb
	.byte	0x1
	.long	0xd3d
	.long	.LFB48
	.long	.LFE48
	.long	.LLST29
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x4ca
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x4ca
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x4cc
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3bf2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11793
	.byte	0x0
	.uleb128 0x22
	.long	0x1c19
	.byte	0x1
	.string	"exact_real_inverse"
	.byte	0x1
	.value	0x4f1
	.byte	0x1
	.long	0xd3d
	.long	.LFB49
	.long	.LFE49
	.long	.LLST30
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x4ef
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x4f0
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"one"
	.byte	0x1
	.value	0x4f2
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0x4f3
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x4f4
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x22
	.long	0x1c86
	.byte	0x1
	.string	"real_to_integer"
	.byte	0x1
	.value	0x516
	.byte	0x1
	.long	0x127
	.long	.LFB50
	.long	.LFE50
	.long	.LLST31
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x515
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x517
	.long	0x138
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x1
	.value	0x529
	.long	.L392
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x52b
	.long	.L394
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3bed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11865
	.byte	0x0
	.uleb128 0x21
	.long	0x1d40
	.byte	0x1
	.string	"real_to_integer2"
	.byte	0x1
	.value	0x549
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST32
	.uleb128 0x17
	.string	"plow"
	.byte	0x1
	.value	0x547
	.long	0x1d40
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"phigh"
	.byte	0x1
	.value	0x547
	.long	0x1d40
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x548
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x54a
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"low"
	.byte	0x1
	.value	0x54b
	.long	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"high"
	.byte	0x1
	.value	0x54b
	.long	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x54c
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x1
	.value	0x565
	.long	.L407
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x567
	.long	.L409
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3be8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11907
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x127
	.uleb128 0x1d
	.long	0x1dd3
	.string	"rtd_divmod"
	.byte	0x1
	.value	0x595
	.byte	0x1
	.long	0xf6
	.long	.LFB52
	.long	.LFE52
	.long	.LLST33
	.uleb128 0x17
	.string	"num"
	.byte	0x1
	.value	0x594
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"den"
	.byte	0x1
	.value	0x594
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"q"
	.byte	0x1
	.value	0x596
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"msb"
	.byte	0x1
	.value	0x596
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"expn"
	.byte	0x1
	.value	0x597
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"expd"
	.byte	0x1
	.value	0x597
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x20
	.string	"start"
	.byte	0x1
	.value	0x5a3
	.long	.L426
	.byte	0x0
	.uleb128 0x21
	.long	0x1fd9
	.byte	0x1
	.string	"real_to_decimal"
	.byte	0x1
	.value	0x5bf
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST34
	.uleb128 0x17
	.string	"str"
	.byte	0x1
	.value	0x5bb
	.long	0x15e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r_orig"
	.byte	0x1
	.value	0x5bc
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF7
	.byte	0x1
	.value	0x5bd
	.long	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"digits"
	.byte	0x1
	.value	0x5bd
	.long	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.long	.LASF8
	.byte	0x1
	.value	0x5be
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.string	"one"
	.byte	0x1
	.value	0x5c0
	.long	0xeac
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"ten"
	.byte	0x1
	.value	0x5c0
	.long	0xeac
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.value	0x5c1
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"pten"
	.byte	0x1
	.value	0x5c1
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0x5c1
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.value	0x5c1
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x18
	.string	"dec_exp"
	.byte	0x1
	.value	0x5c2
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"cmp_one"
	.byte	0x1
	.value	0x5c2
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.string	"digit"
	.byte	0x1
	.value	0x5c2
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x1
	.value	0x5c3
	.long	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x5c4
	.long	0x15e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"first"
	.byte	0x1
	.value	0x5c4
	.long	0x15e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"last"
	.byte	0x1
	.value	0x5c4
	.long	0x15e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0x5c5
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1b
	.long	0x1f7c
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x18
	.string	"m"
	.byte	0x1
	.value	0x5f9
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	0x1f5e
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x60a
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.byte	0x0
	.uleb128 0x1e
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x18
	.string	"ptentwo"
	.byte	0x1
	.value	0x622
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.long	0x1fc8
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x18
	.string	"m"
	.byte	0x1
	.value	0x634
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x18
	.string	"ptentwo"
	.byte	0x1
	.value	0x651
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"ptenmtwo"
	.byte	0x1
	.value	0x652
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3be3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11987
	.byte	0x0
	.uleb128 0x1d
	.long	0x201f
	.string	"cmp_significand_0"
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.long	0xac
	.long	.LFB27
	.long	.LFE27
	.long	.LLST35
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x1ab
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1ad
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x21
	.long	0x211d
	.byte	0x1
	.string	"real_to_hexadecimal"
	.byte	0x1
	.value	0x6cf
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST36
	.uleb128 0x17
	.string	"str"
	.byte	0x1
	.value	0x6cb
	.long	0x15e
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x6cc
	.long	0xeac
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF7
	.byte	0x1
	.value	0x6cd
	.long	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"digits"
	.byte	0x1
	.value	0x6cd
	.long	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x23
	.long	.LASF8
	.byte	0x1
	.value	0x6ce
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x6d0
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x6d0
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x6d0
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x6d1
	.long	0x15e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"first"
	.byte	0x1
	.value	0x6d1
	.long	0x15e
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"exp_buf"
	.byte	0x1
	.value	0x6d2
	.long	0x211d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x1
	.value	0x6d3
	.long	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"out"
	.byte	0x1
	.value	0x704
	.long	.L552
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3bde
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12182
	.byte	0x0
	.uleb128 0x7
	.long	0x212d
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0xf
	.byte	0x0
	.uleb128 0x21
	.long	0x2231
	.byte	0x1
	.string	"real_from_string"
	.byte	0x1
	.value	0x713
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST37
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x711
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"str"
	.byte	0x1
	.value	0x712
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x714
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0x715
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x1
	.value	0x7be
	.long	.L597
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x7c2
	.long	.L598
	.uleb128 0x1b
	.long	0x21ed
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x18
	.string	"pos"
	.byte	0x1
	.value	0x724
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.value	0x724
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x18
	.string	"exp_neg"
	.byte	0x1
	.value	0x750
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x18
	.string	"ten"
	.byte	0x1
	.value	0x778
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.value	0x779
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x18
	.string	"exp_neg"
	.byte	0x1
	.value	0x798
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0x2287
	.byte	0x1
	.string	"real_from_string2"
	.byte	0x1
	.value	0x7cd
	.byte	0x1
	.long	0xcdf
	.long	.LFB56
	.long	.LFE56
	.long	.LLST38
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x7cb
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x7cc
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.value	0x7ce
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x21
	.long	0x2311
	.byte	0x1
	.string	"real_from_integer"
	.byte	0x1
	.value	0x7e0
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST39
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x7db
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x7dc
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"low"
	.byte	0x1
	.value	0x7dd
	.long	0x138
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"high"
	.byte	0x1
	.value	0x7de
	.long	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"unsigned_p"
	.byte	0x1
	.value	0x7df
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3bd9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12433
	.byte	0x0
	.uleb128 0x1d
	.long	0x23aa
	.string	"ten_to_ptwo"
	.byte	0x1
	.value	0x810
	.byte	0x1
	.long	0xeac
	.long	.LFB58
	.long	.LFE58
	.long	.LLST40
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x80f
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	0x236b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x81a
	.long	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x81b
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1b
	.long	0x2386
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x824
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x18
	.string	"tens"
	.byte	0x1
	.value	0x811
	.long	0x3baf
	.byte	0x5
	.byte	0x3
	.long	tens.12467
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3bd4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12468
	.byte	0x0
	.uleb128 0x1d
	.long	0x2401
	.string	"ten_to_mptwo"
	.byte	0x1
	.value	0x831
	.byte	0x1
	.long	0xeac
	.long	.LFB59
	.long	.LFE59
	.long	.LLST41
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x830
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"tens"
	.byte	0x1
	.value	0x832
	.long	0x3baf
	.byte	0x5
	.byte	0x3
	.long	tens.12504
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3bbf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12505
	.byte	0x0
	.uleb128 0x1d
	.long	0x2455
	.string	"real_digit"
	.byte	0x1
	.value	0x842
	.byte	0x1
	.long	0xeac
	.long	.LFB60
	.long	.LFE60
	.long	.LLST42
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x841
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"num"
	.byte	0x1
	.value	0x843
	.long	0x3b8a
	.byte	0x5
	.byte	0x3
	.long	num.12527
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3baa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12528
	.byte	0x0
	.uleb128 0x16
	.long	0x24d1
	.string	"times_pten"
	.byte	0x1
	.value	0x854
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST43
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x852
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"exp"
	.byte	0x1
	.value	0x853
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"pten"
	.byte	0x1
	.value	0x855
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"rr"
	.byte	0x1
	.value	0x855
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"negative"
	.byte	0x1
	.value	0x856
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x857
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x21
	.long	0x24fe
	.byte	0x1
	.string	"real_inf"
	.byte	0x1
	.value	0x86f
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST44
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x86e
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x25ce
	.byte	0x1
	.string	"real_nan"
	.byte	0x1
	.value	0x87e
	.byte	0x1
	.long	0xd3d
	.long	.LFB63
	.long	.LFE63
	.long	.LLST45
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x87a
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"str"
	.byte	0x1
	.value	0x87b
	.long	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"quiet"
	.byte	0x1
	.value	0x87c
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x87d
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x18
	.string	"fmt"
	.byte	0x1
	.value	0x87f
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	0x25bd
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x18
	.string	"base"
	.byte	0x1
	.value	0x88e
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"d"
	.byte	0x1
	.value	0x88e
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"neg"
	.byte	0x1
	.value	0x88f
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1e
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0x8a6
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12580
	.byte	0x0
	.uleb128 0x15
	.long	0x2610
	.string	"get_canonical_snan"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST46
	.uleb128 0x13
	.string	"r"
	.byte	0x1
	.byte	0xae
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF1
	.byte	0x1
	.byte	0xaf
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x21
	.long	0x264c
	.byte	0x1
	.string	"real_2expN"
	.byte	0x1
	.value	0x8e8
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST47
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x8e6
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x8e7
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x16
	.long	0x27b8
	.string	"round_for_format"
	.byte	0x1
	.value	0x8fd
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST48
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x8fb
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x8fc
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"p2"
	.byte	0x1
	.value	0x8fe
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.string	"np2"
	.byte	0x1
	.value	0x8fe
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x8fe
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x8fe
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"sticky"
	.byte	0x1
	.value	0x8ff
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"guard"
	.byte	0x1
	.value	0x900
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x18
	.string	"lsb"
	.byte	0x1
	.value	0x900
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x18
	.string	"emin2m1"
	.byte	0x1
	.value	0x901
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"emax2"
	.byte	0x1
	.value	0x901
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x1
	.value	0x942
	.long	.L756
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.value	0x939
	.long	.L760
	.uleb128 0x1b
	.long	0x2752
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x18
	.string	"shift"
	.byte	0x1
	.value	0x92d
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x1b
	.long	0x2770
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x18
	.string	"diff"
	.byte	0x1
	.value	0x93c
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x1b
	.long	0x27a7
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0x960
	.long	0xcdf
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1e
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x18
	.string	"shift"
	.byte	0x1
	.value	0x96f
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b70
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12696
	.byte	0x0
	.uleb128 0x1d
	.long	0x280e
	.string	"test_significand_bit"
	.byte	0x1
	.value	0x1d2
	.byte	0x1
	.long	0xd3d
	.long	.LFB30
	.long	.LFE30
	.long	.LLST49
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1d0
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.value	0x1d1
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x1d6
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x21
	.long	0x287a
	.byte	0x1
	.string	"real_convert"
	.byte	0x1
	.value	0x98b
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST50
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x988
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x989
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x98a
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"fmt"
	.byte	0x1
	.value	0x98c
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b6b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12833
	.byte	0x0
	.uleb128 0x22
	.long	0x28d2
	.byte	0x1
	.string	"real_value_truncate"
	.byte	0x1
	.value	0x9a0
	.byte	0x1
	.long	0xcdf
	.long	.LFB67
	.long	.LFE67
	.long	.LLST51
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x99e
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x99f
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.value	0x9a1
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x22
	.long	0x292a
	.byte	0x1
	.string	"exact_real_truncate"
	.byte	0x1
	.value	0x9ac
	.byte	0x1
	.long	0xd3d
	.long	.LFB68
	.long	.LFE68
	.long	.LLST52
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x9aa
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x9ab
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.value	0x9ad
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x22
	.long	0x29a5
	.byte	0x1
	.string	"real_to_target_fmt"
	.byte	0x1
	.value	0x9bd
	.byte	0x1
	.long	0x152
	.long	.LFB69
	.long	.LFE69
	.long	.LLST53
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x9ba
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r_orig"
	.byte	0x1
	.value	0x9bb
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x9bc
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.value	0x9be
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"buf1"
	.byte	0x1
	.value	0x9bf
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x22
	.long	0x2a19
	.byte	0x1
	.string	"real_to_target"
	.byte	0x1
	.value	0x9d2
	.byte	0x1
	.long	0x152
	.long	.LFB70
	.long	.LFE70
	.long	.LLST54
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x9cf
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x9d0
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x9d1
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"fmt"
	.byte	0x1
	.value	0x9d3
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b66
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12875
	.byte	0x0
	.uleb128 0x21
	.long	0x2a70
	.byte	0x1
	.string	"real_from_target_fmt"
	.byte	0x1
	.value	0x9e5
	.byte	0x1
	.long	.LFB71
	.long	.LFE71
	.long	.LLST55
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x9e2
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x9e3
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x9e4
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x21
	.long	0x2ae2
	.byte	0x1
	.string	"real_from_target"
	.byte	0x1
	.value	0x9f0
	.byte	0x1
	.long	.LFB72
	.long	.LFE72
	.long	.LLST56
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x9ed
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x9ee
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x9ef
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"fmt"
	.byte	0x1
	.value	0x9f1
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b51
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12894
	.byte	0x0
	.uleb128 0x22
	.long	0x2b2c
	.byte	0x1
	.string	"significand_size"
	.byte	0x1
	.value	0xa00
	.byte	0x1
	.long	0xac
	.long	.LFB73
	.long	.LFE73
	.long	.LLST57
	.uleb128 0x23
	.long	.LASF6
	.byte	0x1
	.value	0x9ff
	.long	0x174
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"fmt"
	.byte	0x1
	.value	0xa01
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x22
	.long	0x2b88
	.byte	0x1
	.string	"real_hash"
	.byte	0x1
	.value	0xa11
	.byte	0x1
	.long	0xb3
	.long	.LFB74
	.long	.LFE74
	.long	.LLST58
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xa10
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.value	0xa12
	.long	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0xa13
	.long	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b4c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12928
	.byte	0x0
	.uleb128 0x16
	.long	0x2c28
	.string	"encode_ieee_single"
	.byte	0x1
	.value	0xa3f
	.byte	0x1
	.long	.LFB75
	.long	.LFE75
	.long	.LLST59
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xa3c
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xa3d
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xa3e
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x1
	.value	0xa40
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"sig"
	.byte	0x1
	.value	0xa40
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xa40
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x1
	.value	0xa41
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12975
	.byte	0x0
	.uleb128 0x16
	.long	0x2ca9
	.string	"decode_ieee_single"
	.byte	0x1
	.value	0xa76
	.byte	0x1
	.long	.LFB76
	.long	.LFE76
	.long	.LLST60
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xa73
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xa74
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xa75
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x1
	.value	0xa77
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xa78
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xa79
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x2d67
	.string	"encode_ieee_double"
	.byte	0x1
	.value	0xac2
	.byte	0x1
	.long	.LFB77
	.long	.LFE77
	.long	.LLST61
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xabf
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xac0
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xac1
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x1
	.value	0xac3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x1
	.value	0xac3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x1
	.value	0xac3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x1
	.value	0xac3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xac3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x1
	.value	0xac4
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b32
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13080
	.byte	0x0
	.uleb128 0x16
	.long	0x2df7
	.string	"decode_ieee_double"
	.byte	0x1
	.value	0xb12
	.byte	0x1
	.long	.LFB78
	.long	.LFE78
	.long	.LLST62
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xb0f
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xb10
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xb11
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x1
	.value	0xb13
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x1
	.value	0xb13
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xb14
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xb15
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	0x2eb6
	.string	"encode_ieee_extended"
	.byte	0x1
	.value	0xb8c
	.byte	0x1
	.long	.LFB79
	.long	.LFE79
	.long	.LLST63
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xb89
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xb8a
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xb8b
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x1
	.value	0xb8d
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x1
	.value	0xb8d
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x1
	.value	0xb8d
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x1
	.value	0xb8e
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x1b
	.long	0x2ea5
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xbc9
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b2d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13220
	.byte	0x0
	.uleb128 0x16
	.long	0x2f10
	.string	"encode_ieee_extended_128"
	.byte	0x1
	.value	0xbfb
	.byte	0x1
	.long	.LFB80
	.long	.LFE80
	.long	.LLST64
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xbf8
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xbf9
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xbfa
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x16
	.long	0x2fb1
	.string	"decode_ieee_extended"
	.byte	0x1
	.value	0xc05
	.byte	0x1
	.long	.LFB81
	.long	.LFE81
	.long	.LLST65
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xc02
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xc03
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xc04
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x1
	.value	0xc06
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x1
	.value	0xc06
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF14
	.byte	0x1
	.value	0xc06
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xc07
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xc08
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	0x300b
	.string	"decode_ieee_extended_128"
	.byte	0x1
	.value	0xc61
	.byte	0x1
	.long	.LFB82
	.long	.LFE82
	.long	.LLST66
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xc5e
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xc5f
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xc60
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x16
	.long	0x308a
	.string	"encode_ibm_extended"
	.byte	0x1
	.value	0xcba
	.byte	0x1
	.long	.LFB83
	.long	.LFE83
	.long	.LLST67
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xcb7
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xcb8
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xcb9
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0xcbb
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.value	0xcbb
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b18
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13389
	.byte	0x0
	.uleb128 0x16
	.long	0x30f9
	.string	"decode_ibm_extended"
	.byte	0x1
	.value	0xcf4
	.byte	0x1
	.long	.LFB84
	.long	.LFE84
	.long	.LLST68
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xcf1
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xcf2
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xcf3
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0xcf5
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.value	0xcf5
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x16
	.long	0x31c8
	.string	"encode_ieee_quad"
	.byte	0x1
	.value	0xd1f
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.long	.LLST69
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xd1c
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xd1d
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xd1e
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"image3"
	.byte	0x1
	.value	0xd20
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"image2"
	.byte	0x1
	.value	0xd20
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x1
	.value	0xd20
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x1
	.value	0xd20
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xd20
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x1
	.value	0xd21
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.value	0xd22
	.long	0xcdf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3b13
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13473
	.byte	0x0
	.uleb128 0x16
	.long	0x327a
	.string	"decode_ieee_quad"
	.byte	0x1
	.value	0xd93
	.byte	0x1
	.long	.LFB86
	.long	.LFE86
	.long	.LLST70
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xd90
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xd91
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xd92
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"image3"
	.byte	0x1
	.value	0xd94
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"image2"
	.byte	0x1
	.value	0xd94
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x1
	.value	0xd94
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x1
	.value	0xd94
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xd95
	.long	0xd3d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xd96
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x16
	.long	0x3314
	.string	"encode_vax_f"
	.byte	0x1
	.value	0xe2b
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST71
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xe28
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xe29
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xe2a
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xe2c
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xe2c
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"sig"
	.byte	0x1
	.value	0xe2c
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x1
	.value	0xe2c
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3afe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13641
	.byte	0x0
	.uleb128 0x16
	.long	0x3380
	.string	"decode_vax_f"
	.byte	0x1
	.value	0xe51
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.long	.LLST72
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xe4e
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xe4f
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xe50
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x1
	.value	0xe52
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xe53
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x16
	.long	0x340b
	.string	"encode_vax_d"
	.byte	0x1
	.value	0xe67
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST73
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xe64
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xe65
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xe66
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x1
	.value	0xe68
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x1
	.value	0xe68
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xe68
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3af9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13695
	.byte	0x0
	.uleb128 0x16
	.long	0x3486
	.string	"decode_vax_d"
	.byte	0x1
	.value	0xe9f
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.long	.LLST74
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xe9c
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xe9d
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xe9e
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x1
	.value	0xea0
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x1
	.value	0xea0
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xea1
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x3511
	.string	"encode_vax_g"
	.byte	0x1
	.value	0xecf
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.long	.LLST75
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xecc
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xecd
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xece
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x1
	.value	0xed0
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x1
	.value	0xed0
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xed0
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3af4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13775
	.byte	0x0
	.uleb128 0x16
	.long	0x358c
	.string	"decode_vax_g"
	.byte	0x1
	.value	0xf07
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.long	.LLST76
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xf04
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xf05
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xf06
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF17
	.byte	0x1
	.value	0xf08
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF16
	.byte	0x1
	.value	0xf08
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xf09
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x362c
	.string	"encode_i370_single"
	.byte	0x1
	.value	0xf77
	.byte	0x1
	.long	.LFB93
	.long	.LFE93
	.long	.LLST77
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xf74
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xf75
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xf76
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xf78
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xf78
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"sig"
	.byte	0x1
	.value	0xf78
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x1
	.value	0xf78
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3adf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13875
	.byte	0x0
	.uleb128 0x16
	.long	0x36bc
	.string	"decode_i370_single"
	.byte	0x1
	.value	0xf99
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.long	.LLST78
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xf96
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xf97
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xf98
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xf9a
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"sig"
	.byte	0x1
	.value	0xf9a
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x1
	.value	0xf9a
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xf9b
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x16
	.long	0x375c
	.string	"encode_i370_double"
	.byte	0x1
	.value	0xfb2
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST79
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xfaf
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xfb0
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xfb1
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xfb3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xfb3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x1
	.value	0xfb3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x1
	.value	0xfb3
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3ada
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13928
	.byte	0x0
	.uleb128 0x16
	.long	0x37ec
	.string	"decode_i370_double"
	.byte	0x1
	.value	0xfe5
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.long	.LLST80
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0xfe2
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0xfe3
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0xfe4
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF1
	.byte	0x1
	.value	0xfe6
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF13
	.byte	0x1
	.value	0xfe6
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x1
	.value	0xfe6
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0xfe7
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x387c
	.string	"encode_c4x_single"
	.byte	0x1
	.value	0x1048
	.byte	0x1
	.long	.LFB97
	.long	.LFE97
	.long	.LLST81
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x1045
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x1046
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1047
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x1
	.value	0x1049
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x1049
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"sig"
	.byte	0x1
	.value	0x1049
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3ac5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14018
	.byte	0x0
	.uleb128 0x16
	.long	0x390a
	.string	"decode_c4x_single"
	.byte	0x1
	.value	0x1072
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.long	.LLST82
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x106f
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1070
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x1071
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x1
	.value	0x1073
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"sig"
	.byte	0x1
	.value	0x1074
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x1075
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.string	"sf"
	.byte	0x1
	.value	0x1075
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x16
	.long	0x398d
	.string	"encode_c4x_extended"
	.byte	0x1
	.value	0x1095
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.long	.LLST83
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x1092
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x1093
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1094
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x1096
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"sig"
	.byte	0x1
	.value	0x1096
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF3
	.long	0x3ab0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14082
	.byte	0x0
	.uleb128 0x16
	.long	0x3a0e
	.string	"decode_c4x_extended"
	.byte	0x1
	.value	0x10c9
	.byte	0x1
	.long	.LFB100
	.long	.LFE100
	.long	.LLST84
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x10c6
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x10c7
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x10c8
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"sig"
	.byte	0x1
	.value	0x10ca
	.long	0xf6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"exp"
	.byte	0x1
	.value	0x10cb
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"sf"
	.byte	0x1
	.value	0x10cb
	.long	0xac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x3a5f
	.string	"encode_internal"
	.byte	0x1
	.value	0x111d
	.byte	0x1
	.long	.LFB101
	.long	.LFE101
	.long	.LLST85
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x111a
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x111b
	.long	0xea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x111c
	.long	0xeac
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x16
	.long	0x3ab0
	.string	"decode_internal"
	.byte	0x1
	.value	0x1126
	.byte	0x1
	.long	.LFB102
	.long	.LFE102
	.long	.LLST86
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x1123
	.long	0xe9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.value	0x1124
	.long	0xd37
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.value	0x1125
	.long	0xed3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x3
	.long	0x164
	.uleb128 0x7
	.long	0x3ac5
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0x11
	.byte	0x0
	.uleb128 0x3
	.long	0x3ab5
	.uleb128 0x7
	.long	0x3ada
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0x12
	.byte	0x0
	.uleb128 0x3
	.long	0x3aca
	.uleb128 0x3
	.long	0x3aca
	.uleb128 0x7
	.long	0x3af4
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0xc
	.byte	0x0
	.uleb128 0x3
	.long	0x3ae4
	.uleb128 0x3
	.long	0x3ae4
	.uleb128 0x3
	.long	0x3ae4
	.uleb128 0x7
	.long	0x3b13
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0x10
	.byte	0x0
	.uleb128 0x3
	.long	0x3b03
	.uleb128 0x3
	.long	0x164
	.uleb128 0x7
	.long	0x3b2d
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0x14
	.byte	0x0
	.uleb128 0x3
	.long	0x3b1d
	.uleb128 0x3
	.long	0x3aca
	.uleb128 0x3
	.long	0x3aca
	.uleb128 0x7
	.long	0x3b4c
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0x9
	.byte	0x0
	.uleb128 0x3
	.long	0x3b3c
	.uleb128 0x3
	.long	0x3b03
	.uleb128 0x7
	.long	0x3b66
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0xe
	.byte	0x0
	.uleb128 0x3
	.long	0x3b56
	.uleb128 0x3
	.long	0x3ae4
	.uleb128 0x3
	.long	0x3b03
	.uleb128 0x7
	.long	0x3b85
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0x8
	.byte	0x0
	.uleb128 0x3
	.long	0x3b75
	.uleb128 0x7
	.long	0x3b9a
	.long	0xcdf
	.uleb128 0x8
	.long	0xba
	.byte	0x9
	.byte	0x0
	.uleb128 0x7
	.long	0x3baa
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0xa
	.byte	0x0
	.uleb128 0x3
	.long	0x3b9a
	.uleb128 0x7
	.long	0x3bbf
	.long	0xcdf
	.uleb128 0x8
	.long	0xba
	.byte	0x1c
	.byte	0x0
	.uleb128 0x3
	.long	0x3ae4
	.uleb128 0x7
	.long	0x3bd4
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0xb
	.byte	0x0
	.uleb128 0x3
	.long	0x3bc4
	.uleb128 0x3
	.long	0x3ab5
	.uleb128 0x3
	.long	0x164
	.uleb128 0x3
	.long	0x211d
	.uleb128 0x3
	.long	0x3b03
	.uleb128 0x3
	.long	0x211d
	.uleb128 0x3
	.long	0x3b56
	.uleb128 0x3
	.long	0x3b9a
	.uleb128 0x7
	.long	0x3c0c
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0xd
	.byte	0x0
	.uleb128 0x3
	.long	0x3bfc
	.uleb128 0x3
	.long	0x3ae4
	.uleb128 0x3
	.long	0x211d
	.uleb128 0x3
	.long	0x3ae4
	.uleb128 0x3
	.long	0x3b9a
	.uleb128 0x3
	.long	0x3b3c
	.uleb128 0x3
	.long	0x3bc4
	.uleb128 0x7
	.long	0x3c3f
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0x6
	.byte	0x0
	.uleb128 0x3
	.long	0x3c2f
	.uleb128 0x24
	.string	"target_flags"
	.byte	0x6
	.byte	0x21
	.long	0xac
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3c6a
	.long	0xe0
	.uleb128 0x8
	.long	0xba
	.byte	0xff
	.byte	0x0
	.uleb128 0x24
	.string	"_sch_istable"
	.byte	0x7
	.byte	0x48
	.long	0x3c80
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x3c5a
	.uleb128 0x7
	.long	0x3c95
	.long	0xa4
	.uleb128 0x8
	.long	0xba
	.byte	0xff
	.byte	0x0
	.uleb128 0x25
	.string	"_hex_value"
	.byte	0x8
	.value	0x101
	.long	0x3caa
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x3c85
	.uleb128 0x7
	.long	0x3cbf
	.long	0xe9b
	.uleb128 0x8
	.long	0xba
	.byte	0x6
	.byte	0x0
	.uleb128 0x26
	.string	"real_format_for_mode"
	.byte	0x1
	.value	0x113d
	.long	0x3caf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	real_format_for_mode
	.uleb128 0x26
	.string	"ieee_single_format"
	.byte	0x1
	.value	0xaa5
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ieee_single_format
	.uleb128 0x26
	.string	"ieee_double_format"
	.byte	0x1
	.value	0xb66
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ieee_double_format
	.uleb128 0x26
	.string	"ieee_extended_motorola_format"
	.byte	0x1
	.value	0xc65
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ieee_extended_motorola_format
	.uleb128 0x26
	.string	"ieee_extended_intel_96_format"
	.byte	0x1
	.value	0xc75
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ieee_extended_intel_96_format
	.uleb128 0x26
	.string	"ieee_extended_intel_96_round_53_format"
	.byte	0x1
	.value	0xc97
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ieee_extended_intel_96_round_53_format
	.uleb128 0x26
	.string	"ieee_extended_intel_128_format"
	.byte	0x1
	.value	0xc85
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ieee_extended_intel_128_format
	.uleb128 0x26
	.string	"ibm_extended_format"
	.byte	0x1
	.value	0xd02
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ibm_extended_format
	.uleb128 0x26
	.string	"ieee_quad_format"
	.byte	0x1
	.value	0xdff
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ieee_quad_format
	.uleb128 0x26
	.string	"vax_f_format"
	.byte	0x1
	.value	0xf32
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	vax_f_format
	.uleb128 0x26
	.string	"vax_d_format"
	.byte	0x1
	.value	0xf42
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	vax_d_format
	.uleb128 0x26
	.string	"vax_g_format"
	.byte	0x1
	.value	0xf52
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	vax_g_format
	.uleb128 0x26
	.string	"i370_single_format"
	.byte	0x1
	.value	0x1007
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	i370_single_format
	.uleb128 0x26
	.string	"i370_double_format"
	.byte	0x1
	.value	0x1017
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	i370_double_format
	.uleb128 0x26
	.string	"c4x_single_format"
	.byte	0x1
	.value	0x10ed
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	c4x_single_format
	.uleb128 0x26
	.string	"c4x_extended_format"
	.byte	0x1
	.value	0x10fd
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	c4x_extended_format
	.uleb128 0x26
	.string	"real_internal_format"
	.byte	0x1
	.value	0x112a
	.long	0xea1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	real_internal_format
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x3fc
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3f29
	.long	0x1870
	.string	"real_arithmetic"
	.long	0x18f3
	.string	"real_arithmetic2"
	.long	0x195b
	.string	"real_compare"
	.long	0x19d2
	.string	"real_exponent"
	.long	0x1a18
	.string	"real_ldexp"
	.long	0x1a75
	.string	"real_isinf"
	.long	0x1aa8
	.string	"real_isnan"
	.long	0x1adb
	.string	"real_isneg"
	.long	0x1b0e
	.string	"real_isnegzero"
	.long	0x1b45
	.string	"real_identical"
	.long	0x1ba6
	.string	"exact_real_inverse"
	.long	0x1c19
	.string	"real_to_integer"
	.long	0x1c86
	.string	"real_to_integer2"
	.long	0x1dd3
	.string	"real_to_decimal"
	.long	0x201f
	.string	"real_to_hexadecimal"
	.long	0x212d
	.string	"real_from_string"
	.long	0x2231
	.string	"real_from_string2"
	.long	0x2287
	.string	"real_from_integer"
	.long	0x24d1
	.string	"real_inf"
	.long	0x24fe
	.string	"real_nan"
	.long	0x2610
	.string	"real_2expN"
	.long	0x280e
	.string	"real_convert"
	.long	0x287a
	.string	"real_value_truncate"
	.long	0x28d2
	.string	"exact_real_truncate"
	.long	0x292a
	.string	"real_to_target_fmt"
	.long	0x29a5
	.string	"real_to_target"
	.long	0x2a19
	.string	"real_from_target_fmt"
	.long	0x2a70
	.string	"real_from_target"
	.long	0x2ae2
	.string	"significand_size"
	.long	0x2b2c
	.string	"real_hash"
	.long	0x3cbf
	.string	"real_format_for_mode"
	.long	0x3ce3
	.string	"ieee_single_format"
	.long	0x3d05
	.string	"ieee_double_format"
	.long	0x3d27
	.string	"ieee_extended_motorola_format"
	.long	0x3d54
	.string	"ieee_extended_intel_96_format"
	.long	0x3d81
	.string	"ieee_extended_intel_96_round_53_format"
	.long	0x3db7
	.string	"ieee_extended_intel_128_format"
	.long	0x3de5
	.string	"ibm_extended_format"
	.long	0x3e08
	.string	"ieee_quad_format"
	.long	0x3e28
	.string	"vax_f_format"
	.long	0x3e44
	.string	"vax_d_format"
	.long	0x3e60
	.string	"vax_g_format"
	.long	0x3e7c
	.string	"i370_single_format"
	.long	0x3e9e
	.string	"i370_double_format"
	.long	0x3ec0
	.string	"c4x_single_format"
	.long	0x3ee1
	.string	"c4x_extended_format"
	.long	0x3f04
	.string	"real_internal_format"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"",@progbits
.LASF16:
	.string	"image1"
.LASF1:
	.string	"sign"
.LASF11:
	.string	"denormal"
.LASF5:
	.string	"underflow"
.LASF6:
	.string	"mode"
.LASF13:
	.string	"image_hi"
.LASF2:
	.string	"inexact"
.LASF10:
	.string	"image"
.LASF14:
	.string	"sig_lo"
.LASF12:
	.string	"image_lo"
.LASF3:
	.string	"__FUNCTION__"
.LASF17:
	.string	"image0"
.LASF15:
	.string	"sig_hi"
.LASF8:
	.string	"crop_trailing_zeros"
.LASF9:
	.string	"max_digits"
.LASF4:
	.string	"overflow"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"buf_size"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
