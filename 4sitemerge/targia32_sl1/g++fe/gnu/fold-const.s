	.file	"fold-const.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	encode, @function
encode:
.LFB15:
	.file 1 "../../../kg++fe/gnu/fold-const.c"
	.loc 1 167 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	subl	$16, %esp
.LCFI4:
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 168 0
	movl	-16(%ebp), %esi
	movl	-12(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 169 0
	movl	8(%ebp), %ecx
	addl	$8, %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 170 0
	movl	8(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	andb	$255, %ah
	movl	-20(%ebp), %edx
	andl	$0, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 171 0
	movl	8(%ebp), %ecx
	addl	$24, %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 172 0
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	encode, .-encode
	.type	decode, @function
decode:
.LFB16:
	.loc 1 183 0
	pushl	%ebp
.LCFI5:
	movl	%esp, %ebp
.LCFI6:
	pushl	%edi
.LCFI7:
	pushl	%esi
.LCFI8:
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	$0, %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 185 0
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	$0, %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 186 0
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	decode, .-decode
.globl force_fit_type
	.type	force_fit_type, @function
force_fit_type:
.LFB17:
	.loc 1 199 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%edi
.LCFI11:
	pushl	%esi
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$108, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 204 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L6
	.loc 1 208 0
	movl	12(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L8
.L6:
	.loc 1 211 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L9
	.loc 1 212 0
	movl	12(%ebp), %edx
	movl	%edx, -120(%ebp)
	jmp	.L8
.L9:
	.loc 1 214 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 215 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 217 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L11
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L13
.L11:
	.loc 1 218 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L14
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L14
	movl	$64, -116(%ebp)
	jmp	.L17
.L14:
	movl	$32, -116(%ebp)
.L17:
	movl	-116(%ebp), %ecx
	movl	%ecx, -20(%ebp)
	.loc 1 217 0
	jmp	.L18
.L13:
	.loc 1 220 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
.L18:
	.loc 1 224 0
	cmpl	$128, -20(%ebp)
	je	.L19
	.loc 1 226 0
	cmpl	$64, -20(%ebp)
	jbe	.L21
	.loc 1 227 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L43
	movl	%eax, %edx
	xorl	%eax, %eax
.L43:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-112(%ebp), %eax
	andl	%esi, %eax
	movl	-108(%ebp), %edx
	andl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 28(%ecx)
	movl	%edx, 32(%ecx)
	jmp	.L19
.L21:
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	.loc 1 232 0
	cmpl	$63, -20(%ebp)
	ja	.L19
	.loc 1 233 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -104(%ebp)
	movl	%ecx, -100(%ebp)
	movl	-20(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L42
	movl	%eax, %edx
	xorl	%eax, %eax
.L42:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-104(%ebp), %eax
	andl	%esi, %eax
	movl	-100(%ebp), %edx
	andl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
.L19:
	.loc 1 238 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L24
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L26
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L24
.L26:
	.loc 1 241 0
	movl	12(%ebp), %ecx
	movl	%ecx, -120(%ebp)
	jmp	.L8
.L24:
	.loc 1 244 0
	cmpl	$128, -20(%ebp)
	je	.L28
	cmpl	$64, -20(%ebp)
	jbe	.L30
	movl	8(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-20(%ebp), %eax
	subl	$65, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L41
	movl	%edx, %eax
	sarl	$31, %edx
.L41:
	andl	$1, %eax
	movb	%al, -89(%ebp)
	jmp	.L32
.L30:
	movl	8(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L40
	movl	%edx, %eax
	xorl	%edx, %edx
.L40:
	andl	$1, %eax
	movb	%al, -89(%ebp)
.L32:
	cmpb	$0, -89(%ebp)
	je	.L28
	.loc 1 254 0
	cmpl	$64, -20(%ebp)
	jbe	.L34
	.loc 1 255 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L39
	movl	%esi, %edi
	xorl	%esi, %esi
.L39:
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 28(%ecx)
	movl	%edx, 32(%ecx)
	jmp	.L28
.L34:
	.loc 1 259 0
	movl	8(%ebp), %eax
	movl	$-1, 28(%eax)
	movl	$-1, 32(%eax)
	.loc 1 260 0
	cmpl	$63, -20(%ebp)
	ja	.L28
	.loc 1 261 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-20(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L38
	movl	%esi, %edi
	xorl	%esi, %esi
.L38:
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
.L28:
	.loc 1 266 0
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, -68(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, %eax
	xorl	-40(%ebp), %eax
	movl	%edi, %edx
	xorl	-36(%ebp), %edx
	movl	-72(%ebp), %esi
	orl	%eax, %esi
	movl	-68(%ebp), %edi
	orl	%edx, %edi
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-64(%ebp), %eax
	xorl	-32(%ebp), %eax
	movl	-60(%ebp), %edx
	xorl	-28(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -120(%ebp)
.L8:
	movl	-120(%ebp), %eax
	.loc 1 269 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	force_fit_type, .-force_fit_type
.globl add_double
	.type	add_double, @function
add_double:
.LFB18:
	.loc 1 282 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%edi
.LCFI17:
	pushl	%esi
.LCFI18:
	subl	$80, %esp
.LCFI19:
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
	.loc 1 286 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	addl	-32(%ebp), %eax
	adcl	-28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 287 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	$1, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-84(%ebp), %edx
	cmpl	-28(%ebp), %edx
	jb	.L45
	movl	-84(%ebp), %ecx
	cmpl	-28(%ebp), %ecx
	ja	.L46
	movl	-88(%ebp), %esi
	cmpl	-32(%ebp), %esi
	jb	.L45
.L46:
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
.L45:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 289 0
	movl	40(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 290 0
	movl	44(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 291 0
	movl	-56(%ebp), %ecx
	movl	-52(%ebp), %esi
	movl	-40(%ebp), %eax
	xorl	%ecx, %eax
	movl	-36(%ebp), %edx
	xorl	%esi, %edx
	movl	%eax, %edi
	notl	%edi
	movl	%edi, -64(%ebp)
	movl	%edx, %ecx
	notl	%ecx
	movl	%ecx, -60(%ebp)
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	-40(%ebp), %esi
	xorl	%eax, %esi
	movl	-36(%ebp), %edi
	xorl	%edx, %edi
	movl	-64(%ebp), %eax
	andl	%esi, %eax
	movl	-60(%ebp), %edx
	andl	%edi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	.loc 1 292 0
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	add_double, .-add_double
.globl neg_double
	.type	neg_double, @function
neg_double:
.LFB19:
	.loc 1 305 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	pushl	%edi
.LCFI22:
	pushl	%esi
.LCFI23:
	subl	$24, %esp
.LCFI24:
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 306 0
	movl	-16(%ebp), %eax
	orl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L49
	.loc 1 308 0
	movl	24(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 309 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 310 0
	movl	28(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, %eax
	andl	-24(%ebp), %eax
	movl	%edi, %edx
	andl	-20(%ebp), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	movl	%ecx, -28(%ebp)
	jmp	.L51
.L49:
	.loc 1 314 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 315 0
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %esi
	movl	%ecx, %eax
	notl	%eax
	movl	%esi, %edx
	notl	%edx
	movl	28(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 316 0
	movl	$0, -28(%ebp)
.L51:
	movl	-28(%ebp), %eax
	.loc 1 318 0
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	neg_double, .-neg_double
.globl mul_double
	.type	mul_double, @function
mul_double:
.LFB20:
	.loc 1 332 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%edi
.LCFI27:
	pushl	%esi
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$348, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -212(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -224(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -220(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -232(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -228(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -240(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -236(%ebp)
	.loc 1 341 0
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	encode
	.loc 1 342 0
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	encode
	.loc 1 344 0
	leal	-200(%ebp), %eax
	movl	%eax, %edx
	movl	$64, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 346 0
	movl	$0, -28(%ebp)
	jmp	.L54
.L55:
	.loc 1 348 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 349 0
	movl	$0, -24(%ebp)
	jmp	.L56
.L57:
	.loc 1 351 0
	movl	-24(%ebp), %eax
	addl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 353 0
	movl	-28(%ebp), %eax
	movl	-104(%ebp,%eax,8), %esi
	movl	-100(%ebp,%eax,8), %edi
	movl	-24(%ebp), %eax
	movl	-136(%ebp,%eax,8), %edx
	movl	-132(%ebp,%eax,8), %ecx
	movl	%edx, -320(%ebp)
	movl	%ecx, -316(%ebp)
	movl	-320(%ebp), %ecx
	imull	%edi, %ecx
	movl	-316(%ebp), %eax
	imull	%esi, %eax
	movl	%eax, -300(%ebp)
	addl	-300(%ebp), %ecx
	movl	-320(%ebp), %eax
	mull	%esi
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	addl	-316(%ebp), %ecx
	movl	%ecx, -316(%ebp)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	addl	%eax, -40(%ebp)
	adcl	%edx, -36(%ebp)
	.loc 1 355 0
	movl	-20(%ebp), %eax
	movl	-196(%ebp,%eax,8), %edx
	movl	-200(%ebp,%eax,8), %eax
	addl	%eax, -40(%ebp)
	adcl	%edx, -36(%ebp)
	.loc 1 356 0
	movl	-20(%ebp), %ecx
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, -200(%ebp,%ecx,8)
	movl	%edx, -196(%ebp,%ecx,8)
	.loc 1 357 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 349 0
	addl	$1, -24(%ebp)
.L56:
	cmpl	$3, -24(%ebp)
	jle	.L57
	.loc 1 359 0
	movl	-28(%ebp), %ecx
	addl	$4, %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -200(%ebp,%ecx,8)
	movl	%edx, -196(%ebp,%ecx,8)
	.loc 1 346 0
	addl	$1, -28(%ebp)
.L54:
	cmpl	$3, -28(%ebp)
	jle	.L55
	.loc 1 362 0
	movl	44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-200(%ebp), %eax
	movl	%eax, (%esp)
	call	decode
	.loc 1 366 0
	leal	-200(%ebp), %eax
	leal	32(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	decode
	.loc 1 367 0
	cmpl	$0, -220(%ebp)
	jns	.L60
	.loc 1 369 0
	leal	-72(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	neg_double@PLT
	.loc 1 370 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %ecx
	movl	%edx, -312(%ebp)
	movl	%ecx, -308(%ebp)
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -296(%ebp)
	movl	%edx, -292(%ebp)
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, -288(%ebp)
	movl	%ecx, -284(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-296(%ebp), %edx
	movl	-292(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	add_double@PLT
.L60:
	.loc 1 372 0
	cmpl	$0, -236(%ebp)
	jns	.L62
	.loc 1 374 0
	leal	-72(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-216(%ebp), %eax
	movl	-212(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	neg_double@PLT
	.loc 1 375 0
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %ecx
	movl	%edx, -312(%ebp)
	movl	%ecx, -308(%ebp)
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -280(%ebp)
	movl	%edx, -276(%ebp)
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, -272(%ebp)
	movl	%ecx, -268(%ebp)
	leal	-64(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-280(%ebp), %edx
	movl	-276(%ebp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	add_double@PLT
.L62:
	.loc 1 377 0
	movl	44(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	testl	%edx, %edx
	jns	.L64
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, -256(%ebp)
	movl	%ecx, -252(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	-256(%ebp), %esi
	andl	%eax, %esi
	movl	-252(%ebp), %edi
	andl	%edx, %edi
	movl	%esi, %eax
	notl	%eax
	movl	%edi, %edx
	notl	%edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -260(%ebp)
	jmp	.L66
.L64:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-248(%ebp), %eax
	orl	%esi, %eax
	movl	-244(%ebp), %edx
	orl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -260(%ebp)
.L66:
	movl	-260(%ebp), %eax
	.loc 1 378 0
	addl	$348, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	mul_double, .-mul_double
.globl __moddi3
.globl lshift_double
	.type	lshift_double, @function
lshift_double:
.LFB21:
	.loc 1 394 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%edi
.LCFI33:
	pushl	%esi
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$140, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 397 0
	cmpl	$0, -52(%ebp)
	jns	.L69
	.loc 1 399 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	negl	%edx
	adcl	$0, %ecx
	negl	%ecx
	movl	44(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	rshift_double@PLT
	.loc 1 400 0
	jmp	.L85
.L69:
	.loc 1 405 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 408 0
	cmpl	$0, -52(%ebp)
	js	.L72
	cmpl	$0, -52(%ebp)
	jg	.L74
	cmpl	$127, -56(%ebp)
	jbe	.L72
.L74:
	.loc 1 412 0
	movl	40(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 413 0
	movl	36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	.L75
.L72:
	.loc 1 415 0
	cmpl	$0, -52(%ebp)
	js	.L76
	cmpl	$0, -52(%ebp)
	jg	.L78
	cmpl	$63, -56(%ebp)
	jbe	.L76
.L78:
	.loc 1 417 0
	movl	-56(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L95
	movl	%eax, %edx
	xorl	%eax, %eax
.L95:
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 418 0
	movl	36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	.L75
.L76:
	.loc 1 422 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	-56(%ebp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L92
	movl	%esi, %edi
	xorl	%esi, %esi
.L92:
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-56(%ebp), %edx
	movl	$63, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L93
	movl	%edx, %eax
	xorl	%edx, %edx
.L93:
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	$1, %edi, %esi
	shrl	%edi
	movl	-104(%ebp), %eax
	orl	%esi, %eax
	movl	-100(%ebp), %edx
	orl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 424 0
	movl	-56(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L94
	movl	%eax, %edx
	xorl	%eax, %eax
.L94:
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L75:
	.loc 1 429 0
	cmpl	$64, 32(%ebp)
	jbe	.L79
	movl	40(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	32(%ebp), %eax
	subl	$65, %eax
	movl	%eax, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L91
	movl	%edi, %esi
	xorl	%edi, %edi
.L91:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	jmp	.L81
.L79:
	movl	36(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	32(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L90
	movl	%edi, %esi
	xorl	%edi, %edi
.L90:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
.L81:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 434 0
	cmpl	$127, 32(%ebp)
	ja	.L85
	.loc 1 436 0
	cmpl	$63, 32(%ebp)
	jbe	.L83
	.loc 1 438 0
	movl	40(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	32(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L88
	movl	%eax, %edx
	xorl	%eax, %eax
.L88:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 439 0
	movl	40(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	32(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L89
	movl	%esi, %edi
	xorl	%esi, %esi
.L89:
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L85
.L83:
	.loc 1 443 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 444 0
	movl	36(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	32(%ebp), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L86
	movl	%eax, %edx
	xorl	%eax, %eax
.L86:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 445 0
	movl	36(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	32(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L87
	movl	%esi, %edi
	xorl	%esi, %esi
.L87:
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L85:
	.loc 1 447 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	lshift_double, .-lshift_double
.globl rshift_double
	.type	rshift_double, @function
rshift_double:
.LFB22:
	.loc 1 462 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%edi
.LCFI39:
	pushl	%esi
.LCFI40:
	pushl	%ebx
.LCFI41:
	subl	$140, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 465 0
	cmpl	$0, 44(%ebp)
	je	.L97
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edx, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	jmp	.L99
.L97:
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
.L99:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 471 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 474 0
	cmpl	$0, -52(%ebp)
	js	.L100
	cmpl	$0, -52(%ebp)
	jg	.L102
	cmpl	$127, -56(%ebp)
	jbe	.L100
.L102:
	.loc 1 478 0
	movl	40(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 479 0
	movl	36(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	jmp	.L103
.L100:
	.loc 1 481 0
	cmpl	$0, -52(%ebp)
	js	.L104
	cmpl	$0, -52(%ebp)
	jg	.L106
	cmpl	$63, -56(%ebp)
	jbe	.L104
.L106:
	.loc 1 483 0
	movl	40(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 484 0
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-56(%ebp), %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L124
	movl	%edx, %eax
	xorl	%edx, %edx
.L124:
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L103
.L104:
	.loc 1 488 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	-56(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L121
	movl	%edx, %eax
	xorl	%edx, %edx
.L121:
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 489 0
	movl	-56(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L122
	movl	%edi, %esi
	xorl	%edi, %edi
.L122:
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-56(%ebp), %edx
	movl	$63, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L123
	movl	%eax, %edx
	xorl	%eax, %eax
.L123:
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$1, %esi, %edi
	addl	%esi, %esi
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L103:
	.loc 1 495 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-108(%ebp), %edx
	cmpl	-52(%ebp), %edx
	jg	.L107
	movl	-108(%ebp), %ecx
	cmpl	-52(%ebp), %ecx
	jl	.L109
	movl	-112(%ebp), %esi
	cmpl	-56(%ebp), %esi
	ja	.L107
.L109:
	.loc 1 497 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 498 0
	movl	36(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L116
.L107:
	.loc 1 500 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-56(%ebp), %esi
	sbbl	-52(%ebp), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	cmpl	$0, -100(%ebp)
	jg	.L116
	cmpl	$0, -100(%ebp)
	js	.L112
	cmpl	$127, -104(%ebp)
	ja	.L116
.L112:
	.loc 1 502 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	subl	-56(%ebp), %esi
	sbbl	-52(%ebp), %edi
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	cmpl	$0, -92(%ebp)
	js	.L113
	cmpl	$0, -92(%ebp)
	jg	.L115
	cmpl	$63, -96(%ebp)
	jbe	.L113
.L115:
	.loc 1 504 0
	movl	40(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	-56(%ebp), %edx
	movl	32(%ebp), %eax
	subl	%edx, %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L119
	movl	%eax, %edx
	xorl	%eax, %eax
.L119:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 505 0
	movl	40(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-56(%ebp), %edx
	movl	32(%ebp), %eax
	subl	%edx, %eax
	subl	$64, %eax
	movl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L120
	movl	%esi, %edi
	xorl	%esi, %esi
.L120:
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L116
.L113:
	.loc 1 509 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 510 0
	movl	36(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -72(%ebp)
	movl	%edi, -68(%ebp)
	movl	-56(%ebp), %edx
	movl	32(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L117
	movl	%eax, %edx
	xorl	%eax, %eax
.L117:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-72(%ebp), %eax
	andl	%esi, %eax
	movl	-68(%ebp), %edx
	andl	%edi, %edx
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 511 0
	movl	36(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	-56(%ebp), %edx
	movl	32(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L118
	movl	%esi, %edi
	xorl	%esi, %esi
.L118:
	movl	-64(%ebp), %eax
	orl	%esi, %eax
	movl	-60(%ebp), %edx
	orl	%edi, %edx
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L116:
	.loc 1 513 0
	addl	$140, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	rshift_double, .-rshift_double
.globl lrotate_double
	.type	lrotate_double, @function
lrotate_double:
.LFB23:
	.loc 1 527 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%edi
.LCFI45:
	pushl	%esi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$124, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 531 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 532 0
	cmpl	$0, -68(%ebp)
	jns	.L126
	.loc 1 533 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	addl	%eax, -72(%ebp)
	adcl	%edx, -68(%ebp)
.L126:
	.loc 1 535 0
	movl	$0, 36(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	lshift_double@PLT
	.loc 1 536 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	subl	-72(%ebp), %edx
	sbbl	-68(%ebp), %ecx
	movl	$0, 36(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	rshift_double@PLT
	.loc 1 537 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 538 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 539 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	lrotate_double, .-lrotate_double
.globl rrotate_double
	.type	rrotate_double, @function
rrotate_double:
.LFB24:
	.loc 1 552 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%edi
.LCFI51:
	pushl	%esi
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$124, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 556 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 557 0
	cmpl	$0, -68(%ebp)
	jns	.L130
	.loc 1 558 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	addl	%eax, -72(%ebp)
	adcl	%edx, -68(%ebp)
.L130:
	.loc 1 560 0
	movl	$0, 36(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	rshift_double@PLT
	.loc 1 561 0
	movl	32(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	subl	-72(%ebp), %edx
	sbbl	-68(%ebp), %ecx
	movl	$0, 36(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	lshift_double@PLT
	.loc 1 562 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	-88(%ebp), %eax
	orl	%esi, %eax
	movl	-84(%ebp), %edx
	orl	%edi, %edx
	movl	36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 563 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	-80(%ebp), %eax
	orl	%esi, %eax
	movl	-76(%ebp), %edx
	orl	%edi, %edx
	movl	40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 564 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	rrotate_double, .-rrotate_double
	.section	.rodata
	.type	__FUNCTION__.12916, @object
	.size	__FUNCTION__.12916, 21
__FUNCTION__.12916:
	.string	"div_and_round_double"
.globl __udivdi3
.globl __umoddi3
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/fold-const.c"
	.text
.globl div_and_round_double
	.type	div_and_round_double, @function
div_and_round_double:
.LFB25:
	.loc 1 587 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%edi
.LCFI57:
	pushl	%esi
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$460, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -276(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -288(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -284(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -296(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -292(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -304(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -300(%ebp)
	.loc 1 588 0
	movl	$0, -40(%ebp)
	.loc 1 593 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 594 0
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 595 0
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	.loc 1 596 0
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 597 0
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	.loc 1 598 0
	movl	$0, -28(%ebp)
	.loc 1 600 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L134
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L134
	.loc 1 601 0
	movl	$1, -28(%ebp)
	movl	$1, -104(%ebp)
	movl	$0, -100(%ebp)
.L134:
	.loc 1 604 0
	cmpl	$0, 12(%ebp)
	jne	.L137
	.loc 1 606 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	testl	%edx, %edx
	jns	.L139
	.loc 1 608 0
	notl	-40(%ebp)
	.loc 1 610 0
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	leal	-96(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	neg_double@PLT
	testl	%eax, %eax
	je	.L139
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -408(%ebp)
	movl	%edx, -404(%ebp)
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-408(%ebp), %eax
	andl	%esi, %eax
	movl	-404(%ebp), %edx
	andl	%edi, %edx
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L139
	.loc 1 612 0
	movl	$1, -28(%ebp)
.L139:
	.loc 1 614 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	testl	%edx, %edx
	jns	.L137
	.loc 1 616 0
	notl	-40(%ebp)
	.loc 1 617 0
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	leal	-112(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	neg_double@PLT
.L137:
	.loc 1 621 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L144
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L144
	.loc 1 623 0
	movl	60(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	52(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 625 0
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	movl	48(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 626 0
	jmp	.L147
.L144:
	.loc 1 629 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L148
	.loc 1 632 0
	movl	48(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	52(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	.loc 1 633 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	60(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 634 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 635 0
	jmp	.L147
.L148:
	.loc 1 638 0
	leal	-224(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 640 0
	leal	-264(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$10, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 641 0
	leal	-192(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 643 0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	encode
	.loc 1 644 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	leal	-192(%ebp), %eax
	movl	%eax, (%esp)
	call	encode
	.loc 1 647 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L150
	movl	-104(%ebp), %edx
	movl	-100(%ebp), %ecx
	movl	%edx, -400(%ebp)
	movl	%ecx, -396(%ebp)
	cmpl	$0, -396(%ebp)
	ja	.L150
	cmpl	$0, -396(%ebp)
	jb	.L153
	cmpl	$-1, -400(%ebp)
	ja	.L150
.L153:
	.loc 1 650 0
	movl	$3, -36(%ebp)
	jmp	.L154
.L155:
	.loc 1 652 0
	movl	-36(%ebp), %eax
	movl	-260(%ebp,%eax,8), %edx
	movl	-264(%ebp,%eax,8), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, %edx
	movl	$0, %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 653 0
	movl	-36(%ebp), %esi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -224(%ebp,%esi,8)
	movl	%edx, -220(%ebp,%esi,8)
	.loc 1 654 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 650 0
	subl	$1, -36(%ebp)
.L154:
	cmpl	$0, -36(%ebp)
	jns	.L155
	.loc 1 647 0
	jmp	.L157
.L150:
.LBB2:
	.loc 1 665 0
	movl	$3, -36(%ebp)
.L158:
	.loc 1 666 0
	movl	-36(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L159
	.loc 1 668 0
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 675 0
	movl	-20(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$0, (%esp)
	movl	$1, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 676 0
	cmpl	$0, -52(%ebp)
	ja	.L161
	cmpl	$0, -52(%ebp)
	jb	.L163
	cmpl	$1, -56(%ebp)
	ja	.L161
	jmp	.L163
.L159:
	.loc 1 665 0
	subl	$1, -36(%ebp)
	.loc 1 675 0
	jmp	.L158
.L161:
	.loc 1 678 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 679 0
	movl	$0, -36(%ebp)
	jmp	.L164
.L165:
	.loc 1 681 0
	movl	-36(%ebp), %eax
	movl	-260(%ebp,%eax,8), %edx
	movl	-264(%ebp,%eax,8), %eax
	movl	%edx, %esi
	imull	-56(%ebp), %esi
	movl	-52(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-56(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 682 0
	movl	-36(%ebp), %ecx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, -264(%ebp,%ecx,8)
	movl	%edx, -260(%ebp,%ecx,8)
	.loc 1 683 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 679 0
	addl	$1, -36(%ebp)
.L164:
	cmpl	$3, -36(%ebp)
	jle	.L165
	.loc 1 686 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	.loc 1 687 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 688 0
	movl	$0, -36(%ebp)
	jmp	.L167
.L168:
	.loc 1 690 0
	movl	-36(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	movl	%edx, %esi
	imull	-56(%ebp), %esi
	movl	-52(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-56(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 691 0
	movl	-36(%ebp), %ecx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, -192(%ebp,%ecx,8)
	movl	%edx, -188(%ebp,%ecx,8)
	.loc 1 692 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 693 0
	movl	-36(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L169
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
.L169:
	.loc 1 688 0
	addl	$1, -36(%ebp)
.L167:
	cmpl	$3, -36(%ebp)
	jle	.L168
.L163:
	.loc 1 697 0
	movl	$4, -24(%ebp)
	.loc 1 700 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L171
.L172:
.LBB3:
	.loc 1 707 0
	movl	-20(%ebp), %eax
	addl	-36(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 708 0
	movl	-24(%ebp), %eax
	movl	-260(%ebp,%eax,8), %edx
	movl	-264(%ebp,%eax,8), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movl	-260(%ebp,%eax,8), %edx
	movl	-264(%ebp,%eax,8), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 709 0
	movl	-24(%ebp), %eax
	movl	-264(%ebp,%eax,8), %esi
	movl	-260(%ebp,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L173
	.loc 1 710 0
	movl	-20(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	jmp	.L175
.L173:
	.loc 1 712 0
	movl	$-1, -64(%ebp)
	movl	$0, -60(%ebp)
.L175:
	.loc 1 715 0
	movl	-20(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	movl	%edx, %esi
	imull	-64(%ebp), %esi
	movl	-60(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-64(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, -424(%ebp)
	movl	%edi, -420(%ebp)
	movl	-424(%ebp), %esi
	movl	-420(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 716 0
	cmpl	$0, -44(%ebp)
	ja	.L176
	cmpl	$0, -44(%ebp)
	jb	.L178
	cmpl	$-1, -48(%ebp)
	ja	.L176
.L178:
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	movl	%eax, -432(%ebp)
	movl	%edx, -428(%ebp)
	movl	-428(%ebp), %esi
	imull	-64(%ebp), %esi
	movl	-60(%ebp), %ecx
	imull	-432(%ebp), %ecx
	addl	%ecx, %esi
	movl	-64(%ebp), %ecx
	movl	-432(%ebp), %eax
	mull	%ecx
	movl	%eax, -392(%ebp)
	movl	%edx, -388(%ebp)
	addl	-388(%ebp), %esi
	movl	%esi, -388(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	%esi, -424(%ebp)
	movl	%edi, -420(%ebp)
	movl	-24(%ebp), %eax
	subl	$2, %eax
	movl	-260(%ebp,%eax,8), %edx
	movl	-264(%ebp,%eax,8), %eax
	movl	-424(%ebp), %esi
	movl	-420(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -384(%ebp)
	movl	%edi, -380(%ebp)
	movl	-380(%ebp), %edi
	cmpl	%edi, -388(%ebp)
	jb	.L176
	movl	-380(%ebp), %eax
	cmpl	%eax, -388(%ebp)
	ja	.L180
	movl	-384(%ebp), %edx
	cmpl	%edx, -392(%ebp)
	jbe	.L176
.L180:
	.loc 1 719 0
	addl	$-1, -64(%ebp)
	adcl	$-1, -60(%ebp)
.L176:
	.loc 1 725 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 726 0
	movl	$0, -32(%ebp)
	jmp	.L181
.L182:
	.loc 1 728 0
	movl	-32(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	movl	%edx, %esi
	imull	-64(%ebp), %esi
	movl	-60(%ebp), %ecx
	imull	%eax, %ecx
	addl	%ecx, %esi
	movl	-64(%ebp), %ecx
	mull	%ecx
	addl	%edx, %esi
	movl	%esi, %edx
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 729 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 730 0
	movl	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	-260(%ebp,%eax,8), %edx
	movl	-264(%ebp,%eax,8), %eax
	movl	%eax, -424(%ebp)
	movl	%edx, -420(%ebp)
	movl	-80(%ebp), %eax
	andb	$255, %ah
	movl	-76(%ebp), %edx
	andl	$0, %edx
	movl	-424(%ebp), %esi
	movl	-420(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 731 0
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %ecx
	addl	%eax, %ecx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, -264(%ebp,%ecx,8)
	movl	%edx, -260(%ebp,%ecx,8)
	.loc 1 732 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	addl	%eax, -72(%ebp)
	adcl	%edx, -68(%ebp)
	.loc 1 726 0
	addl	$1, -32(%ebp)
.L181:
	movl	-32(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L182
	.loc 1 737 0
	movl	-24(%ebp), %eax
	movl	-264(%ebp,%eax,8), %edx
	movl	-260(%ebp,%eax,8), %ecx
	movl	%edx, -376(%ebp)
	movl	%ecx, -372(%ebp)
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	%esi, -368(%ebp)
	movl	%edi, -364(%ebp)
	movl	-364(%ebp), %edi
	cmpl	%edi, -372(%ebp)
	jg	.L184
	movl	-364(%ebp), %eax
	cmpl	%eax, -372(%ebp)
	jl	.L186
	movl	-368(%ebp), %edx
	cmpl	%edx, -376(%ebp)
	jae	.L184
.L186:
	.loc 1 739 0
	addl	$-1, -64(%ebp)
	adcl	$-1, -60(%ebp)
	.loc 1 740 0
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	.loc 1 741 0
	movl	$0, -32(%ebp)
	jmp	.L187
.L188:
	.loc 1 743 0
	movl	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	movl	-264(%ebp,%eax,8), %esi
	movl	-260(%ebp,%eax,8), %edi
	movl	-32(%ebp), %eax
	movl	-188(%ebp,%eax,8), %edx
	movl	-192(%ebp,%eax,8), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	.loc 1 744 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 745 0
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %ecx
	addl	%eax, %ecx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$0, %edx
	movl	%eax, -264(%ebp,%ecx,8)
	movl	%edx, -260(%ebp,%ecx,8)
	.loc 1 741 0
	addl	$1, -32(%ebp)
.L187:
	movl	-32(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jle	.L188
	.loc 1 748 0
	movl	-24(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-260(%ebp,%eax,8), %edx
	movl	-264(%ebp,%eax,8), %eax
	addl	-72(%ebp), %eax
	adcl	-68(%ebp), %edx
	movl	%eax, -264(%ebp,%ecx,8)
	movl	%edx, -260(%ebp,%ecx,8)
.L184:
	.loc 1 752 0
	movl	-36(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -224(%ebp,%ecx,8)
	movl	%edx, -220(%ebp,%ecx,8)
.LBE3:
	.loc 1 700 0
	subl	$1, -36(%ebp)
.L171:
	cmpl	$0, -36(%ebp)
	jns	.L172
.L157:
.LBE2:
	.loc 1 756 0
	movl	52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-224(%ebp), %eax
	movl	%eax, (%esp)
	call	decode
.L147:
	.loc 1 760 0
	cmpl	$0, -40(%ebp)
	je	.L190
	.loc 1 761 0
	movl	52(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	48(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	neg_double@PLT
.L190:
	.loc 1 764 0
	movl	52(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -360(%ebp)
	movl	%edi, -356(%ebp)
	movl	48(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	60(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	56(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-360(%ebp), %eax
	movl	-356(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	mul_double@PLT
	.loc 1 765 0
	movl	60(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	60(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	neg_double@PLT
	.loc 1 766 0
	movl	60(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	60(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	56(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	add_double@PLT
	.loc 1 768 0
	movl	8(%ebp), %edx
	subl	$63, %edx
	movl	%edx, -412(%ebp)
	cmpl	$9, -412(%ebp)
	ja	.L192
	movl	-412(%ebp), %eax
	sall	$2, %eax
	movl	.L197@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L197:
	.long	.L193@GOTOFF
	.long	.L194@GOTOFF
	.long	.L195@GOTOFF
	.long	.L196@GOTOFF
	.long	.L193@GOTOFF
	.long	.L194@GOTOFF
	.long	.L195@GOTOFF
	.long	.L196@GOTOFF
	.long	.L192@GOTOFF
	.long	.L193@GOTOFF
	.text
.L193:
	.loc 1 773 0
	movl	-28(%ebp), %ecx
	movl	%ecx, -348(%ebp)
	jmp	.L198
.L195:
	.loc 1 777 0
	cmpl	$0, -40(%ebp)
	je	.L199
	movl	56(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L201
	movl	60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L199
.L201:
	.loc 1 780 0
	movl	52(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	48(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	52(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	$-1, 24(%esp)
	movl	$-1, 28(%esp)
	movl	$-1, 16(%esp)
	movl	$-1, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	add_double@PLT
	.loc 1 785 0
	jmp	.L203
.L199:
	.loc 1 784 0
	movl	-28(%ebp), %esi
	movl	%esi, -348(%ebp)
	jmp	.L198
.L194:
	.loc 1 789 0
	cmpl	$0, -40(%ebp)
	jne	.L204
	movl	56(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L206
	movl	60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L204
.L206:
	.loc 1 791 0
	movl	52(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	48(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	52(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	movl	$1, 16(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	add_double@PLT
	.loc 1 796 0
	jmp	.L203
.L204:
	.loc 1 795 0
	movl	-28(%ebp), %edi
	movl	%edi, -348(%ebp)
	jmp	.L198
.L196:
.LBB4:
	.loc 1 801 0
	movl	56(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	.loc 1 802 0
	movl	60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
	.loc 1 803 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -136(%ebp)
	movl	%edx, -132(%ebp)
	.loc 1 804 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	.loc 1 807 0
	movl	60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	testl	%edx, %edx
	jns	.L208
	.loc 1 808 0
	movl	60(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	leal	-128(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	neg_double@PLT
.L208:
	.loc 1 809 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	testl	%edx, %edx
	jns	.L210
	.loc 1 810 0
	movl	-112(%ebp), %edx
	movl	-108(%ebp), %ecx
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	leal	-152(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	neg_double@PLT
.L210:
	.loc 1 813 0
	movl	-128(%ebp), %edx
	movl	-124(%ebp), %ecx
	movl	-120(%ebp), %esi
	movl	-116(%ebp), %edi
	leal	-160(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$2, (%esp)
	movl	$0, 4(%esp)
	call	mul_double@PLT
	.loc 1 816 0
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, -344(%ebp)
	movl	%edx, -340(%ebp)
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, -336(%ebp)
	movl	%edx, -332(%ebp)
	movl	-332(%ebp), %eax
	cmpl	%eax, -340(%ebp)
	jb	.L212
	movl	-332(%ebp), %edx
	cmpl	%edx, -340(%ebp)
	ja	.L214
	movl	-336(%ebp), %ecx
	cmpl	%ecx, -344(%ebp)
	jb	.L212
.L214:
	movl	-152(%ebp), %esi
	movl	-148(%ebp), %edi
	movl	-160(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L215
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	movl	%esi, -328(%ebp)
	movl	%edi, -324(%ebp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -320(%ebp)
	movl	%edx, -316(%ebp)
	movl	-316(%ebp), %edx
	cmpl	%edx, -324(%ebp)
	ja	.L215
	movl	-316(%ebp), %ecx
	cmpl	%ecx, -324(%ebp)
	jb	.L212
	movl	-320(%ebp), %esi
	cmpl	%esi, -328(%ebp)
	jae	.L215
.L212:
	.loc 1 822 0
	movl	52(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	testl	%edx, %edx
	jns	.L218
	.loc 1 824 0
	movl	52(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	48(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	52(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	$-1, 24(%esp)
	movl	$-1, 28(%esp)
	movl	$-1, 16(%esp)
	movl	$-1, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	add_double@PLT
	jmp	.L203
.L218:
	.loc 1 828 0
	movl	52(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	48(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	52(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	48(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	movl	$1, 16(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	add_double@PLT
	.loc 1 834 0
	jmp	.L203
.L215:
	.loc 1 832 0
	movl	-28(%ebp), %edi
	movl	%edi, -348(%ebp)
	jmp	.L198
.L192:
.LBE4:
	.loc 1 837 0
	leal	__FUNCTION__.12916@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$837, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L203:
	.loc 1 841 0
	movl	52(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -312(%ebp)
	movl	%ecx, -308(%ebp)
	movl	48(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	60(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	56(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	mul_double@PLT
	.loc 1 842 0
	movl	60(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	60(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	neg_double@PLT
	.loc 1 843 0
	movl	60(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	60(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	56(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	add_double@PLT
	.loc 1 844 0
	movl	-28(%ebp), %edx
	movl	%edx, -348(%ebp)
.L198:
	movl	-348(%ebp), %eax
	.loc 1 845 0
	addl	$460, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	div_and_round_double, .-div_and_round_double
	.type	negate_expr, @function
negate_expr:
.LFB26:
	.loc 1 853 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%ebx
.LCFI63:
	subl	$52, %esp
.LCFI64:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 857 0
	cmpl	$0, 8(%ebp)
	jne	.L223
	.loc 1 858 0
	movl	$0, -28(%ebp)
	jmp	.L225
.L223:
	.loc 1 860 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 861 0
	jmp	.L226
.L227:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L226:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L228
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L228
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L231
.L228:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L231
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L231
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L227
.L231:
	.loc 1 863 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
	cmpl	$61, -24(%ebp)
	je	.L236
	cmpl	$61, -24(%ebp)
	ja	.L238
	movl	-24(%ebp), %eax
	subl	$26, %eax
	cmpl	$1, %eax
	ja	.L234
	jmp	.L235
.L238:
	cmpl	$79, -24(%ebp)
	je	.L237
	jmp	.L234
.L235:
	.loc 1 867 0
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L234
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$79, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L234
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L234
	.loc 1 870 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L225
.L237:
	.loc 1 874 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -28(%ebp)
	jmp	.L225
.L236:
	.loc 1 878 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L243
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L245
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L245
.L243:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L234
.L245:
	.loc 1 879 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -28(%ebp)
	jmp	.L225
.L234:
	.loc 1 889 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$79, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -28(%ebp)
.L225:
	movl	-28(%ebp), %eax
	.loc 1 890 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	negate_expr, .-negate_expr
	.type	split_tree, @function
split_tree:
.LFB27:
	.loc 1 918 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$36, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 919 0
	movl	$0, -32(%ebp)
	.loc 1 921 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 922 0
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 923 0
	movl	24(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 926 0
	jmp	.L249
.L250:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L249:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L251
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L251
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L254
.L251:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L254
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L254
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L250
.L254:
	.loc 1 928 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L257
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L259
.L257:
	.loc 1 929 0
	movl	20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 928 0
	jmp	.L260
.L259:
	.loc 1 930 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	je	.L261
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L263
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L265
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L263
.L265:
	cmpl	$60, 12(%ebp)
	jne	.L267
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	je	.L261
.L267:
	cmpl	$61, 12(%ebp)
	jne	.L263
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L263
.L261:
.LBB5:
	.loc 1 939 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 940 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 941 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 942 0
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -8(%ebp)
	.loc 1 945 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L270
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L272
.L270:
	.loc 1 946 0
	movl	20(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	$0, -28(%ebp)
	.loc 1 945 0
	jmp	.L273
.L272:
	.loc 1 947 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L274
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L273
.L274:
	.loc 1 948 0
	movl	20(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
.L273:
	.loc 1 950 0
	cmpl	$0, -28(%ebp)
	je	.L276
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L276
	.loc 1 951 0
	movl	16(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	$0, -28(%ebp)
	.loc 1 950 0
	jmp	.L279
.L276:
	.loc 1 952 0
	cmpl	$0, -24(%ebp)
	je	.L279
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L279
	.loc 1 953 0
	movl	16(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, (%eax)
	movl	-20(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -24(%ebp)
.L279:
	.loc 1 957 0
	cmpl	$0, -28(%ebp)
	je	.L282
	cmpl	$0, -24(%ebp)
	je	.L282
	.loc 1 958 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 957 0
	jmp	.L285
.L282:
	.loc 1 959 0
	cmpl	$0, -28(%ebp)
	je	.L286
	.loc 1 960 0
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L285
.L286:
	.loc 1 962 0
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -8(%ebp)
.L285:
	.loc 1 965 0
	cmpl	$0, -16(%ebp)
	je	.L288
	.loc 1 966 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
.L288:
	.loc 1 967 0
	cmpl	$0, -12(%ebp)
	je	.L290
	.loc 1 968 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L290:
	.loc 1 969 0
	cmpl	$0, -8(%ebp)
	je	.L260
	.loc 1 970 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, -32(%ebp)
	.loc 1 930 0
	jmp	.L260
.L263:
.LBE5:
	.loc 1 972 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L294
	.loc 1 973 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L260
.L294:
	.loc 1 975 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
.L260:
	.loc 1 977 0
	cmpl	$0, 28(%ebp)
	je	.L296
	.loc 1 979 0
	movl	20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L298
	.loc 1 980 0
	movl	20(%ebp), %eax
	movl	(%eax), %edx
	movl	24(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	jmp	.L300
.L298:
	.loc 1 981 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L300
	.loc 1 982 0
	movl	24(%ebp), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
	movl	24(%ebp), %eax
	movl	$0, (%eax)
.L300:
	.loc 1 983 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 984 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, -32(%ebp)
.L296:
	.loc 1 987 0
	movl	-32(%ebp), %eax
	.loc 1 988 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	split_tree, .-split_tree
	.type	associate_trees, @function
associate_trees:
.LFB28:
	.loc 1 999 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%esi
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$32, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1000 0
	cmpl	$0, 8(%ebp)
	jne	.L304
	.loc 1 1001 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L306
.L304:
	.loc 1 1002 0
	cmpl	$0, 12(%ebp)
	jne	.L307
	.loc 1 1003 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L306
.L307:
	.loc 1 1008 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	16(%ebp), %eax
	je	.L309
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	16(%ebp), %eax
	je	.L309
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	je	.L309
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L313
.L309:
	.loc 1 1011 0
	cmpl	$60, 16(%ebp)
	jne	.L314
	.loc 1 1013 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L316
	.loc 1 1014 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	jmp	.L306
.L316:
	.loc 1 1016 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L314
	.loc 1 1017 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	jmp	.L306
.L314:
	.loc 1 1020 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	jmp	.L306
.L313:
	.loc 1 1023 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
.L306:
	movl	-12(%ebp), %eax
	.loc 1 1024 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE28:
	.size	associate_trees, .-associate_trees
	.section	.rodata
	.type	__FUNCTION__.13446, @object
	.size	__FUNCTION__.13446, 16
__FUNCTION__.13446:
	.string	"int_const_binop"
	.text
	.type	int_const_binop, @function
int_const_binop:
.LFB29:
	.loc 1 1036 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%edi
.LCFI76:
	pushl	%esi
.LCFI77:
	pushl	%ebx
.LCFI78:
	subl	$268, %esp
.LCFI79:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1044 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1045 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1047 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L321
	movl	-36(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L321
	movl	$1, -188(%ebp)
	jmp	.L324
.L321:
	movl	$0, -188(%ebp)
.L324:
	movl	-188(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1048 0
	movl	$0, -24(%ebp)
	.loc 1 1049 0
	movl	$0, -20(%ebp)
	.loc 1 1051 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	.loc 1 1052 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 1053 0
	movl	16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	.loc 1 1054 0
	movl	16(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 1056 0
	movl	8(%ebp), %edx
	subl	$60, %edx
	movl	%edx, -192(%ebp)
	cmpl	$31, -192(%ebp)
	ja	.L325
	movl	-192(%ebp), %eax
	sall	$2, %eax
	movl	.L342@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L342:
	.long	.L326@GOTOFF
	.long	.L327@GOTOFF
	.long	.L328@GOTOFF
	.long	.L329@GOTOFF
	.long	.L329@GOTOFF
	.long	.L329@GOTOFF
	.long	.L330@GOTOFF
	.long	.L331@GOTOFF
	.long	.L331@GOTOFF
	.long	.L331@GOTOFF
	.long	.L332@GOTOFF
	.long	.L325@GOTOFF
	.long	.L329@GOTOFF
	.long	.L325@GOTOFF
	.long	.L325@GOTOFF
	.long	.L325@GOTOFF
	.long	.L325@GOTOFF
	.long	.L325@GOTOFF
	.long	.L325@GOTOFF
	.long	.L325@GOTOFF
	.long	.L333@GOTOFF
	.long	.L333@GOTOFF
	.long	.L325@GOTOFF
	.long	.L325@GOTOFF
	.long	.L334@GOTOFF
	.long	.L335@GOTOFF
	.long	.L336@GOTOFF
	.long	.L337@GOTOFF
	.long	.L338@GOTOFF
	.long	.L339@GOTOFF
	.long	.L340@GOTOFF
	.long	.L341@GOTOFF
	.text
.L338:
	.loc 1 1059 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	-72(%ebp), %eax
	orl	%ecx, %eax
	movl	-68(%ebp), %edx
	orl	%esi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %esi
	movl	-56(%ebp), %eax
	orl	%ecx, %eax
	movl	-52(%ebp), %edx
	orl	%esi, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1060 0
	jmp	.L343
.L339:
	.loc 1 1063 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	-72(%ebp), %eax
	xorl	%ecx, %eax
	movl	-68(%ebp), %edx
	xorl	%esi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %esi
	movl	-56(%ebp), %eax
	xorl	%ecx, %eax
	movl	-52(%ebp), %edx
	xorl	%esi, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1064 0
	jmp	.L343
.L340:
	.loc 1 1067 0
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	-72(%ebp), %eax
	andl	%ecx, %eax
	movl	-68(%ebp), %edx
	andl	%esi, %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1068 0
	jmp	.L343
.L341:
	.loc 1 1071 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	%esi, %eax
	andl	-72(%ebp), %eax
	movl	%edi, %edx
	andl	-68(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	%esi, %eax
	andl	-56(%ebp), %eax
	movl	%edi, %edx
	andl	-52(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1072 0
	jmp	.L343
.L335:
	.loc 1 1075 0
	negl	-64(%ebp)
	adcl	$0, -60(%ebp)
	negl	-60(%ebp)
.L334:
	.loc 1 1080 0
	cmpl	$0, -32(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	-36(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %ecx
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	%edx, 36(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	lshift_double@PLT
	.loc 1 1082 0
	movl	$1, -20(%ebp)
	.loc 1 1083 0
	jmp	.L343
.L337:
	.loc 1 1086 0
	negl	-64(%ebp)
	adcl	$0, -60(%ebp)
	negl	-60(%ebp)
.L336:
	.loc 1 1088 0
	movl	-36(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %esi
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %ecx
	leal	-88(%ebp), %eax
	movl	%eax, 32(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%esi, 24(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	lrotate_double@PLT
	.loc 1 1090 0
	jmp	.L343
.L326:
	.loc 1 1093 0
	leal	-88(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	add_double@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1094 0
	jmp	.L343
.L327:
	.loc 1 1097 0
	leal	-88(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	neg_double@PLT
	.loc 1 1098 0
	movl	-88(%ebp), %edx
	movl	-84(%ebp), %ecx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	leal	-88(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	add_double@PLT
	.loc 1 1099 0
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	%esi, %eax
	xorl	-48(%ebp), %eax
	movl	%edi, %edx
	xorl	-44(%ebp), %edx
	movl	%eax, %ecx
	notl	%ecx
	movl	%ecx, -184(%ebp)
	movl	%edx, %ecx
	notl	%ecx
	movl	%ecx, -180(%ebp)
	movl	-184(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	xorl	-56(%ebp), %esi
	movl	%edx, %edi
	xorl	-52(%ebp), %edi
	movl	-184(%ebp), %eax
	andl	%esi, %eax
	movl	-180(%ebp), %edx
	andl	%edi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1100 0
	jmp	.L343
.L328:
	.loc 1 1103 0
	leal	-88(%ebp), %eax
	movl	%eax, 36(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	mul_double@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1104 0
	jmp	.L343
.L329:
	.loc 1 1110 0
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L330
	movl	-64(%ebp), %edx
	movl	-60(%ebp), %ecx
	movl	%edx, -176(%ebp)
	movl	%ecx, -172(%ebp)
	cmpl	$0, -172(%ebp)
	js	.L330
	cmpl	$0, -172(%ebp)
	jg	.L346
	cmpl	$0, -176(%ebp)
	jbe	.L330
.L346:
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L330
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L330
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L330
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	testl	%edx, %edx
	js	.L330
	.loc 1 1115 0
	cmpl	$64, 8(%ebp)
	jne	.L351
	.loc 1 1116 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	-64(%ebp), %eax
	adcl	-60(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L351:
	.loc 1 1118 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 1119 0
	jmp	.L343
.L330:
	.loc 1 1125 0
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L353
	movl	-64(%ebp), %eax
	xorl	$1, %eax
	orl	-60(%ebp), %eax
	testl	%eax, %eax
	jne	.L353
	.loc 1 1127 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1128 0
	jmp	.L343
.L353:
	.loc 1 1130 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, %ecx
	xorl	-60(%ebp), %ecx
	xorl	-64(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L356
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %ecx
	xorl	-44(%ebp), %ecx
	xorl	-48(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L356
	movl	-72(%ebp), %eax
	orl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	.L359
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L356
.L359:
	.loc 1 1133 0
	movl	$1, -80(%ebp)
	movl	$0, -76(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 1134 0
	jmp	.L343
.L356:
	.loc 1 1136 0
	leal	-104(%ebp), %eax
	movl	%eax, 52(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 48(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	div_and_round_double@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1138 0
	jmp	.L343
.L331:
	.loc 1 1143 0
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L332
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	cmpl	$0, -164(%ebp)
	js	.L332
	cmpl	$0, -164(%ebp)
	jg	.L363
	cmpl	$0, -168(%ebp)
	jbe	.L332
.L363:
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L332
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L332
	movl	-56(%ebp), %eax
	orl	-52(%ebp), %eax
	testl	%eax, %eax
	jne	.L332
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	testl	%edx, %edx
	js	.L332
	.loc 1 1148 0
	cmpl	$68, 8(%ebp)
	jne	.L368
	.loc 1 1149 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	addl	-64(%ebp), %eax
	adcl	-60(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L368:
	.loc 1 1150 0
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %edi
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__umoddi3@PLT
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	.loc 1 1151 0
	jmp	.L343
.L332:
	.loc 1 1157 0
	leal	-88(%ebp), %eax
	movl	%eax, 52(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 48(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 44(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 40(%esp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	div_and_round_double@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1160 0
	jmp	.L343
.L333:
	.loc 1 1164 0
	cmpl	$0, -32(%ebp)
	je	.L370
	.loc 1 1165 0
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	%edx, -152(%ebp)
	movl	%ecx, -148(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	movl	-140(%ebp), %edx
	cmpl	%edx, -148(%ebp)
	jb	.L372
	movl	-140(%ebp), %ecx
	cmpl	%ecx, -148(%ebp)
	ja	.L374
	movl	-144(%ebp), %eax
	cmpl	%eax, -152(%ebp)
	jb	.L372
.L374:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %ecx
	xorl	-44(%ebp), %ecx
	xorl	-48(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L375
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, -200(%ebp)
	movl	%ecx, -196(%ebp)
	movl	-196(%ebp), %ecx
	cmpl	-60(%ebp), %ecx
	ja	.L375
	movl	-196(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jb	.L372
	movl	-200(%ebp), %edx
	cmpl	-64(%ebp), %edx
	jae	.L375
.L372:
	movl	$1, -156(%ebp)
	jmp	.L378
.L375:
	movl	$0, -156(%ebp)
.L378:
	movl	-156(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	-224(%ebp), %edx
	movl	-220(%ebp), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	jmp	.L379
.L370:
	.loc 1 1171 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	movl	-204(%ebp), %edx
	cmpl	-44(%ebp), %edx
	jl	.L380
	movl	-204(%ebp), %ecx
	cmpl	-44(%ebp), %ecx
	jg	.L382
	movl	-208(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jb	.L380
.L382:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%edx, %ecx
	xorl	-44(%ebp), %ecx
	xorl	-48(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L383
	movl	-72(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, -216(%ebp)
	movl	%ecx, -212(%ebp)
	movl	-212(%ebp), %ecx
	cmpl	-60(%ebp), %ecx
	ja	.L383
	movl	-212(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jb	.L380
	movl	-216(%ebp), %edx
	cmpl	-64(%ebp), %edx
	jae	.L383
.L380:
	movl	$1, -136(%ebp)
	jmp	.L386
.L383:
	movl	$0, -136(%ebp)
.L386:
	movl	-136(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	movl	-224(%ebp), %edx
	movl	-220(%ebp), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
.L379:
	.loc 1 1174 0
	cmpl	$80, 8(%ebp)
	sete	%cl
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L387
	.loc 1 1175 0
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	jmp	.L343
.L387:
	.loc 1 1177 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 1178 0
	jmp	.L343
.L325:
	.loc 1 1181 0
	leal	__FUNCTION__.13446@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1181, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L343:
	.loc 1 1187 0
	cmpl	$0, -28(%ebp)
	je	.L390
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L392
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	testl	%edx, %edx
	jns	.L394
.L392:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%edx, %ecx
	xorl	$-1, %ecx
	xorl	$-1, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L390
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	testl	%edx, %edx
	jns	.L390
.L394:
	cmpl	$0, -24(%ebp)
	jne	.L390
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L390
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L390
	.loc 1 1191 0
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	size_int_type_wide@PLT
	movl	%eax, -132(%ebp)
	jmp	.L399
.L390:
	.loc 1 1194 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1195 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1198 0
	cmpl	$0, 20(%ebp)
	je	.L400
	cmpl	$0, -32(%ebp)
	je	.L402
	cmpl	$0, -28(%ebp)
	je	.L404
.L402:
	cmpl	$0, -24(%ebp)
	je	.L404
	movl	$1, -124(%ebp)
	jmp	.L406
.L404:
	movl	$0, -124(%ebp)
.L406:
	movzbl	-124(%ebp), %ecx
	movb	%cl, -125(%ebp)
	jmp	.L407
.L400:
	cmpl	$0, -32(%ebp)
	je	.L408
	cmpl	$0, -28(%ebp)
	je	.L410
.L408:
	cmpl	$0, -24(%ebp)
	je	.L410
	movl	$1, -116(%ebp)
	jmp	.L412
.L410:
	movl	$0, -116(%ebp)
.L412:
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	testl	%eax, %eax
	je	.L413
	cmpl	$0, -20(%ebp)
	jne	.L413
	movl	$1, -120(%ebp)
	jmp	.L416
.L413:
	movl	$0, -120(%ebp)
.L416:
	movzbl	-120(%ebp), %edx
	movb	%dl, -125(%ebp)
.L407:
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	-125(%ebp), %edx
	orl	%eax, %edx
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	-40(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1208 0
	cmpl	$0, -28(%ebp)
	je	.L417
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L417
	movl	-40(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L420
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L417
.L420:
	.loc 1 1212 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$8, %edx
	movb	%dl, 10(%eax)
.L417:
	.loc 1 1214 0
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	-40(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1217 0
	movl	-40(%ebp), %ecx
	movl	%ecx, -132(%ebp)
.L399:
	movl	-132(%ebp), %eax
	.loc 1 1218 0
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	int_const_binop, .-int_const_binop
	.section	.rodata
	.type	__FUNCTION__.13675, @object
	.size	__FUNCTION__.13675, 12
__FUNCTION__.13675:
	.string	"const_binop"
	.text
	.type	const_binop, @function
const_binop:
.LFB30:
	.loc 1 1231 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%edi
.LCFI82:
	pushl	%esi
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$188, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1232 0
	jmp	.L424
.L425:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L424:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L426
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L426
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L431
.L426:
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L431
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L425
	.loc 1 1233 0
	jmp	.L431
.L432:
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 16(%ebp)
.L431:
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L433
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L433
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L436
.L433:
	movl	16(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L436
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L432
.L436:
	.loc 1 1235 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L438
	.loc 1 1236 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_const_binop
	movl	%eax, -164(%ebp)
	jmp	.L440
.L438:
	.loc 1 1238 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L441
.LBB6:
	.loc 1 1245 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	(%edx), %eax
	movl	%eax, -92(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -88(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -84(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -80(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -76(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1246 0
	movl	16(%ebp), %eax
	movl	20(%eax), %edx
	movl	(%edx), %eax
	movl	%eax, -116(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -112(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -108(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -104(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -100(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -96(%ebp)
	.loc 1 1250 0
	leal	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	real_isnan@PLT
	testb	%al, %al
	je	.L443
	.loc 1 1251 0
	movl	12(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	.L440
.L443:
	.loc 1 1252 0
	leal	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	real_isnan@PLT
	testb	%al, %al
	je	.L445
	.loc 1 1253 0
	movl	16(%ebp), %edx
	movl	%edx, -164(%ebp)
	jmp	.L440
.L445:
	.loc 1 1255 0
	movl	8(%ebp), %edx
	leal	-116(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-92(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1257 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	leal	-68(%ebp), %ecx
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-132(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	real_value_truncate@PLT
	subl	$4, %esp
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, (%esp)
	call	build_real@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1261 0
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%eax, %edx
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	-44(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1264 0
	movl	-44(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	-44(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1268 0
	movl	-44(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	.L440
.L441:
.LBE6:
	.loc 1 1270 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L447
.LBB7:
	.loc 1 1272 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1273 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1274 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1275 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1276 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1279 0
	movl	8(%ebp), %edx
	movl	%edx, -168(%ebp)
	cmpl	$61, -168(%ebp)
	je	.L451
	cmpl	$61, -168(%ebp)
	ja	.L454
	cmpl	$60, -168(%ebp)
	je	.L450
	jmp	.L449
.L454:
	cmpl	$62, -168(%ebp)
	je	.L452
	cmpl	$71, -168(%ebp)
	je	.L453
	jmp	.L449
.L450:
	.loc 1 1282 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1285 0
	jmp	.L455
.L451:
	.loc 1 1288 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1291 0
	jmp	.L455
.L452:
	.loc 1 1294 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %edi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1307 0
	jmp	.L455
.L453:
.LBB8:
	.loc 1 1315 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%eax, -16(%ebp)
	.loc 1 1317 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, -160(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L456
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L456
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L456
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L460
.L456:
	movl	$63, -156(%ebp)
	jmp	.L461
.L460:
	movl	$71, -156(%ebp)
.L461:
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, (%esp)
	call	const_binop
	movl	%eax, -152(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%eax, -148(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L462
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L462
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L462
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L466
.L462:
	movl	$63, -144(%ebp)
	jmp	.L467
.L466:
	movl	$71, -144(%ebp)
.L467:
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, (%esp)
	call	const_binop
	movl	-152(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1339 0
	jmp	.L455
.L449:
.LBE8:
	.loc 1 1342 0
	leal	__FUNCTION__.13675@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1342, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L455:
	.loc 1 1344 0
	movl	-20(%ebp), %eax
	movl	%eax, -164(%ebp)
	jmp	.L440
.L447:
.LBE7:
	.loc 1 1346 0
	movl	$0, -164(%ebp)
.L440:
	movl	-164(%ebp), %eax
	.loc 1 1347 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE30:
	.size	const_binop, .-const_binop
	.type	size_htab_hash, @function
size_htab_hash:
.LFB31:
	.loc 1 1357 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	pushl	%esi
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$32, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1358 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1360 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%ecx, %esi
	xorl	%eax, %esi
	movl	htab_hash_pointer@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%esi, %edx
	xorl	%eax, %edx
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	sall	$20, %eax
	xorl	%edx, %eax
	.loc 1 1363 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	size_htab_hash, .-size_htab_hash
	.type	size_htab_eq, @function
size_htab_eq:
.LFB32:
	.loc 1 1372 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%edi
.LCFI93:
	pushl	%esi
.LCFI94:
	subl	$20, %esp
.LCFI95:
	.loc 1 1373 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1374 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1376 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L472
	movl	-16(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L472
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L472
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$1, %edx
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L472
	movl	$1, -28(%ebp)
	jmp	.L477
.L472:
	movl	$0, -28(%ebp)
.L477:
	movl	-28(%ebp), %eax
	.loc 1 1380 0
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	size_htab_eq, .-size_htab_eq
.globl size_int_wide
	.type	size_int_wide, @function
size_int_wide:
.LFB33:
	.loc 1 1389 0
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
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1390 0
	movl	16(%ebp), %edx
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_type_wide@PLT
	.loc 1 1391 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	size_int_wide, .-size_int_wide
.globl size_int_type_wide
	.type	size_int_type_wide, @function
size_int_type_wide:
.LFB34:
	.loc 1 1403 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%edi
.LCFI102:
	pushl	%esi
.LCFI103:
	pushl	%ebx
.LCFI104:
	subl	$76, %esp
.LCFI105:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1406 0
	movl	size_htab@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L482
	.loc 1 1408 0
	movl	$0, 12(%esp)
	leal	size_htab_eq@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	size_htab_hash@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1024, (%esp)
	call	htab_create@PLT
	movl	%eax, size_htab@GOTOFF(%ebx)
	.loc 1 1409 0
	movl	$26, (%esp)
	call	make_node@PLT
	movl	%eax, new_const@GOTOFF(%ebx)
.L482:
	.loc 1 1415 0
	movl	new_const@GOTOFF(%ebx), %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
	.loc 1 1416 0
	movl	new_const@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -36(%ebp)
	jns	.L484
	movl	$-1, -56(%ebp)
	movl	$-1, -52(%ebp)
	jmp	.L486
.L484:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
.L486:
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	-60(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	%ecx, 32(%eax)
	.loc 1 1417 0
	movl	new_const@GOTOFF(%ebx), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1418 0
	movl	new_const@GOTOFF(%ebx), %edi
	movl	new_const@GOTOFF(%ebx), %esi
	movl	new_const@GOTOFF(%ebx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%esi), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%esi)
	movzbl	10(%esi), %eax
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%edi), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%edi)
	.loc 1 1421 0
	movl	new_const@GOTOFF(%ebx), %eax
	movl	size_htab@GOTOFF(%ebx), %edx
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1422 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L487
.LBB9:
	.loc 1 1424 0
	movl	new_const@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1426 0
	movl	new_const@GOTOFF(%ebx), %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 1427 0
	movl	$26, (%esp)
	call	make_node@PLT
	movl	%eax, new_const@GOTOFF(%ebx)
	.loc 1 1428 0
	movl	-20(%ebp), %edx
	movl	%edx, -44(%ebp)
	jmp	.L489
.L487:
.LBE9:
	.loc 1 1431 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L489:
	movl	-44(%ebp), %eax
	.loc 1 1432 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	size_int_type_wide, .-size_int_type_wide
	.section	.rodata
	.type	__FUNCTION__.13906, @object
	.size	__FUNCTION__.13906, 11
__FUNCTION__.13906:
	.string	"size_binop"
	.text
.globl size_binop
	.type	size_binop, @function
size_binop:
.LFB35:
	.loc 1 1443 0
	pushl	%ebp
.LCFI106:
	movl	%esp, %ebp
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$36, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1444 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1446 0
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L492
	movl	-8(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L492
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L495
.L492:
	.loc 1 1448 0
	leal	__FUNCTION__.13906@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1448, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L495:
	.loc 1 1451 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L496
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L496
	.loc 1 1454 0
	cmpl	$60, 8(%ebp)
	jne	.L499
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L499
	.loc 1 1455 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L502
.L499:
	.loc 1 1456 0
	cmpl	$61, 8(%ebp)
	je	.L503
	cmpl	$60, 8(%ebp)
	jne	.L505
.L503:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L505
	.loc 1 1458 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L502
.L505:
	.loc 1 1459 0
	cmpl	$62, 8(%ebp)
	jne	.L507
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L507
	.loc 1 1460 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L502
.L507:
	.loc 1 1463 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	int_const_binop
	movl	%eax, -24(%ebp)
	jmp	.L502
.L496:
	.loc 1 1466 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	je	.L510
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L512
.L510:
	.loc 1 1467 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L502
.L512:
	.loc 1 1469 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
.L502:
	movl	-24(%ebp), %eax
	.loc 1 1470 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	size_binop, .-size_binop
	.section	.rodata
	.type	__FUNCTION__.13951, @object
	.size	__FUNCTION__.13951, 12
__FUNCTION__.13951:
	.string	"size_diffop"
	.text
.globl size_diffop
	.type	size_diffop, @function
size_diffop:
.LFB36:
	.loc 1 1479 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%esi
.LCFI112:
	pushl	%ebx
.LCFI113:
	subl	$48, %esp
.LCFI114:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1480 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1483 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L515
	movl	-16(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L515
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L518
.L515:
	.loc 1 1485 0
	leal	__FUNCTION__.13951@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1485, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L518:
	.loc 1 1488 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L519
	.loc 1 1489 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, -32(%ebp)
	jmp	.L521
.L519:
	.loc 1 1491 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L522
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L524
.L522:
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L525
.L524:
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L525:
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1497 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L526
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L528
.L526:
	.loc 1 1498 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, -32(%ebp)
	jmp	.L521
.L528:
	.loc 1 1505 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L529
	.loc 1 1506 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -32(%ebp)
	jmp	.L521
.L529:
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L531
	.loc 1 1508 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -32(%ebp)
	jmp	.L521
.L531:
	.loc 1 1510 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	size_binop@PLT
	movl	%eax, -32(%ebp)
.L521:
	movl	-32(%ebp), %eax
	.loc 1 1512 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE36:
	.size	size_diffop, .-size_diffop
	.type	fold_convert, @function
fold_convert:
.LFB37:
	.loc 1 1522 0
	pushl	%ebp
.LCFI115:
	movl	%esp, %ebp
.LCFI116:
	pushl	%edi
.LCFI117:
	pushl	%esi
.LCFI118:
	pushl	%ebx
.LCFI119:
	subl	$252, %esp
.LCFI120:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1523 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1524 0
	movl	$0, -36(%ebp)
	.loc 1 1526 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L535
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L535
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L535
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L535
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L535
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L541
.L535:
	.loc 1 1528 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L542
	.loc 1 1532 0
	movl	-40(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	$128, %eax
	jle	.L544
	.loc 1 1533 0
	movl	8(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	.L546
.L544:
	.loc 1 1537 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L547
	movl	-40(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L547
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L547
	movl	$10000, 4(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jns	.L547
	.loc 1 1540 0
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	size_int_type_wide@PLT
	movl	%eax, -228(%ebp)
	jmp	.L546
.L547:
	.loc 1 1544 0
	movl	12(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1546 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1552 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	testl	%edx, %edx
	jns	.L552
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jge	.L552
	movl	$1, -220(%ebp)
	jmp	.L555
.L552:
	movl	$0, -220(%ebp)
.L555:
	movl	-220(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	testl	%eax, %eax
	je	.L556
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L556
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L559
.L556:
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L560
.L559:
	movl	$1, -224(%ebp)
	jmp	.L561
.L560:
	movl	$0, -224(%ebp)
.L561:
	movzbl	-224(%ebp), %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1559 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	jmp	.L562
.L542:
	.loc 1 1562 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L562
.LBB10:
	.loc 1 1569 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1572 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	(%edx), %eax
	movl	%eax, -104(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -100(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -96(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -92(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -88(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -84(%ebp)
	.loc 1 1573 0
	movl	-40(%ebp), %eax
	movl	60(%eax), %eax
	leal	-184(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	real_value_from_int_cst@PLT
	subl	$4, %esp
	movl	-184(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	-180(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	-176(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	-172(%ebp), %eax
	movl	%eax, -116(%ebp)
	movl	-168(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-164(%ebp), %eax
	movl	%eax, -108(%ebp)
	.loc 1 1575 0
	movl	-40(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1576 0
	cmpl	$0, -28(%ebp)
	jne	.L564
	.loc 1 1577 0
	movl	-40(%ebp), %eax
	movl	64(%eax), %eax
	leal	-216(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	real_value_from_int_cst@PLT
	subl	$4, %esp
	movl	-216(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-212(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-208(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-204(%ebp), %eax
	movl	%eax, -140(%ebp)
	movl	-200(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	-196(%ebp), %eax
	movl	%eax, -132(%ebp)
.L564:
	.loc 1 1582 0
	movl	dconst1@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$61, 4(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
	.loc 1 1583 0
	cmpl	$0, -28(%ebp)
	jne	.L566
	.loc 1 1584 0
	movl	dconst1@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$60, 4(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	real_arithmetic@PLT
.L566:
	.loc 1 1587 0
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	real_isnan@PLT
	testb	%al, %al
	je	.L568
	.loc 1 1588 0
	movl	$1, -36(%ebp)
	movl	dconst0@GOT(%ebx), %edx
	movl	(%edx), %eax
	movl	%eax, -104(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -100(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -96(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -92(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -88(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -84(%ebp)
	jmp	.L570
.L568:
	.loc 1 1589 0
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$99, (%esp)
	call	real_compare@PLT
	movzbl	%al, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L571
	cmpl	$0, -28(%ebp)
	jne	.L571
	leal	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$99, (%esp)
	call	real_compare@PLT
	movzbl	%al, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L570
.L571:
	.loc 1 1592 0
	movl	$1, -36(%ebp)
.L570:
.LBB11:
	.loc 1 1596 0
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_integer2@PLT
	.loc 1 1597 0
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, 8(%ebp)
.LBE11:
	.loc 1 1599 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1600 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %esi
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	orl	%esi, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1602 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
.L562:
.LBE10:
	.loc 1 1605 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1526 0
	jmp	.L574
.L541:
	.loc 1 1607 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L574
	.loc 1 1609 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L576
	.loc 1 1610 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real_from_int_cst@PLT
	movl	%eax, -228(%ebp)
	jmp	.L546
.L576:
	.loc 1 1611 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L574
	.loc 1 1613 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	real_isnan@PLT
	testb	%al, %al
	je	.L579
	.loc 1 1617 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1618 0
	movl	8(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1619 0
	movl	8(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	.L546
.L579:
	.loc 1 1622 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-40(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %ecx
	leal	-80(%ebp), %esi
	movl	(%edx), %eax
	movl	%eax, 8(%esp)
	movl	4(%edx), %eax
	movl	%eax, 12(%esp)
	movl	8(%edx), %eax
	movl	%eax, 16(%esp)
	movl	12(%edx), %eax
	movl	%eax, 20(%esp)
	movl	16(%edx), %eax
	movl	%eax, 24(%esp)
	movl	20(%edx), %eax
	movl	%eax, 28(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	real_value_truncate@PLT
	subl	$4, %esp
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real@PLT
	movl	%eax, 8(%ebp)
	.loc 1 1626 0
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %esi
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	orl	%esi, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1628 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	8(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1630 0
	movl	8(%ebp), %eax
	movl	%eax, -228(%ebp)
	jmp	.L546
.L574:
	.loc 1 1633 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$2, %edx
	movb	%dl, 9(%eax)
	.loc 1 1634 0
	movl	8(%ebp), %eax
	movl	%eax, -228(%ebp)
.L546:
	movl	-228(%ebp), %eax
	.loc 1 1635 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	fold_convert, .-fold_convert
.globl non_lvalue
	.type	non_lvalue, @function
non_lvalue:
.LFB38:
	.loc 1 1642 0
	pushl	%ebp
.LCFI121:
	movl	%esp, %ebp
.LCFI122:
	pushl	%ebx
.LCFI123:
	subl	$36, %esp
.LCFI124:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1646 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	je	.L583
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L583
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	je	.L583
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$30, %al
	je	.L583
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L588
.L583:
	.loc 1 1651 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L589
.L588:
	.loc 1 1653 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$118, (%esp)
	call	build1@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1654 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 1655 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L589:
	movl	-24(%ebp), %eax
	.loc 1 1656 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	non_lvalue, .-non_lvalue
.globl pedantic_non_lvalue
	.type	pedantic_non_lvalue, @function
pedantic_non_lvalue:
.LFB39:
	.loc 1 1669 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	pushl	%ebx
.LCFI127:
	subl	$20, %esp
.LCFI128:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1670 0
	movl	pedantic_lvalues@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L592
	.loc 1 1671 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -8(%ebp)
	jmp	.L594
.L592:
	.loc 1 1673 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L594:
	movl	-8(%ebp), %eax
	.loc 1 1674 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	pedantic_non_lvalue, .-pedantic_non_lvalue
	.section	.rodata
	.type	__FUNCTION__.14205, @object
	.size	__FUNCTION__.14205, 23
__FUNCTION__.14205:
	.string	"invert_tree_comparison"
	.text
	.type	invert_tree_comparison, @function
invert_tree_comparison:
.LFB40:
	.loc 1 1683 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%ebx
.LCFI131:
	subl	$20, %esp
.LCFI132:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1684 0
	movl	8(%ebp), %eax
	subl	$99, %eax
	movl	%eax, -12(%ebp)
	cmpl	$5, -12(%ebp)
	ja	.L597
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L604@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L604:
	.long	.L598@GOTOFF
	.long	.L599@GOTOFF
	.long	.L600@GOTOFF
	.long	.L601@GOTOFF
	.long	.L602@GOTOFF
	.long	.L603@GOTOFF
	.text
.L602:
	.loc 1 1687 0
	movl	$104, -8(%ebp)
	jmp	.L605
.L603:
	.loc 1 1689 0
	movl	$103, -8(%ebp)
	jmp	.L605
.L600:
	.loc 1 1691 0
	movl	$100, -8(%ebp)
	jmp	.L605
.L601:
	.loc 1 1693 0
	movl	$99, -8(%ebp)
	jmp	.L605
.L598:
	.loc 1 1695 0
	movl	$102, -8(%ebp)
	jmp	.L605
.L599:
	.loc 1 1697 0
	movl	$101, -8(%ebp)
	jmp	.L605
.L597:
	.loc 1 1699 0
	leal	__FUNCTION__.14205@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1699, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L605:
	movl	-8(%ebp), %eax
	.loc 1 1701 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	invert_tree_comparison, .-invert_tree_comparison
	.section	.rodata
	.type	__FUNCTION__.14218, @object
	.size	__FUNCTION__.14218, 21
__FUNCTION__.14218:
	.string	"swap_tree_comparison"
	.text
	.type	swap_tree_comparison, @function
swap_tree_comparison:
.LFB41:
	.loc 1 1709 0
	pushl	%ebp
.LCFI133:
	movl	%esp, %ebp
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$20, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1710 0
	movl	8(%ebp), %eax
	subl	$99, %eax
	movl	%eax, -12(%ebp)
	cmpl	$5, -12(%ebp)
	ja	.L608
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L614@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L614:
	.long	.L609@GOTOFF
	.long	.L610@GOTOFF
	.long	.L611@GOTOFF
	.long	.L612@GOTOFF
	.long	.L613@GOTOFF
	.long	.L613@GOTOFF
	.text
.L613:
	.loc 1 1714 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L615
.L611:
	.loc 1 1716 0
	movl	$99, -8(%ebp)
	jmp	.L615
.L612:
	.loc 1 1718 0
	movl	$100, -8(%ebp)
	jmp	.L615
.L609:
	.loc 1 1720 0
	movl	$101, -8(%ebp)
	jmp	.L615
.L610:
	.loc 1 1722 0
	movl	$102, -8(%ebp)
	jmp	.L615
.L608:
	.loc 1 1724 0
	leal	__FUNCTION__.14218@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1724, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L615:
	movl	-8(%ebp), %eax
	.loc 1 1726 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	swap_tree_comparison, .-swap_tree_comparison
	.section	.rodata
	.type	__FUNCTION__.14231, @object
	.size	__FUNCTION__.14231, 23
__FUNCTION__.14231:
	.string	"comparison_to_compcode"
	.text
	.type	comparison_to_compcode, @function
comparison_to_compcode:
.LFB42:
	.loc 1 1736 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$20, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1737 0
	movl	8(%ebp), %eax
	subl	$99, %eax
	movl	%eax, -12(%ebp)
	cmpl	$5, -12(%ebp)
	ja	.L618
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	.L625@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L625:
	.long	.L619@GOTOFF
	.long	.L620@GOTOFF
	.long	.L621@GOTOFF
	.long	.L622@GOTOFF
	.long	.L623@GOTOFF
	.long	.L624@GOTOFF
	.text
.L619:
	.loc 1 1740 0
	movl	$1, -8(%ebp)
	jmp	.L626
.L623:
	.loc 1 1742 0
	movl	$2, -8(%ebp)
	jmp	.L626
.L620:
	.loc 1 1744 0
	movl	$3, -8(%ebp)
	jmp	.L626
.L621:
	.loc 1 1746 0
	movl	$4, -8(%ebp)
	jmp	.L626
.L624:
	.loc 1 1748 0
	movl	$5, -8(%ebp)
	jmp	.L626
.L622:
	.loc 1 1750 0
	movl	$6, -8(%ebp)
	jmp	.L626
.L618:
	.loc 1 1752 0
	leal	__FUNCTION__.14231@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1752, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L626:
	movl	-8(%ebp), %eax
	.loc 1 1754 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	comparison_to_compcode, .-comparison_to_compcode
	.section	.rodata
	.type	__FUNCTION__.14244, @object
	.size	__FUNCTION__.14244, 23
__FUNCTION__.14244:
	.string	"compcode_to_comparison"
	.text
	.type	compcode_to_comparison, @function
compcode_to_comparison:
.LFB43:
	.loc 1 1763 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$20, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1764 0
	cmpl	$6, 8(%ebp)
	ja	.L629
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	.L636@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L636:
	.long	.L629@GOTOFF
	.long	.L630@GOTOFF
	.long	.L631@GOTOFF
	.long	.L632@GOTOFF
	.long	.L633@GOTOFF
	.long	.L634@GOTOFF
	.long	.L635@GOTOFF
	.text
.L630:
	.loc 1 1767 0
	movl	$99, -8(%ebp)
	jmp	.L637
.L631:
	.loc 1 1769 0
	movl	$103, -8(%ebp)
	jmp	.L637
.L632:
	.loc 1 1771 0
	movl	$100, -8(%ebp)
	jmp	.L637
.L633:
	.loc 1 1773 0
	movl	$101, -8(%ebp)
	jmp	.L637
.L634:
	.loc 1 1775 0
	movl	$104, -8(%ebp)
	jmp	.L637
.L635:
	.loc 1 1777 0
	movl	$102, -8(%ebp)
	jmp	.L637
.L629:
	.loc 1 1779 0
	leal	__FUNCTION__.14244@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1779, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L637:
	movl	-8(%ebp), %eax
	.loc 1 1781 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	compcode_to_comparison, .-compcode_to_comparison
	.type	truth_value_p, @function
truth_value_p:
.LFB44:
	.loc 1 1788 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	subl	$4, %esp
.LCFI147:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1789 0
	movl	8(%ebp), %eax
	movl	tree_code_type@GOT(%ecx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L640
	cmpl	$95, 8(%ebp)
	je	.L640
	cmpl	$93, 8(%ebp)
	je	.L640
	cmpl	$96, 8(%ebp)
	je	.L640
	cmpl	$94, 8(%ebp)
	je	.L640
	cmpl	$97, 8(%ebp)
	je	.L640
	cmpl	$98, 8(%ebp)
	jne	.L647
.L640:
	movl	$1, -4(%ebp)
	jmp	.L648
.L647:
	movl	$0, -4(%ebp)
.L648:
	movl	-4(%ebp), %eax
	.loc 1 1793 0
	leave
	ret
.LFE44:
	.size	truth_value_p, .-truth_value_p
.globl operand_equal_p
	.type	operand_equal_p, @function
operand_equal_p:
.LFB45:
	.loc 1 1807 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	pushl	%edi
.LCFI150:
	pushl	%esi
.LCFI151:
	pushl	%ebx
.LCFI152:
	subl	$92, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1811 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L654
	.loc 1 1812 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L655:
	.loc 1 1814 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L654:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L656
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L656
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L661
.L656:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L661
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L655
	.loc 1 1815 0
	jmp	.L661
.L662:
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%ebp)
.L661:
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L663
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L663
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L666
.L663:
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L666
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L662
.L666:
	.loc 1 1817 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L668
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L668
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.L668
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L672
.L668:
	.loc 1 1823 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L672:
	.loc 1 1832 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L673
	cmpl	$0, 16(%ebp)
	jne	.L673
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	je	.L676
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L673
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L673
.L676:
	.loc 1 1835 0
	movl	$1, -68(%ebp)
	jmp	.L653
.L673:
	.loc 1 1839 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L679
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L679
	.loc 1 1840 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	cmpl	$28, -64(%ebp)
	je	.L684
	cmpl	$28, -64(%ebp)
	ja	.L688
	cmpl	$26, -64(%ebp)
	je	.L682
	cmpl	$27, -64(%ebp)
	je	.L683
	jmp	.L679
.L688:
	cmpl	$30, -64(%ebp)
	je	.L686
	cmpl	$30, -64(%ebp)
	jb	.L685
	cmpl	$123, -64(%ebp)
	je	.L687
	jmp	.L679
.L682:
	.loc 1 1843 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L689
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L689
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L689
	movl	$1, -60(%ebp)
	jmp	.L693
.L689:
	movl	$0, -60(%ebp)
.L693:
	movl	-60(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L653
.L683:
	.loc 1 1848 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L694
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L694
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	real_identical@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L694
	movl	$1, -56(%ebp)
	jmp	.L698
.L694:
	movl	$0, -56(%ebp)
.L698:
	movl	-56(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L653
.L685:
.LBB12:
	.loc 1 1857 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L699
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L701
.L699:
	.loc 1 1859 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L701:
	.loc 1 1861 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1862 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1863 0
	jmp	.L702
.L703:
	.loc 1 1865 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L704
	.loc 1 1866 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L704:
	.loc 1 1867 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1868 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L702:
	.loc 1 1863 0
	cmpl	$0, -20(%ebp)
	je	.L706
	cmpl	$0, -16(%ebp)
	jne	.L703
.L706:
	.loc 1 1871 0
	movl	$1, -68(%ebp)
	jmp	.L653
.L684:
.LBE12:
	.loc 1 1875 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L708
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L708
	movl	$1, -52(%ebp)
	jmp	.L711
.L708:
	movl	$0, -52(%ebp)
.L711:
	movl	-52(%ebp), %esi
	movl	%esi, -68(%ebp)
	jmp	.L653
.L686:
	.loc 1 1881 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L712
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -76(%ebp)
	movl	%ecx, -80(%ebp)
	cld
	movl	-80(%ebp), %edi
	cmpl	%edi, -80(%ebp)
	movl	-72(%ebp), %esi
	movl	-76(%ebp), %edi
	movl	-80(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L712
	movl	$1, -48(%ebp)
	jmp	.L715
.L712:
	movl	$0, -48(%ebp)
.L715:
	movl	-48(%ebp), %esi
	movl	%esi, -68(%ebp)
	jmp	.L653
.L687:
	.loc 1 1887 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	movl	%eax, -68(%ebp)
	jmp	.L653
.L679:
	.loc 1 1893 0
	cmpl	$0, 16(%ebp)
	je	.L716
	.loc 1 1894 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L716:
	.loc 1 1896 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	cmpl	$60, -44(%ebp)
	je	.L720
	cmpl	$60, -44(%ebp)
	jg	.L723
	cmpl	$49, -44(%ebp)
	je	.L719
	cmpl	$50, -44(%ebp)
	je	.L720
	jmp	.L718
.L723:
	cmpl	$101, -44(%ebp)
	je	.L721
	cmpl	$114, -44(%ebp)
	je	.L722
	jmp	.L718
.L719:
	.loc 1 1900 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L724
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	jne	.L726
.L724:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L726
	.loc 1 1903 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L726:
	.loc 1 1905 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	movl	%eax, -68(%ebp)
	jmp	.L653
.L720:
	.loc 1 1910 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L728
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L728
	.loc 1 1913 0
	movl	$1, -68(%ebp)
	jmp	.L653
.L728:
	.loc 1 1916 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	je	.L731
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	je	.L731
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$80, %al
	je	.L731
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$81, %al
	je	.L731
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$88, %al
	je	.L731
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$89, %al
	je	.L731
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	je	.L731
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$104, %al
	je	.L731
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$103, %al
	jne	.L740
.L731:
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L740
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L740
	movl	$1, -40(%ebp)
	jmp	.L743
.L740:
	movl	$0, -40(%ebp)
.L743:
	movl	-40(%ebp), %edi
	movl	%edi, -68(%ebp)
	jmp	.L653
.L722:
	.loc 1 1930 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L744
	movl	12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L746
.L744:
	.loc 1 1932 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L746:
	.loc 1 1934 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$40, %eax
	movl	%eax, -84(%ebp)
	cmpl	$5, -84(%ebp)
	ja	.L747
	movl	-84(%ebp), %eax
	sall	$2, %eax
	movl	.L751@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L751:
	.long	.L748@GOTOFF
	.long	.L749@GOTOFF
	.long	.L750@GOTOFF
	.long	.L747@GOTOFF
	.long	.L748@GOTOFF
	.long	.L748@GOTOFF
	.text
.L750:
	.loc 1 1937 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	movl	%eax, -68(%ebp)
	jmp	.L653
.L748:
	.loc 1 1943 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L752
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L752
	movl	$1, -36(%ebp)
	jmp	.L755
.L752:
	movl	$0, -36(%ebp)
.L755:
	movl	-36(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L653
.L749:
	.loc 1 1949 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L756
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L756
	movl	12(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L756
	movl	$1, -32(%ebp)
	jmp	.L760
.L756:
	movl	$0, -32(%ebp)
.L760:
	movl	-32(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	jmp	.L653
.L747:
	.loc 1 1956 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L721:
	.loc 1 1960 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$122, %al
	jne	.L761
	.loc 1 1961 0
	movl	12(%ebp), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_p@PLT
	movl	%eax, -68(%ebp)
	jmp	.L653
.L761:
	.loc 1 1962 0
	movl	$0, -68(%ebp)
	jmp	.L653
.L718:
	.loc 1 1965 0
	movl	$0, -68(%ebp)
.L653:
	movl	-68(%ebp), %eax
	.loc 1 1967 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	operand_equal_p, .-operand_equal_p
	.type	operand_equal_for_comparison_p, @function
operand_equal_for_comparison_p:
.LFB46:
	.loc 1 1978 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$52, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1983 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L765
	.loc 1 1984 0
	movl	$1, -40(%ebp)
	jmp	.L767
.L765:
	.loc 1 1986 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L768
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L768
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L768
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L772
.L768:
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L773
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L773
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L773
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L773
.L772:
	.loc 1 1988 0
	movl	$0, -40(%ebp)
	jmp	.L767
.L773:
	.loc 1 1993 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1994 0
	jmp	.L777
.L778:
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
.L777:
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L779
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L779
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L784
.L779:
	movl	-24(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L784
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L778
	.loc 1 1995 0
	jmp	.L784
.L785:
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L784:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L786
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L786
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L789
.L786:
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L789
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L785
.L789:
	.loc 1 1996 0
	movl	$0, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L791
	.loc 1 1997 0
	movl	$1, -40(%ebp)
	jmp	.L767
.L791:
	.loc 1 2005 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2006 0
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_narrower@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2008 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2009 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L793
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-12(%ebp), %eax
	jae	.L793
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-12(%ebp), %eax
	jae	.L793
.LBB13:
	.loc 1 2013 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2017 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	276(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2020 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L793
	.loc 1 2021 0
	movl	$1, -40(%ebp)
	jmp	.L767
.L793:
.LBE13:
	.loc 1 2024 0
	movl	$0, -40(%ebp)
.L767:
	movl	-40(%ebp), %eax
	.loc 1 2025 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	operand_equal_for_comparison_p, .-operand_equal_for_comparison_p
	.type	twoval_comparison_p, @function
twoval_comparison_p:
.LFB47:
	.loc 1 2042 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$52, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2043 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	.loc 1 2044 0
	movl	-12(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, -5(%ebp)
	.loc 1 2047 0
	cmpb	$101, -5(%ebp)
	jne	.L800
	cmpl	$98, -12(%ebp)
	jne	.L800
	.loc 1 2048 0
	movb	$49, -5(%ebp)
	.loc 1 2047 0
	jmp	.L803
.L800:
	.loc 1 2049 0
	cmpb	$101, -5(%ebp)
	jne	.L804
	cmpl	$93, -12(%ebp)
	je	.L806
	cmpl	$94, -12(%ebp)
	je	.L806
	cmpl	$48, -12(%ebp)
	jne	.L804
.L806:
	.loc 1 2052 0
	movb	$50, -5(%ebp)
	.loc 1 2049 0
	jmp	.L803
.L804:
	.loc 1 2054 0
	cmpb	$101, -5(%ebp)
	jne	.L803
	cmpl	$120, -12(%ebp)
	jne	.L803
	movl	8(%ebp), %eax
	addl	$20, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L803
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L803
	.loc 1 2059 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L813
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L815
.L813:
	.loc 1 2060 0
	movl	$0, -36(%ebp)
	jmp	.L816
.L815:
	.loc 1 2062 0
	movb	$49, -5(%ebp)
	.loc 1 2063 0
	movl	20(%ebp), %eax
	movl	$1, (%eax)
.L803:
	.loc 1 2066 0
	movzbl	-5(%ebp), %eax
	movl	%eax, -32(%ebp)
	cmpl	$60, -32(%ebp)
	je	.L820
	cmpl	$60, -32(%ebp)
	jg	.L823
	cmpl	$49, -32(%ebp)
	je	.L818
	cmpl	$50, -32(%ebp)
	je	.L819
	jmp	.L817
.L823:
	cmpl	$99, -32(%ebp)
	je	.L821
	cmpl	$101, -32(%ebp)
	je	.L822
	jmp	.L817
.L818:
	.loc 1 2069 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	twoval_comparison_p
	movl	%eax, -36(%ebp)
	jmp	.L816
.L819:
	.loc 1 2072 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	twoval_comparison_p
	testl	%eax, %eax
	je	.L824
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	twoval_comparison_p
	testl	%eax, %eax
	je	.L824
	movl	$1, -28(%ebp)
	jmp	.L827
.L824:
	movl	$0, -28(%ebp)
.L827:
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L816
.L821:
	.loc 1 2077 0
	movl	$1, -36(%ebp)
	jmp	.L816
.L822:
	.loc 1 2080 0
	cmpl	$52, -12(%ebp)
	jne	.L828
	.loc 1 2081 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	twoval_comparison_p
	testl	%eax, %eax
	je	.L830
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	twoval_comparison_p
	testl	%eax, %eax
	je	.L830
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	twoval_comparison_p
	testl	%eax, %eax
	je	.L830
	movl	$1, -24(%ebp)
	jmp	.L834
.L830:
	movl	$0, -24(%ebp)
.L834:
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L816
.L828:
	.loc 1 2087 0
	movl	$0, -36(%ebp)
	jmp	.L816
.L820:
	.loc 1 2096 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L835
	.loc 1 2098 0
	movl	$0, -36(%ebp)
	jmp	.L816
.L835:
	.loc 1 2100 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L837
	.loc 1 2101 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L839
.L837:
	.loc 1 2102 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L839
	.loc 1 2104 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L841
	.loc 1 2105 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L839
.L841:
	.loc 1 2106 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L839
	.loc 1 2109 0
	movl	$0, -36(%ebp)
	jmp	.L816
.L839:
	.loc 1 2111 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L844
	.loc 1 2113 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L846
	.loc 1 2114 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L844
.L846:
	.loc 1 2115 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L844
	.loc 1 2118 0
	movl	$0, -36(%ebp)
	jmp	.L816
.L844:
	.loc 1 2120 0
	movl	$1, -36(%ebp)
	jmp	.L816
.L817:
	.loc 1 2123 0
	movl	$0, -36(%ebp)
.L816:
	movl	-36(%ebp), %eax
	.loc 1 2125 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	twoval_comparison_p, .-twoval_comparison_p
	.type	eval_subst, @function
eval_subst:
.LFB48:
	.loc 1 2136 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%edi
.LCFI164:
	pushl	%esi
.LCFI165:
	pushl	%ebx
.LCFI166:
	subl	$76, %esp
.LCFI167:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2137 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2138 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2139 0
	movl	-28(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, -13(%ebp)
	.loc 1 2142 0
	cmpb	$101, -13(%ebp)
	jne	.L851
	cmpl	$98, -28(%ebp)
	jne	.L851
	.loc 1 2143 0
	movb	$49, -13(%ebp)
	.loc 1 2142 0
	jmp	.L854
.L851:
	.loc 1 2144 0
	cmpb	$101, -13(%ebp)
	jne	.L854
	cmpl	$93, -28(%ebp)
	je	.L856
	cmpl	$94, -28(%ebp)
	jne	.L854
.L856:
	.loc 1 2146 0
	movb	$50, -13(%ebp)
.L854:
	.loc 1 2148 0
	movzbl	-13(%ebp), %eax
	movl	%eax, -52(%ebp)
	cmpl	$50, -52(%ebp)
	je	.L860
	cmpl	$50, -52(%ebp)
	jg	.L863
	cmpl	$49, -52(%ebp)
	je	.L859
	jmp	.L858
.L863:
	cmpl	$60, -52(%ebp)
	je	.L861
	cmpl	$101, -52(%ebp)
	je	.L862
	jmp	.L858
.L859:
	.loc 1 2151 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_subst
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -48(%ebp)
	jmp	.L864
.L860:
	.loc 1 2156 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_subst
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_subst
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -48(%ebp)
	jmp	.L864
.L862:
	.loc 1 2163 0
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	cmpl	$52, -56(%ebp)
	je	.L866
	cmpl	$120, -56(%ebp)
	je	.L867
	cmpl	$48, -56(%ebp)
	je	.L865
	jmp	.L861
.L867:
	.loc 1 2166 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_subst
	movl	%eax, -48(%ebp)
	jmp	.L864
.L865:
	.loc 1 2169 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_subst
	movl	%eax, -48(%ebp)
	jmp	.L864
.L866:
	.loc 1 2172 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_subst
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_subst
	movl	%eax, %edi
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	eval_subst
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -48(%ebp)
	jmp	.L864
.L861:
.LBB14:
	.loc 1 2186 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2187 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2193 0
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L868
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L870
.L868:
	.loc 1 2194 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2193 0
	jmp	.L871
.L870:
	.loc 1 2195 0
	movl	-24(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L872
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L871
.L872:
	.loc 1 2196 0
	movl	24(%ebp), %eax
	movl	%eax, -24(%ebp)
.L871:
	.loc 1 2198 0
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L874
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L876
.L874:
	.loc 1 2199 0
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2198 0
	jmp	.L877
.L876:
	.loc 1 2200 0
	movl	-20(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L878
	movl	$0, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L877
.L878:
	.loc 1 2201 0
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
.L877:
	.loc 1 2203 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -48(%ebp)
	jmp	.L864
.L858:
.LBE14:
	.loc 1 2207 0
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
.L864:
	movl	-48(%ebp), %eax
	.loc 1 2209 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE48:
	.size	eval_subst, .-eval_subst
	.type	omit_one_operand, @function
omit_one_operand:
.LFB49:
	.loc 1 2221 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$36, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2222 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2224 0
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L882
	.loc 1 2225 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -24(%ebp)
	jmp	.L884
.L882:
	.loc 1 2227 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -24(%ebp)
.L884:
	movl	-24(%ebp), %eax
	.loc 1 2228 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	omit_one_operand, .-omit_one_operand
	.type	pedantic_omit_one_operand, @function
pedantic_omit_one_operand:
.LFB50:
	.loc 1 2235 0
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$36, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2236 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2238 0
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L887
	.loc 1 2239 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -24(%ebp)
	jmp	.L889
.L887:
	.loc 1 2241 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -24(%ebp)
.L889:
	movl	-24(%ebp), %eax
	.loc 1 2242 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	pedantic_omit_one_operand, .-pedantic_omit_one_operand
	.section	.rodata
	.type	__FUNCTION__.14901, @object
	.size	__FUNCTION__.14901, 18
__FUNCTION__.14901:
	.string	"invert_truthvalue"
	.text
.globl invert_truthvalue
	.type	invert_truthvalue, @function
invert_truthvalue:
.LFB51:
	.loc 1 2251 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%edi
.LCFI178:
	pushl	%esi
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$44, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2252 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2253 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2255 0
	cmpl	$0, -16(%ebp)
	jne	.L892
	.loc 1 2256 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L894
.L892:
	.loc 1 2262 0
	movl	-16(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L895
	.loc 1 2264 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L897
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L899
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L899
.L897:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L899
	cmpl	$104, -16(%ebp)
	je	.L899
	cmpl	$103, -16(%ebp)
	je	.L899
	.loc 1 2268 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$98, (%esp)
	call	build1@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L899:
	.loc 1 2270 0
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %edi
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_tree_comparison
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L895:
	.loc 1 2274 0
	movl	-16(%ebp), %eax
	subl	$26, %eax
	movl	%eax, -36(%ebp)
	cmpl	$94, -36(%ebp)
	ja	.L904
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	.L920@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L920:
	.long	.L905@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L906@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L907@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L908@GOTOFF
	.long	.L904@GOTOFF
	.long	.L909@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L910@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L911@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L912@GOTOFF
	.long	.L913@GOTOFF
	.long	.L914@GOTOFF
	.long	.L915@GOTOFF
	.long	.L916@GOTOFF
	.long	.L917@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L904@GOTOFF
	.long	.L910@GOTOFF
	.long	.L910@GOTOFF
	.long	.L918@GOTOFF
	.long	.L904@GOTOFF
	.long	.L919@GOTOFF
	.text
.L905:
	.loc 1 2277 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L914:
	.loc 1 2280 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$96, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L915:
	.loc 1 2285 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$95, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L916:
	.loc 1 2295 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$98, %al
	jne	.L921
	.loc 1 2296 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$97, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L921:
	.loc 1 2299 0
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$97, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L912:
	.loc 1 2304 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$94, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L913:
	.loc 1 2309 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L917:
	.loc 1 2314 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L894
.L907:
	.loc 1 2317 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%esi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L906:
	.loc 1 2322 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L909:
	.loc 1 2326 0
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$59, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L918:
	.loc 1 2331 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L910:
	.loc 1 2336 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build1@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L911:
	.loc 1 2340 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L904
	.loc 1 2342 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L919:
	.loc 1 2345 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$98, (%esp)
	call	build1@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L908:
	.loc 1 2348 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$57, (%esp)
	call	build1@PLT
	movl	%eax, -32(%ebp)
	jmp	.L894
.L904:
	.loc 1 2354 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L924
	.loc 1 2355 0
	leal	__FUNCTION__.14901@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2355, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L924:
	.loc 1 2356 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$98, (%esp)
	call	build1@PLT
	movl	%eax, -32(%ebp)
.L894:
	movl	-32(%ebp), %eax
	.loc 1 2357 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	invert_truthvalue, .-invert_truthvalue
	.type	distribute_bit_expr, @function
distribute_bit_expr:
.LFB52:
	.loc 1 2373 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$36, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2377 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L928
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	8(%ebp), %eax
	je	.L928
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	je	.L931
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$88, %al
	je	.L931
.L928:
	.loc 1 2381 0
	movl	$0, -24(%ebp)
	jmp	.L933
.L931:
	.loc 1 2383 0
	movl	20(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L934
	.loc 1 2385 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2386 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2387 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L934:
	.loc 1 2389 0
	movl	20(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L937
	.loc 1 2391 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2392 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2393 0
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L937:
	.loc 1 2395 0
	movl	20(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L939
	.loc 1 2397 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2398 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2399 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L939:
	.loc 1 2401 0
	movl	20(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L941
	.loc 1 2403 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2404 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2405 0
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L936
.L941:
	.loc 1 2408 0
	movl	$0, -24(%ebp)
	jmp	.L933
.L936:
	.loc 1 2410 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -24(%ebp)
.L933:
	movl	-24(%ebp), %eax
	.loc 1 2412 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	distribute_bit_expr, .-distribute_bit_expr
	.type	make_bit_field_ref, @function
make_bit_field_ref:
.LFB53:
	.loc 1 2423 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%esi
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$48, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2425 0
	movl	20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$3, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$41, (%esp)
	call	build@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2427 0
	movl	24(%ebp), %eax
	andl	$1, %eax
	movl	-12(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$5, %edx
	movzbl	9(%ecx), %eax
	andl	$-33, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	.loc 1 2429 0
	movl	-12(%ebp), %eax
	.loc 1 2430 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE53:
	.size	make_bit_field_ref, .-make_bit_field_ref
	.section	.rodata
	.align 4
.LC1:
	.string	"comparison is always %d due to width of bit-field"
	.text
	.type	optimize_bit_field_compare, @function
optimize_bit_field_compare:
.LFB54:
	.loc 1 2457 0
	pushl	%ebp
.LCFI191:
	movl	%esp, %ebp
.LCFI192:
	pushl	%edi
.LCFI193:
	pushl	%esi
.LCFI194:
	pushl	%ebx
.LCFI195:
	subl	$204, %esp
.LCFI196:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2459 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2461 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	.loc 1 2464 0
	movl	$0, -72(%ebp)
	movl	$0, -76(%ebp)
	.loc 1 2465 0
	movl	$0, -28(%ebp)
	.loc 1 2474 0
	leal	-72(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inner_reference@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2476 0
	movl	-32(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L947
	movl	-56(%ebp), %eax
	movl	%eax, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	%edx, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L947
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	testl	%edx, %edx
	js	.L947
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	jne	.L947
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$58, %al
	jne	.L952
.L947:
	.loc 1 2478 0
	movl	$0, -160(%ebp)
	jmp	.L953
.L952:
	.loc 1 2480 0
	cmpl	$0, -40(%ebp)
	jne	.L954
	.loc 1 2484 0
	leal	-76(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-80(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inner_reference@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2487 0
	movl	-28(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	.L956
	movl	-104(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L956
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L956
	movl	-64(%ebp), %edx
	movl	-68(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L956
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	jne	.L956
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$58, %al
	jne	.L954
.L956:
	.loc 1 2490 0
	movl	$0, -160(%ebp)
	jmp	.L953
.L954:
	.loc 1 2495 0
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	jne	.L962
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	je	.L964
.L962:
	movl	$1, -156(%ebp)
	jmp	.L965
.L964:
	movl	$0, -156(%ebp)
.L965:
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -152(%ebp)
	cmpl	$0, -40(%ebp)
	je	.L966
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L968
.L966:
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -144(%ebp)
	movl	%edx, -148(%ebp)
	movl	-144(%ebp), %eax
	cmpl	%eax, -148(%ebp)
	jbe	.L968
	movl	-144(%ebp), %edx
	movl	%edx, -148(%ebp)
.L968:
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, %ecx
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	-156(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	-152(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	get_best_mode@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2500 0
	cmpl	$0, -36(%ebp)
	jne	.L970
	.loc 1 2501 0
	movl	$0, -160(%ebp)
	jmp	.L953
.L970:
	.loc 1 2505 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -48(%ebp)
	.loc 1 2506 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	$1, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -44(%ebp)
	.loc 1 2511 0
	movl	-36(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	.loc 1 2512 0
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%esi, %ecx
	andl	%eax, %ecx
	movl	%ecx, -96(%ebp)
	movl	%edi, %eax
	andl	%edx, %eax
	movl	%eax, -92(%ebp)
	.loc 1 2513 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	subl	-96(%ebp), %eax
	sbbl	-92(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	.loc 1 2514 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	-84(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-88(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L972
	.loc 1 2515 0
	movl	$0, -160(%ebp)
	jmp	.L953
.L972:
	.loc 1 2517 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L974
	.loc 1 2518 0
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	-168(%ebp), %esi
	movl	-164(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
.L974:
	.loc 1 2521 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2522 0
	movl	-24(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2523 0
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	.loc 1 2524 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2525 0
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -24(%ebp)
	.loc 1 2526 0
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, -172(%ebp)
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -168(%ebp)
	movl	%edx, -164(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	-168(%ebp), %esi
	movl	-164(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -24(%ebp)
	.loc 1 2529 0
	cmpl	$0, -40(%ebp)
	jne	.L976
	.loc 1 2532 0
	movl	-96(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	$1, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	make_bit_field_ref
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, %esi
	movl	-96(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	$1, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	make_bit_field_ref
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -160(%ebp)
	jmp	.L953
.L976:
	.loc 1 2551 0
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	je	.L978
	.loc 1 2553 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L985
	.loc 1 2557 0
	cmpl	$104, 8(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 2559 0
	cmpl	$104, 8(%ebp)
	jne	.L982
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L984
.L982:
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
.L984:
	movl	-140(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -160(%ebp)
	jmp	.L953
.L978:
.LBB15:
	.loc 1 2567 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -20(%ebp)
	.loc 1 2568 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L985
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	jne	.L985
	.loc 1 2570 0
	cmpl	$104, 8(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 2572 0
	cmpl	$104, 8(%ebp)
	jne	.L988
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L990
.L988:
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -136(%ebp)
.L990:
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -160(%ebp)
	jmp	.L953
.L985:
.LBE15:
	.loc 1 2579 0
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L991
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L991
	.loc 1 2581 0
	cmpl	$103, 8(%ebp)
	jne	.L994
	movl	$104, -132(%ebp)
	jmp	.L996
.L994:
	movl	$103, -132(%ebp)
.L996:
	movl	-132(%ebp), %edx
	movl	%edx, 8(%ebp)
	.loc 1 2582 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 20(%ebp)
.L991:
	.loc 1 2588 0
	movl	-96(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	$1, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	make_bit_field_ref
	movl	%eax, 16(%ebp)
	.loc 1 2589 0
	movl	-72(%ebp), %eax
	testl	%eax, %eax
	je	.L997
	.loc 1 2591 0
	movl	16(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$1, %eax
	movb	%al, 9(%edx)
	.loc 1 2592 0
	movl	16(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$8, %eax
	movb	%al, 9(%edx)
.L997:
	.loc 1 2595 0
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 20(%ebp)
	.loc 1 2601 0
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -160(%ebp)
.L953:
	movl	-160(%ebp), %eax
	.loc 1 2604 0
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE54:
	.size	optimize_bit_field_compare, .-optimize_bit_field_compare
	.type	decode_field_reference, @function
decode_field_reference:
.LFB55:
	.loc 1 2638 0
	pushl	%ebp
.LCFI197:
	movl	%esp, %ebp
.LCFI198:
	pushl	%edi
.LCFI199:
	pushl	%esi
.LCFI200:
	pushl	%ebx
.LCFI201:
	subl	$92, %esp
.LCFI202:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2639 0
	movl	$0, -36(%ebp)
	.loc 1 2647 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1007
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1007
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1007
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L1007
	.loc 1 2648 0
	movl	$0, -52(%ebp)
	jmp	.L1006
.L1008:
	.loc 1 2650 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1007:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1009
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1009
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1012
.L1009:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1012
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1008
.L1012:
	.loc 1 2652 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L1014
	.loc 1 2654 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2655 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2656 0
	jmp	.L1016
.L1017:
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1016:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1018
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1018
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1023
.L1018:
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1023
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1017
	jmp	.L1023
.L1024:
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1023:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1025
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1025
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1028
.L1025:
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1028
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1024
.L1028:
	.loc 1 2657 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1014
	.loc 1 2658 0
	movl	$0, -52(%ebp)
	jmp	.L1006
.L1014:
	.loc 1 2661 0
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_inner_reference@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2663 0
	movl	-28(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L1031
	cmpl	$0, -36(%ebp)
	je	.L1033
.L1031:
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	testl	%edx, %edx
	js	.L1033
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jne	.L1033
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$58, %al
	jne	.L1036
.L1033:
	.loc 1 2666 0
	movl	$0, -52(%ebp)
	jmp	.L1006
.L1036:
	.loc 1 2669 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	264(%eax), %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	movl	%eax, -24(%ebp)
	.loc 1 2670 0
	movl	-24(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2672 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -32(%ebp)
	.loc 1 2673 0
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2674 0
	movl	$0, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	.loc 1 2675 0
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -32(%ebp)
	.loc 1 2676 0
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -32(%ebp)
	.loc 1 2679 0
	cmpl	$0, -36(%ebp)
	je	.L1037
	.loc 1 2680 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -32(%ebp)
.L1037:
	.loc 1 2683 0
	movl	32(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2684 0
	movl	36(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2685 0
	movl	-28(%ebp), %edi
	movl	%edi, -52(%ebp)
.L1006:
	movl	-52(%ebp), %eax
	.loc 1 2686 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE55:
	.size	decode_field_reference, .-decode_field_reference
	.type	all_ones_mask_p, @function
all_ones_mask_p:
.LFB56:
	.loc 1 2695 0
	pushl	%ebp
.LCFI203:
	movl	%esp, %ebp
.LCFI204:
	pushl	%esi
.LCFI205:
	pushl	%ebx
.LCFI206:
	subl	$32, %esp
.LCFI207:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2696 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2697 0
	movl	-20(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2700 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2701 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2702 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	.loc 1 2703 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	subl	%edx, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	subl	%edx, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	.loc 1 2710 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE56:
	.size	all_ones_mask_p, .-all_ones_mask_p
	.type	sign_bit_p, @function
sign_bit_p:
.LFB57:
	.loc 1 2722 0
	pushl	%ebp
.LCFI208:
	movl	%esp, %ebp
.LCFI209:
	subl	$48, %esp
.LCFI210:
	.loc 1 2729 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2730 0
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1043
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1043
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1043
	movl	-4(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L1043
	.loc 1 2731 0
	movl	$0, -36(%ebp)
	jmp	.L1048
.L1043:
	.loc 1 2734 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1049
	movl	12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1051
.L1049:
	.loc 1 2736 0
	movl	$0, -36(%ebp)
	jmp	.L1048
.L1051:
	.loc 1 2738 0
	movl	-4(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -8(%ebp)
	.loc 1 2739 0
	cmpl	$64, -8(%ebp)
	jle	.L1052
	.loc 1 2741 0
	movl	-8(%ebp), %ecx
	subl	$65, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1063
	movl	%eax, %edx
	xorl	%eax, %eax
.L1063:
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 2742 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	jmp	.L1054
.L1052:
	.loc 1 2746 0
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 2747 0
	movl	-8(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1062
	movl	%eax, %edx
	xorl	%eax, %eax
.L1062:
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.L1054:
	.loc 1 2750 0
	movl	12(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edx, %ecx
	xorl	-12(%ebp), %ecx
	xorl	-16(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1055
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%edx, %ecx
	xorl	-20(%ebp), %ecx
	xorl	-24(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1055
	.loc 1 2751 0
	movl	8(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1048
.L1055:
	.loc 1 2754 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L1058
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	-8(%ebp), %eax
	jge	.L1058
	.loc 1 2756 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sign_bit_p
	movl	%eax, -36(%ebp)
	jmp	.L1048
.L1058:
	.loc 1 2758 0
	movl	$0, -36(%ebp)
.L1048:
	movl	-36(%ebp), %eax
	.loc 1 2759 0
	leave
	ret
.LFE57:
	.size	sign_bit_p, .-sign_bit_p
	.type	simple_operand_p, @function
simple_operand_p:
.LFB58:
	.loc 1 2767 0
	pushl	%ebp
.LCFI211:
	movl	%esp, %ebp
.LCFI212:
	subl	$4, %esp
.LCFI213:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2769 0
	jmp	.L1065
.L1066:
	.loc 1 2773 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%ebp)
.L1065:
	.loc 1 2769 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1067
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	jne	.L1069
.L1067:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1066
.L1069:
	.loc 1 2775 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$99, %al
	je	.L1070
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ecx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L1072
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1072
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1072
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1072
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1072
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1072
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1070
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1072
.L1070:
	movl	$1, -4(%ebp)
	jmp	.L1080
.L1072:
	movl	$0, -4(%ebp)
.L1080:
	movl	-4(%ebp), %eax
	.loc 1 2788 0
	leave
	ret
.LFE58:
	.size	simple_operand_p, .-simple_operand_p
	.section	.rodata
	.type	__FUNCTION__.15537, @object
	.size	__FUNCTION__.15537, 12
__FUNCTION__.15537:
	.string	"range_binop"
	.text
	.type	range_binop, @function
range_binop:
.LFB59:
	.loc 1 2831 0
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	pushl	%ebx
.LCFI216:
	subl	$84, %esp
.LCFI217:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2841 0
	cmpl	$0, 16(%ebp)
	je	.L1083
	cmpl	$0, 24(%ebp)
	je	.L1083
	.loc 1 2843 0
	movl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -56(%ebp)
	cmpl	$0, 12(%ebp)
	jne	.L1086
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1088
.L1086:
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
.L1088:
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2845 0
	jmp	.L1089
.L1090:
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L1089:
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1091
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1091
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1094
.L1091:
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1094
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1090
.L1094:
	.loc 1 2846 0
	movl	-20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1096
	movl	-20(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1098
.L1096:
	movl	$0, -44(%ebp)
.L1098:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L1099
.L1083:
	.loc 1 2849 0
	movl	8(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L1100
	.loc 1 2850 0
	movl	$0, -48(%ebp)
	jmp	.L1099
.L1100:
	.loc 1 2858 0
	cmpl	$0, 16(%ebp)
	jne	.L1102
	cmpl	$0, 20(%ebp)
	je	.L1104
	movl	$1, -36(%ebp)
	jmp	.L1106
.L1104:
	movl	$-1, -36(%ebp)
.L1106:
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1107
.L1102:
	movl	$0, -40(%ebp)
.L1107:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2859 0
	cmpl	$0, 24(%ebp)
	jne	.L1108
	cmpl	$0, 28(%ebp)
	je	.L1110
	movl	$1, -28(%ebp)
	jmp	.L1112
.L1110:
	movl	$-1, -28(%ebp)
.L1112:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1113
.L1108:
	movl	$0, -32(%ebp)
.L1113:
	movl	-32(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2860 0
	movl	8(%ebp), %eax
	subl	$99, %eax
	movl	%eax, -60(%ebp)
	cmpl	$5, -60(%ebp)
	ja	.L1114
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L1121@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1121:
	.long	.L1115@GOTOFF
	.long	.L1116@GOTOFF
	.long	.L1117@GOTOFF
	.long	.L1118@GOTOFF
	.long	.L1119@GOTOFF
	.long	.L1120@GOTOFF
	.text
.L1119:
	.loc 1 2863 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2864 0
	jmp	.L1122
.L1120:
	.loc 1 2866 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2867 0
	jmp	.L1122
.L1115:
	.loc 1 2869 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	setl	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2870 0
	jmp	.L1122
.L1116:
	.loc 1 2872 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2873 0
	jmp	.L1122
.L1117:
	.loc 1 2875 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2876 0
	jmp	.L1122
.L1118:
	.loc 1 2878 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	setge	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	.loc 1 2879 0
	jmp	.L1122
.L1114:
	.loc 1 2881 0
	leal	__FUNCTION__.15537@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2881, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1122:
	.loc 1 2884 0
	cmpl	$0, -16(%ebp)
	je	.L1123
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1125
.L1123:
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
.L1125:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -48(%ebp)
.L1099:
	movl	-48(%ebp), %eax
	.loc 1 2885 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE59:
	.size	range_binop, .-range_binop
	.section	.rodata
	.type	__FUNCTION__.15630, @object
	.size	__FUNCTION__.15630, 11
__FUNCTION__.15630:
	.string	"make_range"
	.text
	.type	make_range, @function
make_range:
.LFB60:
	.loc 1 2898 0
	pushl	%ebp
.LCFI218:
	movl	%esp, %ebp
.LCFI219:
	pushl	%esi
.LCFI220:
	pushl	%ebx
.LCFI221:
	addl	$-128, %esp
.LCFI222:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2900 0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 2901 0
	movl	$0, -32(%ebp)
	.loc 1 2911 0
	movl	$0, -28(%ebp)
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1227
.L1128:
.L1227:
	.loc 1 2915 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2917 0
	movl	-48(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	je	.L1129
	movl	-48(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	je	.L1129
	movl	-48(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	je	.L1129
	movl	-48(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$101, %al
	jne	.L1133
.L1129:
	.loc 1 2919 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2920 0
	movl	-48(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	je	.L1134
	movl	-48(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	je	.L1134
	movl	-48(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	jne	.L1137
.L1134:
	.loc 1 2923 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
.L1137:
	.loc 1 2924 0
	movl	-48(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	je	.L1138
	movl	-48(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L1138
	movl	-48(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$101, %al
	jne	.L1133
	movl	-48(%ebp), %eax
	movl	tree_code_length@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$1, %al
	jbe	.L1133
.L1138:
	.loc 1 2928 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -40(%ebp)
.L1133:
	.loc 1 2933 0
	cmpl	$0, -36(%ebp)
	je	.L1142
	cmpl	$0, -32(%ebp)
	jne	.L1142
	.loc 1 2934 0
	movl	-36(%ebp), %eax
	movl	%eax, -32(%ebp)
.L1142:
	.loc 1 2936 0
	movl	-48(%ebp), %eax
	subl	$60, %eax
	movl	%eax, -92(%ebp)
	cmpl	$58, -92(%ebp)
	ja	.L1145
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	.L1152@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1152:
	.long	.L1146@GOTOFF
	.long	.L1146@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1147@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1148@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1149@GOTOFF
	.long	.L1150@GOTOFF
	.long	.L1150@GOTOFF
	.long	.L1150@GOTOFF
	.long	.L1150@GOTOFF
	.long	.L1150@GOTOFF
	.long	.L1150@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1145@GOTOFF
	.long	.L1151@GOTOFF
	.long	.L1151@GOTOFF
	.long	.L1151@GOTOFF
	.text
.L1149:
	.loc 1 2939 0
	cmpl	$0, -28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2940 0
	jmp	.L1128
.L1150:
	.loc 1 2949 0
	cmpl	$0, -24(%ebp)
	je	.L1145
	cmpl	$0, -20(%ebp)
	je	.L1145
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1145
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1145
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1145
	.loc 1 2954 0
	movl	-48(%ebp), %eax
	subl	$99, %eax
	movl	%eax, -96(%ebp)
	cmpl	$5, -96(%ebp)
	ja	.L1159
	movl	-96(%ebp), %eax
	sall	$2, %eax
	movl	.L1166@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1166:
	.long	.L1160@GOTOFF
	.long	.L1161@GOTOFF
	.long	.L1162@GOTOFF
	.long	.L1163@GOTOFF
	.long	.L1164@GOTOFF
	.long	.L1165@GOTOFF
	.text
.L1165:
	.loc 1 2957 0
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2958 0
	jmp	.L1167
.L1164:
	.loc 1 2960 0
	cmpl	$0, -28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2961 0
	jmp	.L1167
.L1162:
	.loc 1 2963 0
	movl	$0, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2964 0
	jmp	.L1167
.L1163:
	.loc 1 2966 0
	cmpl	$0, -28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 2967 0
	jmp	.L1167
.L1160:
	.loc 1 2969 0
	movl	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 2970 0
	jmp	.L1167
.L1161:
	.loc 1 2972 0
	cmpl	$0, -28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2973 0
	jmp	.L1167
.L1159:
	.loc 1 2975 0
	leal	__FUNCTION__.15630@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2975, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1167:
	.loc 1 2978 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2984 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1128
	cmpl	$0, -24(%ebp)
	je	.L1170
	cmpl	$0, -20(%ebp)
	jne	.L1128
.L1170:
	.loc 1 2986 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 32(%esp)
	movl	%eax, 28(%esp)
	movl	$1, 24(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_ranges
	testl	%eax, %eax
	je	.L1145
	.loc 1 2991 0
	movl	-52(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2996 0
	cmpl	$0, -20(%ebp)
	jne	.L1128
	cmpl	$0, -24(%ebp)
	je	.L1128
	.loc 1 2998 0
	cmpl	$0, -28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 2999 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$61, (%esp)
	call	range_binop
	movl	%eax, -20(%ebp)
	.loc 1 3001 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -24(%ebp)
	.loc 1 3004 0
	jmp	.L1128
.L1147:
	.loc 1 3008 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	$1, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	range_binop
	movl	%eax, -56(%ebp)
	.loc 1 3010 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	$0, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	range_binop
	movl	%eax, -60(%ebp)
	.loc 1 3012 0
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3013 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3014 0
	jmp	.L1128
.L1148:
	.loc 1 3018 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
	.loc 1 3020 0
	jmp	.L1128
.L1146:
	.loc 1 3023 0
	movl	-40(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1145
	.loc 1 3030 0
	cmpl	$61, -48(%ebp)
	jne	.L1176
	movl	$60, -88(%ebp)
	jmp	.L1178
.L1176:
	movl	$61, -88(%ebp)
.L1178:
	movl	$0, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	range_binop
	movl	%eax, -56(%ebp)
	.loc 1 3032 0
	cmpl	$61, -48(%ebp)
	jne	.L1179
	movl	$60, -84(%ebp)
	jmp	.L1181
.L1179:
	movl	$61, -84(%ebp)
.L1181:
	movl	$0, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	range_binop
	movl	%eax, -60(%ebp)
	.loc 1 3034 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	.L1182
	movl	-56(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1145
.L1182:
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L1184
	movl	-60(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1145
.L1184:
	.loc 1 3040 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	.L1186
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L1186
	movl	-56(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L1186
	.loc 1 3042 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	-60(%ebp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	range_binop
	movl	%eax, -24(%ebp)
	.loc 1 3044 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	-56(%ebp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	range_binop
	movl	%eax, -20(%ebp)
	.loc 1 3051 0
	movl	-56(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L1190
	movl	-60(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	testl	%eax, %eax
	je	.L1190
	.loc 1 3053 0
	movl	$0, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3051 0
	jmp	.L1194
.L1190:
	.loc 1 3055 0
	cmpl	$0, -28(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 3040 0
	jmp	.L1194
.L1186:
	.loc 1 3058 0
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1194:
	.loc 1 3060 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3061 0
	jmp	.L1128
.L1151:
	.loc 1 3064 0
	movl	-36(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-32(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L1145
	.loc 1 3067 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1196
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1196
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1196
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1145
.L1196:
	cmpl	$0, -24(%ebp)
	je	.L1200
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1145
.L1200:
	cmpl	$0, -20(%ebp)
	je	.L1202
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L1145
.L1202:
	.loc 1 3072 0
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 3074 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	.L1204
	.loc 1 3075 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -56(%ebp)
.L1204:
	.loc 1 3077 0
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	je	.L1206
	.loc 1 3078 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -60(%ebp)
.L1206:
	.loc 1 3086 0
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1208
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1208
.LBB16:
	.loc 1 3089 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	260(%eax), %edx
	movl	-36(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -16(%ebp)
	.loc 1 3095 0
	movl	-16(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L1211
	movl	-16(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -80(%ebp)
	jmp	.L1213
.L1211:
	movl	-36(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -80(%ebp)
.L1213:
	movl	-80(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3099 0
	movl	-36(%ebp), %eax
	movzwl	36(%eax), %edx
	andw	$511, %dx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	cmpw	%ax, %dx
	jne	.L1214
	.loc 1 3100 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -12(%ebp)
.L1214:
	.loc 1 3107 0
	cmpl	$0, -24(%ebp)
	je	.L1216
	.loc 1 3109 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %esi
	movl	-12(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%edx, 28(%esp)
	movl	$1, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$1, 12(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_ranges
	testl	%eax, %eax
	je	.L1145
	.loc 1 3115 0
	movl	-52(%ebp), %eax
	cmpl	-28(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L1208
.L1216:
	.loc 1 3121 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %esi
	movl	-12(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%edx, 28(%esp)
	movl	$1, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$0, 12(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_ranges
	testl	%eax, %eax
	je	.L1145
	.loc 1 3127 0
	movl	-52(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
.L1208:
.LBE16:
	.loc 1 3131 0
	movl	-44(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3132 0
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3133 0
	jmp	.L1128
.L1145:
	.loc 1 3143 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1220
	jmp	.L1221
.L1220:
	.loc 1 3145 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$0, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$102, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1222
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$1, 20(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$100, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1222
	movl	$1, -76(%ebp)
	jmp	.L1225
.L1222:
	movl	$0, -76(%ebp)
.L1225:
	movl	-76(%ebp), %eax
	cmpl	-28(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 3149 0
	movl	$0, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3150 0
	movl	$0, 8(%ebp)
.L1221:
	.loc 1 3153 0
	movl	12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	movl	16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	movl	20(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3154 0
	movl	8(%ebp), %eax
	.loc 1 3155 0
	subl	$-128, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE60:
	.size	make_range, .-make_range
	.type	build_range_check, @function
build_range_check:
.LFB61:
	.loc 1 3167 0
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	pushl	%esi
.LCFI225:
	pushl	%ebx
.LCFI226:
	subl	$64, %esp
.LCFI227:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3168 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3171 0
	cmpl	$0, 16(%ebp)
	jne	.L1229
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_range_check
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1229
	.loc 1 3173 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1232
.L1229:
	.loc 1 3175 0
	cmpl	$0, 20(%ebp)
	jne	.L1233
	cmpl	$0, 24(%ebp)
	jne	.L1233
	.loc 1 3176 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1232
.L1233:
	.loc 1 3178 0
	cmpl	$0, 20(%ebp)
	jne	.L1236
	.loc 1 3179 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$100, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1232
.L1236:
	.loc 1 3181 0
	cmpl	$0, 24(%ebp)
	jne	.L1238
	.loc 1 3182 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$102, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1232
.L1238:
	.loc 1 3184 0
	movl	$0, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L1240
	.loc 1 3185 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1232
.L1240:
	.loc 1 3187 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1242
	.loc 1 3189 0
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1244
	.loc 1 3191 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	268(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -20(%ebp)
	.loc 1 3192 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 24(%ebp)
	.loc 1 3193 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 12(%ebp)
.L1244:
	.loc 1 3195 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_range_check
	movl	%eax, -44(%ebp)
	jmp	.L1232
.L1242:
	.loc 1 3199 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1246
	movl	24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1246
.LBB17:
	.loc 1 3205 0
	movl	-20(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3206 0
	cmpl	$64, -12(%ebp)
	jg	.L1249
	.loc 1 3208 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 3209 0
	movl	-12(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1261
	movl	%eax, %edx
	xorl	%eax, %eax
.L1261:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	.L1251
.L1249:
	.loc 1 3213 0
	movl	-12(%ebp), %ecx
	subl	$65, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1260
	movl	%eax, %edx
	xorl	%eax, %eax
.L1260:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 3214 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
.L1251:
	.loc 1 3217 0
	movl	24(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edx, %ecx
	xorl	-28(%ebp), %ecx
	xorl	-32(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1246
	movl	24(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%edx, %ecx
	xorl	-36(%ebp), %ecx
	xorl	-40(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1246
	.loc 1 3219 0
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1254
	.loc 1 3221 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -20(%ebp)
	.loc 1 3222 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 12(%ebp)
.L1254:
	.loc 1 3224 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$101, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1232
.L1246:
.LBE17:
	.loc 1 3229 0
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	.L1256
	movl	-16(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1256
	.loc 1 3231 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_range_check
	movl	%eax, -44(%ebp)
	jmp	.L1232
.L1256:
	.loc 1 3235 0
	movl	$0, -44(%ebp)
.L1232:
	movl	-44(%ebp), %eax
	.loc 1 3236 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE61:
	.size	build_range_check, .-build_range_check
	.type	merge_ranges, @function
merge_ranges:
.LFB62:
	.loc 1 3247 0
	pushl	%ebp
.LCFI228:
	movl	%esp, %ebp
.LCFI229:
	pushl	%ebx
.LCFI230:
	subl	$84, %esp
.LCFI231:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3256 0
	cmpl	$0, 24(%ebp)
	jne	.L1263
	cmpl	$0, 36(%ebp)
	je	.L1265
.L1263:
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$0, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$103, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1266
.L1265:
	movl	$1, -64(%ebp)
	jmp	.L1267
.L1266:
	movl	$0, -64(%ebp)
.L1267:
	movl	-64(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3259 0
	cmpl	$0, 28(%ebp)
	jne	.L1268
	cmpl	$0, 40(%ebp)
	je	.L1270
.L1268:
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$1, 20(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$103, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1271
.L1270:
	movl	$1, -60(%ebp)
	jmp	.L1272
.L1271:
	movl	$0, -60(%ebp)
.L1272:
	movl	-60(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3263 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$0, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$101, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	jne	.L1273
	cmpl	$0, -12(%ebp)
	je	.L1275
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$1, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$101, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1275
.L1273:
	.loc 1 3269 0
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 32(%ebp)
	.loc 1 3270 0
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, 24(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 36(%ebp)
	.loc 1 3271 0
	movl	28(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, 28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 40(%ebp)
.L1275:
	.loc 1 3277 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$0, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$99, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	movl	%eax, -40(%ebp)
	.loc 1 3279 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	$1, 20(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$100, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	movl	%eax, -36(%ebp)
	.loc 1 3284 0
	cmpl	$0, 20(%ebp)
	je	.L1277
	cmpl	$0, 32(%ebp)
	je	.L1277
	.loc 1 3289 0
	cmpl	$0, -40(%ebp)
	je	.L1280
	.loc 1 3290 0
	movl	$0, -24(%ebp)
	movl	$0, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1285
.L1280:
	.loc 1 3291 0
	cmpl	$0, -36(%ebp)
	je	.L1283
	.loc 1 3292 0
	movl	$1, -24(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1285
.L1283:
	.loc 1 3294 0
	movl	$1, -24(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3284 0
	jmp	.L1285
.L1277:
	.loc 1 3297 0
	cmpl	$0, 20(%ebp)
	je	.L1286
	cmpl	$0, 32(%ebp)
	jne	.L1286
	.loc 1 3307 0
	cmpl	$0, -40(%ebp)
	je	.L1289
	.loc 1 3308 0
	movl	$1, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1285
.L1289:
	.loc 1 3309 0
	cmpl	$0, -12(%ebp)
	je	.L1292
	cmpl	$0, -8(%ebp)
	je	.L1292
	.loc 1 3310 0
	movl	$0, -24(%ebp)
	movl	$0, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3309 0
	jmp	.L1285
.L1292:
	.loc 1 3311 0
	cmpl	$0, -36(%ebp)
	je	.L1295
	cmpl	$0, -12(%ebp)
	je	.L1295
	.loc 1 3313 0
	movl	$1, -24(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3314 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$60, (%esp)
	call	range_binop
	movl	%eax, -20(%ebp)
	.loc 1 3311 0
	jmp	.L1285
.L1295:
	.loc 1 3317 0
	cmpl	$0, -36(%ebp)
	je	.L1298
	cmpl	$0, -8(%ebp)
	je	.L1300
.L1298:
	.loc 1 3319 0
	movl	$1, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3320 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$61, (%esp)
	call	range_binop
	movl	%eax, -16(%ebp)
	.loc 1 3317 0
	jmp	.L1285
.L1300:
	.loc 1 3324 0
	movl	$0, -56(%ebp)
	jmp	.L1301
.L1286:
	.loc 1 3327 0
	cmpl	$0, 20(%ebp)
	jne	.L1302
	cmpl	$0, 32(%ebp)
	je	.L1302
	.loc 1 3333 0
	cmpl	$0, -40(%ebp)
	je	.L1305
	.loc 1 3334 0
	movl	$1, -24(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1285
.L1305:
	.loc 1 3335 0
	cmpl	$0, -36(%ebp)
	jne	.L1308
	cmpl	$0, -8(%ebp)
	je	.L1310
.L1308:
	.loc 1 3336 0
	movl	$0, -24(%ebp)
	movl	$0, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3335 0
	jmp	.L1285
.L1310:
	.loc 1 3339 0
	movl	$1, -24(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3340 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$60, (%esp)
	call	range_binop
	movl	%eax, -20(%ebp)
	.loc 1 3327 0
	jmp	.L1285
.L1302:
	.loc 1 3353 0
	cmpl	$0, -40(%ebp)
	je	.L1311
	.loc 1 3355 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$1, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$60, (%esp)
	call	range_binop
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %ecx
	movl	$0, 20(%esp)
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$103, (%esp)
	call	range_binop
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1313
	.loc 1 3360 0
	movl	$0, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1285
.L1313:
	.loc 1 3362 0
	movl	$0, -56(%ebp)
	jmp	.L1301
.L1311:
	.loc 1 3364 0
	cmpl	$0, -36(%ebp)
	je	.L1315
	.loc 1 3365 0
	movl	$0, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1285
.L1315:
	.loc 1 3367 0
	movl	$0, -24(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -16(%ebp)
.L1285:
	.loc 1 3370 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	movl	16(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3371 0
	movl	$1, -56(%ebp)
.L1301:
	movl	-56(%ebp), %eax
	.loc 1 3372 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	merge_ranges, .-merge_ranges
	.type	fold_range_test, @function
fold_range_test:
.LFB63:
	.loc 1 3380 0
	pushl	%ebp
.LCFI232:
	movl	%esp, %ebp
.LCFI233:
	pushl	%edi
.LCFI234:
	pushl	%esi
.LCFI235:
	pushl	%ebx
.LCFI236:
	subl	$188, %esp
.LCFI237:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3382 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$94, %al
	je	.L1319
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$96, %al
	jne	.L1321
.L1319:
	movl	$1, -160(%ebp)
	jmp	.L1322
.L1321:
	movl	$0, -160(%ebp)
.L1322:
	movl	-160(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3385 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_range
	movl	%eax, -28(%ebp)
	.loc 1 3386 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	leal	-64(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	make_range
	movl	%eax, -24(%ebp)
	.loc 1 3391 0
	cmpl	$0, -32(%ebp)
	je	.L1323
	.loc 1 3392 0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
.L1323:
	.loc 1 3398 0
	cmpl	$0, -28(%ebp)
	je	.L1325
	cmpl	$0, -24(%ebp)
	je	.L1325
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L1328
.L1325:
	movl	-64(%ebp), %edx
	movl	%edx, -164(%ebp)
	movl	-52(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	-60(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	-36(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	-164(%ebp), %eax
	movl	%eax, 32(%esp)
	movl	%edx, 28(%esp)
	movl	%ecx, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 12(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_ranges
	testl	%eax, %eax
	je	.L1328
	movl	-68(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-56(%ebp), %edx
	movl	%edx, -148(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -144(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L1330
	cmpl	$0, -24(%ebp)
	jne	.L1332
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L1334
.L1332:
	movl	-24(%ebp), %edx
	movl	%edx, -136(%ebp)
.L1334:
	movl	-136(%ebp), %eax
	movl	%eax, -140(%ebp)
	jmp	.L1335
.L1330:
	movl	-28(%ebp), %edx
	movl	%edx, -140(%ebp)
.L1335:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	-152(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-148(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_range_check
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L1328
	.loc 1 3405 0
	cmpl	$0, -32(%ebp)
	je	.L1337
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -128(%ebp)
	jmp	.L1339
.L1337:
	movl	-20(%ebp), %eax
	movl	%eax, -128(%ebp)
.L1339:
	movl	-128(%ebp), %edx
	movl	%edx, -132(%ebp)
	jmp	.L1340
.L1328:
	.loc 1 3410 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1341
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1343
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1341
.L1343:
	cmpl	$0, -28(%ebp)
	je	.L1341
	cmpl	$0, -24(%ebp)
	je	.L1341
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$93, %al
	je	.L1347
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$94, %al
	jne	.L1341
.L1347:
	movl	$0, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L1341
	.loc 1 3419 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_operand_p
	testl	%eax, %eax
	je	.L1350
	.loc 1 3420 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -124(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -116(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$93, %al
	jne	.L1352
	movl	$95, -112(%ebp)
	jmp	.L1354
.L1352:
	movl	$96, -112(%ebp)
.L1354:
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %edx
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, -132(%ebp)
	jmp	.L1340
.L1350:
	.loc 1 3425 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	224(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L1341
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	contains_placeholder_p@PLT
	testl	%eax, %eax
	jne	.L1341
.LBB18:
	.loc 1 3428 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3430 0
	movl	-60(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-48(%ebp), %edx
	movl	%edx, -104(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1357
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -100(%ebp)
	jmp	.L1359
.L1357:
	movl	-36(%ebp), %eax
	movl	%eax, -100(%ebp)
.L1359:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-108(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_range_check
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1341
	movl	-64(%ebp), %edx
	movl	%edx, -96(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -92(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1361
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -88(%ebp)
	jmp	.L1363
.L1361:
	movl	-40(%ebp), %edx
	movl	%edx, -88(%ebp)
.L1363:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-96(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_range_check
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1341
	.loc 1 3436 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$93, %al
	jne	.L1365
	movl	$95, -80(%ebp)
	jmp	.L1367
.L1365:
	movl	$96, -80(%ebp)
.L1367:
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -132(%ebp)
	jmp	.L1340
.L1341:
.LBE18:
	.loc 1 3442 0
	movl	$0, -132(%ebp)
.L1340:
	movl	-132(%ebp), %eax
	.loc 1 3443 0
	addl	$188, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE63:
	.size	fold_range_test, .-fold_range_test
	.type	unextend, @function
unextend:
.LFB64:
	.loc 1 3456 0
	pushl	%ebp
.LCFI238:
	movl	%esp, %ebp
.LCFI239:
	pushl	%ebx
.LCFI240:
	subl	$36, %esp
.LCFI241:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3457 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3458 0
	movl	-16(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3461 0
	movl	12(%ebp), %eax
	cmpl	-12(%ebp), %eax
	je	.L1370
	cmpl	$0, 16(%ebp)
	je	.L1372
.L1370:
	.loc 1 3462 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1373
.L1372:
	.loc 1 3467 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -8(%ebp)
	.loc 1 3468 0
	movl	$0, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, -8(%ebp)
	.loc 1 3476 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1374
	.loc 1 3477 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
.L1374:
	.loc 1 3479 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -8(%ebp)
	.loc 1 3480 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -8(%ebp)
	.loc 1 3481 0
	cmpl	$0, 20(%ebp)
	je	.L1376
	.loc 1 3482 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, -8(%ebp)
.L1376:
	.loc 1 3484 0
	movl	-16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1378
	.loc 1 3485 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
.L1378:
	.loc 1 3487 0
	movl	$0, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$89, (%esp)
	call	const_binop
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -24(%ebp)
.L1373:
	movl	-24(%ebp), %eax
	.loc 1 3488 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE64:
	.size	unextend, .-unextend
	.section	.rodata
.LC2:
	.string	"comparison is always %d"
	.align 4
.LC3:
	.string	"`or' of unmatched not-equal tests is always 1"
	.align 4
.LC4:
	.string	"`and' of mutually exclusive equal-tests is always 0"
	.text
	.type	fold_truthop, @function
fold_truthop:
.LFB65:
	.loc 1 3518 0
	pushl	%ebp
.LCFI242:
	movl	%esp, %ebp
.LCFI243:
	pushl	%edi
.LCFI244:
	pushl	%esi
.LCFI245:
	pushl	%ebx
.LCFI246:
	subl	$604, %esp
.LCFI247:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3550 0
	movl	16(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1382
	movl	20(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1384
.L1382:
	.loc 1 3551 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1384:
	.loc 1 3553 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -116(%ebp)
	.loc 1 3554 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -112(%ebp)
	.loc 1 3556 0
	cmpl	$90, -116(%ebp)
	jne	.L1386
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1386
	.loc 1 3557 0
	movl	$104, -116(%ebp)
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$104, (%esp)
	call	build@PLT
	movl	%eax, 16(%ebp)
.L1386:
	.loc 1 3559 0
	cmpl	$90, -112(%ebp)
	jne	.L1389
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1389
	.loc 1 3560 0
	movl	$104, -112(%ebp)
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$104, (%esp)
	call	build@PLT
	movl	%eax, 20(%ebp)
.L1389:
	.loc 1 3562 0
	movl	-116(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L1392
	movl	-112(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L1394
.L1392:
	.loc 1 3563 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1394:
	.loc 1 3565 0
	cmpl	$95, 8(%ebp)
	je	.L1395
	cmpl	$93, 8(%ebp)
	jne	.L1397
.L1395:
	movl	$95, -512(%ebp)
	jmp	.L1398
.L1397:
	movl	$96, -512(%ebp)
.L1398:
	movl	-512(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3568 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 3569 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 3570 0
	movl	20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 3571 0
	movl	20(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -96(%ebp)
	.loc 1 3574 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_operand_p
	testl	%eax, %eax
	je	.L1399
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_operand_p
	testl	%eax, %eax
	je	.L1399
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1399
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1403
	movl	-108(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1399
.L1403:
.LBB19:
	.loc 1 3580 0
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L1405
	movl	$0, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L1405
.LBB20:
	.loc 1 3585 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	comparison_to_compcode
	movl	%eax, -36(%ebp)
	.loc 1 3586 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	comparison_to_compcode
	movl	%eax, -32(%ebp)
	.loc 1 3587 0
	cmpl	$95, 8(%ebp)
	jne	.L1408
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %edx
	andl	%eax, %edx
	movl	%edx, -508(%ebp)
	jmp	.L1410
.L1408:
	movl	-32(%ebp), %eax
	movl	-36(%ebp), %ecx
	orl	%eax, %ecx
	movl	%ecx, -508(%ebp)
.L1410:
	movl	-508(%ebp), %esi
	movl	%esi, -40(%ebp)
	.loc 1 3580 0
	jmp	.L1411
.L1405:
.LBE20:
	.loc 1 3591 0
	movl	$0, 8(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L1412
	movl	$0, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L1412
.LBB21:
	.loc 1 3596 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_tree_comparison
	movl	%eax, -112(%ebp)
	.loc 1 3597 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	comparison_to_compcode
	movl	%eax, -28(%ebp)
	.loc 1 3598 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	comparison_to_compcode
	movl	%eax, -24(%ebp)
	.loc 1 3599 0
	cmpl	$95, 8(%ebp)
	jne	.L1415
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edi
	andl	%eax, %edi
	movl	%edi, -504(%ebp)
	jmp	.L1417
.L1415:
	movl	-24(%ebp), %eax
	movl	-28(%ebp), %edx
	orl	%eax, %edx
	movl	%edx, -504(%ebp)
.L1417:
	movl	-504(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	.loc 1 3591 0
	jmp	.L1411
.L1412:
.LBE21:
	.loc 1 3604 0
	movl	$-1, -40(%ebp)
.L1411:
	.loc 1 3606 0
	cmpl	$7, -40(%ebp)
	jne	.L1418
	.loc 1 3607 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1418:
	.loc 1 3608 0
	cmpl	$0, -40(%ebp)
	jne	.L1420
	.loc 1 3609 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1420:
	.loc 1 3610 0
	cmpl	$-1, -40(%ebp)
	je	.L1399
	.loc 1 3611 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	compcode_to_comparison
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1399:
.LBE19:
	.loc 1 3621 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	jne	.L1423
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1425
	movl	mips_tune@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1423
.L1425:
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1423
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L1428
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L1423
.L1428:
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_operand_p
	testl	%eax, %eax
	je	.L1423
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	simple_operand_p
	testl	%eax, %eax
	je	.L1423
	.loc 1 3627 0
	cmpl	$96, 8(%ebp)
	jne	.L1432
	cmpl	$104, -116(%ebp)
	jne	.L1432
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1432
	cmpl	$104, -112(%ebp)
	jne	.L1432
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1432
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1432
	.loc 1 3631 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %esi
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$88, (%esp)
	call	build@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$104, (%esp)
	call	build@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1432:
	.loc 1 3637 0
	cmpl	$95, 8(%ebp)
	jne	.L1439
	cmpl	$103, -116(%ebp)
	jne	.L1439
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1439
	cmpl	$103, -112(%ebp)
	jne	.L1439
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1439
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1439
	.loc 1 3641 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %esi
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	-100(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$88, (%esp)
	call	build@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1439:
	.loc 1 3646 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1423:
	.loc 1 3652 0
	cmpl	$103, -116(%ebp)
	je	.L1446
	cmpl	$104, -116(%ebp)
	jne	.L1448
.L1446:
	cmpl	$103, -112(%ebp)
	je	.L1449
	cmpl	$104, -112(%ebp)
	je	.L1449
.L1448:
	.loc 1 3654 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1449:
	.loc 1 3656 0
	movl	$0, -188(%ebp)
	.loc 1 3657 0
	leal	-172(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-156(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-188(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-124(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-140(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_field_reference
	movl	%eax, -92(%ebp)
	.loc 1 3661 0
	leal	-176(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-160(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-188(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-128(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-288(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-280(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_field_reference
	movl	%eax, -88(%ebp)
	.loc 1 3665 0
	leal	-180(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-164(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-188(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-148(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-304(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-296(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_field_reference
	movl	%eax, -84(%ebp)
	.loc 1 3669 0
	leal	-184(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-168(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-188(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-136(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-320(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-312(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_field_reference
	movl	%eax, -80(%ebp)
	.loc 1 3678 0
	movl	-188(%ebp), %eax
	testl	%eax, %eax
	jne	.L1451
	cmpl	$0, -92(%ebp)
	je	.L1451
	cmpl	$0, -84(%ebp)
	je	.L1451
	movl	$0, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L1455
.L1451:
	.loc 1 3680 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1455:
	.loc 1 3682 0
	movl	-104(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1456
	movl	-96(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1456
	.loc 1 3684 0
	movl	-104(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-96(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 3682 0
	jmp	.L1459
.L1456:
	.loc 1 3685 0
	cmpl	$0, -88(%ebp)
	je	.L1460
	cmpl	$0, -80(%ebp)
	je	.L1460
	movl	$0, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L1463
.L1460:
	.loc 1 3687 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1463:
	.loc 1 3689 0
	movl	$0, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
.L1459:
	.loc 1 3695 0
	cmpl	$95, 8(%ebp)
	jne	.L1464
	movl	$103, -500(%ebp)
	jmp	.L1466
.L1464:
	movl	$104, -500(%ebp)
.L1466:
	movl	-500(%ebp), %esi
	movl	%esi, -120(%ebp)
	.loc 1 3696 0
	movl	-116(%ebp), %eax
	cmpl	-120(%ebp), %eax
	je	.L1467
	.loc 1 3698 0
	cmpl	$0, -68(%ebp)
	je	.L1469
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1469
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_pow2p@PLT
	testl	%eax, %eax
	je	.L1469
	.loc 1 3703 0
	movl	$1, -124(%ebp)
	.loc 1 3704 0
	movl	-156(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 3698 0
	jmp	.L1467
.L1469:
	.loc 1 3707 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1467:
	.loc 1 3711 0
	movl	-112(%ebp), %eax
	cmpl	-120(%ebp), %eax
	je	.L1473
	.loc 1 3713 0
	cmpl	$0, -64(%ebp)
	je	.L1475
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1475
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_pow2p@PLT
	testl	%eax, %eax
	je	.L1475
	.loc 1 3715 0
	movl	$1, -132(%ebp)
	.loc 1 3716 0
	movl	-164(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 3713 0
	jmp	.L1473
.L1475:
	.loc 1 3719 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1473:
	.loc 1 3724 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	92(%eax), %eax
	call	*%eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1479
	.loc 1 3725 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1479:
	.loc 1 3730 0
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	-272(%ebp), %esi
	movl	-268(%ebp), %edi
	movl	%esi, -496(%ebp)
	movl	%edi, -492(%ebp)
	movl	%eax, -488(%ebp)
	movl	%edx, -484(%ebp)
	movl	-492(%ebp), %edi
	cmpl	%edi, -484(%ebp)
	jl	.L1481
	movl	-492(%ebp), %eax
	cmpl	%eax, -484(%ebp)
	jg	.L1482
	movl	-496(%ebp), %edx
	cmpl	%edx, -488(%ebp)
	jbe	.L1481
.L1482:
	movl	-496(%ebp), %esi
	movl	-492(%ebp), %edi
	movl	%esi, -488(%ebp)
	movl	%edi, -484(%ebp)
.L1481:
	movl	-488(%ebp), %edi
	movl	%edi, -48(%ebp)
	.loc 1 3731 0
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -480(%ebp)
	movl	%edi, -476(%ebp)
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -472(%ebp)
	movl	%edi, -468(%ebp)
	movl	-480(%ebp), %eax
	movl	-476(%ebp), %edx
	movl	%eax, -464(%ebp)
	movl	%edx, -460(%ebp)
	movl	-468(%ebp), %edx
	cmpl	%edx, -460(%ebp)
	jg	.L1483
	movl	-468(%ebp), %ecx
	cmpl	%ecx, -460(%ebp)
	jl	.L1484
	movl	-472(%ebp), %esi
	cmpl	%esi, -464(%ebp)
	jae	.L1483
.L1484:
	movl	-472(%ebp), %eax
	movl	-468(%ebp), %edx
	movl	%eax, -464(%ebp)
	movl	%edx, -460(%ebp)
.L1483:
	movl	-464(%ebp), %edx
	movl	%edx, -44(%ebp)
	.loc 1 3732 0
	movl	-188(%ebp), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %edi
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, -564(%ebp)
	movl	-564(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_best_mode@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3735 0
	cmpl	$0, -76(%ebp)
	jne	.L1485
	.loc 1 3736 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1485:
	.loc 1 3738 0
	movl	-76(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -224(%ebp)
	movl	-224(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -224(%ebp)
	movl	%edx, -220(%ebp)
	.loc 1 3739 0
	movl	-48(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%esi, %ecx
	andl	%eax, %ecx
	movl	%ecx, -216(%ebp)
	movl	%edi, %eax
	andl	%edx, %eax
	movl	%eax, -212(%ebp)
	.loc 1 3740 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	264(%eax), %edx
	movl	-224(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -60(%ebp)
	.loc 1 3741 0
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	subl	-216(%ebp), %eax
	sbbl	-212(%ebp), %edx
	movl	%eax, -256(%ebp)
	movl	%edx, -252(%ebp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	subl	-216(%ebp), %eax
	sbbl	-212(%ebp), %edx
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
	.loc 1 3743 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1487
	.loc 1 3745 0
	movl	-256(%ebp), %esi
	movl	-252(%ebp), %edi
	movl	-224(%ebp), %edx
	movl	-220(%ebp), %ecx
	movl	%edx, -576(%ebp)
	movl	%ecx, -572(%ebp)
	movl	-576(%ebp), %eax
	movl	-572(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -256(%ebp)
	movl	%edx, -252(%ebp)
	.loc 1 3746 0
	movl	-240(%ebp), %esi
	movl	-236(%ebp), %edi
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%eax, -576(%ebp)
	movl	%edx, -572(%ebp)
	movl	-576(%ebp), %edx
	movl	-572(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -560(%ebp)
	movl	%ecx, -556(%ebp)
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -240(%ebp)
	movl	%edx, -236(%ebp)
.L1487:
	.loc 1 3749 0
	movl	$0, 8(%esp)
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -156(%ebp)
	.loc 1 3751 0
	movl	$0, 8(%esp)
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-164(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -164(%ebp)
	.loc 1 3754 0
	cmpl	$0, -68(%ebp)
	je	.L1489
	.loc 1 3756 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -68(%ebp)
	.loc 1 3757 0
	movl	-172(%ebp), %ecx
	movl	-124(%ebp), %esi
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	unextend
	movl	%eax, -68(%ebp)
	.loc 1 3758 0
	movl	$0, 8(%esp)
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -68(%ebp)
	.loc 1 3759 0
	movl	-156(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1489
	.loc 1 3764 0
	cmpl	$104, -120(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3766 0
	cmpl	$104, -120(%ebp)
	jne	.L1492
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -456(%ebp)
	jmp	.L1494
.L1492:
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -456(%ebp)
.L1494:
	movl	-456(%ebp), %edi
	movl	%edi, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1489:
	.loc 1 3771 0
	cmpl	$0, -64(%ebp)
	je	.L1495
	.loc 1 3773 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -64(%ebp)
	.loc 1 3774 0
	movl	-180(%ebp), %ecx
	movl	-132(%ebp), %esi
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	unextend
	movl	%eax, -64(%ebp)
	.loc 1 3775 0
	movl	$0, 8(%esp)
	movl	-240(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -64(%ebp)
	.loc 1 3776 0
	movl	-164(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1495
	.loc 1 3781 0
	cmpl	$104, -120(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3783 0
	cmpl	$104, -120(%ebp)
	jne	.L1498
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -452(%ebp)
	jmp	.L1500
.L1498:
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -452(%ebp)
.L1500:
	movl	-452(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1495:
	.loc 1 3792 0
	cmpl	$0, -68(%ebp)
	jne	.L1501
	.loc 1 3794 0
	movl	-264(%ebp), %esi
	movl	-260(%ebp), %edi
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1503
	movl	-296(%ebp), %esi
	movl	-292(%ebp), %edi
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1503
	movl	-124(%ebp), %edx
	movl	-128(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1503
	movl	-132(%ebp), %edx
	movl	-136(%ebp), %eax
	cmpl	%eax, %edx
	jne	.L1503
	movl	-272(%ebp), %edx
	movl	-268(%ebp), %ecx
	movl	%edx, -560(%ebp)
	movl	%ecx, -556(%ebp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, -448(%ebp)
	movl	%edi, -444(%ebp)
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-444(%ebp), %ecx
	xorl	%edx, %ecx
	xorl	-448(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1508
.L1503:
	.loc 1 3799 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1508:
	.loc 1 3801 0
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	-288(%ebp), %esi
	movl	-284(%ebp), %edi
	movl	%esi, -440(%ebp)
	movl	%edi, -436(%ebp)
	movl	%eax, -432(%ebp)
	movl	%edx, -428(%ebp)
	movl	-436(%ebp), %edi
	cmpl	%edi, -428(%ebp)
	jl	.L1509
	movl	-436(%ebp), %eax
	cmpl	%eax, -428(%ebp)
	jg	.L1510
	movl	-440(%ebp), %edx
	cmpl	%edx, -432(%ebp)
	jbe	.L1509
.L1510:
	movl	-440(%ebp), %esi
	movl	-436(%ebp), %edi
	movl	%esi, -432(%ebp)
	movl	%edi, -428(%ebp)
.L1509:
	movl	-432(%ebp), %edi
	movl	%edi, -48(%ebp)
	.loc 1 3802 0
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -424(%ebp)
	movl	%edi, -420(%ebp)
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	%esi, -416(%ebp)
	movl	%edi, -412(%ebp)
	movl	-424(%ebp), %eax
	movl	-420(%ebp), %edx
	movl	%eax, -408(%ebp)
	movl	%edx, -404(%ebp)
	movl	-412(%ebp), %edx
	cmpl	%edx, -404(%ebp)
	jg	.L1511
	movl	-412(%ebp), %ecx
	cmpl	%ecx, -404(%ebp)
	jl	.L1512
	movl	-416(%ebp), %esi
	cmpl	%esi, -408(%ebp)
	jae	.L1511
.L1512:
	movl	-416(%ebp), %eax
	movl	-412(%ebp), %edx
	movl	%eax, -408(%ebp)
	movl	%edx, -404(%ebp)
.L1511:
	movl	-408(%ebp), %edx
	movl	%edx, -44(%ebp)
	.loc 1 3803 0
	movl	-188(%ebp), %ecx
	movl	word_mode@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %edi
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, -576(%ebp)
	movl	-576(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_best_mode@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3806 0
	cmpl	$0, -72(%ebp)
	jne	.L1513
	.loc 1 3807 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1513:
	.loc 1 3809 0
	movl	-72(%ebp), %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -208(%ebp)
	movl	-208(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -208(%ebp)
	movl	%edx, -204(%ebp)
	.loc 1 3810 0
	movl	-48(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-208(%ebp), %eax
	movl	-204(%ebp), %edx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	movl	%esi, %ecx
	andl	%eax, %ecx
	movl	%ecx, -200(%ebp)
	movl	%edi, %eax
	andl	%edx, %eax
	movl	%eax, -196(%ebp)
	.loc 1 3811 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	264(%eax), %edx
	movl	-208(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -56(%ebp)
	.loc 1 3812 0
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	subl	-200(%ebp), %eax
	sbbl	-196(%ebp), %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	subl	-200(%ebp), %eax
	sbbl	-196(%ebp), %edx
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
	.loc 1 3814 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L1515
	.loc 1 3816 0
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	-208(%ebp), %edx
	movl	-204(%ebp), %ecx
	movl	%edx, -576(%ebp)
	movl	%ecx, -572(%ebp)
	movl	-576(%ebp), %eax
	movl	-572(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -248(%ebp)
	movl	%edx, -244(%ebp)
	.loc 1 3817 0
	movl	-232(%ebp), %esi
	movl	-228(%ebp), %edi
	movl	-208(%ebp), %eax
	movl	-204(%ebp), %edx
	movl	%eax, -576(%ebp)
	movl	%edx, -572(%ebp)
	movl	-576(%ebp), %edx
	movl	-572(%ebp), %ecx
	subl	%esi, %edx
	sbbl	%edi, %ecx
	movl	%edx, -560(%ebp)
	movl	%ecx, -556(%ebp)
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -232(%ebp)
	movl	%edx, -228(%ebp)
.L1515:
	.loc 1 3820 0
	movl	$0, 8(%esp)
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -160(%ebp)
	.loc 1 3822 0
	movl	$0, 8(%esp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, %esi
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, -168(%ebp)
	.loc 1 3830 0
	movl	-164(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$88, (%esp)
	call	const_binop
	movl	%eax, -156(%ebp)
	.loc 1 3831 0
	movl	-168(%ebp), %eax
	movl	-160(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$88, (%esp)
	call	const_binop
	movl	%eax, -160(%ebp)
	.loc 1 3832 0
	movl	-224(%ebp), %eax
	movl	-220(%ebp), %edx
	movl	%edx, %ecx
	xorl	-204(%ebp), %ecx
	xorl	-208(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1517
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %edx
	movl	%edx, %ecx
	xorl	-244(%ebp), %ecx
	xorl	-248(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1517
	.loc 1 3834 0
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	jne	.L1520
	movl	-132(%ebp), %eax
	testl	%eax, %eax
	je	.L1522
.L1520:
	movl	$1, -396(%ebp)
	jmp	.L1523
.L1522:
	movl	$0, -396(%ebp)
.L1523:
	movl	-216(%ebp), %eax
	movl	-224(%ebp), %edx
	movl	-396(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	make_bit_field_ref
	movl	%eax, 16(%ebp)
	.loc 1 3836 0
	movl	-224(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	all_ones_mask_p
	testl	%eax, %eax
	jne	.L1524
	.loc 1 3837 0
	movl	-156(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, 16(%ebp)
.L1524:
	.loc 1 3839 0
	movl	-128(%ebp), %eax
	testl	%eax, %eax
	jne	.L1526
	movl	-136(%ebp), %eax
	testl	%eax, %eax
	je	.L1528
.L1526:
	movl	$1, -392(%ebp)
	jmp	.L1529
.L1528:
	movl	$0, -392(%ebp)
.L1529:
	movl	-200(%ebp), %eax
	movl	-208(%ebp), %edx
	movl	-392(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	make_bit_field_ref
	movl	%eax, 20(%ebp)
	.loc 1 3841 0
	movl	-208(%ebp), %eax
	movl	-160(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	all_ones_mask_p
	testl	%eax, %eax
	jne	.L1530
	.loc 1 3842 0
	movl	-160(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, 20(%ebp)
.L1530:
	.loc 1 3844 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1517:
	.loc 1 3854 0
	movl	-264(%ebp), %esi
	movl	-260(%ebp), %edi
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1532
	movl	-280(%ebp), %esi
	movl	-276(%ebp), %edi
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L1534
.L1532:
	movl	-304(%ebp), %esi
	movl	-300(%ebp), %edi
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1535
	movl	-320(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L1535
.L1534:
.LBB22:
	.loc 1 3861 0
	movl	-124(%ebp), %esi
	movl	%esi, -388(%ebp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	-272(%ebp), %esi
	movl	-268(%ebp), %edi
	movl	%esi, -384(%ebp)
	movl	%edi, -380(%ebp)
	movl	%eax, -376(%ebp)
	movl	%edx, -372(%ebp)
	movl	-380(%ebp), %edi
	cmpl	%edi, -372(%ebp)
	jl	.L1537
	movl	-380(%ebp), %eax
	cmpl	%eax, -372(%ebp)
	jg	.L1538
	movl	-384(%ebp), %edx
	cmpl	%edx, -376(%ebp)
	jbe	.L1537
.L1538:
	movl	-384(%ebp), %esi
	movl	-380(%ebp), %edi
	movl	%esi, -376(%ebp)
	movl	%edi, -372(%ebp)
.L1537:
	movl	-376(%ebp), %esi
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	%eax, %ecx
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	leal	(%ecx,%eax), %eax
	movl	-388(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	make_bit_field_ref
	movl	%eax, 16(%ebp)
	.loc 1 3863 0
	movl	-128(%ebp), %eax
	movl	%eax, -364(%ebp)
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	movl	-288(%ebp), %esi
	movl	-284(%ebp), %edi
	movl	%esi, -360(%ebp)
	movl	%edi, -356(%ebp)
	movl	%eax, -352(%ebp)
	movl	%edx, -348(%ebp)
	movl	-356(%ebp), %edi
	cmpl	%edi, -348(%ebp)
	jl	.L1539
	movl	-356(%ebp), %eax
	cmpl	%eax, -348(%ebp)
	jg	.L1540
	movl	-360(%ebp), %edx
	cmpl	%edx, -352(%ebp)
	jbe	.L1539
.L1540:
	movl	-360(%ebp), %esi
	movl	-356(%ebp), %edi
	movl	%esi, -352(%ebp)
	movl	%edi, -348(%ebp)
.L1539:
	movl	-352(%ebp), %esi
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%eax, %ecx
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	leal	(%ecx,%eax), %eax
	movl	-364(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	make_bit_field_ref
	movl	%eax, 20(%ebp)
	.loc 1 3866 0
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %edx
	movl	%eax, -528(%ebp)
	movl	%edx, -524(%ebp)
	movl	-240(%ebp), %edx
	movl	-236(%ebp), %ecx
	movl	%edx, -344(%ebp)
	movl	%ecx, -340(%ebp)
	movl	-524(%ebp), %ecx
	cmpl	%ecx, -340(%ebp)
	jl	.L1541
	movl	-524(%ebp), %esi
	cmpl	%esi, -340(%ebp)
	jg	.L1542
	movl	-528(%ebp), %edi
	cmpl	%edi, -344(%ebp)
	jbe	.L1541
.L1542:
	movl	-528(%ebp), %eax
	movl	-524(%ebp), %edx
	movl	%eax, -344(%ebp)
	movl	%edx, -340(%ebp)
.L1541:
	movl	$0, 8(%esp)
	movl	-344(%ebp), %edx
	movl	-340(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	size_int_wide@PLT
	movl	-156(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -156(%ebp)
	.loc 1 3868 0
	movl	-248(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	%esi, -536(%ebp)
	movl	%edi, -532(%ebp)
	movl	-232(%ebp), %eax
	movl	-228(%ebp), %edx
	movl	%eax, -336(%ebp)
	movl	%edx, -332(%ebp)
	movl	-532(%ebp), %edx
	cmpl	%edx, -332(%ebp)
	jl	.L1543
	movl	-532(%ebp), %ecx
	cmpl	%ecx, -332(%ebp)
	jg	.L1544
	movl	-536(%ebp), %esi
	cmpl	%esi, -336(%ebp)
	jbe	.L1543
.L1544:
	movl	-536(%ebp), %eax
	movl	-532(%ebp), %edx
	movl	%eax, -336(%ebp)
	movl	%edx, -332(%ebp)
.L1543:
	movl	$0, 8(%esp)
	movl	-336(%ebp), %edx
	movl	-332(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	size_int_wide@PLT
	movl	-160(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -160(%ebp)
	.loc 1 3872 0
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3873 0
	movl	-60(%ebp), %eax
	cmpl	-56(%ebp), %eax
	je	.L1545
	.loc 1 3875 0
	movl	-224(%ebp), %esi
	movl	-220(%ebp), %edi
	movl	%esi, -544(%ebp)
	movl	%edi, -540(%ebp)
	movl	-540(%ebp), %edi
	cmpl	-204(%ebp), %edi
	jl	.L1547
	movl	-540(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jg	.L1549
	movl	-544(%ebp), %edx
	cmpl	-208(%ebp), %edx
	jbe	.L1547
.L1549:
	.loc 1 3877 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 16(%ebp)
	.loc 1 3878 0
	movl	-156(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -156(%ebp)
	.loc 1 3879 0
	movl	-56(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1545
.L1547:
	.loc 1 3881 0
	movl	-224(%ebp), %esi
	movl	-220(%ebp), %edi
	movl	%esi, -552(%ebp)
	movl	%edi, -548(%ebp)
	movl	-548(%ebp), %edi
	cmpl	-204(%ebp), %edi
	jg	.L1545
	movl	-548(%ebp), %eax
	cmpl	-204(%ebp), %eax
	jl	.L1551
	movl	-552(%ebp), %edx
	cmpl	-208(%ebp), %edx
	jae	.L1545
.L1551:
	.loc 1 3883 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 20(%ebp)
	.loc 1 3884 0
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -160(%ebp)
	.loc 1 3885 0
	movl	-60(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1545:
	.loc 1 3889 0
	movl	-264(%ebp), %eax
	movl	-260(%ebp), %edx
	movl	%eax, %ecx
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	leal	(%ecx,%eax), %eax
	movl	-156(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	all_ones_mask_p
	testl	%eax, %eax
	jne	.L1552
	.loc 1 3890 0
	movl	-156(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, 16(%ebp)
.L1552:
	.loc 1 3892 0
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%eax, %ecx
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	leal	(%ecx,%eax), %eax
	movl	-160(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	all_ones_mask_p
	testl	%eax, %eax
	jne	.L1554
	.loc 1 3893 0
	movl	-160(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, 20(%ebp)
.L1554:
	.loc 1 3895 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1535:
.LBE22:
	.loc 1 3898 0
	movl	$0, -516(%ebp)
	jmp	.L1385
.L1501:
	.loc 1 3905 0
	movl	-164(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, -52(%ebp)
	.loc 1 3906 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L1556
	movl	$0, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, %esi
	movl	$0, 12(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	simple_cst_equal@PLT
	cmpl	$1, %eax
	je	.L1556
	.loc 1 3910 0
	cmpl	$104, -120(%ebp)
	jne	.L1559
	.loc 1 3912 0
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3913 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1559:
	.loc 1 3917 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 3918 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -516(%ebp)
	jmp	.L1385
.L1556:
	.loc 1 3926 0
	movl	-124(%ebp), %eax
	testl	%eax, %eax
	jne	.L1561
	movl	-132(%ebp), %eax
	testl	%eax, %eax
	je	.L1563
.L1561:
	movl	$1, -324(%ebp)
	jmp	.L1564
.L1563:
	movl	$0, -324(%ebp)
.L1564:
	movl	-216(%ebp), %eax
	movl	-224(%ebp), %edx
	movl	-324(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	make_bit_field_ref
	movl	%eax, -52(%ebp)
	.loc 1 3929 0
	movl	-164(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$88, (%esp)
	call	const_binop
	movl	%eax, -156(%ebp)
	.loc 1 3930 0
	movl	-224(%ebp), %eax
	movl	-156(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	all_ones_mask_p
	testl	%eax, %eax
	jne	.L1565
	.loc 1 3931 0
	movl	-156(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, -52(%ebp)
.L1565:
	.loc 1 3933 0
	movl	$0, 12(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	const_binop
	movl	%eax, 12(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -516(%ebp)
.L1385:
	movl	-516(%ebp), %eax
	.loc 1 3935 0
	addl	$604, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE65:
	.size	fold_truthop, .-fold_truthop
	.type	optimize_minmax_comparison, @function
optimize_minmax_comparison:
.LFB66:
	.loc 1 3943 0
	pushl	%ebp
.LCFI248:
	movl	%esp, %ebp
.LCFI249:
	pushl	%esi
.LCFI250:
	pushl	%ebx
.LCFI251:
	subl	$64, %esp
.LCFI252:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3944 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3945 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3947 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3952 0
	jmp	.L1569
.L1570:
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -36(%ebp)
.L1569:
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1571
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1571
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1574
.L1571:
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1574
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L1574
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L1570
.L1574:
	.loc 1 3954 0
	movl	-36(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 3955 0
	movl	-36(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 3956 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3957 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_lt@PLT
	movl	%eax, -16(%ebp)
	.loc 1 3958 0
	movl	-36(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3961 0
	cmpl	$80, -32(%ebp)
	je	.L1577
	cmpl	$81, -32(%ebp)
	jne	.L1579
.L1577:
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1579
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1579
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1579
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L1583
.L1579:
	.loc 1 3966 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1583:
	.loc 1 3971 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$99, %eax
	movl	%eax, -48(%ebp)
	cmpl	$5, -48(%ebp)
	ja	.L1585
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L1590@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1590:
	.long	.L1586@GOTOFF
	.long	.L1586@GOTOFF
	.long	.L1587@GOTOFF
	.long	.L1588@GOTOFF
	.long	.L1589@GOTOFF
	.long	.L1586@GOTOFF
	.text
.L1586:
	.loc 1 3974 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, (%esp)
	call	optimize_minmax_comparison
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1588:
	.loc 1 3978 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$101, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	optimize_minmax_comparison
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	optimize_minmax_comparison
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$94, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1589:
	.loc 1 3986 0
	cmpl	$81, -32(%ebp)
	jne	.L1591
	cmpl	$0, -20(%ebp)
	je	.L1591
	.loc 1 3988 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$100, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1591:
	.loc 1 3990 0
	cmpl	$81, -32(%ebp)
	jne	.L1594
	cmpl	$0, -16(%ebp)
	je	.L1594
	.loc 1 3992 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1594:
	.loc 1 3994 0
	cmpl	$81, -32(%ebp)
	jne	.L1597
	.loc 1 3996 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1597:
	.loc 1 3998 0
	cmpl	$0, -20(%ebp)
	je	.L1599
	.loc 1 4000 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$102, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1599:
	.loc 1 4002 0
	cmpl	$0, -16(%ebp)
	je	.L1601
	.loc 1 4004 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1601:
	.loc 1 4008 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1587:
	.loc 1 4011 0
	cmpl	$81, -32(%ebp)
	jne	.L1603
	cmpl	$0, -20(%ebp)
	jne	.L1605
	cmpl	$0, -16(%ebp)
	je	.L1603
.L1605:
	.loc 1 4014 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$101, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1603:
	.loc 1 4016 0
	cmpl	$81, -32(%ebp)
	jne	.L1607
	.loc 1 4018 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1607:
	.loc 1 4020 0
	cmpl	$80, -32(%ebp)
	jne	.L1609
	cmpl	$0, -20(%ebp)
	jne	.L1611
	cmpl	$0, -16(%ebp)
	je	.L1609
.L1611:
	.loc 1 4023 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1609:
	.loc 1 4027 0
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$101, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -44(%ebp)
	jmp	.L1584
.L1585:
	.loc 1 4030 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
.L1584:
	movl	-44(%ebp), %eax
	.loc 1 4032 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE66:
	.size	optimize_minmax_comparison, .-optimize_minmax_comparison
	.local	depth.16991
	.comm	depth.16991,4,4
	.type	extract_muldiv, @function
extract_muldiv:
.LFB67:
	.loc 1 4058 0
	pushl	%ebp
.LCFI253:
	movl	%esp, %ebp
.LCFI254:
	pushl	%ebx
.LCFI255:
	subl	$36, %esp
.LCFI256:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4067 0
	movl	depth.16991@GOTOFF(%ebx), %eax
	cmpl	$3, %eax
	jle	.L1615
	.loc 1 4068 0
	movl	$0, -24(%ebp)
	jmp	.L1617
.L1615:
	.loc 1 4070 0
	movl	depth.16991@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, depth.16991@GOTOFF(%ebx)
	.loc 1 4071 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_muldiv_1
	movl	%eax, -8(%ebp)
	.loc 1 4072 0
	movl	depth.16991@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, depth.16991@GOTOFF(%ebx)
	.loc 1 4074 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1617:
	movl	-24(%ebp), %eax
	.loc 1 4075 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE67:
	.size	extract_muldiv, .-extract_muldiv
	.type	extract_muldiv_1, @function
extract_muldiv_1:
.LFB68:
	.loc 1 4083 0
	pushl	%ebp
.LCFI257:
	movl	%esp, %ebp
.LCFI258:
	pushl	%esi
.LCFI259:
	pushl	%ebx
.LCFI260:
	subl	$96, %esp
.LCFI261:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4084 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 4085 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 4088 0
	cmpl	$0, 20(%ebp)
	je	.L1620
	movl	20(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %ecx
	movl	-40(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	%al, %cl
	jbe	.L1620
	movl	20(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L1623
.L1620:
	movl	-40(%ebp), %edx
	movl	%edx, -76(%ebp)
.L1623:
	movl	-76(%ebp), %ecx
	movl	%ecx, -32(%ebp)
	.loc 1 4090 0
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4091 0
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 4094 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1624
	.loc 1 4095 0
	movl	$0, -72(%ebp)
	jmp	.L1626
.L1624:
	.loc 1 4097 0
	movl	-36(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	jne	.L1627
	.loc 1 4098 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
.L1627:
	.loc 1 4100 0
	movl	-36(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	jne	.L1629
	.loc 1 4101 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
.L1629:
	.loc 1 4105 0
	movl	-36(%ebp), %eax
	subl	$26, %eax
	movl	%eax, -80(%ebp)
	cmpl	$59, -80(%ebp)
	ja	.L1631
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	.L1640@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L1640:
	.long	.L1632@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1633@GOTOFF
	.long	.L1634@GOTOFF
	.long	.L1634@GOTOFF
	.long	.L1635@GOTOFF
	.long	.L1636@GOTOFF
	.long	.L1636@GOTOFF
	.long	.L1636@GOTOFF
	.long	.L1636@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1636@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1637@GOTOFF
	.long	.L1638@GOTOFF
	.long	.L1638@GOTOFF
	.long	.L1637@GOTOFF
	.long	.L1631@GOTOFF
	.long	.L1639@GOTOFF
	.long	.L1639@GOTOFF
	.text
.L1632:
	.loc 1 4110 0
	cmpl	$62, 16(%ebp)
	je	.L1641
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$67, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1631
.L1641:
	.loc 1 4112 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	const_binop
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1637:
	.loc 1 4151 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_muldiv
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1631
	.loc 1 4152 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1638:
	.loc 1 4158 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	-40(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L1631
	.loc 1 4162 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_muldiv
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1631
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_muldiv
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	je	.L1631
	.loc 1 4165 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L1650
	.loc 1 4166 0
	cmpl	$80, -36(%ebp)
	jne	.L1652
	movl	$81, -68(%ebp)
	jmp	.L1654
.L1652:
	movl	$80, -68(%ebp)
.L1654:
	movl	-68(%ebp), %edx
	movl	%edx, -36(%ebp)
.L1650:
	.loc 1 4168 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1633:
	.loc 1 4174 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	extract_muldiv
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1631
	.loc 1 4175 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$59, (%esp)
	call	build@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1639:
	.loc 1 4183 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1631
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %ecx
	movl	%ecx, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-52(%ebp), %ecx
	cmpl	%ecx, -60(%ebp)
	jb	.L1631
	movl	-52(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	ja	.L1660
	movl	-56(%ebp), %edx
	cmpl	%edx, -64(%ebp)
	jbe	.L1631
.L1660:
	movl	-12(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1631
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %edx
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1631
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1631
	.loc 1 4192 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -48(%ebp)
	cmpl	$84, -36(%ebp)
	jne	.L1664
	movl	$62, -44(%ebp)
	jmp	.L1666
.L1664:
	movl	$65, -44(%ebp)
.L1666:
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-48(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	extract_muldiv
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1634:
	.loc 1 4203 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_muldiv
	movl	%eax, -28(%ebp)
	.loc 1 4204 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_muldiv
	movl	%eax, -24(%ebp)
	.loc 1 4205 0
	cmpl	$0, -28(%ebp)
	je	.L1667
	cmpl	$0, -24(%ebp)
	je	.L1667
	cmpl	$62, 16(%ebp)
	je	.L1670
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	testl	%eax, %eax
	je	.L1667
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	testl	%eax, %eax
	je	.L1667
.L1670:
	.loc 1 4211 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1667:
	.loc 1 4216 0
	cmpl	$61, -36(%ebp)
	jne	.L1673
	.loc 1 4217 0
	movl	$60, -36(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, -12(%ebp)
.L1673:
	.loc 1 4219 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1631
	.loc 1 4225 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	js	.L1676
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L1678
.L1676:
	.loc 1 4227 0
	cmpl	$64, 16(%ebp)
	jne	.L1679
	.loc 1 4228 0
	movl	$65, 16(%ebp)
	jmp	.L1678
.L1679:
	.loc 1 4229 0
	cmpl	$65, 16(%ebp)
	jne	.L1681
	.loc 1 4230 0
	movl	$64, 16(%ebp)
	jmp	.L1678
.L1681:
	.loc 1 4231 0
	cmpl	$62, 16(%ebp)
	je	.L1678
	cmpl	$68, 16(%ebp)
	je	.L1678
	cmpl	$69, 16(%ebp)
	jne	.L1631
.L1678:
	.loc 1 4238 0
	cmpl	$62, 16(%ebp)
	je	.L1685
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$67, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1631
.L1685:
	.loc 1 4241 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	const_binop
	movl	%eax, -12(%ebp)
	.loc 1 4242 0
	cmpl	$0, -12(%ebp)
	je	.L1631
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1631
	.loc 1 4251 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1689
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L1691
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1689
.L1691:
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jne	.L1631
.L1689:
	.loc 1 4258 0
	cmpl	$0, -28(%ebp)
	je	.L1693
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	16(%ebp), %eax
	jne	.L1695
	cmpl	$62, 16(%ebp)
	jne	.L1693
.L1695:
	.loc 1 4259 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1693:
	.loc 1 4264 0
	cmpl	$62, 16(%ebp)
	jne	.L1631
	.loc 1 4265 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1635:
	.loc 1 4275 0
	cmpl	$67, 16(%ebp)
	je	.L1699
	cmpl	$68, 16(%ebp)
	je	.L1699
	cmpl	$69, 16(%ebp)
	je	.L1699
	cmpl	$70, 16(%ebp)
	jne	.L1636
.L1699:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1636
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$67, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1636
	.loc 1 4279 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1636:
	.loc 1 4288 0
	cmpl	$0, -20(%ebp)
	je	.L1705
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_muldiv
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1705
	.loc 1 4290 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1705:
	.loc 1 4292 0
	cmpl	$62, -36(%ebp)
	jne	.L1708
	cmpl	$62, 16(%ebp)
	jne	.L1708
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_muldiv
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1708
	.loc 1 4294 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1708:
	.loc 1 4296 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1712
	.loc 1 4297 0
	movl	$0, -72(%ebp)
	jmp	.L1626
.L1712:
	.loc 1 4301 0
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L1714
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	$0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	const_binop
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1714
	movl	-28(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L1714
	.loc 1 4305 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1714:
	.loc 1 4309 0
	movl	-32(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L1718
	cmpl	$63, 16(%ebp)
	jne	.L1718
	cmpl	$62, -36(%ebp)
	jne	.L1718
	.loc 1 4312 0
	movl	$0, -72(%ebp)
	jmp	.L1626
.L1718:
	.loc 1 4323 0
	movl	-32(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1722
	movl	-32(%ebp), %eax
	movzbl	38(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L1631
.L1722:
	cmpl	$62, 16(%ebp)
	jne	.L1724
	cmpl	$72, -36(%ebp)
	je	.L1726
.L1724:
	cmpl	$62, -36(%ebp)
	jne	.L1631
	cmpl	$62, 16(%ebp)
	je	.L1631
	cmpl	$67, 16(%ebp)
	je	.L1631
	cmpl	$68, 16(%ebp)
	je	.L1631
	cmpl	$69, 16(%ebp)
	je	.L1631
	cmpl	$70, 16(%ebp)
	je	.L1631
.L1726:
	.loc 1 4339 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$67, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1732
	.loc 1 4340 0
	movl	$0, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$63, (%esp)
	call	const_binop
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1732:
	.loc 1 4344 0
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$67, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L1631
	.loc 1 4345 0
	movl	$0, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$63, (%esp)
	call	const_binop
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	jmp	.L1626
.L1631:
	.loc 1 4356 0
	movl	$0, -72(%ebp)
.L1626:
	movl	-72(%ebp), %eax
	.loc 1 4357 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE68:
	.size	extract_muldiv_1, .-extract_muldiv_1
	.type	strip_compound_expr, @function
strip_compound_expr:
.LFB69:
	.loc 1 4367 0
	pushl	%ebp
.LCFI262:
	movl	%esp, %ebp
.LCFI263:
	pushl	%ebx
.LCFI264:
	subl	$28, %esp
.LCFI265:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4368 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 4371 0
	cmpl	$48, -8(%ebp)
	jne	.L1737
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	jne	.L1737
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1737
	.loc 1 4373 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1741
.L1737:
	.loc 1 4377 0
	cmpl	$52, -8(%ebp)
	jne	.L1742
	.loc 1 4379 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strip_compound_expr
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 4380 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strip_compound_expr
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 4381 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strip_compound_expr
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	jmp	.L1744
.L1742:
	.loc 1 4383 0
	movl	-8(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	jne	.L1745
	.loc 1 4384 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strip_compound_expr
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	jmp	.L1744
.L1745:
	.loc 1 4385 0
	movl	-8(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L1747
	movl	-8(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	jne	.L1744
.L1747:
	.loc 1 4388 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strip_compound_expr
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 4389 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strip_compound_expr
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L1744:
	.loc 1 4392 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1741:
	movl	-24(%ebp), %eax
	.loc 1 4393 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE69:
	.size	strip_compound_expr, .-strip_compound_expr
	.type	constant_boolean_node, @function
constant_boolean_node:
.LFB70:
	.loc 1 4402 0
	pushl	%ebp
.LCFI266:
	movl	%esp, %ebp
.LCFI267:
	pushl	%ebx
.LCFI268:
	subl	$52, %esp
.LCFI269:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4403 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1751
	.loc 1 4404 0
	cmpl	$0, 8(%ebp)
	je	.L1753
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1755
.L1753:
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
.L1755:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L1756
.L1751:
	.loc 1 4405 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	jne	.L1757
	.loc 1 4406 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, 8(%ebp)
	je	.L1759
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1761
.L1759:
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -24(%ebp)
.L1761:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	*-28(%ebp)
	movl	%eax, -36(%ebp)
	jmp	.L1756
.L1757:
.LBB23:
	.loc 1 4410 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -8(%ebp)
	.loc 1 4412 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 4413 0
	movl	-8(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1756:
	movl	-36(%ebp), %eax
.LBE23:
	.loc 1 4415 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	constant_boolean_node, .-constant_boolean_node
	.type	count_cond, @function
count_cond:
.LFB71:
	.loc 1 4425 0
	pushl	%ebp
.LCFI270:
	movl	%esp, %ebp
.LCFI271:
	subl	$32, %esp
.LCFI272:
	.loc 1 4428 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	je	.L1764
	.loc 1 4429 0
	movl	$0, -20(%ebp)
	jmp	.L1766
.L1764:
	.loc 1 4430 0
	cmpl	$0, 12(%ebp)
	jg	.L1767
	.loc 1 4431 0
	movl	$0, -20(%ebp)
	jmp	.L1766
.L1767:
	.loc 1 4433 0
	movl	12(%ebp), %edx
	subl	$1, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	count_cond
	movl	%eax, -8(%ebp)
	.loc 1 4434 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	subl	%edx, %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	count_cond
	movl	%eax, -4(%ebp)
	.loc 1 4435 0
	movl	-4(%ebp), %eax
	addl	-8(%ebp), %eax
	addl	$1, %eax
	movl	12(%ebp), %edx
	movl	%edx, -24(%ebp)
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jle	.L1766
	movl	-24(%ebp), %edx
	movl	%edx, -20(%ebp)
.L1766:
	movl	-20(%ebp), %eax
	.loc 1 4436 0
	leave
	ret
.LFE71:
	.size	count_cond, .-count_cond
	.type	fold_binary_op_with_conditional_arg, @function
fold_binary_op_with_conditional_arg:
.LFB72:
	.loc 1 4453 0
	pushl	%ebp
.LCFI273:
	movl	%esp, %ebp
.LCFI274:
	pushl	%esi
.LCFI275:
	pushl	%ebx
.LCFI276:
	subl	$96, %esp
.LCFI277:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4455 0
	movl	$0, -56(%ebp)
	.loc 1 4456 0
	movl	$0, -52(%ebp)
	.loc 1 4471 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 4472 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4474 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4475 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4476 0
	movl	$0, -16(%ebp)
	.loc 1 4478 0
	cmpl	$0, 24(%ebp)
	je	.L1772
	.loc 1 4480 0
	leal	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4481 0
	leal	-64(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4482 0
	leal	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1774
.L1772:
	.loc 1 4486 0
	leal	20(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 4487 0
	leal	-64(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 4488 0
	leal	-68(%ebp), %eax
	movl	%eax, -36(%ebp)
.L1774:
	.loc 1 4491 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L1775
	.loc 1 4493 0
	movl	16(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4494 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 4495 0
	movl	16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 4500 0
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1777
	.loc 1 4502 0
	cmpl	$0, 24(%ebp)
	jne	.L1779
	.loc 1 4504 0
	movl	$48, -32(%ebp)
	.loc 1 4505 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1777
.L1779:
	.loc 1 4508 0
	movl	-64(%ebp), %eax
	movl	%eax, -56(%ebp)
.L1777:
	.loc 1 4510 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L1785
	.loc 1 4512 0
	cmpl	$0, 24(%ebp)
	jne	.L1783
	.loc 1 4514 0
	movl	$48, -28(%ebp)
	.loc 1 4515 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1785
.L1783:
	.loc 1 4518 0
	movl	-68(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L1785
.L1775:
.LBB24:
	.loc 1 4523 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4524 0
	movl	16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 4525 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -64(%ebp)
	.loc 1 4526 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -68(%ebp)
.L1785:
.LBE24:
	.loc 1 4543 0
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L1786
	.loc 1 4544 0
	movl	$1, -16(%ebp)
	jmp	.L1788
.L1786:
	.loc 1 4545 0
	cmpl	$0, -56(%ebp)
	jne	.L1788
	cmpl	$0, -52(%ebp)
	jne	.L1788
	movl	20(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1788
	movl	lang_hooks@GOT(%ebx), %eax
	movl	224(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L1788
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	je	.L1793
	movl	20(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$36, %al
	jne	.L1795
.L1793:
	movl	20(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1788
.L1795:
	.loc 1 4551 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	je	.L1796
	.loc 1 4552 0
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -56(%ebp)
.L1796:
	.loc 1 4554 0
	movl	-68(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	je	.L1798
	.loc 1 4555 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -52(%ebp)
.L1798:
	.loc 1 4557 0
	cmpl	$0, -56(%ebp)
	je	.L1800
	movl	-56(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1788
.L1800:
	cmpl	$0, -52(%ebp)
	je	.L1802
	movl	-52(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L1788
.L1802:
	.loc 1 4560 0
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 20(%ebp)
	.loc 1 4561 0
	movl	$0, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 4562 0
	movl	$1, -16(%ebp)
.L1788:
	.loc 1 4566 0
	cmpl	$0, -56(%ebp)
	jne	.L1804
	.loc 1 4567 0
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -56(%ebp)
.L1804:
	.loc 1 4568 0
	cmpl	$0, -52(%ebp)
	jne	.L1806
	.loc 1 4569 0
	movl	-36(%ebp), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -52(%ebp)
.L1806:
	.loc 1 4571 0
	movl	-52(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -60(%ebp)
	.loc 1 4573 0
	cmpl	$0, -16(%ebp)
	je	.L1808
	.loc 1 4574 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_compound_expr
	movl	%eax, %esi
	movl	20(%ebp), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -76(%ebp)
	jmp	.L1810
.L1808:
	.loc 1 4578 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -76(%ebp)
.L1810:
	movl	-76(%ebp), %eax
	.loc 1 4579 0
	addl	$96, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE72:
	.size	fold_binary_op_with_conditional_arg, .-fold_binary_op_with_conditional_arg
	.type	fold_real_zero_addition_p, @function
fold_real_zero_addition_p:
.LFB73:
	.loc 1 4598 0
	pushl	%ebp
.LCFI278:
	movl	%esp, %ebp
.LCFI279:
	pushl	%ebx
.LCFI280:
	subl	$20, %esp
.LCFI281:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4599 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	real_zerop@PLT
	testl	%eax, %eax
	jne	.L1813
	.loc 1 4600 0
	movl	$0, -12(%ebp)
	jmp	.L1815
.L1813:
	.loc 1 4603 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1816
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1816
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1819
.L1816:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1820
.L1819:
	.loc 1 4604 0
	movl	$1, -12(%ebp)
	jmp	.L1815
.L1820:
	.loc 1 4607 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L1821
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	real_isnegzero@PLT
	testb	%al, %al
	je	.L1821
	.loc 1 4609 0
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 16(%ebp)
.L1821:
	.loc 1 4615 0
	cmpl	$0, 16(%ebp)
	je	.L1824
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L1826
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L1826
	movl	8(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L1829
.L1826:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1824
.L1829:
	movl	$1, -8(%ebp)
	jmp	.L1830
.L1824:
	movl	$0, -8(%ebp)
.L1830:
	movzbl	-8(%ebp), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
.L1815:
	movl	-12(%ebp), %eax
	.loc 1 4616 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE73:
	.size	fold_real_zero_addition_p, .-fold_real_zero_addition_p
	.section	.rodata
	.type	__FUNCTION__.17815, @object
	.size	__FUNCTION__.17815, 5
__FUNCTION__.17815:
	.string	"fold"
.globl __divdi3
	.text
.globl fold
	.type	fold, @function
fold:
.LFB74:
	.loc 1 4635 0
	pushl	%ebp
.LCFI282:
	movl	%esp, %ebp
.LCFI283:
	pushl	%edi
.LCFI284:
	pushl	%esi
.LCFI285:
	pushl	%ebx
.LCFI286:
	subl	$1212, %esp
.LCFI287:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4636 0
	movl	8(%ebp), %eax
	movl	%eax, -492(%ebp)
	.loc 1 4637 0
	movl	$0, -484(%ebp)
	.loc 1 4639 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -476(%ebp)
	.loc 1 4640 0
	movl	$0, -472(%ebp)
	movl	$0, -468(%ebp)
	.loc 1 4641 0
	movl	-492(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -464(%ebp)
	.loc 1 4642 0
	movl	-464(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -460(%ebp)
	.loc 1 4646 0
	movl	$1, -452(%ebp)
	.loc 1 4650 0
	cmpl	$122, -464(%ebp)
	je	.L1833
	cmpl	$120, -464(%ebp)
	jne	.L1835
	movl	-492(%ebp), %eax
	addl	$20, %eax
	addl	$8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1835
.L1833:
	.loc 1 4651 0
	movl	-492(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1835:
	.loc 1 4654 0
	cmpl	$99, -460(%ebp)
	jne	.L1838
	.loc 1 4655 0
	movl	-492(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L1838:
	.loc 1 4660 0
	movl	-492(%ebp), %eax
	movl	%eax, -488(%ebp)
	.loc 1 4662 0
	cmpl	$117, -464(%ebp)
	je	.L1840
	cmpl	$77, -464(%ebp)
	je	.L1840
	cmpl	$116, -464(%ebp)
	jne	.L1843
.L1840:
.LBB25:
	.loc 1 4667 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -472(%ebp)
	.loc 1 4670 0
	cmpl	$0, -472(%ebp)
	je	.L1844
	.loc 1 4671 0
	jmp	.L1846
.L1847:
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -472(%ebp)
.L1846:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1848
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1848
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1844
.L1848:
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1844
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L1844
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L1847
.L1844:
	.loc 1 4673 0
	cmpl	$0, -472(%ebp)
	je	.L1853
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L1853
	.loc 1 4674 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -448(%ebp)
	.loc 1 4673 0
	jmp	.L1856
.L1853:
	.loc 1 4676 0
	movl	-472(%ebp), %eax
	movl	%eax, -448(%ebp)
.L1856:
	.loc 1 4678 0
	cmpl	$0, -448(%ebp)
	je	.L1861
	movl	-448(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1861
	movl	-448(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	je	.L1861
	.loc 1 4684 0
	movl	$0, -452(%ebp)
	.loc 1 4662 0
	jmp	.L1861
.L1843:
.LBE25:
	.loc 1 4686 0
	cmpl	$60, -460(%ebp)
	je	.L1862
	cmpl	$49, -460(%ebp)
	je	.L1862
	cmpl	$50, -460(%ebp)
	je	.L1862
	cmpl	$101, -460(%ebp)
	je	.L1862
	cmpl	$114, -460(%ebp)
	jne	.L1861
.L1862:
.LBB26:
	.loc 1 4688 0
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	first_rtl_op@PLT
	movl	%eax, -444(%ebp)
	.loc 1 4690 0
	movl	$0, -440(%ebp)
	jmp	.L1867
.L1868:
.LBB27:
	.loc 1 4692 0
	movl	-440(%ebp), %eax
	movl	-492(%ebp), %edx
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -436(%ebp)
	.loc 1 4695 0
	cmpl	$0, -436(%ebp)
	je	.L1869
	.loc 1 4698 0
	cmpl	$60, -460(%ebp)
	je	.L1874
	cmpl	$85, -464(%ebp)
	jne	.L1883
	.loc 1 4702 0
	jmp	.L1874
.L1875:
	movl	-436(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -436(%ebp)
.L1874:
	movl	-436(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1876
	movl	-436(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1876
	movl	-436(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1882
.L1876:
	movl	-436(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1882
	movl	-436(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-436(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L1882
	movl	-436(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	$5, %dl
	andl	$1, %edx
	movl	-436(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L1875
	.loc 1 4698 0
	jmp	.L1882
.L1884:
	.loc 1 4706 0
	movl	-436(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -436(%ebp)
.L1883:
	movl	-436(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L1885
	movl	-436(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L1885
	movl	-436(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L1882
.L1885:
	movl	-436(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L1882
	movl	-436(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-436(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L1884
.L1882:
	.loc 1 4708 0
	movl	-436(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L1889
	.loc 1 4709 0
	movl	-436(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -432(%ebp)
	jmp	.L1891
.L1889:
	.loc 1 4711 0
	movl	-436(%ebp), %eax
	movl	%eax, -432(%ebp)
.L1891:
	.loc 1 4713 0
	movl	-432(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L1892
	movl	-432(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	je	.L1892
	.loc 1 4718 0
	movl	$0, -452(%ebp)
.L1892:
	.loc 1 4720 0
	cmpl	$0, -440(%ebp)
	jne	.L1895
	.loc 1 4721 0
	movl	-436(%ebp), %eax
	movl	%eax, -472(%ebp)
	jmp	.L1869
.L1895:
	.loc 1 4722 0
	cmpl	$1, -440(%ebp)
	jne	.L1869
	.loc 1 4723 0
	movl	-436(%ebp), %eax
	movl	%eax, -468(%ebp)
.L1869:
.LBE27:
	.loc 1 4690 0
	addl	$1, -440(%ebp)
.L1867:
	movl	-440(%ebp), %eax
	cmpl	-444(%ebp), %eax
	jl	.L1868
.L1861:
.LBE26:
	.loc 1 4729 0
	cmpl	$60, -464(%ebp)
	je	.L1898
	cmpl	$62, -464(%ebp)
	je	.L1898
	cmpl	$80, -464(%ebp)
	je	.L1898
	cmpl	$81, -464(%ebp)
	je	.L1898
	cmpl	$88, -464(%ebp)
	je	.L1898
	cmpl	$89, -464(%ebp)
	je	.L1898
	cmpl	$90, -464(%ebp)
	jne	.L1905
.L1898:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1906
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L1908
.L1906:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L1905
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	je	.L1905
.L1908:
	.loc 1 4735 0
	movl	-472(%ebp), %eax
	movl	%eax, -480(%ebp)
	movl	-468(%ebp), %eax
	movl	%eax, -472(%ebp)
	movl	-480(%ebp), %eax
	movl	%eax, -468(%ebp)
	.loc 1 4737 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L1910
	.loc 1 4738 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L1910:
	.loc 1 4739 0
	movl	-492(%ebp), %edx
	movl	-472(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 4740 0
	movl	-492(%ebp), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 24(%edx)
.L1905:
	.loc 1 4761 0
	cmpl	$90, -464(%ebp)
	je	.L1912
	cmpl	$88, -464(%ebp)
	je	.L1912
	cmpl	$103, -464(%ebp)
	je	.L1912
	cmpl	$104, -464(%ebp)
	jne	.L1916
.L1912:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	je	.L1917
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	jne	.L1919
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L1917
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	jne	.L1919
.L1917:
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	je	.L1916
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	jne	.L1919
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L1916
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L1916
.L1919:
	.loc 1 4772 0
	cmpl	$90, -464(%ebp)
	je	.L1925
	cmpl	$88, -464(%ebp)
	jne	.L1927
	movl	$96, -1124(%ebp)
	jmp	.L1929
.L1927:
	movl	$97, -1124(%ebp)
.L1929:
	movl	-1124(%ebp), %ecx
	movl	%ecx, -1128(%ebp)
	jmp	.L1930
.L1925:
	movl	$95, -1128(%ebp)
.L1930:
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-1128(%ebp), %esi
	movl	%esi, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -492(%ebp)
	.loc 1 4777 0
	cmpl	$103, -464(%ebp)
	jne	.L1931
	.loc 1 4778 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -492(%ebp)
.L1931:
	.loc 1 4780 0
	movl	-492(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L1916:
	.loc 1 4783 0
	movl	-464(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$49, %al
	jne	.L1933
	.loc 1 4785 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L1935
	.loc 1 4786 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1935:
	.loc 1 4788 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L1937
.LBB28:
	.loc 1 4790 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -428(%ebp)
	.loc 1 4791 0
	movl	-472(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -424(%ebp)
	.loc 1 4792 0
	movl	-428(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1939
	.loc 1 4793 0
	movl	-428(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -428(%ebp)
.L1939:
	.loc 1 4794 0
	movl	-424(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1941
	.loc 1 4795 0
	movl	-424(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -424(%ebp)
.L1941:
	.loc 1 4796 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-424(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-428(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -492(%ebp)
	.loc 1 4808 0
	cmpl	$117, -464(%ebp)
	je	.L1943
	cmpl	$116, -464(%ebp)
	je	.L1943
	cmpl	$118, -464(%ebp)
	jne	.L1946
.L1943:
	movl	-492(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L1946
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	-464(%ebp), %eax
	jne	.L1946
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	-464(%ebp), %eax
	jne	.L1946
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1946
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L1946
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L1946
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1953
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1953
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1953
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1957
.L1953:
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L1958
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L1958
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L1958
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L1957
.L1958:
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -1120(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L1962
	movl	$64, -1116(%ebp)
	jmp	.L1964
.L1962:
	movl	$32, -1116(%ebp)
.L1964:
	movl	-1116(%ebp), %eax
	cmpl	%eax, -1120(%ebp)
	jle	.L1946
.L1957:
	.loc 1 4821 0
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	20(%eax), %edx
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %ecx
	movl	-492(%ebp), %eax
	movl	20(%eax), %esi
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, -492(%ebp)
.L1946:
	.loc 1 4828 0
	movl	-492(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L1937:
.LBE28:
	.loc 1 4830 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L1967
	.loc 1 4831 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1933:
	.loc 1 4835 0
	movl	-464(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$50, %al
	je	.L1968
	movl	-464(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L1970
.L1968:
	.loc 1 4838 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L1971
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1971
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L1971
	.loc 1 4841 0
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1971:
	.loc 1 4844 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	je	.L1975
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L1977
	movl	-464(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L1977
.L1975:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L1979
	movl	$25, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	count_cond
	movl	%eax, %esi
	movl	$25, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	count_cond
	leal	(%esi,%eax), %eax
	cmpl	$25, %eax
	jg	.L1977
.L1979:
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1981
	movl	lang_hooks@GOT(%ebx), %eax
	movl	224(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L1977
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	contains_placeholder_p@PLT
	testl	%eax, %eax
	jne	.L1977
.L1981:
	.loc 1 4852 0
	movl	$0, 16(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_binary_op_with_conditional_arg
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1977:
	.loc 1 4855 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L1984
	.loc 1 4856 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1984:
	.loc 1 4858 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	je	.L1986
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L1967
	movl	-464(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	je	.L1967
.L1986:
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$52, %al
	jne	.L1990
	movl	$25, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	count_cond
	movl	%eax, %esi
	movl	$25, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	count_cond
	leal	(%esi,%eax), %eax
	cmpl	$25, %eax
	jg	.L1967
.L1990:
	movl	-468(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L1992
	movl	lang_hooks@GOT(%ebx), %eax
	movl	224(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L1967
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	contains_placeholder_p@PLT
	testl	%eax, %eax
	jne	.L1967
.L1992:
	.loc 1 4866 0
	movl	$1, 16(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_binary_op_with_conditional_arg
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1970:
	.loc 1 4870 0
	movl	-464(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L1995
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L1995
	.loc 1 4872 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1995:
	.loc 1 4874 0
	movl	-464(%ebp), %eax
	movl	tree_code_type@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	cmpb	$60, %al
	jne	.L1967
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$48, %al
	jne	.L1967
	.loc 1 4876 0
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L1967:
	.loc 1 4879 0
	movl	-464(%ebp), %ecx
	subl	$26, %ecx
	movl	%ecx, -1136(%ebp)
	cmpl	$104, -1136(%ebp)
	ja	.L2000
	movl	-1136(%ebp), %eax
	sall	$2, %eax
	movl	.L2038@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L2038:
	.long	.L2001@GOTOFF
	.long	.L2001@GOTOFF
	.long	.L2001@GOTOFF
	.long	.L2001@GOTOFF
	.long	.L2001@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2002@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2003@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2001@GOTOFF
	.long	.L2004@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2005@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2006@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2007@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2008@GOTOFF
	.long	.L2009@GOTOFF
	.long	.L2010@GOTOFF
	.long	.L2011@GOTOFF
	.long	.L2011@GOTOFF
	.long	.L2011@GOTOFF
	.long	.L2011@GOTOFF
	.long	.L2012@GOTOFF
	.long	.L2012@GOTOFF
	.long	.L2012@GOTOFF
	.long	.L2012@GOTOFF
	.long	.L2013@GOTOFF
	.long	.L2011@GOTOFF
	.long	.L2014@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2014@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2015@GOTOFF
	.long	.L2016@GOTOFF
	.long	.L2017@GOTOFF
	.long	.L2018@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2019@GOTOFF
	.long	.L2019@GOTOFF
	.long	.L2019@GOTOFF
	.long	.L2019@GOTOFF
	.long	.L2020@GOTOFF
	.long	.L2021@GOTOFF
	.long	.L2022@GOTOFF
	.long	.L2023@GOTOFF
	.long	.L2024@GOTOFF
	.long	.L2025@GOTOFF
	.long	.L2026@GOTOFF
	.long	.L2027@GOTOFF
	.long	.L2028@GOTOFF
	.long	.L2029@GOTOFF
	.long	.L2030@GOTOFF
	.long	.L2031@GOTOFF
	.long	.L2031@GOTOFF
	.long	.L2031@GOTOFF
	.long	.L2031@GOTOFF
	.long	.L2031@GOTOFF
	.long	.L2031@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2032@GOTOFF
	.long	.L2014@GOTOFF
	.long	.L2014@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2033@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2000@GOTOFF
	.long	.L2034@GOTOFF
	.long	.L2035@GOTOFF
	.long	.L2036@GOTOFF
	.long	.L2037@GOTOFF
	.text
.L2001:
	.loc 1 4887 0
	movl	-492(%ebp), %esi
	movl	%esi, -1132(%ebp)
	jmp	.L1837
.L2002:
	.loc 1 4890 0
	movl	-492(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2014:
	.loc 1 4898 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edx
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2039
	.loc 1 4899 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2039:
	.loc 1 4902 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2041
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	jne	.L2043
.L2041:
.LBB29:
	.loc 1 4905 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -420(%ebp)
	.loc 1 4906 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -416(%ebp)
	.loc 1 4907 0
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -412(%ebp)
	.loc 1 4908 0
	movl	-420(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2044
	movl	-420(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2044
	movl	-420(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2044
	movl	-420(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2048
.L2044:
	movl	$1, -1112(%ebp)
	jmp	.L2049
.L2048:
	movl	$0, -1112(%ebp)
.L2049:
	movl	-1112(%ebp), %edi
	movl	%edi, -408(%ebp)
	.loc 1 4909 0
	movl	-420(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2050
	movl	-420(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2052
.L2050:
	movl	$1, -1108(%ebp)
	jmp	.L2053
.L2052:
	movl	$0, -1108(%ebp)
.L2053:
	movl	-1108(%ebp), %eax
	movl	%eax, -404(%ebp)
	.loc 1 4910 0
	movl	-420(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2054
	movl	-420(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2056
	movl	-420(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2056
.L2054:
	movl	$1, -1104(%ebp)
	jmp	.L2058
.L2056:
	movl	$0, -1104(%ebp)
.L2058:
	movl	-1104(%ebp), %edx
	movl	%edx, -400(%ebp)
	.loc 1 4911 0
	movl	-420(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -396(%ebp)
	.loc 1 4912 0
	movl	-420(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -392(%ebp)
	.loc 1 4913 0
	movl	-416(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2059
	movl	-416(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2059
	movl	-416(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2059
	movl	-416(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2063
.L2059:
	movl	$1, -1100(%ebp)
	jmp	.L2064
.L2063:
	movl	$0, -1100(%ebp)
.L2064:
	movl	-1100(%ebp), %ecx
	movl	%ecx, -388(%ebp)
	.loc 1 4914 0
	movl	-416(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2065
	movl	-416(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2067
.L2065:
	movl	$1, -1096(%ebp)
	jmp	.L2068
.L2067:
	movl	$0, -1096(%ebp)
.L2068:
	movl	-1096(%ebp), %esi
	movl	%esi, -384(%ebp)
	.loc 1 4915 0
	movl	-416(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2069
	movl	-416(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2071
	movl	-416(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2071
.L2069:
	movl	$1, -1092(%ebp)
	jmp	.L2073
.L2071:
	movl	$0, -1092(%ebp)
.L2073:
	movl	-1092(%ebp), %edi
	movl	%edi, -380(%ebp)
	.loc 1 4916 0
	movl	-416(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -376(%ebp)
	.loc 1 4917 0
	movl	-416(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -372(%ebp)
	.loc 1 4918 0
	movl	-412(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2074
	movl	-412(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2074
	movl	-412(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2074
	movl	-412(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2078
.L2074:
	movl	$1, -1088(%ebp)
	jmp	.L2079
.L2078:
	movl	$0, -1088(%ebp)
.L2079:
	movl	-1088(%ebp), %eax
	movl	%eax, -368(%ebp)
	.loc 1 4919 0
	movl	-412(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2080
	movl	-412(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2082
.L2080:
	movl	$1, -1084(%ebp)
	jmp	.L2083
.L2082:
	movl	$0, -1084(%ebp)
.L2083:
	movl	-1084(%ebp), %edx
	movl	%edx, -364(%ebp)
	.loc 1 4920 0
	movl	-412(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2084
	movl	-412(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2086
	movl	-412(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2086
.L2084:
	movl	$1, -1080(%ebp)
	jmp	.L2088
.L2086:
	movl	$0, -1080(%ebp)
.L2088:
	movl	-1080(%ebp), %ecx
	movl	%ecx, -360(%ebp)
	.loc 1 4921 0
	movl	-412(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -356(%ebp)
	.loc 1 4922 0
	movl	-412(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -352(%ebp)
	.loc 1 4928 0
	movl	-420(%ebp), %eax
	movl	72(%eax), %edx
	movl	-412(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2089
	cmpl	$0, -388(%ebp)
	je	.L2091
	cmpl	$0, -368(%ebp)
	jne	.L2093
.L2091:
	cmpl	$0, -380(%ebp)
	je	.L2089
	cmpl	$0, -360(%ebp)
	je	.L2089
.L2093:
	movl	-376(%ebp), %eax
	cmpl	-356(%ebp), %eax
	jb	.L2089
	.loc 1 4931 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2089:
	.loc 1 4939 0
	cmpl	$0, -388(%ebp)
	jne	.L2096
	cmpl	$0, -384(%ebp)
	je	.L2098
.L2096:
	cmpl	$0, -408(%ebp)
	jne	.L2099
	cmpl	$0, -404(%ebp)
	jne	.L2099
.L2098:
	cmpl	$0, -380(%ebp)
	je	.L2101
	cmpl	$0, -400(%ebp)
	je	.L2101
.L2099:
	movl	-376(%ebp), %eax
	cmpl	-396(%ebp), %eax
	jb	.L2101
	cmpl	$0, -380(%ebp)
	jne	.L2104
	movl	-372(%ebp), %eax
	cmpl	-392(%ebp), %eax
	jne	.L2101
.L2104:
	movl	-412(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	-356(%ebp), %eax
	je	.L2106
	movl	-412(%ebp), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-416(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2101
.L2106:
	cmpl	$0, -364(%ebp)
	jne	.L2101
	.loc 1 4946 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2101:
	.loc 1 4950 0
	cmpl	$0, -408(%ebp)
	je	.L2109
	cmpl	$0, -388(%ebp)
	je	.L2109
	cmpl	$0, -368(%ebp)
	je	.L2109
	movl	-396(%ebp), %eax
	cmpl	-376(%ebp), %eax
	jae	.L2109
	movl	-376(%ebp), %eax
	cmpl	-356(%ebp), %eax
	jae	.L2109
	cmpl	$0, -392(%ebp)
	je	.L2109
	cmpl	$0, -372(%ebp)
	jne	.L2109
	.loc 1 4953 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2109:
	.loc 1 4965 0
	cmpl	$0, -400(%ebp)
	jne	.L2043
	cmpl	$0, -380(%ebp)
	jne	.L2043
	cmpl	$0, -360(%ebp)
	jne	.L2043
	movl	-376(%ebp), %eax
	cmpl	-396(%ebp), %eax
	ja	.L2120
	movl	-376(%ebp), %eax
	cmpl	-356(%ebp), %eax
	jbe	.L2043
.L2120:
	cmpl	$0, -408(%ebp)
	je	.L2122
	cmpl	$0, -388(%ebp)
	je	.L2122
	movl	-372(%ebp), %eax
	cmpl	-392(%ebp), %eax
	je	.L2122
	movl	-376(%ebp), %eax
	cmpl	-356(%ebp), %eax
	jb	.L2043
.L2122:
	cmpl	$0, -372(%ebp)
	je	.L2126
	movl	-376(%ebp), %eax
	cmpl	-396(%ebp), %eax
	jbe	.L2126
	movl	$1, -1076(%ebp)
	jmp	.L2129
.L2126:
	movl	$0, -1076(%ebp)
.L2129:
	movzbl	-1076(%ebp), %eax
	movl	%eax, %edx
	xorl	$1, %edx
	movb	%dl, -1069(%ebp)
	cmpl	$0, -352(%ebp)
	je	.L2130
	movl	-356(%ebp), %eax
	cmpl	-376(%ebp), %eax
	jbe	.L2130
	movl	$1, -1068(%ebp)
	jmp	.L2133
.L2130:
	movl	$0, -1068(%ebp)
.L2133:
	movzbl	-1068(%ebp), %eax
	xorb	-1069(%ebp), %al
	testb	%al, %al
	je	.L2043
	cmpl	$0, -404(%ebp)
	je	.L2135
	movl	-376(%ebp), %eax
	cmpl	-356(%ebp), %eax
	jne	.L2043
.L2135:
	cmpl	$0, -364(%ebp)
	je	.L2137
	movl	-396(%ebp), %eax
	cmpl	-376(%ebp), %eax
	jne	.L2043
.L2137:
	movl	-412(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	cmpl	-356(%ebp), %eax
	je	.L2139
	movl	-412(%ebp), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-416(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2043
.L2139:
	cmpl	$0, -364(%ebp)
	jne	.L2043
	.loc 1 4977 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-412(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2043:
.LBE29:
	.loc 1 4980 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$49, %al
	jne	.L2142
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2142
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L2145
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L2142
.L2145:
.LBB30:
	.loc 1 4988 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -348(%ebp)
	.loc 1 4989 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2147
	.loc 1 4990 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2147:
	.loc 1 4991 0
	movl	-348(%ebp), %eax
	movl	24(%eax), %edx
	movl	-492(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 4993 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-492(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-348(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$48, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 4994 0
	movl	-492(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 4995 0
	movl	-492(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L2142:
.LBE30:
	.loc 1 5001 0
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2149
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2149
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2149
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2153
.L2149:
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2153
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2153
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2153
.LBB31:
	.loc 1 5006 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -344(%ebp)
	.loc 1 5007 0
	movl	-344(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -340(%ebp)
	movl	-344(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -336(%ebp)
	.loc 1 5008 0
	movl	$0, -332(%ebp)
	.loc 1 5010 0
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2157
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	-344(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L2159
.L2157:
	.loc 1 5013 0
	movl	$1, -332(%ebp)
	.loc 1 5010 0
	jmp	.L2160
.L2159:
	.loc 1 5014 0
	movl	-336(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	$64, %eax
	jg	.L2160
	movl	$1, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	host_integerp@PLT
	testl	%eax, %eax
	je	.L2160
.LBB32:
	.loc 1 5020 0
	movl	$1, 4(%esp)
	movl	-336(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_low_cst@PLT
	movl	%eax, -568(%ebp)
	movl	%edx, -564(%ebp)
	.loc 1 5021 0
	movl	-336(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	leal	-1(%eax), %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L3298
	movl	%eax, %edx
	xorl	%eax, %eax
.L3298:
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-568(%ebp), %eax
	andl	%esi, %eax
	movl	-564(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, -568(%ebp)
	movl	%edx, -564(%ebp)
	.loc 1 5023 0
	movl	-564(%ebp), %eax
	orl	-568(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -332(%ebp)
	.loc 1 5025 0
	cmpl	$0, -332(%ebp)
	je	.L2160
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2164
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$8, %al
	je	.L2160
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	andl	$-2, %eax
	cmpb	$106, %al
	je	.L2160
.L2164:
.LBB33:
	.loc 1 5029 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	268(%eax), %edx
	movl	-340(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -328(%ebp)
	.loc 1 5030 0
	movl	-340(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -340(%ebp)
	.loc 1 5031 0
	movl	-336(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -336(%ebp)
.L2160:
.LBE33:
.LBE32:
	.loc 1 5035 0
	cmpl	$0, -332(%ebp)
	je	.L2153
	.loc 1 5036 0
	movl	-492(%ebp), %eax
	movl	4(%eax), %edx
	movl	-336(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-492(%ebp), %eax
	movl	4(%eax), %edx
	movl	-340(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2153:
.LBE31:
	.loc 1 5041 0
	cmpl	$0, -452(%ebp)
	jne	.L2168
	.loc 1 5043 0
	movl	-492(%ebp), %eax
	movzbl	9(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	andl	$1, %edx
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	je	.L2170
	.loc 1 5045 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2172
	.loc 1 5046 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2172:
	.loc 1 5047 0
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-492(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
.L2170:
	.loc 1 5049 0
	movl	-492(%ebp), %esi
	movl	%esi, -1132(%ebp)
	jmp	.L1837
.L2168:
	.loc 1 5051 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_convert
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2033:
	.loc 1 5054 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$119, %al
	jne	.L2174
	.loc 1 5055 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$119, (%esp)
	call	build1@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2174:
	.loc 1 5057 0
	movl	-492(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2003:
	.loc 1 5060 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$47, %al
	jne	.L2176
.LBB34:
	.loc 1 5062 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	purpose_member@PLT
	movl	%eax, -324(%ebp)
	.loc 1 5063 0
	cmpl	$0, -324(%ebp)
	je	.L2176
	.loc 1 5064 0
	movl	-324(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -492(%ebp)
.L2176:
.LBE34:
	.loc 1 5066 0
	movl	-492(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2032:
	.loc 1 5069 0
	movl	-492(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-452(%ebp), %eax
	je	.L2179
	.loc 1 5071 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2181
	.loc 1 5072 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2181:
	.loc 1 5073 0
	movl	-452(%ebp), %eax
	andl	$1, %eax
	movl	-492(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
.L2179:
	.loc 1 5075 0
	movl	-492(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L2015:
	.loc 1 5078 0
	cmpl	$0, -452(%ebp)
	je	.L2183
	.loc 1 5080 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2185
.LBB35:
	.loc 1 5086 0
	movl	-472(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	leal	-576(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-584(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	neg_double@PLT
	movl	%eax, -320(%ebp)
	.loc 1 5087 0
	movl	-576(%ebp), %eax
	movl	-572(%ebp), %edx
	movl	-584(%ebp), %esi
	movl	-580(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -492(%ebp)
	.loc 1 5088 0
	movl	-492(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 5089 0
	movl	-472(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movb	%al, -1061(%ebp)
	cmpl	$0, -320(%ebp)
	je	.L2187
	movl	-476(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2187
	movl	$1, -1060(%ebp)
	jmp	.L2190
.L2187:
	movl	$0, -1060(%ebp)
.L2190:
	movl	-1060(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	orb	-1061(%ebp), %al
	andl	$1, %eax
	movl	-492(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 5092 0
	movl	-492(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	-492(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	jmp	.L2193
.L2185:
.LBE35:
	.loc 1 5095 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2193
	.loc 1 5096 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	leal	-680(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$79, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic2@PLT
	subl	$4, %esp
	movl	-680(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-676(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-672(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-668(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-664(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-660(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real@PLT
	movl	%eax, -492(%ebp)
	jmp	.L2193
.L2183:
	.loc 1 5098 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2194
	.loc 1 5100 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2194:
	.loc 1 5106 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L2193
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2197
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2199
	movl	-476(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2199
.L2197:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2193
.L2199:
	.loc 1 5108 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2193:
	.loc 1 5111 0
	movl	-492(%ebp), %esi
	movl	%esi, -1132(%ebp)
	jmp	.L1837
.L2018:
	.loc 1 5114 0
	cmpl	$0, -452(%ebp)
	je	.L2201
	.loc 1 5116 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2203
	.loc 1 5120 0
	movl	-476(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2205
	.loc 1 5121 0
	movl	-472(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2205:
	.loc 1 5123 0
	movl	global_trees@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -1056(%ebp)
	movl	%ecx, -1052(%ebp)
	movl	-472(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	%esi, -1048(%ebp)
	movl	%edi, -1044(%ebp)
	movl	-1044(%ebp), %edi
	cmpl	%edi, -1052(%ebp)
	jl	.L2207
	movl	-1044(%ebp), %eax
	cmpl	%eax, -1052(%ebp)
	jg	.L2209
	movl	-1048(%ebp), %edx
	cmpl	%edx, -1056(%ebp)
	jb	.L2207
.L2209:
	movl	global_trees@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-472(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2210
	movl	global_trees@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -1040(%ebp)
	movl	%edi, -1036(%ebp)
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -1032(%ebp)
	movl	%ecx, -1028(%ebp)
	movl	-1028(%ebp), %ecx
	cmpl	%ecx, -1036(%ebp)
	ja	.L2210
	movl	-1028(%ebp), %esi
	cmpl	%esi, -1036(%ebp)
	jb	.L2207
	movl	-1032(%ebp), %edi
	cmpl	%edi, -1040(%ebp)
	jae	.L2210
.L2207:
	.loc 1 5124 0
	movl	-472(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2210:
.LBB36:
	.loc 1 5133 0
	movl	-472(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	leal	-584(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-576(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	neg_double@PLT
	movl	%eax, -316(%ebp)
	.loc 1 5134 0
	movl	-584(%ebp), %eax
	movl	-580(%ebp), %edx
	movl	-576(%ebp), %esi
	movl	-572(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -492(%ebp)
	.loc 1 5135 0
	movl	-492(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 5136 0
	movl	-472(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %esi
	movl	-316(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	orl	%esi, %eax
	andl	$1, %eax
	movl	-492(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 5139 0
	movl	-492(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	orl	%edx, %eax
	andl	$1, %eax
	movl	-492(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	jmp	.L2216
.L2203:
.LBE36:
	.loc 1 5143 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2216
	.loc 1 5145 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	real_isneg@PLT
	testb	%al, %al
	je	.L2216
	.loc 1 5146 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	leal	-656(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$79, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic2@PLT
	subl	$4, %esp
	movl	-656(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-652(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-648(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-644(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-640(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-636(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real@PLT
	movl	%eax, -492(%ebp)
	jmp	.L2216
.L2201:
	.loc 1 5150 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$82, %al
	je	.L2217
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2216
.L2217:
	.loc 1 5151 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$82, (%esp)
	call	build1@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2216:
	.loc 1 5152 0
	movl	-492(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L2035:
	.loc 1 5155 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	je	.L2219
	.loc 1 5156 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2219:
	.loc 1 5157 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$127, %al
	jne	.L2221
	.loc 1 5158 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$127, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2221:
	.loc 1 5161 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L2223
	.loc 1 5162 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2223:
	.loc 1 5164 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	je	.L2225
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L2227
.L2225:
	.loc 1 5165 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$128, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2227:
	.loc 1 5170 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-128, %al
	jne	.L2228
	.loc 1 5171 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2228:
	.loc 1 5172 0
	movl	-492(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L2024:
	.loc 1 5175 0
	cmpl	$0, -452(%ebp)
	je	.L2230
	.loc 1 5177 0
	movl	-472(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -1024(%ebp)
	movl	%ecx, -1020(%ebp)
	movl	-1024(%ebp), %eax
	notl	%eax
	movl	-1020(%ebp), %edx
	notl	%edx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -492(%ebp)
	.loc 1 5179 0
	movl	-492(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 5180 0
	movl	$0, 4(%esp)
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	.loc 1 5181 0
	movl	-472(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	-492(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 5182 0
	movl	-472(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-492(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movzbl	10(%ecx), %eax
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	jmp	.L2232
.L2230:
	.loc 1 5184 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L2232
	.loc 1 5186 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2232:
	.loc 1 5190 0
	movl	-492(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L2008:
	.loc 1 5194 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2234
	.loc 1 5195 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2234:
	.loc 1 5197 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2236
	.loc 1 5198 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2236:
	.loc 1 5199 0
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2238
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2240
	movl	-476(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2238
.L2240:
	.loc 1 5201 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2242
	.loc 1 5202 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2242:
	.loc 1 5208 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2244
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2244
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2244
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2244
	movl	-468(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2244
	.loc 1 5216 0
	movl	$88, -464(%ebp)
	.loc 1 5217 0
	jmp	.L2020
.L2244:
	.loc 1 5223 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L2250
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	je	.L2252
.L2250:
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L2253
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	jne	.L2253
.L2252:
.LBB37:
	.loc 1 5230 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L2255
	.loc 1 5231 0
	movl	-472(%ebp), %eax
	movl	%eax, -304(%ebp)
	movl	-468(%ebp), %eax
	movl	%eax, -300(%ebp)
	jmp	.L2257
.L2255:
	.loc 1 5233 0
	movl	-468(%ebp), %eax
	movl	%eax, -304(%ebp)
	movl	-472(%ebp), %eax
	movl	%eax, -300(%ebp)
.L2257:
	.loc 1 5234 0
	movl	-304(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -312(%ebp)
	.loc 1 5235 0
	movl	-304(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -308(%ebp)
	.loc 1 5236 0
	jmp	.L2258
.L2259:
	movl	-312(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -312(%ebp)
.L2258:
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2260
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2260
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2265
.L2260:
	movl	-312(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2265
	movl	-312(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-312(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2259
	.loc 1 5237 0
	jmp	.L2265
.L2266:
	movl	-308(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -308(%ebp)
.L2265:
	movl	-308(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2267
	movl	-308(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2267
	movl	-308(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2270
.L2267:
	movl	-308(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2270
	movl	-308(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-308(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2266
.L2270:
	.loc 1 5239 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	jne	.L2272
	movl	-308(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	je	.L2272
	.loc 1 5241 0
	movl	-300(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-312(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-308(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2272:
	.loc 1 5244 0
	movl	-312(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	je	.L2253
	movl	-308(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	jne	.L2253
	.loc 1 5246 0
	movl	-300(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-308(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-312(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2253:
.LBE37:
	.loc 1 5251 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	jne	.L2299
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	jne	.L2299
.LBB38:
	.loc 1 5254 0
	movl	$0, -280(%ebp)
	movl	$0, -276(%ebp)
	.loc 1 5261 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -296(%ebp)
	.loc 1 5262 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -292(%ebp)
	.loc 1 5263 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -288(%ebp)
	.loc 1 5264 0
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -284(%ebp)
	.loc 1 5265 0
	movl	$0, -272(%ebp)
	.loc 1 5267 0
	movl	$0, 8(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2280
	.loc 1 5268 0
	movl	-292(%ebp), %eax
	movl	%eax, -272(%ebp)
	movl	-296(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	-288(%ebp), %eax
	movl	%eax, -276(%ebp)
	jmp	.L2282
.L2280:
	.loc 1 5269 0
	movl	$0, 8(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2283
	.loc 1 5270 0
	movl	-296(%ebp), %eax
	movl	%eax, -272(%ebp)
	movl	-292(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	-284(%ebp), %eax
	movl	%eax, -276(%ebp)
	jmp	.L2282
.L2283:
	.loc 1 5271 0
	movl	$0, 8(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2285
	.loc 1 5272 0
	movl	-296(%ebp), %eax
	movl	%eax, -272(%ebp)
	movl	-292(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	-288(%ebp), %eax
	movl	%eax, -276(%ebp)
	jmp	.L2282
.L2285:
	.loc 1 5273 0
	movl	$0, 8(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2287
	.loc 1 5274 0
	movl	-292(%ebp), %eax
	movl	%eax, -272(%ebp)
	movl	-296(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	-284(%ebp), %eax
	movl	%eax, -276(%ebp)
	jmp	.L2282
.L2287:
	.loc 1 5279 0
	movl	-292(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2282
	movl	-284(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2282
	movl	-292(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2282
	movl	-284(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2282
.LBB39:
	.loc 1 5285 0
	movl	-292(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	.loc 1 5286 0
	movl	-284(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -552(%ebp)
	movl	%edx, -548(%ebp)
	.loc 1 5289 0
	movl	-560(%ebp), %eax
	movl	-556(%ebp), %edx
	movl	%edx, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	movl	-560(%ebp), %esi
	xorl	%eax, %esi
	movl	%esi, -1016(%ebp)
	movl	-556(%ebp), %edi
	xorl	%edx, %edi
	movl	%edi, -1012(%ebp)
	movl	-1016(%ebp), %esi
	movl	-1012(%ebp), %edi
	movl	%esi, -1016(%ebp)
	movl	%edi, -1012(%ebp)
	subl	%eax, -1016(%ebp)
	sbbl	%edx, -1012(%ebp)
	movl	-552(%ebp), %eax
	movl	-548(%ebp), %edx
	movl	%edx, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	movl	-552(%ebp), %edi
	xorl	%eax, %edi
	movl	%edi, -1008(%ebp)
	movl	-548(%ebp), %ecx
	xorl	%edx, %ecx
	movl	%ecx, -1004(%ebp)
	movl	-1008(%ebp), %esi
	movl	-1004(%ebp), %edi
	movl	%esi, -1008(%ebp)
	movl	%edi, -1004(%ebp)
	subl	%eax, -1008(%ebp)
	sbbl	%edx, -1004(%ebp)
	movl	-1004(%ebp), %edi
	cmpl	%edi, -1012(%ebp)
	jg	.L2293
	movl	-1004(%ebp), %eax
	cmpl	%eax, -1012(%ebp)
	jl	.L2295
	movl	-1008(%ebp), %edx
	cmpl	%edx, -1016(%ebp)
	jae	.L2293
.L2295:
	.loc 1 5292 0
	movl	-560(%ebp), %eax
	movl	-556(%ebp), %edx
	movl	%eax, -544(%ebp)
	movl	%edx, -540(%ebp)
	movl	-552(%ebp), %eax
	movl	-548(%ebp), %edx
	movl	%eax, -560(%ebp)
	movl	%edx, -556(%ebp)
	movl	-544(%ebp), %eax
	movl	-540(%ebp), %edx
	movl	%eax, -552(%ebp)
	movl	%edx, -548(%ebp)
	.loc 1 5293 0
	movl	-296(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	-288(%ebp), %eax
	movl	%eax, -296(%ebp)
	movl	-280(%ebp), %eax
	movl	%eax, -288(%ebp)
	.loc 1 5294 0
	movl	-292(%ebp), %eax
	movl	%eax, -280(%ebp)
	movl	-284(%ebp), %eax
	movl	%eax, -292(%ebp)
	movl	-280(%ebp), %eax
	movl	%eax, -284(%ebp)
.L2293:
	.loc 1 5297 0
	movl	-552(%ebp), %eax
	movl	-548(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	testl	%eax, %eax
	jle	.L2282
	movl	-560(%ebp), %esi
	movl	-556(%ebp), %edi
	movl	-552(%ebp), %eax
	movl	-548(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__moddi3@PLT
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2282
	.loc 1 5299 0
	movl	-552(%ebp), %eax
	movl	-548(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-560(%ebp), %eax
	movl	-556(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__divdi3@PLT
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, 12(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -280(%ebp)
	.loc 1 5301 0
	movl	-288(%ebp), %eax
	movl	%eax, -276(%ebp)
	.loc 1 5302 0
	movl	-284(%ebp), %eax
	movl	%eax, -272(%ebp)
.L2282:
.LBE39:
	.loc 1 5306 0
	cmpl	$0, -272(%ebp)
	je	.L2299
	.loc 1 5307 0
	movl	-276(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-280(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-272(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2238:
.LBE38:
	.loc 1 5314 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_real_zero_addition_p
	testb	%al, %al
	je	.L2300
	.loc 1 5315 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2300:
	.loc 1 5318 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_real_zero_addition_p
	testb	%al, %al
	je	.L2299
	.loc 1 5319 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2299:
.LBB40:
	.loc 1 5328 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -268(%ebp)
	.loc 1 5329 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -264(%ebp)
	.loc 1 5330 0
	cmpl	$85, -268(%ebp)
	jne	.L2303
	cmpl	$84, -264(%ebp)
	je	.L2305
.L2303:
	cmpl	$85, -264(%ebp)
	jne	.L2306
	cmpl	$84, -268(%ebp)
	jne	.L2306
.L2305:
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2306
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2306
.LBB41:
	.loc 1 5339 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -260(%ebp)
	.loc 1 5340 0
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -256(%ebp)
	.loc 1 5341 0
	jmp	.L2310
.L2311:
	movl	-260(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -260(%ebp)
.L2310:
	movl	-260(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2312
	movl	-260(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2312
	movl	-260(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2317
.L2312:
	movl	-260(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2317
	movl	-260(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-260(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2311
	.loc 1 5342 0
	jmp	.L2317
.L2318:
	movl	-256(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -256(%ebp)
.L2317:
	movl	-256(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2319
	movl	-256(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2319
	movl	-256(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2322
.L2319:
	movl	-256(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2322
	movl	-256(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-256(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2318
.L2322:
	.loc 1 5343 0
	movl	-260(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -252(%ebp)
	.loc 1 5344 0
	movl	-256(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -248(%ebp)
	.loc 1 5345 0
	cmpl	$26, -252(%ebp)
	jne	.L2324
	cmpl	$26, -248(%ebp)
	jne	.L2324
	movl	-260(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2324
	movl	-256(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2324
	movl	-260(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	-256(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2324
	.loc 1 5351 0
	cmpl	$84, -268(%ebp)
	jne	.L2330
	movl	-260(%ebp), %ecx
	movl	%ecx, -1000(%ebp)
	jmp	.L2332
.L2330:
	movl	-256(%ebp), %esi
	movl	%esi, -1000(%ebp)
.L2332:
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	-1000(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$86, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2324:
	.loc 1 5353 0
	cmpl	$61, -248(%ebp)
	jne	.L2333
.LBB42:
	.loc 1 5356 0
	movl	-256(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -244(%ebp)
	.loc 1 5357 0
	movl	-256(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -240(%ebp)
	.loc 1 5358 0
	jmp	.L2335
.L2336:
	movl	-244(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -244(%ebp)
.L2335:
	movl	-244(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2337
	movl	-244(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2337
	movl	-244(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2342
.L2337:
	movl	-244(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2342
	movl	-244(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-244(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2336
	.loc 1 5359 0
	jmp	.L2342
.L2343:
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -240(%ebp)
.L2342:
	movl	-240(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2344
	movl	-240(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2344
	movl	-240(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2347
.L2344:
	movl	-240(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2347
	movl	-240(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-240(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2343
.L2347:
	.loc 1 5360 0
	movl	-244(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2306
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-244(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jne	.L2306
	movl	$0, 8(%esp)
	movl	-240(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-260(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2306
	.loc 1 5366 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -996(%ebp)
	cmpl	$84, -268(%ebp)
	jne	.L2353
	movl	$86, -992(%ebp)
	jmp	.L2355
.L2353:
	movl	$87, -992(%ebp)
.L2355:
	movl	-260(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-996(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-992(%ebp), %edx
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2333:
.LBE42:
	.loc 1 5371 0
	cmpl	$61, -252(%ebp)
	jne	.L2306
.LBB43:
	.loc 1 5374 0
	movl	-260(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -236(%ebp)
	.loc 1 5375 0
	movl	-260(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -232(%ebp)
	.loc 1 5376 0
	jmp	.L2357
.L2358:
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -236(%ebp)
.L2357:
	movl	-236(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2359
	movl	-236(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2359
	movl	-236(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2364
.L2359:
	movl	-236(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2364
	movl	-236(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-236(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2358
	.loc 1 5377 0
	jmp	.L2364
.L2365:
	movl	-232(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -232(%ebp)
.L2364:
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2366
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L2366
	movl	-232(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L2369
.L2366:
	movl	-232(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L2369
	movl	-232(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-232(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L2365
.L2369:
	.loc 1 5378 0
	movl	-236(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2306
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %ecx
	andw	$511, %cx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-236(%ebp), %eax
	movl	%eax, (%esp)
	call	compare_tree_int@PLT
	testl	%eax, %eax
	jne	.L2306
	movl	$0, 8(%esp)
	movl	-232(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2306
	.loc 1 5384 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -988(%ebp)
	cmpl	$84, -268(%ebp)
	je	.L2374
	movl	$86, -984(%ebp)
	jmp	.L2376
.L2374:
	movl	$87, -984(%ebp)
.L2376:
	movl	-256(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-988(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-984(%ebp), %esi
	movl	%esi, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2306:
.LBE43:
.LBE41:
.LBE40:
	.loc 1 5399 0
	cmpl	$0, -452(%ebp)
	jne	.L2377
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2379
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2381
	movl	-476(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2381
.L2379:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2377
	cmpl	$62, -464(%ebp)
	jne	.L2377
.L2381:
.LBB44:
	.loc 1 5411 0
	movl	$0, 20(%esp)
	leal	-504(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-500(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-496(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	split_tree
	movl	%eax, -228(%ebp)
	.loc 1 5412 0
	cmpl	$61, -464(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	leal	-508(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-576(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-584(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	split_tree
	movl	%eax, -224(%ebp)
	.loc 1 5417 0
	cmpl	$0, -228(%ebp)
	setne	%al
	movzbl	%al, %edx
	cmpl	$0, -224(%ebp)
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-496(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-584(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-500(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-576(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-504(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-508(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	cmpl	$2, %eax
	jle	.L2377
	.loc 1 5423 0
	cmpl	$61, -464(%ebp)
	jne	.L2385
	.loc 1 5424 0
	movl	$60, -464(%ebp)
.L2385:
	.loc 1 5426 0
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-224(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	associate_trees
	movl	%eax, -228(%ebp)
	.loc 1 5427 0
	movl	-584(%ebp), %edx
	movl	-496(%ebp), %ecx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	associate_trees
	movl	%eax, -496(%ebp)
	.loc 1 5428 0
	movl	-576(%ebp), %edx
	movl	-500(%ebp), %ecx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	associate_trees
	movl	%eax, -500(%ebp)
	.loc 1 5429 0
	movl	-508(%ebp), %edx
	movl	-504(%ebp), %ecx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	associate_trees
	movl	%eax, -504(%ebp)
	.loc 1 5436 0
	movl	-504(%ebp), %eax
	testl	%eax, %eax
	je	.L2387
	movl	-500(%ebp), %eax
	testl	%eax, %eax
	je	.L2387
	.loc 1 5438 0
	movl	-504(%ebp), %eax
	movl	-500(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	tree_int_cst_lt@PLT
	testl	%eax, %eax
	je	.L2390
	.loc 1 5440 0
	movl	-500(%ebp), %edx
	movl	-504(%ebp), %ecx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$61, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	associate_trees
	movl	%eax, -504(%ebp)
	.loc 1 5442 0
	movl	$0, -500(%ebp)
	jmp	.L2387
.L2390:
	.loc 1 5446 0
	movl	-504(%ebp), %edx
	movl	-500(%ebp), %ecx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$61, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	associate_trees
	movl	%eax, -500(%ebp)
	.loc 1 5448 0
	movl	$0, -504(%ebp)
.L2387:
	.loc 1 5451 0
	movl	-504(%ebp), %eax
	testl	%eax, %eax
	je	.L2392
	.loc 1 5453 0
	movl	-496(%ebp), %eax
	testl	%eax, %eax
	jne	.L2394
	.loc 1 5454 0
	movl	-504(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$61, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	associate_trees
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2394:
	.loc 1 5458 0
	movl	-504(%ebp), %edx
	movl	-496(%ebp), %ecx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$61, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	associate_trees
	movl	%eax, -496(%ebp)
	.loc 1 5460 0
	movl	-496(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$60, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	associate_trees
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2392:
	.loc 1 5465 0
	movl	-500(%ebp), %edx
	movl	-496(%ebp), %ecx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	associate_trees
	movl	%eax, -496(%ebp)
	.loc 1 5466 0
	movl	-496(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-228(%ebp), %eax
	movl	%eax, (%esp)
	call	associate_trees
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2377:
.LBE44:
	.loc 1 5471 0
	cmpl	$0, -452(%ebp)
	je	.L2396
	.loc 1 5472 0
	movl	$0, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	const_binop
	movl	%eax, -484(%ebp)
.L2396:
	.loc 1 5473 0
	cmpl	$0, -484(%ebp)
	je	.L2398
	.loc 1 5477 0
	movl	-484(%ebp), %eax
	movl	4(%eax), %edx
	movl	-492(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2400
	.loc 1 5478 0
	movl	-492(%ebp), %eax
	movl	4(%eax), %edx
	movl	-484(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -484(%ebp)
.L2400:
	.loc 1 5480 0
	movl	-484(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2398:
	.loc 1 5482 0
	movl	-492(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2009:
	.loc 1 5486 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2402
	.loc 1 5487 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2402:
	.loc 1 5489 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2404
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2404
	.loc 1 5490 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %esi
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	leal	-632(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$79, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic2@PLT
	subl	$4, %esp
	movl	-468(%ebp), %eax
	movl	4(%eax), %edx
	movl	-632(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-628(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-624(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-620(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-616(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-612(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, (%esp)
	call	build_real@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2404:
	.loc 1 5496 0
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2407
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2409
	movl	-476(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2407
.L2409:
	.loc 1 5498 0
	cmpl	$0, -452(%ebp)
	jne	.L2411
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2411
	.loc 1 5499 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2411:
	.loc 1 5500 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2414
	.loc 1 5501 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2414:
	.loc 1 5507 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	jne	.L2420
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$62, %al
	jne	.L2420
	movl	-468(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2420
	.loc 1 5510 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %esi
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2407:
	.loc 1 5518 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %edx
	movl	$1, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_real_zero_addition_p
	testb	%al, %al
	je	.L2421
	.loc 1 5519 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2421:
	.loc 1 5524 0
	cmpl	$0, -452(%ebp)
	jne	.L2420
	movl	-468(%ebp), %eax
	movl	4(%eax), %edx
	movl	$0, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fold_real_zero_addition_p
	testb	%al, %al
	je	.L2420
	.loc 1 5525 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2420:
	.loc 1 5533 0
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2425
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2427
	movl	-476(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2427
.L2425:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2306
.L2427:
	movl	$0, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2306
	.loc 1 5535 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2010:
	.loc 1 5541 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2431
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2431
	.loc 1 5542 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2431:
	.loc 1 5545 0
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2434
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2436
	movl	-476(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2434
.L2436:
	.loc 1 5547 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2438
	.loc 1 5548 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2438:
	.loc 1 5549 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2440
	.loc 1 5550 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2440:
	.loc 1 5553 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$84, %al
	jne	.L2442
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2442
	.loc 1 5555 0
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2442:
	.loc 1 5557 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$84, %al
	jne	.L2445
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2445
	.loc 1 5559 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2445:
	.loc 1 5562 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2306
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	extract_muldiv
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2306
	.loc 1 5565 0
	movl	-480(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2434:
	.loc 1 5574 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2452
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2452
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L2455
.L2452:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2456
.L2455:
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2457
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2457
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L2460
.L2457:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2456
.L2460:
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	real_zerop@PLT
	testl	%eax, %eax
	je	.L2456
	.loc 1 5577 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2456:
	.loc 1 5579 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2462
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2464
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2464
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L2462
.L2464:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2467
.L2462:
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	real_onep@PLT
	testl	%eax, %eax
	je	.L2467
	.loc 1 5581 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2467:
	.loc 1 5584 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2469
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2471
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2471
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L2469
.L2471:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2474
.L2469:
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	real_minus_onep@PLT
	testl	%eax, %eax
	je	.L2474
	.loc 1 5586 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$79, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2474:
	.loc 1 5589 0
	cmpl	$0, -452(%ebp)
	jne	.L2306
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	real_twop@PLT
	testl	%eax, %eax
	je	.L2306
	movl	lang_hooks@GOT(%ebx), %eax
	movl	224(%eax), %eax
	call	*%eax
	testl	%eax, %eax
	jne	.L2306
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	contains_placeholder_p@PLT
	testl	%eax, %eax
	jne	.L2306
.LBB45:
	.loc 1 5593 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -220(%ebp)
	.loc 1 5594 0
	movl	-220(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-220(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2020:
.LBE45:
	.loc 1 5601 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	je	.L2480
	.loc 1 5602 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2480:
	.loc 1 5603 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2482
	.loc 1 5604 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2482:
	.loc 1 5605 0
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	distribute_bit_expr
	movl	%eax, -484(%ebp)
	.loc 1 5606 0
	cmpl	$0, -484(%ebp)
	je	.L2484
	.loc 1 5607 0
	movl	-484(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L2484:
	.loc 1 5615 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L2299
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L2299
	.loc 1 5618 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2021:
	.loc 1 5629 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2489
	.loc 1 5630 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2489:
	.loc 1 5631 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	je	.L2491
	.loc 1 5632 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2491:
	.loc 1 5638 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2299
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2299
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2299
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2299
	movl	-468(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2299
	.loc 1 5646 0
	movl	$88, -464(%ebp)
	.loc 1 5647 0
	jmp	.L2020
.L2022:
	.loc 1 5656 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	je	.L2499
	.loc 1 5657 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2499:
	.loc 1 5658 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2501
	.loc 1 5659 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2501:
	.loc 1 5660 0
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	distribute_bit_expr
	movl	%eax, -484(%ebp)
	.loc 1 5661 0
	cmpl	$0, -484(%ebp)
	je	.L2503
	.loc 1 5662 0
	movl	-484(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L2503:
	.loc 1 5664 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2505
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L2505
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2505
.LBB46:
	.loc 1 5668 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -216(%ebp)
	.loc 1 5670 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L2509
	movl	$64, -980(%ebp)
	jmp	.L2511
.L2509:
	movl	$32, -980(%ebp)
.L2511:
	movl	-980(%ebp), %esi
	cmpl	-216(%ebp), %esi
	jbe	.L2505
	cmpl	$63, -216(%ebp)
	ja	.L2505
	movl	-468(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-216(%ebp), %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L3297
	movl	%eax, %edx
	xorl	%eax, %eax
.L3297:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -976(%ebp)
	movl	%edx, -972(%ebp)
	movl	-976(%ebp), %eax
	andl	%esi, %eax
	movl	-972(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2505
	.loc 1 5673 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2505:
.LBE46:
	.loc 1 5682 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L2306
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$92, %al
	jne	.L2306
	.loc 1 5685 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	build@PLT
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2023:
	.loc 1 5694 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_all_onesp@PLT
	testl	%eax, %eax
	je	.L2518
	.loc 1 5695 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2518:
	.loc 1 5696 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2520
	.loc 1 5697 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2520:
	.loc 1 5698 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2377
	.loc 1 5700 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -468(%ebp)
	.loc 1 5701 0
	movl	$90, -464(%ebp)
	.loc 1 5702 0
	jmp	.L2022
.L2013:
	.loc 1 5709 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2524
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2524
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2524
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	je	.L2524
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	real_zerop@PLT
	testl	%eax, %eax
	je	.L2524
	.loc 1 5712 0
	movl	-492(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2524:
	.loc 1 5715 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2530
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2530
	.loc 1 5716 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$71, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2530:
	.loc 1 5720 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2533
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L2535
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L2535
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L2533
.L2535:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2538
.L2533:
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	real_onep@PLT
	testl	%eax, %eax
	je	.L2538
	.loc 1 5722 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2538:
	.loc 1 5729 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2540
	.loc 1 5731 0
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2542
	movl	dconst1@GOT(%ebx), %edx
	movl	(%edx), %eax
	movl	%eax, 4(%esp)
	movl	4(%edx), %eax
	movl	%eax, 8(%esp)
	movl	8(%edx), %eax
	movl	%eax, 12(%esp)
	movl	12(%edx), %eax
	movl	%eax, 16(%esp)
	movl	16(%edx), %eax
	movl	%eax, 20(%esp)
	movl	20(%edx), %eax
	movl	%eax, 24(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	const_binop
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2542
	.loc 1 5734 0
	movl	-480(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2542:
	.loc 1 5736 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2540
.LBB47:
	.loc 1 5739 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	(%edx), %eax
	movl	%eax, -704(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -700(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -696(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -692(%ebp)
	movl	16(%edx), %eax
	movl	%eax, -688(%ebp)
	movl	20(%edx), %eax
	movl	%eax, -684(%ebp)
	.loc 1 5740 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	leal	-704(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	exact_real_inverse@PLT
	testb	%al, %al
	je	.L2540
	.loc 1 5742 0
	movl	-704(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-700(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-696(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-692(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-688(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-684(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	build_real@PLT
	movl	%eax, -480(%ebp)
	.loc 1 5743 0
	movl	-480(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2540:
.LBE47:
	.loc 1 5748 0
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2547
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$71, %al
	jne	.L2547
	.loc 1 5751 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$71, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2547:
	.loc 1 5756 0
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2377
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$71, %al
	jne	.L2377
	.loc 1 5759 0
	movl	-468(%ebp), %eax
	movl	24(%eax), %esi
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$71, (%esp)
	call	build@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2011:
	.loc 1 5771 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2553
	.loc 1 5772 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2553:
	.loc 1 5773 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2555
	.loc 1 5774 0
	movl	-492(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2555:
	.loc 1 5782 0
	cmpl	$64, -464(%ebp)
	je	.L2557
	cmpl	$65, -464(%ebp)
	jne	.L2559
.L2557:
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	testl	%eax, %eax
	je	.L2559
	.loc 1 5784 0
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$72, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2559:
	.loc 1 5786 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2377
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	extract_muldiv
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2377
	.loc 1 5789 0
	movl	-480(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2012:
	.loc 1 5797 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2564
	.loc 1 5798 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2564:
	.loc 1 5799 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2566
	.loc 1 5800 0
	movl	-492(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L2566:
	.loc 1 5802 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2377
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	extract_muldiv
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2377
	.loc 1 5805 0
	movl	-480(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2019:
	.loc 1 5813 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2571
	.loc 1 5814 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2571:
	.loc 1 5817 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2573
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L2573
	.loc 1 5818 0
	movl	-492(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L2573:
	.loc 1 5821 0
	cmpl	$86, -464(%ebp)
	jne	.L2576
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2576
	.loc 1 5823 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2579
	.loc 1 5824 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2579:
	.loc 1 5825 0
	movl	-492(%ebp), %eax
	movb	$87, 8(%eax)
	.loc 1 5826 0
	movl	$87, -464(%ebp)
	.loc 1 5827 0
	movl	-476(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, -468(%ebp)
	movl	-492(%ebp), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 5833 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L2576
	.loc 1 5834 0
	movl	-492(%ebp), %esi
	movl	%esi, -1132(%ebp)
	jmp	.L1837
.L2576:
	.loc 1 5840 0
	cmpl	$87, -464(%ebp)
	jne	.L2582
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2582
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	je	.L2585
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$91, %al
	je	.L2585
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$88, %al
	je	.L2585
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$89, %al
	jne	.L2582
.L2585:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2582
	.loc 1 5846 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2582:
	.loc 1 5854 0
	cmpl	$87, -464(%ebp)
	jne	.L2377
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2377
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$87, %al
	jne	.L2377
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2377
	movl	-468(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2377
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2377
	movl	-468(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	%eax, %esi
	adcl	%edx, %edi
	movl	-476(%ebp), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %ecx
	movzwl	%cx, %eax
	movl	$0, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2377
	.loc 1 5862 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2016:
	.loc 1 5867 0
	movl	$0, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2598
	.loc 1 5868 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2598:
	.loc 1 5869 0
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2600
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2600
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2600
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2306
.L2600:
	movl	-476(%ebp), %eax
	movl	60(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2306
	.loc 1 5871 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2017:
	.loc 1 5875 0
	movl	$0, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2606
	.loc 1 5876 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2606:
	.loc 1 5877 0
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2608
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2608
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2608
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2306
.L2608:
	movl	-476(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2306
	movl	-476(%ebp), %eax
	movl	64(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2306
	.loc 1 5880 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2030:
	.loc 1 5888 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -480(%ebp)
	.loc 1 5890 0
	movl	-480(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$98, %al
	jne	.L2615
	.loc 1 5891 0
	movl	-492(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2615:
	.loc 1 5892 0
	movl	-480(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2025:
	.loc 1 5899 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2027
	.loc 1 5900 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2027:
	.loc 1 5903 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2618
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2618
	.loc 1 5904 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2618:
	.loc 1 5905 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2621
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2621
	cmpl	$93, -464(%ebp)
	jne	.L2624
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2621
.L2624:
	.loc 1 5908 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2621:
	.loc 1 5911 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2626
	.loc 1 5912 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2626:
	.loc 1 5915 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2628
	.loc 1 5916 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2628:
	.loc 1 5920 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2630
	.loc 1 5921 0
	movl	-492(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2630:
	.loc 1 5929 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	%al, %dl
	jne	.L2632
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$93, %al
	je	.L2634
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$94, %al
	je	.L2634
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$95, %al
	je	.L2634
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$96, %al
	jne	.L2632
.L2634:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2632
.LBB48:
	.loc 1 5936 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -212(%ebp)
	.loc 1 5937 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -208(%ebp)
	.loc 1 5938 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -204(%ebp)
	.loc 1 5939 0
	movl	-468(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -200(%ebp)
	.loc 1 5943 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$96, %al
	je	.L2639
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$95, %al
	jne	.L2641
.L2639:
	cmpl	$95, -464(%ebp)
	je	.L2642
	cmpl	$96, -464(%ebp)
	jne	.L2641
.L2642:
	movl	$1, -964(%ebp)
	jmp	.L2644
.L2641:
	movl	$0, -964(%ebp)
.L2644:
	movl	-964(%ebp), %edx
	movl	%edx, -196(%ebp)
	.loc 1 5945 0
	movl	$0, 8(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2645
	.loc 1 5946 0
	movl	-200(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2645:
	.loc 1 5948 0
	cmpl	$0, -196(%ebp)
	je	.L2647
	movl	$0, 8(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2647
	.loc 1 5949 0
	movl	-204(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2647:
	.loc 1 5951 0
	cmpl	$0, -196(%ebp)
	je	.L2650
	movl	$0, 8(%esp)
	movl	-204(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2650
	.loc 1 5952 0
	movl	-200(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%edx, 12(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2650:
	.loc 1 5958 0
	cmpl	$0, -196(%ebp)
	jne	.L2653
	movl	-204(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2632
.L2653:
	movl	$0, 8(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2632
	.loc 1 5960 0
	movl	-204(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-212(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	-208(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2632:
.LBE48:
	.loc 1 5966 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_range_test
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2656
	.loc 1 5967 0
	movl	-480(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L2656:
	.loc 1 5972 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	cmpl	-464(%ebp), %eax
	jne	.L2658
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_truthop
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2658
	.loc 1 5975 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-480(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2658:
	.loc 1 5977 0
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_truthop
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2661
	.loc 1 5978 0
	movl	-480(%ebp), %esi
	movl	%esi, -1132(%ebp)
	jmp	.L1837
.L2661:
	.loc 1 5980 0
	movl	-492(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2026:
	.loc 1 5987 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2028
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2028
	.loc 1 5988 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2028:
	.loc 1 5991 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2665
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2665
	.loc 1 5992 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2665:
	.loc 1 5993 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2668
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2668
	cmpl	$94, -464(%ebp)
	jne	.L2671
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2668
.L2671:
	.loc 1 5996 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2668:
	.loc 1 5999 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2673
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2673
	.loc 1 6000 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2673:
	.loc 1 6003 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2628
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2628
	.loc 1 6004 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2029:
	.loc 1 6009 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2679
	.loc 1 6010 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2679:
	.loc 1 6011 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2681
	.loc 1 6012 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2681:
	.loc 1 6014 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2683
	.loc 1 6015 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2683:
	.loc 1 6016 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2685
	.loc 1 6017 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2685:
	.loc 1 6018 0
	movl	-492(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2031:
	.loc 1 6027 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2687
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2689
.L2687:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2690
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	je	.L2690
.L2689:
	.loc 1 6032 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2692
	.loc 1 6033 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2692:
	.loc 1 6034 0
	movl	-492(%ebp), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 6035 0
	movl	-492(%ebp), %edx
	movl	-472(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 6036 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -472(%ebp)
	.loc 1 6037 0
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -468(%ebp)
	.loc 1 6038 0
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_tree_comparison
	movl	%eax, -464(%ebp)
	.loc 1 6039 0
	movl	-464(%ebp), %eax
	movl	%eax, %edx
	movl	-492(%ebp), %eax
	movb	%dl, 8(%eax)
.L2690:
	.loc 1 6042 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2694
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2696
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L2696
.L2694:
	.loc 1 6045 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2698
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2698
	.loc 1 6047 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2698:
	.loc 1 6050 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2701
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2701
	.loc 1 6051 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	leal	-608(%ebp), %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$79, 4(%esp)
	movl	%edx, (%esp)
	call	real_arithmetic2@PLT
	subl	$4, %esp
	movl	-468(%ebp), %eax
	movl	4(%eax), %edx
	movl	-608(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-604(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-600(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-596(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-592(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-588(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	%edx, (%esp)
	call	build_real@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	20(%eax), %edi
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_tree_comparison
	movl	%eax, %edx
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2701:
	.loc 1 6059 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2704
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	real_isnegzero@PLT
	testb	%al, %al
	je	.L2704
	.loc 1 6061 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %ecx
	movl	dconst0@GOT(%ebx), %edx
	movl	(%edx), %eax
	movl	%eax, 4(%esp)
	movl	4(%edx), %eax
	movl	%eax, 8(%esp)
	movl	8(%edx), %eax
	movl	%eax, 12(%esp)
	movl	12(%edx), %eax
	movl	%eax, 16(%esp)
	movl	16(%edx), %eax
	movl	%eax, 20(%esp)
	movl	20(%edx), %eax
	movl	%eax, 24(%esp)
	movl	%ecx, (%esp)
	call	build_real@PLT
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2704:
	.loc 1 6068 0
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2696
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2696
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	je	.L2709
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L2696
.L2709:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L2696
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -960(%ebp)
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L2712
	movl	$61, -956(%ebp)
	jmp	.L2714
.L2712:
	movl	$60, -956(%ebp)
.L2714:
	movl	$0, 12(%esp)
	movl	-960(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-956(%ebp), %ecx
	movl	%ecx, (%esp)
	call	const_binop
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2696
	movl	-480(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2696
	.loc 1 6077 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-480(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2696:
.LBB49:
	.loc 1 6084 0
	movl	$0, -192(%ebp)
	movl	$0, -188(%ebp)
	.loc 1 6085 0
	movl	$-1, -184(%ebp)
	.loc 1 6087 0
	movl	-468(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2717
	.loc 1 6088 0
	movl	$1, -184(%ebp)
	movl	-468(%ebp), %eax
	movl	%eax, -192(%ebp)
	movl	-472(%ebp), %eax
	movl	%eax, -188(%ebp)
.L2717:
	.loc 1 6089 0
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2719
	.loc 1 6090 0
	movl	$0, -184(%ebp)
	movl	-472(%ebp), %eax
	movl	%eax, -192(%ebp)
	movl	-468(%ebp), %eax
	movl	%eax, -188(%ebp)
.L2719:
	.loc 1 6092 0
	cmpl	$0, -192(%ebp)
	je	.L2721
	movl	-188(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-122, %al
	jne	.L2721
	.loc 1 6098 0
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2724
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2724
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2747
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2729
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2747
.L2729:
	cmpl	$103, -464(%ebp)
	je	.L2724
	cmpl	$104, -464(%ebp)
	jne	.L2747
.L2724:
.LBB50:
	.loc 1 6104 0
	movl	-188(%ebp), %eax
	movl	24(%eax), %edx
	movl	-188(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -180(%ebp)
	.loc 1 6111 0
	movl	-188(%ebp), %eax
	movl	24(%eax), %edx
	movl	-188(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$132, (%esp)
	call	build@PLT
	movl	%eax, -188(%ebp)
	.loc 1 6117 0
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L2732
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2732
.LBB51:
	.loc 1 6122 0
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movl	28(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -176(%ebp)
	.loc 1 6132 0
	cmpl	$0, -184(%ebp)
	jne	.L2735
	.loc 1 6133 0
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -160(%ebp)
	jmp	.L2737
.L2735:
	.loc 1 6136 0
	movl	-188(%ebp), %eax
	movl	20(%eax), %edx
	movl	-192(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -160(%ebp)
.L2737:
	.loc 1 6139 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2738
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2740
.L2738:
	.loc 1 6141 0
	movl	-188(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2740:
	.loc 1 6143 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	264(%eax), %edx
	movl	-176(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -168(%ebp)
	.loc 1 6144 0
	movl	-168(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -164(%ebp)
	.loc 1 6145 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -172(%ebp)
	.loc 1 6146 0
	movl	-172(%ebp), %edx
	movl	-168(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6147 0
	movl	$0, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	.loc 1 6148 0
	movl	-176(%ebp), %edx
	movl	-164(%ebp), %eax
	subl	%edx, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -172(%ebp)
	.loc 1 6150 0
	movl	-188(%ebp), %eax
	movl	4(%eax), %edx
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-188(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -180(%ebp)
.L2732:
.LBE51:
	.loc 1 6156 0
	cmpl	$1, -184(%ebp)
	jne	.L2741
	movl	-180(%ebp), %esi
	movl	%esi, -952(%ebp)
	jmp	.L2743
.L2741:
	movl	-188(%ebp), %edi
	movl	%edi, -952(%ebp)
.L2743:
	cmpl	$0, -184(%ebp)
	jne	.L2744
	movl	-180(%ebp), %eax
	movl	%eax, -948(%ebp)
	jmp	.L2746
.L2744:
	movl	-188(%ebp), %edx
	movl	%edx, -948(%ebp)
.L2746:
	movl	-952(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-948(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6159 0
	movl	-492(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2721:
.LBE50:
	.loc 1 6162 0
	cmpl	$0, -192(%ebp)
	je	.L2747
	movl	-188(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-123, %al
	jne	.L2747
	.loc 1 6164 0
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2750
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L2750
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2747
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2754
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2747
.L2754:
	cmpl	$103, -464(%ebp)
	je	.L2750
	cmpl	$104, -464(%ebp)
	jne	.L2747
.L2750:
.LBB52:
	.loc 1 6170 0
	movl	-188(%ebp), %eax
	movl	24(%eax), %edx
	movl	-188(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$61, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -156(%ebp)
	.loc 1 6177 0
	movl	-188(%ebp), %eax
	movl	24(%eax), %edx
	movl	-188(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-188(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$131, (%esp)
	call	build@PLT
	movl	%eax, -188(%ebp)
	.loc 1 6181 0
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L2757
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movzbl	33(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L2757
.LBB53:
	.loc 1 6186 0
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %eax
	movl	28(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -152(%ebp)
	.loc 1 6193 0
	cmpl	$0, -184(%ebp)
	jne	.L2760
	.loc 1 6194 0
	movl	-188(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	movl	-192(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -136(%ebp)
	jmp	.L2762
.L2760:
	.loc 1 6197 0
	movl	-188(%ebp), %eax
	movl	20(%eax), %edx
	movl	-192(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -136(%ebp)
.L2762:
	.loc 1 6200 0
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2763
	movl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2765
.L2763:
	.loc 1 6202 0
	movl	-188(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-136(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2765:
	.loc 1 6204 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	264(%eax), %edx
	movl	-152(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -144(%ebp)
	.loc 1 6205 0
	movl	-144(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -140(%ebp)
	.loc 1 6206 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -148(%ebp)
	.loc 1 6207 0
	movl	-188(%ebp), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 6208 0
	movl	$0, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	force_fit_type@PLT
	.loc 1 6209 0
	movl	-152(%ebp), %edx
	movl	-140(%ebp), %eax
	subl	%edx, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	const_binop
	movl	%eax, -148(%ebp)
	.loc 1 6211 0
	movl	-188(%ebp), %eax
	movl	4(%eax), %edx
	movl	-148(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-188(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -156(%ebp)
.L2757:
.LBE53:
	.loc 1 6217 0
	cmpl	$1, -184(%ebp)
	jne	.L2766
	movl	-156(%ebp), %eax
	movl	%eax, -944(%ebp)
	jmp	.L2768
.L2766:
	movl	-188(%ebp), %edx
	movl	%edx, -944(%ebp)
.L2768:
	cmpl	$0, -184(%ebp)
	jne	.L2769
	movl	-156(%ebp), %ecx
	movl	%ecx, -940(%ebp)
	jmp	.L2771
.L2769:
	movl	-188(%ebp), %esi
	movl	%esi, -940(%ebp)
.L2771:
	movl	-944(%ebp), %edi
	movl	%edi, 12(%esp)
	movl	-940(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6220 0
	movl	-492(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L2747:
.LBE52:
.LBE49:
	.loc 1 6228 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2772
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2772
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jle	.L2772
	.loc 1 6232 0
	movl	-464(%ebp), %ecx
	movl	%ecx, -1140(%ebp)
	cmpl	$99, -1140(%ebp)
	je	.L2776
	cmpl	$102, -1140(%ebp)
	je	.L2777
	jmp	.L2772
.L2777:
	.loc 1 6235 0
	movl	$101, -464(%ebp)
	.loc 1 6236 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, -468(%ebp)
	.loc 1 6237 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6238 0
	jmp	.L2772
.L2776:
	.loc 1 6241 0
	movl	$100, -464(%ebp)
	.loc 1 6242 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, -468(%ebp)
	.loc 1 6243 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
.L2772:
.LBB54:
	.loc 1 6254 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_bitsize@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -132(%ebp)
	.loc 1 6256 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2778
	movl	-468(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2778
	cmpl	$64, -132(%ebp)
	jg	.L2778
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2782
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2782
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2782
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	je	.L2782
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L2782
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L2778
.L2782:
.LBB55:
	.loc 1 6265 0
	movl	-132(%ebp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L3296
	movl	%eax, %edx
	xorl	%eax, %eax
.L3296:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -536(%ebp)
	movl	%edx, -532(%ebp)
	.loc 1 6267 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2788
	.loc 1 6269 0
	movl	-132(%ebp), %ecx
	subl	$1, %ecx
	movl	$2, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L3295
	movl	%eax, %edx
	xorl	%eax, %eax
.L3295:
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, -528(%ebp)
	movl	%edx, -524(%ebp)
	.loc 1 6270 0
	movl	$0, -520(%ebp)
	movl	$0, -516(%ebp)
	jmp	.L2790
.L2788:
	.loc 1 6274 0
	movl	-536(%ebp), %eax
	movl	-532(%ebp), %edx
	movl	%eax, -528(%ebp)
	movl	%edx, -524(%ebp)
	.loc 1 6275 0
	movl	-132(%ebp), %ecx
	subl	$1, %ecx
	movl	$-1, %eax
	movl	$-1, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L3294
	movl	%eax, %edx
	xorl	%eax, %eax
.L3294:
	movl	%eax, -520(%ebp)
	movl	%edx, -516(%ebp)
.L2790:
	.loc 1 6278 0
	movl	-468(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2791
	movl	-468(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%edx, %ecx
	xorl	-524(%ebp), %ecx
	xorl	-528(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2791
	.loc 1 6280 0
	movl	-464(%ebp), %esi
	movl	%esi, -1144(%ebp)
	cmpl	$100, -1144(%ebp)
	je	.L2796
	cmpl	$100, -1144(%ebp)
	ja	.L2799
	cmpl	$99, -1144(%ebp)
	je	.L2795
	jmp	.L2778
.L2799:
	cmpl	$101, -1144(%ebp)
	je	.L2797
	cmpl	$102, -1144(%ebp)
	je	.L2798
	jmp	.L2778
.L2797:
	.loc 1 6283 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2798:
	.loc 1 6287 0
	movl	$103, -464(%ebp)
	.loc 1 6288 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2800
	.loc 1 6289 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2800:
	.loc 1 6290 0
	movl	-492(%ebp), %eax
	movb	$103, 8(%eax)
	.loc 1 6291 0
	jmp	.L2778
.L2796:
	.loc 1 6293 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2795:
	.loc 1 6297 0
	movl	$104, -464(%ebp)
	.loc 1 6298 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2802
	.loc 1 6299 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2802:
	.loc 1 6300 0
	movl	-492(%ebp), %eax
	movb	$104, 8(%eax)
	.loc 1 6278 0
	jmp	.L2778
.L2791:
	.loc 1 6309 0
	movl	-468(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2804
	movl	-468(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	-528(%ebp), %eax
	movl	-524(%ebp), %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2804
	.loc 1 6311 0
	movl	-464(%ebp), %edi
	movl	%edi, -1148(%ebp)
	cmpl	$100, -1148(%ebp)
	je	.L2808
	cmpl	$101, -1148(%ebp)
	je	.L2809
	jmp	.L2778
.L2809:
	.loc 1 6314 0
	movl	$103, -464(%ebp)
	.loc 1 6315 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%eax, -468(%ebp)
	.loc 1 6316 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6317 0
	jmp	.L2778
.L2808:
	.loc 1 6319 0
	movl	$104, -464(%ebp)
	.loc 1 6320 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%eax, -468(%ebp)
	.loc 1 6321 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6309 0
	jmp	.L2778
.L2804:
	.loc 1 6326 0
	movl	-468(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -936(%ebp)
	movl	%ecx, -932(%ebp)
	movl	-520(%ebp), %eax
	orl	-516(%ebp), %eax
	testl	%eax, %eax
	je	.L2810
	movl	$-1, -928(%ebp)
	movl	$-1, -924(%ebp)
	jmp	.L2812
.L2810:
	movl	$0, -928(%ebp)
	movl	$0, -924(%ebp)
.L2812:
	movl	-932(%ebp), %eax
	xorl	-924(%ebp), %eax
	movl	-936(%ebp), %edx
	xorl	-928(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2813
	movl	-468(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%edx, %ecx
	xorl	-516(%ebp), %ecx
	xorl	-520(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2813
	.loc 1 6328 0
	movl	-464(%ebp), %ecx
	movl	%ecx, -1152(%ebp)
	cmpl	$100, -1152(%ebp)
	je	.L2818
	cmpl	$100, -1152(%ebp)
	ja	.L2821
	cmpl	$99, -1152(%ebp)
	je	.L2817
	jmp	.L2778
.L2821:
	cmpl	$101, -1152(%ebp)
	je	.L2819
	cmpl	$102, -1152(%ebp)
	je	.L2820
	jmp	.L2778
.L2817:
	.loc 1 6331 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2818:
	.loc 1 6335 0
	movl	$103, -464(%ebp)
	.loc 1 6336 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2822
	.loc 1 6337 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2822:
	.loc 1 6338 0
	movl	-492(%ebp), %eax
	movb	$103, 8(%eax)
	.loc 1 6339 0
	jmp	.L2778
.L2820:
	.loc 1 6342 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2819:
	.loc 1 6346 0
	movl	$104, -464(%ebp)
	.loc 1 6347 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2824
	.loc 1 6348 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2824:
	.loc 1 6349 0
	movl	-492(%ebp), %eax
	movb	$104, 8(%eax)
	.loc 1 6326 0
	jmp	.L2778
.L2813:
	.loc 1 6355 0
	movl	-468(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	%esi, -920(%ebp)
	movl	%edi, -916(%ebp)
	movl	-520(%ebp), %eax
	orl	-516(%ebp), %eax
	testl	%eax, %eax
	je	.L2826
	movl	$-1, -912(%ebp)
	movl	$-1, -908(%ebp)
	jmp	.L2828
.L2826:
	movl	$0, -912(%ebp)
	movl	$0, -908(%ebp)
.L2828:
	movl	-916(%ebp), %eax
	xorl	-908(%ebp), %eax
	movl	-920(%ebp), %edx
	xorl	-912(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2829
	movl	-468(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	-520(%ebp), %eax
	movl	-516(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2829
	.loc 1 6357 0
	movl	-464(%ebp), %edi
	movl	%edi, -1156(%ebp)
	cmpl	$99, -1156(%ebp)
	je	.L2833
	cmpl	$102, -1156(%ebp)
	je	.L2834
	jmp	.L2778
.L2834:
	.loc 1 6360 0
	movl	$104, -464(%ebp)
	.loc 1 6361 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, -468(%ebp)
	.loc 1 6362 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6363 0
	jmp	.L2778
.L2833:
	.loc 1 6365 0
	movl	$103, -464(%ebp)
	.loc 1 6366 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, -468(%ebp)
	.loc 1 6367 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6355 0
	jmp	.L2778
.L2829:
	.loc 1 6373 0
	movl	-468(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L2778
	movl	-468(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%edx, %ecx
	xorl	-532(%ebp), %ecx
	xorl	-536(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L2778
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2778
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2838
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2838
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2838
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2778
.L2838:
	.loc 1 6381 0
	cmpl	$100, -464(%ebp)
	je	.L2842
	cmpl	$101, -464(%ebp)
	jne	.L2778
.L2842:
.LBB56:
	.loc 1 6384 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -128(%ebp)
	.loc 1 6385 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -124(%ebp)
	.loc 1 6386 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -900(%ebp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -896(%ebp)
	cmpl	$100, -464(%ebp)
	jne	.L2844
	movl	$102, -892(%ebp)
	jmp	.L2846
.L2844:
	movl	$99, -892(%ebp)
.L2846:
	movl	-900(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-896(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-892(%ebp), %ecx
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2778:
.LBE56:
.LBE55:
.LBE54:
	.loc 1 6398 0
	cmpl	$103, -464(%ebp)
	je	.L2847
	cmpl	$104, -464(%ebp)
	jne	.L2849
.L2847:
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2849
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	je	.L2851
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L2849
.L2851:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2849
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -888(%ebp)
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	jne	.L2854
	movl	$61, -884(%ebp)
	jmp	.L2856
.L2854:
	movl	$60, -884(%ebp)
.L2856:
	movl	$0, 12(%esp)
	movl	-888(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-884(%ebp), %edi
	movl	%edi, (%esp)
	call	const_binop
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2849
	movl	-480(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2849
	.loc 1 6407 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-480(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2849:
	.loc 1 6410 0
	cmpl	$103, -464(%ebp)
	je	.L2859
	cmpl	$104, -464(%ebp)
	jne	.L2861
.L2859:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L2861
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2861
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2861
	movl	-480(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2861
	movl	-480(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2861
	.loc 1 6416 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-480(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2861:
	.loc 1 6420 0
	cmpl	$104, -464(%ebp)
	je	.L2867
	cmpl	$103, -464(%ebp)
	jne	.L2869
.L2867:
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2869
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L2869
	.loc 1 6422 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2869:
	.loc 1 6428 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L2872
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	jne	.L2872
	movl	$0, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	get_unwidened@PLT
	movl	%eax, -480(%ebp)
	movl	-480(%ebp), %eax
	cmpl	-472(%ebp), %eax
	je	.L2872
	movl	-480(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	get_unwidened@PLT
	movl	%eax, -484(%ebp)
	cmpl	$0, -484(%ebp)
	je	.L2872
	movl	-484(%ebp), %eax
	movl	4(%eax), %edx
	movl	-480(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L2877
	movl	-484(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2872
	movl	-480(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2880
	movl	-484(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2872
.L2880:
	movl	-480(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-484(%ebp), %eax
	movl	%eax, (%esp)
	call	int_fits_type_p@PLT
	testl	%eax, %eax
	je	.L2872
.L2877:
	.loc 1 6439 0
	movl	-480(%ebp), %eax
	movl	4(%eax), %edx
	movl	-484(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, 12(%esp)
	movl	-480(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2872:
	.loc 1 6443 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2882
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$80, %al
	je	.L2884
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$81, %al
	jne	.L2882
.L2884:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2882
	.loc 1 6447 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_minmax_comparison
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2882:
	.loc 1 6454 0
	cmpl	$100, -464(%ebp)
	jne	.L2887
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2887
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$82, %al
	jne	.L2887
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L2887
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, -480(%ebp)
	cmpl	$0, -480(%ebp)
	je	.L2887
	movl	-480(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2887
	movl	-480(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L2887
	.loc 1 6460 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$100, (%esp)
	call	build@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-480(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$102, (%esp)
	call	build@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2887:
	.loc 1 6470 0
	movl	flag_honor_shift@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2895
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2895
	cmpl	$103, -464(%ebp)
	je	.L2898
	cmpl	$104, -464(%ebp)
	jne	.L2895
.L2898:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2895
	.loc 1 6480 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$84, %al
	jne	.L2901
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2901
	.loc 1 6482 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %ecx
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2901:
	.loc 1 6492 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$84, %al
	jne	.L2895
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2895
	.loc 1 6494 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	24(%eax), %ecx
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$85, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$90, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2895:
	.loc 1 6509 0
	cmpl	$104, -464(%ebp)
	je	.L2906
	cmpl	$103, -464(%ebp)
	jne	.L2908
.L2906:
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2908
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L2908
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$67, %al
	je	.L2911
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$68, %al
	je	.L2911
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$69, %al
	je	.L2911
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$70, %al
	jne	.L2908
.L2911:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_pow2p@PLT
	testl	%eax, %eax
	je	.L2908
.LBB57:
	.loc 1 6518 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	268(%eax), %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -120(%ebp)
	.loc 1 6521 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, -116(%ebp)
	.loc 1 6523 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2908:
.LBE57:
	.loc 1 6528 0
	cmpl	$104, -464(%ebp)
	jne	.L2916
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2916
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2916
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2916
	.loc 1 6531 0
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2916:
	.loc 1 6535 0
	cmpl	$103, -464(%ebp)
	je	.L2921
	cmpl	$104, -464(%ebp)
	jne	.L2923
.L2921:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2923
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_pow2p@PLT
	testl	%eax, %eax
	je	.L2923
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	$0, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2923
	.loc 1 6539 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, -880(%ebp)
	cmpl	$103, -464(%ebp)
	jne	.L2927
	movl	$104, -876(%ebp)
	jmp	.L2929
.L2927:
	movl	$103, -876(%ebp)
.L2929:
	movl	-880(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-876(%ebp), %edx
	movl	%edx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2923:
	.loc 1 6544 0
	cmpl	$103, -464(%ebp)
	je	.L2930
	cmpl	$104, -464(%ebp)
	jne	.L2932
.L2930:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L2932
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L2932
.LBB58:
	.loc 1 6549 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	sign_bit_p
	movl	%eax, -112(%ebp)
	.loc 1 6550 0
	cmpl	$0, -112(%ebp)
	je	.L2932
.LBB59:
	.loc 1 6552 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -108(%ebp)
	.loc 1 6553 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -872(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -868(%ebp)
	cmpl	$103, -464(%ebp)
	jne	.L2936
	movl	$102, -864(%ebp)
	jmp	.L2938
.L2936:
	movl	$99, -864(%ebp)
.L2938:
	movl	-872(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-868(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-864(%ebp), %edi
	movl	%edi, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2932:
.LBE59:
.LBE58:
	.loc 1 6561 0
	cmpl	$99, -464(%ebp)
	je	.L2939
	cmpl	$102, -464(%ebp)
	jne	.L2941
.L2939:
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2941
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$84, %al
	jne	.L2941
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2941
	.loc 1 6565 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -860(%ebp)
	movl	-468(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	build@PLT
	movl	%eax, -856(%ebp)
	cmpl	$99, -464(%ebp)
	jne	.L2945
	movl	$103, -852(%ebp)
	jmp	.L2947
.L2945:
	movl	$104, -852(%ebp)
.L2947:
	movl	-860(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-856(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-852(%ebp), %ecx
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2941:
	.loc 1 6570 0
	cmpl	$99, -464(%ebp)
	je	.L2948
	cmpl	$102, -464(%ebp)
	jne	.L2950
.L2948:
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L2950
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L2952
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	jne	.L2950
.L2952:
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$84, %al
	jne	.L2950
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2950
	.loc 1 6576 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -848(%ebp)
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$85, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -844(%ebp)
	cmpl	$99, -464(%ebp)
	jne	.L2956
	movl	$103, -840(%ebp)
	jmp	.L2958
.L2956:
	movl	$104, -840(%ebp)
.L2958:
	movl	-848(%ebp), %esi
	movl	%esi, 12(%esp)
	movl	-844(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-840(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2950:
	.loc 1 6585 0
	movl	$0, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L2959
	.loc 1 6587 0
	movl	-464(%ebp), %edx
	subl	$99, %edx
	movl	%edx, -1160(%ebp)
	cmpl	$5, -1160(%ebp)
	ja	.L2961
	movl	$1, %eax
	movl	%eax, %esi
	movzbl	-1160(%ebp), %ecx
	sall	%cl, %esi
	movl	%esi, -1164(%ebp)
	movl	-1164(%ebp), %eax
	andl	$5, %eax
	testl	%eax, %eax
	jne	.L2962
	movl	-1164(%ebp), %eax
	andl	$26, %eax
	testl	%eax, %eax
	jne	.L2963
	movl	-1164(%ebp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L2964
	jmp	.L2961
.L2963:
	.loc 1 6592 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2965
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2967
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2965
.L2967:
	.loc 1 6593 0
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	constant_boolean_node
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2965:
	.loc 1 6594 0
	movl	$103, -464(%ebp)
	.loc 1 6595 0
	movl	-492(%ebp), %eax
	cmpl	-488(%ebp), %eax
	jne	.L2969
	.loc 1 6596 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_node@PLT
	movl	%eax, -492(%ebp)
.L2969:
	.loc 1 6597 0
	movl	-464(%ebp), %eax
	movl	%eax, %edx
	movl	-492(%ebp), %eax
	movb	%dl, 8(%eax)
	.loc 1 6598 0
	jmp	.L2959
.L2964:
	.loc 1 6602 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2959
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L2962
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L2959
.L2962:
	.loc 1 6607 0
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	constant_boolean_node
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2961:
	.loc 1 6609 0
	leal	__FUNCTION__.17815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6609, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L2959:
	.loc 1 6626 0
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L2973
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L2973
.LBB60:
	.loc 1 6628 0
	movl	$0, -508(%ebp)
	movl	$0, -576(%ebp)
	.loc 1 6629 0
	movl	$0, -584(%ebp)
	.loc 1 6631 0
	leal	-584(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-576(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-508(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	twoval_comparison_p
	testl	%eax, %eax
	je	.L2973
	movl	-508(%ebp), %eax
	testl	%eax, %eax
	je	.L2973
	movl	-576(%ebp), %eax
	testl	%eax, %eax
	je	.L2973
	movl	-508(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L2979
	movl	-576(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L2973
.L2979:
	movl	-508(%ebp), %eax
	movl	4(%eax), %edx
	movl	-576(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.L2973
	movl	-508(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L2982
	movl	-508(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L2982
	movl	-508(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L2982
	movl	-508(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L2973
.L2982:
	movl	-508(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2973
	movl	-576(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	.L2973
	movl	-576(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %edx
	movl	-508(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L2973
.LBB61:
	.loc 1 6643 0
	movl	-508(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 6644 0
	movl	-508(%ebp), %eax
	movl	4(%eax), %eax
	movl	60(%eax), %eax
	movl	%eax, -100(%ebp)
	.loc 1 6652 0
	movl	-576(%ebp), %edx
	movl	-508(%ebp), %ecx
	movl	-100(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	eval_subst
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -96(%ebp)
	.loc 1 6656 0
	movl	-576(%ebp), %edx
	movl	-508(%ebp), %ecx
	movl	-104(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	eval_subst
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -92(%ebp)
	.loc 1 6660 0
	movl	-576(%ebp), %edx
	movl	-508(%ebp), %ecx
	movl	-104(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	eval_subst
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -88(%ebp)
	.loc 1 6666 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2989
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2973
.L2989:
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2991
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2973
.L2991:
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L2993
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L2973
.L2993:
	.loc 1 6677 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	leal	(%eax,%eax), %esi
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	leal	(%esi,%eax), %eax
	leal	(%eax,%eax), %esi
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	addl	%eax, %esi
	movl	%esi, -836(%ebp)
	cmpl	$7, -836(%ebp)
	ja	.L2995
	movl	-836(%ebp), %eax
	sall	$2, %eax
	movl	.L3004@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3004:
	.long	.L2996@GOTOFF
	.long	.L2997@GOTOFF
	.long	.L2998@GOTOFF
	.long	.L2999@GOTOFF
	.long	.L3000@GOTOFF
	.long	.L3001@GOTOFF
	.long	.L3002@GOTOFF
	.long	.L3003@GOTOFF
	.text
.L2996:
	.loc 1 6681 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2997:
	.loc 1 6683 0
	movl	$99, -464(%ebp)
	.loc 1 6684 0
	jmp	.L2995
.L2998:
	.loc 1 6686 0
	movl	$103, -464(%ebp)
	.loc 1 6687 0
	jmp	.L2995
.L2999:
	.loc 1 6689 0
	movl	$100, -464(%ebp)
	.loc 1 6690 0
	jmp	.L2995
.L3000:
	.loc 1 6692 0
	movl	$101, -464(%ebp)
	.loc 1 6693 0
	jmp	.L2995
.L3001:
	.loc 1 6695 0
	movl	$104, -464(%ebp)
	.loc 1 6696 0
	jmp	.L2995
.L3002:
	.loc 1 6698 0
	movl	$102, -464(%ebp)
	.loc 1 6699 0
	jmp	.L2995
.L3003:
	.loc 1 6702 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2995:
	.loc 1 6705 0
	movl	-576(%ebp), %eax
	movl	-508(%ebp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6706 0
	movl	-584(%ebp), %eax
	testl	%eax, %eax
	je	.L3005
	.loc 1 6707 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3005:
	.loc 1 6709 0
	movl	-492(%ebp), %eax
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2973:
.LBE61:
.LBE60:
	.loc 1 6715 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$40, %al
	jne	.L3007
	movl	lang_hooks@GOT(%ebx), %eax
	movl	92(%eax), %eax
	call	*%eax
	testb	%al, %al
	jne	.L3009
.L3007:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$41, %al
	jne	.L3010
.L3009:
	cmpl	$103, -464(%ebp)
	je	.L3011
	cmpl	$104, -464(%ebp)
	jne	.L3010
.L3011:
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3013
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L3010
.L3013:
	.loc 1 6723 0
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	optimize_bit_field_compare
	movl	%eax, -484(%ebp)
	.loc 1 6724 0
	cmpl	$0, -484(%ebp)
	je	.L3015
	movl	-484(%ebp), %edi
	movl	%edi, -832(%ebp)
	jmp	.L3017
.L3015:
	movl	-492(%ebp), %eax
	movl	%eax, -832(%ebp)
.L3017:
	movl	-832(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L3010:
	.loc 1 6731 0
	cmpl	$103, -464(%ebp)
	je	.L3018
	cmpl	$104, -464(%ebp)
	jne	.L3020
.L3018:
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L3020
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$127, %al
	je	.L3022
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$127, %al
	je	.L3022
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	je	.L3022
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L3020
.L3022:
.LBB62:
	.loc 1 6738 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 6741 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -472(%ebp)
	.loc 1 6742 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -468(%ebp)
	.loc 1 6743 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$129, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -80(%ebp)
	.loc 1 6744 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$130, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -76(%ebp)
	.loc 1 6745 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$129, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -72(%ebp)
	.loc 1 6746 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$130, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -68(%ebp)
	.loc 1 6748 0
	movl	-68(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -828(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -824(%ebp)
	cmpl	$103, -464(%ebp)
	jne	.L3026
	movl	$93, -820(%ebp)
	jmp	.L3028
.L3026:
	movl	$94, -820(%ebp)
.L3028:
	movl	-828(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-824(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-820(%ebp), %edi
	movl	%edi, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3020:
.LBE62:
	.loc 1 6761 0
	cmpl	$103, -464(%ebp)
	je	.L3029
	cmpl	$104, -464(%ebp)
	jne	.L3031
.L3029:
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3031
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$54, %al
	jne	.L3031
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L3031
.LBB63:
	.loc 1 6766 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 6769 0
	movl	-64(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3031
	movl	-64(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L3031
	movl	-64(%ebp), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L3031
	movl	-64(%ebp), %eax
	movl	40(%eax), %eax
	cmpl	$41, %eax
	jne	.L3031
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	je	.L3031
	movl	-60(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L3031
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L3031
	.loc 1 6776 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %esi
	movl	-60(%ebp), %eax
	movl	20(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$42, (%esp)
	call	build1@PLT
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3031:
.LBE63:
	.loc 1 6792 0
	cmpl	$100, -464(%ebp)
	je	.L3042
	cmpl	$101, -464(%ebp)
	jne	.L3044
.L3042:
	.loc 1 6794 0
	movl	-472(%ebp), %eax
	movl	%eax, -480(%ebp)
	movl	-468(%ebp), %eax
	movl	%eax, -472(%ebp)
	movl	-480(%ebp), %eax
	movl	%eax, -468(%ebp)
	.loc 1 6795 0
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	swap_tree_comparison
	movl	%eax, -464(%ebp)
.L3044:
	.loc 1 6801 0
	movl	$0, -484(%ebp)
	.loc 1 6802 0
	movl	$0, -456(%ebp)
	.loc 1 6803 0
	cmpl	$104, -464(%ebp)
	je	.L3045
	cmpl	$102, -464(%ebp)
	jne	.L3047
.L3045:
	.loc 1 6805 0
	movl	$1, -456(%ebp)
	.loc 1 6806 0
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_tree_comparison
	movl	%eax, -464(%ebp)
.L3047:
	.loc 1 6811 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L3048
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L3048
	.loc 1 6813 0
	cmpl	$103, -464(%ebp)
	jne	.L3051
	.loc 1 6814 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_equal@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -484(%ebp)
	jmp	.L3071
.L3051:
	.loc 1 6816 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3054
	movl	-472(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -808(%ebp)
	movl	%edx, -804(%ebp)
	movl	-468(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%eax, -800(%ebp)
	movl	%edx, -796(%ebp)
	movl	-796(%ebp), %eax
	cmpl	%eax, -804(%ebp)
	jb	.L3056
	movl	-796(%ebp), %edx
	cmpl	%edx, -804(%ebp)
	ja	.L3058
	movl	-800(%ebp), %ecx
	cmpl	%ecx, -808(%ebp)
	jb	.L3056
.L3058:
	movl	-472(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-468(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L3059
	movl	-472(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -792(%ebp)
	movl	%edi, -788(%ebp)
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -784(%ebp)
	movl	%ecx, -780(%ebp)
	movl	-780(%ebp), %ecx
	cmpl	%ecx, -788(%ebp)
	ja	.L3059
	movl	-780(%ebp), %esi
	cmpl	%esi, -788(%ebp)
	jb	.L3056
	movl	-784(%ebp), %edi
	cmpl	%edi, -792(%ebp)
	jae	.L3059
.L3056:
	movl	$1, -812(%ebp)
	jmp	.L3062
.L3059:
	movl	$0, -812(%ebp)
.L3062:
	movl	-812(%ebp), %eax
	movl	%eax, -816(%ebp)
	jmp	.L3063
.L3054:
	movl	-472(%ebp), %eax
	movl	28(%eax), %edx
	movl	32(%eax), %ecx
	movl	%edx, -768(%ebp)
	movl	%ecx, -764(%ebp)
	movl	-468(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	%esi, -760(%ebp)
	movl	%edi, -756(%ebp)
	movl	-756(%ebp), %edi
	cmpl	%edi, -764(%ebp)
	jl	.L3064
	movl	-756(%ebp), %eax
	cmpl	%eax, -764(%ebp)
	jg	.L3066
	movl	-760(%ebp), %edx
	cmpl	%edx, -768(%ebp)
	jb	.L3064
.L3066:
	movl	-472(%ebp), %eax
	movl	28(%eax), %esi
	movl	32(%eax), %edi
	movl	-468(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L3067
	movl	-472(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -752(%ebp)
	movl	%edi, -748(%ebp)
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -744(%ebp)
	movl	%ecx, -740(%ebp)
	movl	-740(%ebp), %ecx
	cmpl	%ecx, -748(%ebp)
	ja	.L3067
	movl	-740(%ebp), %esi
	cmpl	%esi, -748(%ebp)
	jb	.L3064
	movl	-744(%ebp), %edi
	cmpl	%edi, -752(%ebp)
	jae	.L3067
.L3064:
	movl	$1, -772(%ebp)
	jmp	.L3070
.L3067:
	movl	$0, -772(%ebp)
.L3070:
	movl	-772(%ebp), %eax
	movl	%eax, -816(%ebp)
.L3063:
	movl	-816(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -1184(%ebp)
	movl	%edx, -1180(%ebp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-1184(%ebp), %edx
	movl	-1180(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -484(%ebp)
	.loc 1 6811 0
	jmp	.L3071
.L3048:
	.loc 1 6835 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L3071
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$27, %al
	jne	.L3071
	.loc 1 6844 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	real_isnan@PLT
	testb	%al, %al
	jne	.L3074
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	real_isnan@PLT
	testb	%al, %al
	je	.L3076
.L3074:
	.loc 1 6846 0
	cmpl	$0, -456(%ebp)
	je	.L3077
	cmpl	$99, -464(%ebp)
	jne	.L3077
	movl	$1, -732(%ebp)
	jmp	.L3080
.L3077:
	movl	$0, -732(%ebp)
.L3080:
	movl	-732(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, -1184(%ebp)
	movl	%edx, -1180(%ebp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	-1184(%ebp), %edx
	movl	-1180(%ebp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -484(%ebp)
	.loc 1 6844 0
	jmp	.L3071
.L3076:
	.loc 1 6848 0
	cmpl	$103, -464(%ebp)
	jne	.L3081
	.loc 1 6849 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$103, (%esp)
	call	real_compare@PLT
	movl	%eax, %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -484(%ebp)
	jmp	.L3071
.L3081:
	.loc 1 6853 0
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$99, (%esp)
	call	real_compare@PLT
	movl	%eax, %ecx
	movzbl	%cl, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -484(%ebp)
.L3071:
	.loc 1 6858 0
	cmpl	$0, -484(%ebp)
	jne	.L3083
	.loc 1 6859 0
	movl	-492(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L3083:
	.loc 1 6861 0
	cmpl	$0, -456(%ebp)
	je	.L3085
	.loc 1 6862 0
	movl	-484(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, %eax
	xorl	$1, %eax
	movl	%edi, %edx
	xorb	$0, %dh
	movl	-484(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
.L3085:
	.loc 1 6864 0
	movl	-484(%ebp), %edx
	movl	-476(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 6865 0
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	jne	.L3087
	.loc 1 6866 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-484(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3087:
	.loc 1 6867 0
	movl	-484(%ebp), %esi
	movl	%esi, -1132(%ebp)
	jmp	.L1837
.L2005:
	.loc 1 6872 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L3089
	.loc 1 6873 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3091
	movl	$2, -728(%ebp)
	jmp	.L3093
.L3091:
	movl	$1, -728(%ebp)
.L3093:
	movl	-728(%ebp), %edx
	movl	-492(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3089:
	.loc 1 6875 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L3094
	.loc 1 6876 0
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	pedantic_omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3094:
	.loc 1 6883 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	jne	.L3096
	movl	-468(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L3098
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L3096
.L3098:
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L3100
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-492(%ebp), %eax
	movl	28(%eax), %ecx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_for_comparison_p
	testl	%eax, %eax
	je	.L3100
.L3096:
	.loc 1 6893 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -480(%ebp)
	.loc 1 6895 0
	movl	-480(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$98, %al
	je	.L3100
	.loc 1 6897 0
	movl	-492(%ebp), %eax
	movl	24(%eax), %edx
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-480(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 6899 0
	movl	-480(%ebp), %eax
	movl	%eax, -472(%ebp)
	.loc 1 6901 0
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -468(%ebp)
	.loc 1 6902 0
	jmp	.L3103
.L3104:
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -468(%ebp)
.L3103:
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L3105
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L3105
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L3100
.L3105:
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L3100
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L3104
.L3100:
	.loc 1 6911 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$60, %al
	jne	.L3109
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	operand_equal_for_comparison_p
	testl	%eax, %eax
	je	.L3109
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L3112
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L3112
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L3115
.L3112:
	movl	flag_unsafe_math_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3109
.L3115:
.LBB64:
	.loc 1 6916 0
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 6917 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	.loc 1 6919 0
	jmp	.L3116
.L3117:
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
.L3116:
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L3118
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L3118
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L3121
.L3118:
	movl	-56(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L3121
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-56(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L3117
.L3121:
	.loc 1 6940 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	je	.L3123
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	jne	.L3125
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$8, %al
	jne	.L3125
.L3123:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	real_zerop@PLT
	testl	%eax, %eax
	setne	-721(%ebp)
	jmp	.L3127
.L3125:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	setne	-721(%ebp)
.L3127:
	cmpb	$0, -721(%ebp)
	je	.L3128
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$79, %al
	jne	.L3128
	movl	-56(%ebp), %eax
	movl	20(%eax), %edx
	movl	$0, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L3128
	.loc 1 6945 0
	movl	-52(%ebp), %edi
	subl	$99, %edi
	movl	%edi, -1168(%ebp)
	cmpl	$5, -1168(%ebp)
	ja	.L3132
	movl	-1168(%ebp), %eax
	sall	$2, %eax
	movl	.L3137@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3137:
	.long	.L3133@GOTOFF
	.long	.L3133@GOTOFF
	.long	.L3134@GOTOFF
	.long	.L3134@GOTOFF
	.long	.L3135@GOTOFF
	.long	.L3136@GOTOFF
	.text
.L3135:
	.loc 1 6948 0
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	4(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3136:
	.loc 1 6955 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3134:
	.loc 1 6958 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3138
	.loc 1 6959 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -468(%ebp)
.L3138:
	.loc 1 6961 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$82, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3133:
	.loc 1 6966 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3140
	.loc 1 6967 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	272(%eax), %edx
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -468(%ebp)
.L3140:
	.loc 1 6969 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %edx
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$82, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	negate_expr
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3132:
	.loc 1 6975 0
	leal	__FUNCTION__.17815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$6975, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3128:
	.loc 1 6983 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3142
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3142
	.loc 1 6985 0
	cmpl	$104, -52(%ebp)
	jne	.L3145
	.loc 1 6986 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3145:
	.loc 1 6987 0
	cmpl	$103, -52(%ebp)
	jne	.L3142
	.loc 1 6988 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3142:
	.loc 1 7017 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	operand_equal_for_comparison_p
	testl	%eax, %eax
	je	.L3148
.LBB65:
	.loc 1 7020 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 7021 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 7022 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 7025 0
	movl	-40(%ebp), %eax
	movl	72(%eax), %edx
	movl	-476(%ebp), %eax
	movl	72(%eax), %eax
	cmpl	%eax, %edx
	jne	.L3150
	.loc 1 7026 0
	movl	-476(%ebp), %eax
	movl	%eax, -40(%ebp)
.L3150:
	.loc 1 7028 0
	movl	-52(%ebp), %eax
	subl	$99, %eax
	movl	%eax, -1172(%ebp)
	cmpl	$5, -1172(%ebp)
	ja	.L3152
	movl	-1172(%ebp), %eax
	sall	$2, %eax
	movl	.L3157@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3157:
	.long	.L3153@GOTOFF
	.long	.L3153@GOTOFF
	.long	.L3154@GOTOFF
	.long	.L3154@GOTOFF
	.long	.L3155@GOTOFF
	.long	.L3156@GOTOFF
	.text
.L3155:
	.loc 1 7031 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3156:
	.loc 1 7033 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3153:
	.loc 1 7040 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L3158
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L3158
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L3161
.L3158:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3148
.L3161:
	.loc 1 7041 0
	cmpl	$100, -52(%ebp)
	jne	.L3163
	movl	-44(%ebp), %edx
	movl	%edx, -720(%ebp)
	jmp	.L3165
.L3163:
	movl	-48(%ebp), %ecx
	movl	%ecx, -720(%ebp)
.L3165:
	cmpl	$100, -52(%ebp)
	jne	.L3166
	movl	-48(%ebp), %esi
	movl	%esi, -716(%ebp)
	jmp	.L3168
.L3166:
	movl	-44(%ebp), %edi
	movl	%edi, -716(%ebp)
.L3168:
	movl	-720(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-716(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$80, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3154:
	.loc 1 7050 0
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$2, %eax
	je	.L3169
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$6, %eax
	je	.L3169
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$8, %eax
	jne	.L3172
.L3169:
	movl	flag_finite_math_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3148
.L3172:
	.loc 1 7051 0
	cmpl	$102, -52(%ebp)
	jne	.L3174
	movl	-44(%ebp), %ecx
	movl	%ecx, -712(%ebp)
	jmp	.L3176
.L3174:
	movl	-48(%ebp), %esi
	movl	%esi, -712(%ebp)
.L3176:
	cmpl	$102, -52(%ebp)
	jne	.L3177
	movl	-48(%ebp), %edi
	movl	%edi, -708(%ebp)
	jmp	.L3179
.L3177:
	movl	-44(%ebp), %eax
	movl	%eax, -708(%ebp)
.L3179:
	movl	-712(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-708(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$81, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3152:
	.loc 1 7059 0
	leal	__FUNCTION__.17815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7059, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3148:
.LBE65:
	.loc 1 7069 0
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L3180
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$11, %al
	je	.L3180
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$12, %al
	je	.L3180
	movl	-476(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$13, %al
	jne	.L3109
.L3180:
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L3109
	movl	-56(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L3109
	.loc 1 7072 0
	movl	-52(%ebp), %esi
	subl	$99, %esi
	movl	%esi, -1176(%ebp)
	cmpl	$5, -1176(%ebp)
	ja	.L3186
	movl	-1176(%ebp), %eax
	sall	$2, %eax
	movl	.L3193@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3193:
	.long	.L3187@GOTOFF
	.long	.L3188@GOTOFF
	.long	.L3189@GOTOFF
	.long	.L3190@GOTOFF
	.long	.L3191@GOTOFF
	.long	.L3109@GOTOFF
	.text
.L3191:
	.loc 1 7076 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -468(%ebp)
	.loc 1 7077 0
	movl	-492(%ebp), %eax
	movl	28(%eax), %edx
	movl	-492(%ebp), %eax
	movl	20(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 7079 0
	jmp	.L3109
.L3187:
	.loc 1 7083 0
	movl	-476(%ebp), %eax
	movl	64(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L3109
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L3109
	.loc 1 7087 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$80, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3188:
	.loc 1 7093 0
	movl	-476(%ebp), %eax
	movl	60(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L3109
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L3109
	.loc 1 7097 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$80, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3189:
	.loc 1 7103 0
	movl	-476(%ebp), %eax
	movl	60(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L3109
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$61, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L3109
	.loc 1 7107 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$81, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3190:
	.loc 1 7113 0
	movl	-476(%ebp), %eax
	movl	64(%eax), %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	jne	.L3109
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	const_binop
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L3109
	.loc 1 7117 0
	movl	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$81, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3186:
	.loc 1 7123 0
	leal	__FUNCTION__.17815@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$7123, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L3109:
.LBE64:
	.loc 1 7129 0
	movl	-468(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L3206
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L3206
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	jne	.L3209
.L3206:
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L3209
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	je	.L3209
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$120, %al
	je	.L3209
	.loc 1 7138 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -480(%ebp)
	.loc 1 7140 0
	movl	-480(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$98, %al
	je	.L3209
	.loc 1 7142 0
	movl	-492(%ebp), %eax
	movl	24(%eax), %edx
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-480(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, -492(%ebp)
	.loc 1 7144 0
	movl	-480(%ebp), %eax
	movl	%eax, -472(%ebp)
	.loc 1 7146 0
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -468(%ebp)
	.loc 1 7147 0
	jmp	.L3214
.L3215:
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -468(%ebp)
.L3214:
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$117, %al
	je	.L3216
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$116, %al
	je	.L3216
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$118, %al
	jne	.L3209
.L3216:
	movl	-468(%ebp), %eax
	movl	20(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	je	.L3209
	movl	-468(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	movl	%eax, %edx
	shrb	%dl
	movl	-468(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	37(%eax), %eax
	shrb	%al
	cmpb	%al, %dl
	je	.L3215
.L3209:
	.loc 1 7152 0
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L3220
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3220
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-476(%ebp), %eax
	jne	.L3220
	.loc 1 7159 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3220:
	.loc 1 7163 0
	movl	-492(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3224
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L3224
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	je	.L3224
	.loc 1 7166 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3224:
	.loc 1 7172 0
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3228
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$104, %al
	jne	.L3228
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3228
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_pow2p@PLT
	testl	%eax, %eax
	je	.L3228
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$90, %al
	jne	.L3228
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	24(%eax), %edx
	movl	$1, 8(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L3228
	.loc 1 7179 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3228:
	.loc 1 7182 0
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3235
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	je	.L3235
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	je	.L3235
	.loc 1 7185 0
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$93, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3235:
	.loc 1 7189 0
	movl	-492(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	integer_onep@PLT
	testl	%eax, %eax
	je	.L3239
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	je	.L3239
	movl	-468(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	je	.L3239
	.loc 1 7194 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	invert_truthvalue@PLT
	movl	%eax, -480(%ebp)
	.loc 1 7195 0
	movl	-480(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$98, %al
	je	.L3239
	.loc 1 7196 0
	movl	-468(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-480(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$94, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, (%esp)
	call	pedantic_non_lvalue@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3239:
	.loc 1 7200 0
	movl	-492(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2004:
	.loc 1 7205 0
	movl	-472(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L3244
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L3246
.L3244:
	.loc 1 7206 0
	movl	-492(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3246:
	.loc 1 7208 0
	movl	-468(%ebp), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L3247
	.loc 1 7209 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3247:
	.loc 1 7210 0
	movl	-468(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2034:
	.loc 1 7213 0
	cmpl	$0, -452(%ebp)
	je	.L3249
	.loc 1 7214 0
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	build_complex@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3249:
	.loc 1 7215 0
	movl	-492(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L2036:
	.loc 1 7218 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	je	.L3251
	.loc 1 7219 0
	movl	-492(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L3251:
	.loc 1 7220 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$127, %al
	jne	.L3253
	.loc 1 7221 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %edx
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3253:
	.loc 1 7223 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L3255
	.loc 1 7224 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3255:
	.loc 1 7225 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	je	.L3257
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L3259
.L3257:
	.loc 1 7226 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$129, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$129, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3259:
	.loc 1 7231 0
	movl	-492(%ebp), %esi
	movl	%esi, -1132(%ebp)
	jmp	.L1837
.L2037:
	.loc 1 7234 0
	movl	-472(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$9, %al
	je	.L3260
	.loc 1 7235 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3260:
	.loc 1 7236 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$127, %al
	jne	.L3262
	.loc 1 7237 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %edx
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, (%esp)
	call	omit_one_operand
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3262:
	.loc 1 7239 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$28, %al
	jne	.L3264
	.loc 1 7240 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3264:
	.loc 1 7241 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$60, %al
	je	.L3266
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$61, %al
	jne	.L3268
.L3266:
	.loc 1 7242 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$130, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %esi
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$130, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3268:
	.loc 1 7247 0
	movl	-492(%ebp), %edi
	movl	%edi, -1132(%ebp)
	jmp	.L1837
.L2007:
	.loc 1 7252 0
	movl	-472(%ebp), %eax
	movl	%eax, (%esp)
	call	has_cleanups@PLT
	testl	%eax, %eax
	jne	.L3269
	.loc 1 7253 0
	movl	-492(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3269:
.LBB66:
	.loc 1 7256 0
	movl	-472(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	.loc 1 7257 0
	movl	-36(%ebp), %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp)
	.loc 1 7258 0
	movl	-472(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 7261 0
	cmpl	$49, -32(%ebp)
	je	.L3271
	cmpl	$98, -36(%ebp)
	jne	.L3273
.L3271:
	.loc 1 7262 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$57, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3273:
	.loc 1 7266 0
	cmpl	$60, -32(%ebp)
	je	.L3274
	cmpl	$50, -32(%ebp)
	je	.L3274
	cmpl	$93, -36(%ebp)
	je	.L3274
	cmpl	$94, -36(%ebp)
	je	.L3274
	cmpl	$95, -36(%ebp)
	je	.L3274
	cmpl	$96, -36(%ebp)
	je	.L3274
	cmpl	$97, -36(%ebp)
	jne	.L3281
.L3274:
	.loc 1 7271 0
	movl	-472(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 7273 0
	movl	-28(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L3282
	cmpl	$93, -36(%ebp)
	je	.L3284
	cmpl	$94, -36(%ebp)
	jne	.L3286
.L3284:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	has_cleanups@PLT
	testl	%eax, %eax
	jne	.L3286
.L3282:
	.loc 1 7276 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$57, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3286:
	.loc 1 7280 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L3281
	.loc 1 7281 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$57, (%esp)
	call	build1@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	build@PLT
	movl	%eax, (%esp)
	call	fold@PLT
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L3281:
	.loc 1 7287 0
	movl	-492(%ebp), %eax
	movl	%eax, -1132(%ebp)
	jmp	.L1837
.L2006:
.LBE66:
	.loc 1 7292 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L3288
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L3288
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movzbl	36(%eax), %eax
	andl	$12, %eax
	testb	%al, %al
	je	.L3288
.LBB67:
	.loc 1 7297 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fold_builtin@PLT
	movl	%eax, -20(%ebp)
	.loc 1 7298 0
	cmpl	$0, -20(%ebp)
	je	.L3288
	.loc 1 7299 0
	movl	-20(%ebp), %edx
	movl	%edx, -1132(%ebp)
	jmp	.L1837
.L3288:
.LBE67:
	.loc 1 7301 0
	movl	-492(%ebp), %ecx
	movl	%ecx, -1132(%ebp)
	jmp	.L1837
.L2000:
	.loc 1 7304 0
	movl	-492(%ebp), %esi
	movl	%esi, -1132(%ebp)
.L1837:
	movl	-1132(%ebp), %eax
	.loc 1 7306 0
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE74:
	.size	fold, .-fold
	.type	multiple_of_p, @function
multiple_of_p:
.LFB75:
	.loc 1 7553 0
	pushl	%ebp
.LCFI288:
	movl	%esp, %ebp
.LCFI289:
	pushl	%ebx
.LCFI290:
	subl	$68, %esp
.LCFI291:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7554 0
	movl	$0, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	operand_equal_p@PLT
	testl	%eax, %eax
	je	.L3300
	.loc 1 7555 0
	movl	$1, -56(%ebp)
	jmp	.L3302
.L3300:
	.loc 1 7557 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	je	.L3303
	.loc 1 7558 0
	movl	$0, -56(%ebp)
	jmp	.L3302
.L3303:
	.loc 1 7560 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	cmpl	$62, -52(%ebp)
	je	.L3308
	cmpl	$62, -52(%ebp)
	ja	.L3312
	cmpl	$26, -52(%ebp)
	je	.L3306
	cmpl	$26, -52(%ebp)
	jb	.L3305
	cmpl	$60, -52(%ebp)
	jb	.L3305
	jmp	.L3307
.L3312:
	cmpl	$117, -52(%ebp)
	je	.L3310
	cmpl	$120, -52(%ebp)
	je	.L3311
	cmpl	$84, -52(%ebp)
	je	.L3309
	jmp	.L3305
.L3308:
	.loc 1 7563 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	testl	%eax, %eax
	jne	.L3313
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	testl	%eax, %eax
	je	.L3315
.L3313:
	movl	$1, -48(%ebp)
	jmp	.L3316
.L3315:
	movl	$0, -48(%ebp)
.L3316:
	movl	-48(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L3302
.L3307:
	.loc 1 7568 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	testl	%eax, %eax
	je	.L3317
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	testl	%eax, %eax
	je	.L3317
	movl	$1, -44(%ebp)
	jmp	.L3320
.L3317:
	movl	$0, -44(%ebp)
.L3320:
	movl	-44(%ebp), %edx
	movl	%edx, -56(%ebp)
	jmp	.L3302
.L3309:
	.loc 1 7572 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L3321
.LBB68:
	.loc 1 7576 0
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7579 0
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %ecx
	cmpl	%ecx, -36(%ebp)
	jb	.L3321
	movl	-28(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	ja	.L3324
	movl	-32(%ebp), %edx
	cmpl	%edx, -40(%ebp)
	jbe	.L3321
.L3324:
	movl	-16(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L3321
	movl	global_trees@GOT(%ebx), %eax
	movl	84(%eax), %edx
	movl	$0, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$84, (%esp)
	call	const_binop
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L3321
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L3321
	.loc 1 7586 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	movl	%eax, -56(%ebp)
	jmp	.L3302
.L3321:
.LBE68:
	.loc 1 7588 0
	movl	$0, -56(%ebp)
	jmp	.L3302
.L3310:
	.loc 1 7592 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$7, %al
	jne	.L3328
	movl	8(%ebp), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %edx
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzwl	36(%eax), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jge	.L3311
.L3328:
	.loc 1 7595 0
	movl	$0, -56(%ebp)
	jmp	.L3302
.L3311:
	.loc 1 7600 0
	movl	12(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	multiple_of_p
	movl	%eax, -56(%ebp)
	jmp	.L3302
.L3306:
	.loc 1 7603 0
	movl	16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L3330
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L3332
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	js	.L3330
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	testl	%eax, %eax
	jns	.L3332
.L3330:
	.loc 1 7607 0
	movl	$0, -56(%ebp)
	jmp	.L3302
.L3332:
	.loc 1 7608 0
	movl	$0, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$67, (%esp)
	call	const_binop
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	movl	%eax, -56(%ebp)
	jmp	.L3302
.L3305:
	.loc 1 7612 0
	movl	$0, -56(%ebp)
.L3302:
	movl	-56(%ebp), %eax
	.loc 1 7614 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE75:
	.size	multiple_of_p, .-multiple_of_p
.globl tree_expr_nonnegative_p
	.type	tree_expr_nonnegative_p, @function
tree_expr_nonnegative_p:
.LFB76:
	.loc 1 7621 0
	pushl	%ebp
.LCFI292:
	movl	%esp, %ebp
.LCFI293:
	pushl	%ebx
.LCFI294:
	subl	$36, %esp
.LCFI295:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7622 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$26, %eax
	movl	%eax, -28(%ebp)
	cmpl	$96, -28(%ebp)
	ja	.L3337
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L3351@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3351:
	.long	.L3338@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3339@GOTOFF
	.long	.L3340@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3341@GOTOFF
	.long	.L3342@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3343@GOTOFF
	.long	.L3343@GOTOFF
	.long	.L3343@GOTOFF
	.long	.L3343@GOTOFF
	.long	.L3344@GOTOFF
	.long	.L3344@GOTOFF
	.long	.L3344@GOTOFF
	.long	.L3344@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3345@GOTOFF
	.long	.L3346@GOTOFF
	.long	.L3347@GOTOFF
	.long	.L3347@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3348@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3349@GOTOFF
	.long	.L3337@GOTOFF
	.long	.L3350@GOTOFF
	.text
.L3347:
	.loc 1 7626 0
	movl	$1, -24(%ebp)
	jmp	.L3352
.L3338:
	.loc 1 7628 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_int_cst_sgn@PLT
	notl	%eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -24(%ebp)
	jmp	.L3352
.L3343:
	.loc 1 7633 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L3353
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L3353
	movl	$1, -20(%ebp)
	jmp	.L3356
.L3353:
	movl	$0, -20(%ebp)
.L3356:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3344:
	.loc 1 7639 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3341:
	.loc 1 7641 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L3357
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L3357
	movl	$1, -16(%ebp)
	jmp	.L3360
.L3357:
	movl	$0, -16(%ebp)
.L3360:
	movl	-16(%ebp), %edx
	movl	%edx, -24(%ebp)
	jmp	.L3352
.L3339:
	.loc 1 7644 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3345:
	.loc 1 7646 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L3361
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L3361
	movl	$1, -12(%ebp)
	jmp	.L3364
.L3361:
	movl	$0, -12(%ebp)
.L3364:
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3346:
	.loc 1 7649 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	jne	.L3365
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	testl	%eax, %eax
	je	.L3367
.L3365:
	movl	$1, -8(%ebp)
	jmp	.L3368
.L3367:
	movl	$0, -8(%ebp)
.L3368:
	movl	-8(%ebp), %edx
	movl	%edx, -24(%ebp)
	jmp	.L3352
.L3340:
	.loc 1 7652 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3342:
	.loc 1 7654 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3349:
	.loc 1 7656 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3348:
	.loc 1 7658 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	tree_expr_nonnegative_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3350:
	.loc 1 7660 0
	movl	8(%ebp), %eax
	addl	$20, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	rtl_expr_nonnegative_p@PLT
	movl	%eax, -24(%ebp)
	jmp	.L3352
.L3337:
	.loc 1 7663 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	truth_value_p
	testl	%eax, %eax
	je	.L3369
	.loc 1 7665 0
	movl	$1, -24(%ebp)
	jmp	.L3352
.L3369:
	.loc 1 7668 0
	movl	$0, -24(%ebp)
.L3352:
	movl	-24(%ebp), %eax
	.loc 1 7670 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE76:
	.size	tree_expr_nonnegative_p, .-tree_expr_nonnegative_p
.globl rtl_expr_nonnegative_p
	.type	rtl_expr_nonnegative_p, @function
rtl_expr_nonnegative_p:
.LFB77:
	.loc 1 7678 0
	pushl	%ebp
.LCFI296:
	movl	%esp, %ebp
.LCFI297:
	pushl	%ebx
.LCFI298:
	subl	$28, %esp
.LCFI299:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7679 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$64, %eax
	movl	%eax, -28(%ebp)
	cmpl	$14, -28(%ebp)
	ja	.L3373
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	.L3378@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L3378:
	.long	.L3374@GOTOFF
	.long	.L3375@GOTOFF
	.long	.L3376@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3373@GOTOFF
	.long	.L3377@GOTOFF
	.long	.L3377@GOTOFF
	.text
.L3374:
	.loc 1 7682 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %eax
	notl	%eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -24(%ebp)
	jmp	.L3379
.L3375:
	.loc 1 7685 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L3380
	.loc 1 7686 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%edx, %eax
	notl	%eax
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edx, -24(%ebp)
	jmp	.L3379
.L3380:
	.loc 1 7687 0
	movl	$0, -24(%ebp)
	jmp	.L3379
.L3376:
.LBB69:
	.loc 1 7694 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 7696 0
	movl	$0, -12(%ebp)
	jmp	.L3382
.L3383:
	.loc 1 7698 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 7699 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtl_expr_nonnegative_p@PLT
	testl	%eax, %eax
	jne	.L3384
	.loc 1 7700 0
	movl	$0, -24(%ebp)
	jmp	.L3379
.L3384:
	.loc 1 7696 0
	addl	$1, -12(%ebp)
.L3382:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L3383
	.loc 1 7703 0
	movl	$1, -24(%ebp)
	jmp	.L3379
.L3377:
.LBE69:
	.loc 1 7709 0
	movl	$1, -24(%ebp)
	jmp	.L3379
.L3373:
	.loc 1 7712 0
	movl	$0, -24(%ebp)
.L3379:
	movl	-24(%ebp), %eax
	.loc 1 7714 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	rtl_expr_nonnegative_p, .-rtl_expr_nonnegative_p
.globl gt_ggc_r_gt_fold_const_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_fold_const_h, @object
	.size	gt_ggc_r_gt_fold_const_h, 32
gt_ggc_r_gt_fold_const_h:
	.long	new_const
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	0
	.long	0
	.long	0
	.long	0
.globl gt_ggc_rc_gt_fold_const_h
	.align 32
	.type	gt_ggc_rc_gt_fold_const_h, @object
	.size	gt_ggc_rc_gt_fold_const_h, 40
gt_ggc_rc_gt_fold_const_h:
	.long	size_htab
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	ggc_marked_p
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.local	new_const
	.comm	new_const,4,4
	.local	size_htab
	.comm	size_htab,4,4
	.comm	pedantic_lvalues,4,4
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
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI4-.LCFI1
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI8-.LCFI6
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI9-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI10
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI15-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI16
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI20-.LFB19
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
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI25-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI26
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI31-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI32
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI37-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI42-.LCFI38
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI43-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI44
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI49-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI50
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI55-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI56
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI61-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI62
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI65-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI66
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI69-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI70
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI74-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI79-.LCFI75
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI80-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI81
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI86-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI87
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI91-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI92
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI96-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI100-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI105-.LCFI101
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI106-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI107
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI110-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI114-.LCFI111
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
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI115-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI116-.LCFI115
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI120-.LCFI116
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI121-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI124-.LCFI122
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI125-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI128-.LCFI126
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI129-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI132-.LCFI130
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI133-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI134
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI137-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI141-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI142
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI145-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI148-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI153-.LCFI149
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI154-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI155
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI158-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI159
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI162-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI167-.LCFI163
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI168-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI171-.LCFI169
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI172-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI173
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI176-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI177
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI182-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI185-.LCFI183
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI186-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI190-.LCFI187
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI191-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI192-.LCFI191
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI196-.LCFI192
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI197-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI202-.LCFI198
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
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI203-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI204-.LCFI203
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI207-.LCFI204
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
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI208-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI209-.LCFI208
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI211-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI212-.LCFI211
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI214-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI217-.LCFI215
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI218-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI219-.LCFI218
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI222-.LCFI219
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI223-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI224-.LCFI223
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI227-.LCFI224
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI228-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI229-.LCFI228
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI231-.LCFI229
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI232-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI233-.LCFI232
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI237-.LCFI233
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI238-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI239-.LCFI238
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI241-.LCFI239
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI242-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI243-.LCFI242
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI247-.LCFI243
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI248-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI249-.LCFI248
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI252-.LCFI249
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
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI253-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI254-.LCFI253
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI256-.LCFI254
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI257-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI258-.LCFI257
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI261-.LCFI258
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI262-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI263-.LCFI262
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI265-.LCFI263
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI266-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI267-.LCFI266
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI269-.LCFI267
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI270-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI271-.LCFI270
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI273-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI274-.LCFI273
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI277-.LCFI274
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI278-.LFB73
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
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI282-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI283-.LCFI282
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI287-.LCFI283
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI288-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI289-.LCFI288
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI291-.LCFI289
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI292-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI293-.LCFI292
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI295-.LCFI293
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI296-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI297-.LCFI296
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI299-.LCFI297
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE124:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/real.h"
	.file 7 "../../../kg++fe/gnu/hashtable.h"
	.file 8 "../../../kg++fe/gnu/location.h"
	.file 9 "../../../kg++fe/omp_types.h"
	.file 10 "../../../include/gnu/hashtab.h"
	.file 11 "../../../kg++fe/gnu/ggc.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 14 "../../../kg++fe/gnu/flags.h"
	.file 15 "../../../kg++fe/gnu/langhooks.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/include/bits/types.h"
	.file 19 "../../../kg++fe/gnu/MIPS/gt-fold-const.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB16-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI5-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI6-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI32-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI38-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI43-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI44-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI49-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI50-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI62-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI65-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI66-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI69-.Ltext0
	.long	.LCFI70-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI70-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI74-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI75-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI80-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI81-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI106-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI107-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI115-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI116-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI121-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI122-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI125-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI126-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI129-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI130-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI133-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI133-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI134-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI146-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI148-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI149-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI154-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI155-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI158-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI159-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI162-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI163-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI168-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI169-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI172-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI173-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI176-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI177-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI186-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI187-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI191-.Ltext0
	.long	.LCFI192-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI192-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI197-.Ltext0
	.long	.LCFI198-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI198-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI203-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI203-.Ltext0
	.long	.LCFI204-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI204-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI211-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI211-.Ltext0
	.long	.LCFI212-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI212-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI214-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI215-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI218-.Ltext0
	.long	.LCFI219-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI219-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI223-.Ltext0
	.long	.LCFI224-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI224-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI228-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI228-.Ltext0
	.long	.LCFI229-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI229-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI232-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI232-.Ltext0
	.long	.LCFI233-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI233-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI238-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI238-.Ltext0
	.long	.LCFI239-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI239-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI242-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI242-.Ltext0
	.long	.LCFI243-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI243-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI248-.Ltext0
	.long	.LCFI249-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI249-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI253-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI253-.Ltext0
	.long	.LCFI254-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI254-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI257-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI257-.Ltext0
	.long	.LCFI258-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI258-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI262-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI262-.Ltext0
	.long	.LCFI263-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI263-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI266-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI266-.Ltext0
	.long	.LCFI267-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI267-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LFB71-.Ltext0
	.long	.LCFI270-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI270-.Ltext0
	.long	.LCFI271-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI271-.Ltext0
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LFB72-.Ltext0
	.long	.LCFI273-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI273-.Ltext0
	.long	.LCFI274-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI274-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST58:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST59:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST60:
	.long	.LFB75-.Ltext0
	.long	.LCFI288-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI288-.Ltext0
	.long	.LCFI289-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI289-.Ltext0
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST61:
	.long	.LFB76-.Ltext0
	.long	.LCFI292-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI292-.Ltext0
	.long	.LCFI293-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI293-.Ltext0
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST62:
	.long	.LFB77-.Ltext0
	.long	.LCFI296-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI296-.Ltext0
	.long	.LCFI297-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI297-.Ltext0
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xa291
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/fold-const.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xaa
	.uleb128 0x3
	.byte	0x4
	.long	0xb0
	.uleb128 0x4
	.long	0x19f
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x84
	.long	0xbbb
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"mode"
	.byte	0x4
	.byte	0x87
	.long	0x8c3
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x1613
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1ac
	.uleb128 0x3
	.byte	0x4
	.long	0x1b2
	.uleb128 0x4
	.long	0x1e7
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x1623
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f3
	.uleb128 0x3
	.byte	0x4
	.long	0x1f9
	.uleb128 0x8
	.long	0x2d2
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x9
	.long	.LASF1
	.byte	0x3
	.value	0x887
	.long	0x3cef
	.uleb128 0xa
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x400b
	.uleb128 0xa
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x4053
	.uleb128 0xa
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x41c2
	.uleb128 0xa
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x4100
	.uleb128 0xa
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x416d
	.uleb128 0xa
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x4248
	.uleb128 0xa
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x4901
	.uleb128 0x9
	.long	.LASF2
	.byte	0x3
	.value	0x88f
	.long	0x44ab
	.uleb128 0xa
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x427f
	.uleb128 0xa
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x42c4
	.uleb128 0xa
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x4315
	.uleb128 0xa
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x4361
	.uleb128 0xa
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x52d7
	.byte	0x0
	.uleb128 0xb
	.long	0x452
	.string	"processor_type"
	.byte	0x4
	.byte	0xd
	.byte	0x3b
	.uleb128 0xc
	.string	"PROCESSOR_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"PROCESSOR_R3000"
	.sleb128 1
	.uleb128 0xc
	.string	"PROCESSOR_R3900"
	.sleb128 2
	.uleb128 0xc
	.string	"PROCESSOR_R6000"
	.sleb128 3
	.uleb128 0xc
	.string	"PROCESSOR_R4000"
	.sleb128 4
	.uleb128 0xc
	.string	"PROCESSOR_R4100"
	.sleb128 5
	.uleb128 0xc
	.string	"PROCESSOR_R4111"
	.sleb128 6
	.uleb128 0xc
	.string	"PROCESSOR_R4120"
	.sleb128 7
	.uleb128 0xc
	.string	"PROCESSOR_R4300"
	.sleb128 8
	.uleb128 0xc
	.string	"PROCESSOR_R4600"
	.sleb128 9
	.uleb128 0xc
	.string	"PROCESSOR_R4650"
	.sleb128 10
	.uleb128 0xc
	.string	"PROCESSOR_R5000"
	.sleb128 11
	.uleb128 0xc
	.string	"PROCESSOR_R5400"
	.sleb128 12
	.uleb128 0xc
	.string	"PROCESSOR_R5500"
	.sleb128 13
	.uleb128 0xc
	.string	"PROCESSOR_R8000"
	.sleb128 14
	.uleb128 0xc
	.string	"PROCESSOR_R4KC"
	.sleb128 15
	.uleb128 0xc
	.string	"PROCESSOR_R5KC"
	.sleb128 16
	.uleb128 0xc
	.string	"PROCESSOR_R20KC"
	.sleb128 17
	.uleb128 0xc
	.string	"PROCESSOR_SR71000"
	.sleb128 18
	.uleb128 0xc
	.string	"PROCESSOR_SB1"
	.sleb128 19
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x458
	.uleb128 0xd
	.long	0x45d
	.uleb128 0xe
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xe
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x46c
	.uleb128 0xe
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xe
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xe
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xe
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xe
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xe
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x12
	.byte	0x3b
	.long	0x4e0
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x12
	.byte	0x90
	.long	0x52a
	.uleb128 0xe
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x12
	.byte	0x91
	.long	0x50b
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x45d
	.uleb128 0x2
	.string	"FILE"
	.byte	0x10
	.byte	0x2e
	.long	0x55b
	.uleb128 0x11
	.long	0x7d6
	.long	.LASF4
	.byte	0x94
	.byte	0x10
	.byte	0x2e
	.uleb128 0x12
	.string	"_flags"
	.byte	0x11
	.value	0x10c
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"_IO_read_ptr"
	.byte	0x11
	.value	0x111
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"_IO_read_end"
	.byte	0x11
	.value	0x112
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"_IO_read_base"
	.byte	0x11
	.value	0x113
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"_IO_write_base"
	.byte	0x11
	.value	0x114
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"_IO_write_ptr"
	.byte	0x11
	.value	0x115
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"_IO_write_end"
	.byte	0x11
	.value	0x116
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"_IO_buf_base"
	.byte	0x11
	.value	0x117
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"_IO_buf_end"
	.byte	0x11
	.value	0x118
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"_IO_save_base"
	.byte	0x11
	.value	0x11a
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"_IO_backup_base"
	.byte	0x11
	.value	0x11b
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"_IO_save_end"
	.byte	0x11
	.value	0x11c
	.long	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"_markers"
	.byte	0x11
	.value	0x11e
	.long	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"_chain"
	.byte	0x11
	.value	0x120
	.long	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"_fileno"
	.byte	0x11
	.value	0x122
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"_flags2"
	.byte	0x11
	.value	0x126
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.string	"_old_offset"
	.byte	0x11
	.value	0x128
	.long	0x51b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"_cur_column"
	.byte	0x11
	.value	0x12c
	.long	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"_vtable_offset"
	.byte	0x11
	.value	0x12d
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.string	"_shortbuf"
	.byte	0x11
	.value	0x12e
	.long	0x856
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.string	"_lock"
	.byte	0x11
	.value	0x132
	.long	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"_offset"
	.byte	0x11
	.value	0x13b
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"__pad1"
	.byte	0x11
	.value	0x144
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.string	"__pad2"
	.byte	0x11
	.value	0x145
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.string	"__pad3"
	.byte	0x11
	.value	0x146
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.string	"__pad4"
	.byte	0x11
	.value	0x147
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.string	"__pad5"
	.byte	0x11
	.value	0x148
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.string	"_mode"
	.byte	0x11
	.value	0x14a
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.string	"_unused2"
	.byte	0x11
	.value	0x14c
	.long	0x86c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7dc
	.uleb128 0xd
	.long	0x488
	.uleb128 0x3
	.byte	0x4
	.long	0x547
	.uleb128 0x3
	.byte	0x4
	.long	0x7ed
	.uleb128 0x13
	.long	0x7f9
	.byte	0x1
	.uleb128 0x14
	.long	0x547
	.byte	0x0
	.uleb128 0x15
	.string	"_IO_lock_t"
	.byte	0x11
	.byte	0xb0
	.uleb128 0x4
	.long	0x84a
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x11
	.byte	0xb6
	.uleb128 0x7
	.string	"_next"
	.byte	0x11
	.byte	0xb7
	.long	0x84a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"_sbuf"
	.byte	0x11
	.byte	0xb8
	.long	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"_pos"
	.byte	0x11
	.byte	0xbc
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x807
	.uleb128 0x3
	.byte	0x4
	.long	0x55b
	.uleb128 0x16
	.long	0x866
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f9
	.uleb128 0x16
	.long	0x87c
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0x27
	.byte	0x0
	.uleb128 0xd
	.long	0x465
	.uleb128 0x3
	.byte	0x4
	.long	0x465
	.uleb128 0x3
	.byte	0x4
	.long	0x88d
	.uleb128 0x18
	.long	0x8a2
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x8a2
	.uleb128 0x14
	.long	0x8a2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8a8
	.uleb128 0x19
	.uleb128 0x3
	.byte	0x4
	.long	0x8af
	.uleb128 0x13
	.long	0x8bb
	.byte	0x1
	.uleb128 0x14
	.long	0x465
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x8bb
	.uleb128 0xb
	.long	0xb0c
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0xc
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xc
	.string	"BImode"
	.sleb128 1
	.uleb128 0xc
	.string	"QImode"
	.sleb128 2
	.uleb128 0xc
	.string	"HImode"
	.sleb128 3
	.uleb128 0xc
	.string	"SImode"
	.sleb128 4
	.uleb128 0xc
	.string	"DImode"
	.sleb128 5
	.uleb128 0xc
	.string	"TImode"
	.sleb128 6
	.uleb128 0xc
	.string	"OImode"
	.sleb128 7
	.uleb128 0xc
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xc
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xc
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xc
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xc
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xc
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xc
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xc
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xc
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xc
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xc
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xc
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xc
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xc
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xc
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xc
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xc
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xc
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xc
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xc
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xc
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xc
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xc
	.string	"COImode"
	.sleb128 30
	.uleb128 0xc
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xc
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xc
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xc
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xc
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xc
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xc
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xc
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xc
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xc
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xc
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xc
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xc
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xc
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xc
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xc
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xc
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xc
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xc
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xc
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xc
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xc
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xc
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xc
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x1b
	.long	0xbbb
	.long	.LASF5
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uleb128 0xc
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0xc
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0xc
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0xc
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0xc
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0xc
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0xc
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0xc
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0xc
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0xc
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0xb
	.long	0x138a
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0xc
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xc
	.string	"NIL"
	.sleb128 1
	.uleb128 0xc
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xc
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xc
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xc
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xc
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xc
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xc
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xc
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xc
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xc
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xc
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xc
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xc
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xc
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xc
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xc
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xc
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xc
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xc
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xc
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xc
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xc
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xc
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xc
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xc
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xc
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xc
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xc
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xc
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xc
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xc
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xc
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xc
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xc
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xc
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xc
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xc
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xc
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xc
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xc
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xc
	.string	"INSN"
	.sleb128 42
	.uleb128 0xc
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xc
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xc
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xc
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xc
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xc
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xc
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xc
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xc
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xc
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xc
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xc
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xc
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xc
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xc
	.string	"SET"
	.sleb128 57
	.uleb128 0xc
	.string	"USE"
	.sleb128 58
	.uleb128 0xc
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xc
	.string	"CALL"
	.sleb128 60
	.uleb128 0xc
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xc
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xc
	.string	"RESX"
	.sleb128 63
	.uleb128 0xc
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xc
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xc
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xc
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xc
	.string	"CONST"
	.sleb128 68
	.uleb128 0xc
	.string	"PC"
	.sleb128 69
	.uleb128 0xc
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xc
	.string	"REG"
	.sleb128 71
	.uleb128 0xc
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xc
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xc
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xc
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xc
	.string	"MEM"
	.sleb128 76
	.uleb128 0xc
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xc
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xc
	.string	"CC0"
	.sleb128 79
	.uleb128 0xc
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xc
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xc
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xc
	.string	"COND"
	.sleb128 83
	.uleb128 0xc
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xc
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xc
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xc
	.string	"NEG"
	.sleb128 87
	.uleb128 0xc
	.string	"MULT"
	.sleb128 88
	.uleb128 0xc
	.string	"DIV"
	.sleb128 89
	.uleb128 0xc
	.string	"MOD"
	.sleb128 90
	.uleb128 0xc
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xc
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xc
	.string	"AND"
	.sleb128 93
	.uleb128 0xc
	.string	"IOR"
	.sleb128 94
	.uleb128 0xc
	.string	"XOR"
	.sleb128 95
	.uleb128 0xc
	.string	"NOT"
	.sleb128 96
	.uleb128 0xc
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xc
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xc
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xc
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xc
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xc
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xc
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xc
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xc
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xc
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xc
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xc
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xc
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xc
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xc
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xc
	.string	"NE"
	.sleb128 112
	.uleb128 0xc
	.string	"EQ"
	.sleb128 113
	.uleb128 0xc
	.string	"GE"
	.sleb128 114
	.uleb128 0xc
	.string	"GT"
	.sleb128 115
	.uleb128 0xc
	.string	"LE"
	.sleb128 116
	.uleb128 0xc
	.string	"LT"
	.sleb128 117
	.uleb128 0xc
	.string	"GEU"
	.sleb128 118
	.uleb128 0xc
	.string	"GTU"
	.sleb128 119
	.uleb128 0xc
	.string	"LEU"
	.sleb128 120
	.uleb128 0xc
	.string	"LTU"
	.sleb128 121
	.uleb128 0xc
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xc
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xc
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xc
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xc
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xc
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xc
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xc
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xc
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xc
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xc
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xc
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xc
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xc
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xc
	.string	"FIX"
	.sleb128 136
	.uleb128 0xc
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xc
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xc
	.string	"ABS"
	.sleb128 139
	.uleb128 0xc
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xc
	.string	"FFS"
	.sleb128 141
	.uleb128 0xc
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xc
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xc
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xc
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xc
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xc
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xc
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xc
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xc
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xc
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xc
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xc
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xc
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xc
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xc
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xc
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xc
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xc
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xc
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xc
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xc
	.string	"PHI"
	.sleb128 162
	.uleb128 0xc
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1c
	.long	0x1464
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x46c
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x4
	.byte	0x57
	.long	0x46c
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x4
	.byte	0x58
	.long	0x138a
	.uleb128 0x11
	.long	0x14d7
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x4e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x4
	.byte	0x65
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF8
	.byte	0x4
	.byte	0x66
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x4
	.byte	0x68
	.long	0x147f
	.uleb128 0x8
	.long	0x15b4
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x1f
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x4e0
	.uleb128 0x1f
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x465
	.uleb128 0x1f
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x46c
	.uleb128 0x1f
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x452
	.uleb128 0x1f
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9f
	.uleb128 0x1f
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19f
	.uleb128 0x1f
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x8c3
	.uleb128 0x1f
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x1464
	.uleb128 0x1f
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x15c8
	.uleb128 0x1f
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x15e0
	.uleb128 0x1f
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e7
	.uleb128 0x1f
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x15f8
	.uleb128 0x1f
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x15fe
	.byte	0x0
	.uleb128 0x20
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x15b4
	.uleb128 0x20
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x15ce
	.uleb128 0x20
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x15e6
	.uleb128 0x3
	.byte	0x4
	.long	0x14d7
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x14e2
	.uleb128 0x16
	.long	0x1623
	.long	0x1604
	.uleb128 0x17
	.long	0x473
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x1633
	.long	0x9f
	.uleb128 0x17
	.long	0x473
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1665
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x7
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0x1633
	.uleb128 0xb
	.long	0x1f99
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0xc
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0xc
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0xc
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0xc
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0xc
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0xc
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0xc
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0xc
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0xc
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0xc
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0xc
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0xc
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0xc
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0xc
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0xc
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0xc
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0xc
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0xc
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0xc
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0xc
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0xc
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0xc
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0xc
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0xc
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0xc
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0xc
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0xc
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0xc
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0xc
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0xc
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0xc
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0xc
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0xc
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0xc
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0xc
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0xc
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0xc
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0xc
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0xc
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0xc
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0xc
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0xc
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0xc
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0xc
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0xc
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0xc
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0xc
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0xc
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0xc
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0xc
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0xc
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0xc
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0xc
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0xc
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0xc
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0xc
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0xc
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0xc
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0xc
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0xc
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0xc
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0xc
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0xc
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0xc
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0xc
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0xc
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0xc
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0xc
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0xc
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0xc
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0xc
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0xc
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0xc
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0xc
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0xc
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0xc
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0xc
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0xc
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0xc
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0xc
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0xc
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0xc
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0xc
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0xc
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0xc
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0xc
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0xc
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0xc
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0xc
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0xc
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0xc
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0xc
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0xc
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0xc
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0xc
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0xc
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0xc
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0xc
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0xc
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0xc
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0xc
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0xc
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0xc
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0xc
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0xc
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0xc
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0xc
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0xc
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0xc
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0xc
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0xc
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0xc
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0xc
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0xc
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0xc
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0xc
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0xc
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0xc
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0xc
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0xc
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0xc
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0xc
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0xc
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0xc
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0xc
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0xc
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0xc
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0xc
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0xc
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0xc
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0xc
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0xc
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0xc
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0xc
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0xc
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0xc
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0xc
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0xc
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0xc
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0xc
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0xc
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0xc
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0xc
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0xc
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0xc
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0xc
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0xc
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0xc
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0xc
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0xc
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0xc
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0xc
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x46c
	.uleb128 0x4
	.long	0x1fe6
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x3
	.byte	0x30
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x1ff0
	.uleb128 0x20
	.string	"st"
	.byte	0x1
	.uleb128 0x1b
	.long	0x2045
	.long	.LASF9
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0xc
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0xc
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0xc
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0xc
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0xb
	.long	0x3cef
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0xc
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0xc
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0xc
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0xc
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0xc
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0xc
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0xc
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0xc
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0xc
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0xc
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0xc
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0xc
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0xc
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0xc
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0xc
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0xc
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0xc
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0xc
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0xc
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0xc
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0xc
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0xc
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0xc
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0xc
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0xc
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0xc
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0xc
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0xc
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0xc
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0xc
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0xc
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0xc
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0xc
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0xc
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0xc
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0xc
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0xc
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0xc
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0xc
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0xc
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0xc
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0xc
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0xc
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0xc
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0xc
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0xc
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0xc
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0xc
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0xc
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0xc
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0xc
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0xc
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0xc
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0xc
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0xc
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0xc
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0xc
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0xc
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0xc
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0xc
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0xc
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0xc
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0xc
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0xc
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0xc
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0xc
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0xc
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0xc
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0xc
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0xc
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0xc
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0xc
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0xc
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0xc
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0xc
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0xc
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0xc
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0xc
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0xc
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0xc
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0xc
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0xc
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0xc
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0xc
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0xc
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0xc
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0xc
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0xc
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0xc
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0xc
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0xc
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0xc
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0xc
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0xc
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0xc
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0xc
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0xc
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0xc
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0xc
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0xc
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0xc
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0xc
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0xc
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0xc
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0xc
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0xc
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0xc
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0xc
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0xc
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0xc
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0xc
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0xc
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0xc
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0xc
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0xc
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0xc
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0xc
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0xc
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0xc
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0xc
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0xc
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0xc
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0xc
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0xc
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0xc
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0xc
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0xc
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0xc
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0xc
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0xc
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0xc
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0xc
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0xc
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0xc
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0xc
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0xc
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0xc
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0xc
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0xc
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0xc
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0xc
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0xc
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0xc
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0xc
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0xc
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0xc
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0xc
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0xc
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0xc
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0xc
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0xc
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0xc
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0xc
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0xc
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0xc
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0xc
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0xc
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0xc
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0xc
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0xc
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0xc
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0xc
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0xc
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0xc
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0xc
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0xc
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0xc
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0xc
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0xc
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0xc
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0xc
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0xc
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0xc
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0xc
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0xc
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0xc
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0xc
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0xc
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0xc
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0xc
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0xc
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0xc
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0xc
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0xc
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0xc
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0xc
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0xc
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0xc
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0xc
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0xc
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0xc
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0xc
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0xc
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0xc
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0xc
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0xc
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0xc
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0xc
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0xc
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0xc
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0xc
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0xc
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0xc
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0xc
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0xc
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0xc
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0xc
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0xc
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0xc
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0xc
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0xc
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0xc
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0xc
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0xc
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0xc
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0xc
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0xc
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0xc
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0xc
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0xc
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0xc
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0xc
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0xc
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0xc
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0xc
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0xc
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0xc
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0xc
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0xc
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0xc
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0xc
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0xc
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0xc
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0xc
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0xc
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0xc
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0xc
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0xc
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0xc
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0xc
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0xc
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0xc
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0xc
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0xc
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0xc
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0xc
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0xc
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0xc
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0xc
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0xc
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0xc
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0xc
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0xc
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0xc
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0xc
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0xc
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0xc
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0xc
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0xc
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0xc
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0xc
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0xc
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0xc
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0xc
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0xc
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0xc
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0xc
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0xc
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0xc
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0xc
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0xc
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0xc
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0xc
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0xc
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0xc
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0xc
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0xc
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0xc
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0xc
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0xc
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0xc
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0xc
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0xc
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0xc
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0xc
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0xc
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0xc
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0xc
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0xc
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0xc
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0xc
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0xc
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0xc
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0xc
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0xc
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0xc
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0xc
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0xc
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x3fd0
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x7
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF2
	.byte	0x3
	.byte	0x8e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0x90
	.long	0x1677
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0xa8
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0xa9
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0xaa
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0xab
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0xac
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0xad
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x3
	.byte	0xae
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.long	.LASF17
	.byte	0x3
	.byte	0xb0
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x21
	.long	0x400b
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0x12
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.long	.LASF18
	.byte	0x3
	.value	0x30c
	.long	0x4e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x21
	.long	0x4053
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x304
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x3fd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x21
	.long	0x40a1
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x320
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x40fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x21
	.long	0x40fa
	.string	"real_value"
	.byte	0x18
	.byte	0x3
	.value	0x319
	.uleb128 0x6
	.string	"class"
	.byte	0x6
	.byte	0x35
	.long	0x54a9
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sign"
	.byte	0x6
	.byte	0x37
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"exp"
	.byte	0x6
	.byte	0x38
	.long	0x465
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"sig"
	.byte	0x6
	.byte	0x39
	.long	0x54ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x40a1
	.uleb128 0x21
	.long	0x4167
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x334
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x4167
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1fe6
	.uleb128 0x21
	.long	0x41c2
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x343
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x21
	.long	0x420a
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x356
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x11
	.long	0x4248
	.long	.LASF19
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x7
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x7d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x21
	.long	0x427f
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x377
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x420a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x21
	.long	0x42c4
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x381
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF20
	.byte	0x3
	.value	0x383
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x21
	.long	0x4305
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x38f
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x4305
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x16
	.long	0x4315
	.long	0x1e7
	.uleb128 0x17
	.long	0x473
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x4361
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x3d5
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x4305
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x21
	.long	0x4451
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x40b
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.long	.LASF21
	.byte	0x3
	.value	0x40e
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x46c
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x22
	.long	.LASF22
	.byte	0x3
	.value	0x414
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x25
	.long	0x4498
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0xa
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x465
	.uleb128 0xa
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x549
	.uleb128 0xa
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x44a5
	.byte	0x0
	.uleb128 0x20
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4498
	.uleb128 0x21
	.long	0x47f2
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x552
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x554
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x22
	.long	.LASF23
	.byte	0x3
	.value	0x555
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF24
	.byte	0x3
	.value	0x556
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF25
	.byte	0x3
	.value	0x559
	.long	0x46c
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x8c3
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF26
	.byte	0x3
	.value	0x562
	.long	0x46c
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x3
	.value	0x564
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x3
	.value	0x565
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x3
	.value	0x566
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x3
	.value	0x567
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x3
	.value	0x568
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x3
	.value	0x569
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x3
	.value	0x56a
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF27
	.byte	0x3
	.value	0x56b
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x4451
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"name"
	.byte	0x3
	.value	0x576
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"context"
	.byte	0x3
	.value	0x57c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x4e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x22
	.long	.LASF28
	.byte	0x3
	.value	0x57f
	.long	0x47fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x1faa
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x20
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x47f2
	.uleb128 0x21
	.long	0x4849
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x23
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x46c
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x46c
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x487e
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x2045
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x4e0
	.uleb128 0xa
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x4804
	.byte	0x0
	.uleb128 0x25
	.long	0x48bd
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0xa
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x48c3
	.uleb128 0xa
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9f
	.uleb128 0xa
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e7
	.uleb128 0xa
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x465
	.byte	0x0
	.uleb128 0x26
	.long	.LASF29
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x48bd
	.uleb128 0x27
	.long	0x4901
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0xa
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x4167
	.uleb128 0xa
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x1f99
	.uleb128 0xa
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x46c
	.byte	0x0
	.uleb128 0x21
	.long	0x5047
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x7c6
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x1665
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x7c9
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x8c3
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF21
	.byte	0x3
	.value	0x7d3
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF9
	.byte	0x3
	.value	0x7ed
	.long	0x1ff5
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF26
	.byte	0x3
	.value	0x7f0
	.long	0x46c
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF27
	.byte	0x3
	.value	0x7f2
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x3
	.value	0x7fa
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x3
	.value	0x7fb
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x3
	.value	0x7fc
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x3
	.value	0x7fd
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x3
	.value	0x7fe
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x3
	.value	0x7ff
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x3
	.value	0x800
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF17
	.byte	0x3
	.value	0x801
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x4849
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x22
	.long	.LASF23
	.byte	0x3
	.value	0x81d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"name"
	.byte	0x3
	.value	0x81e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"context"
	.byte	0x3
	.value	0x81f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x22
	.long	.LASF30
	.byte	0x3
	.value	0x821
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x4e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x22
	.long	.LASF22
	.byte	0x3
	.value	0x82b
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x22
	.long	.LASF24
	.byte	0x3
	.value	0x82e
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x487e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x4e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x22
	.long	.LASF28
	.byte	0x3
	.value	0x848
	.long	0x5053
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x23
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x46c
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x23
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x46c
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x48c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x1faa
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x20
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5047
	.uleb128 0xb
	.long	0x52d7
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.uleb128 0xc
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0xc
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0xc
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0xc
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0xc
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0xc
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0xc
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0xc
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0xc
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0xc
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0xc
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0xc
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0xc
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0xc
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0xc
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0xc
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0xc
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0xc
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0xc
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0xc
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0xc
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0xc
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0xc
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0xc
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0xc
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0xc
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0xc
	.string	"options_dir"
	.sleb128 26
	.uleb128 0xc
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0xc
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0xc
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0xc
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0xc
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0xc
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0xc
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0xc
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0x21
	.long	0x5326
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x22
	.long	.LASF1
	.byte	0x3
	.value	0x865
	.long	0x3cef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x5059
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x21
	.long	0x53e2
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x12
	.string	"name"
	.byte	0x3
	.value	0xa20
	.long	0x53e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x87c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x87c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x53e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x53e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x12
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x53e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x5425
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xd
	.long	0x452
	.uleb128 0xd
	.long	0x53ec
	.uleb128 0xe
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x18
	.long	0x5419
	.byte	0x1
	.long	0x1e7
	.uleb128 0x14
	.long	0x5419
	.uleb128 0x14
	.long	0x1e7
	.uleb128 0x14
	.long	0x1e7
	.uleb128 0x14
	.long	0x465
	.uleb128 0x14
	.long	0x541f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e7
	.uleb128 0x3
	.byte	0x4
	.long	0x53ec
	.uleb128 0xd
	.long	0x542a
	.uleb128 0x3
	.byte	0x4
	.long	0x53f5
	.uleb128 0x28
	.long	0x54a9
	.string	"size_type_kind"
	.byte	0x4
	.byte	0x3
	.value	0xb07
	.uleb128 0xc
	.string	"SIZETYPE"
	.sleb128 0
	.uleb128 0xc
	.string	"SSIZETYPE"
	.sleb128 1
	.uleb128 0xc
	.string	"USIZETYPE"
	.sleb128 2
	.uleb128 0xc
	.string	"BITSIZETYPE"
	.sleb128 3
	.uleb128 0xc
	.string	"SBITSIZETYPE"
	.sleb128 4
	.uleb128 0xc
	.string	"UBITSIZETYPE"
	.sleb128 5
	.uleb128 0xc
	.string	"TYPE_KIND_LAST"
	.sleb128 6
	.byte	0x0
	.uleb128 0xb
	.long	0x54ef
	.string	"real_value_class"
	.byte	0x4
	.byte	0x6
	.byte	0x22
	.uleb128 0xc
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0xc
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0xc
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0xc
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0x16
	.long	0x54ff
	.long	0x4af
	.uleb128 0x17
	.long	0x473
	.byte	0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x5551
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0xb
	.byte	0x32
	.uleb128 0x7
	.string	"base"
	.byte	0xb
	.byte	0x33
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0xb
	.byte	0x34
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0xb
	.byte	0x35
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0xb
	.byte	0x36
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x55b7
	.string	"ggc_cache_tab"
	.byte	0x14
	.byte	0xb
	.byte	0x3f
	.uleb128 0x7
	.string	"base"
	.byte	0xb
	.byte	0x40
	.long	0x5689
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0xb
	.byte	0x41
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0xb
	.byte	0x42
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0xb
	.byte	0x43
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"marked_p"
	.byte	0xb
	.byte	0x44
	.long	0x56a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	0x5689
	.string	"htab"
	.byte	0x2c
	.byte	0xb
	.byte	0x3e
	.uleb128 0x7
	.string	"hash_f"
	.byte	0xa
	.byte	0x5b
	.long	0x56bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"eq_f"
	.byte	0xa
	.byte	0x5e
	.long	0x56e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"del_f"
	.byte	0xa
	.byte	0x61
	.long	0x56f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"entries"
	.byte	0xa
	.byte	0x64
	.long	0x7e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF8
	.byte	0xa
	.byte	0x67
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_elements"
	.byte	0xa
	.byte	0x6a
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"n_deleted"
	.byte	0xa
	.byte	0x6d
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"searches"
	.byte	0xa
	.byte	0x71
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"collisions"
	.byte	0xa
	.byte	0x75
	.long	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"alloc_f"
	.byte	0xa
	.byte	0x78
	.long	0x5702
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"free_f"
	.byte	0xa
	.byte	0x79
	.long	0x572f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x568f
	.uleb128 0x3
	.byte	0x4
	.long	0x55b7
	.uleb128 0x18
	.long	0x56a5
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x8a2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5695
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0xa
	.byte	0x32
	.long	0x46c
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0xa
	.byte	0x37
	.long	0x56cd
	.uleb128 0x3
	.byte	0x4
	.long	0x56d3
	.uleb128 0x18
	.long	0x56e3
	.byte	0x1
	.long	0x56ab
	.uleb128 0x14
	.long	0x8a2
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0xa
	.byte	0x3e
	.long	0x887
	.uleb128 0x2
	.string	"htab_del"
	.byte	0xa
	.byte	0x42
	.long	0x7e7
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0xa
	.byte	0x4e
	.long	0x5714
	.uleb128 0x3
	.byte	0x4
	.long	0x571a
	.uleb128 0x18
	.long	0x572f
	.byte	0x1
	.long	0x547
	.uleb128 0x14
	.long	0x47a
	.uleb128 0x14
	.long	0x47a
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0xa
	.byte	0x51
	.long	0x7e7
	.uleb128 0x2
	.string	"htab_t"
	.byte	0xa
	.byte	0x7c
	.long	0x568f
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0xf
	.byte	0x1d
	.long	0x576a
	.uleb128 0x3
	.byte	0x4
	.long	0x5770
	.uleb128 0x13
	.long	0x5786
	.byte	0x1
	.uleb128 0x14
	.long	0x5786
	.uleb128 0x14
	.long	0x1e7
	.uleb128 0x14
	.long	0x465
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x54f
	.uleb128 0x4
	.long	0x5912
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0xf
	.byte	0x23
	.uleb128 0x7
	.string	"walk_subtrees"
	.byte	0xf
	.byte	0x24
	.long	0x595c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"cannot_inline_tree_fn"
	.byte	0xf
	.byte	0x29
	.long	0x5972
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"disregard_inline_limits"
	.byte	0xf
	.byte	0x2a
	.long	0x5988
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"add_pending_fn_decls"
	.byte	0xf
	.byte	0x2b
	.long	0x59a3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"tree_chain_matters_p"
	.byte	0xf
	.byte	0x2d
	.long	0x5988
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"auto_var_in_fn_p"
	.byte	0xf
	.byte	0x2e
	.long	0x59be
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"copy_res_decl_for_inlining"
	.byte	0xf
	.byte	0x2f
	.long	0x59ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"anon_aggr_type_p"
	.byte	0xf
	.byte	0x34
	.long	0x5988
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"var_mod_type_p"
	.byte	0xf
	.byte	0x35
	.long	0x5a03
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"start_inlining"
	.byte	0xf
	.byte	0x36
	.long	0x5988
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"end_inlining"
	.byte	0xf
	.byte	0x37
	.long	0x5a15
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"convert_parm_for_inlining"
	.byte	0xf
	.byte	0x38
	.long	0x5a35
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x18
	.long	0x5936
	.byte	0x1
	.long	0x1f3
	.uleb128 0x14
	.long	0x5936
	.uleb128 0x14
	.long	0x881
	.uleb128 0x14
	.long	0x593c
	.uleb128 0x14
	.long	0x547
	.uleb128 0x14
	.long	0x547
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f3
	.uleb128 0x3
	.byte	0x4
	.long	0x5942
	.uleb128 0x18
	.long	0x595c
	.byte	0x1
	.long	0x1f3
	.uleb128 0x14
	.long	0x5936
	.uleb128 0x14
	.long	0x881
	.uleb128 0x14
	.long	0x547
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5912
	.uleb128 0x18
	.long	0x5972
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x5936
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5962
	.uleb128 0x18
	.long	0x5988
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x1f3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5978
	.uleb128 0x18
	.long	0x59a3
	.byte	0x1
	.long	0x1f3
	.uleb128 0x14
	.long	0x547
	.uleb128 0x14
	.long	0x1f3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x598e
	.uleb128 0x18
	.long	0x59be
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x1f3
	.uleb128 0x14
	.long	0x1f3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59a9
	.uleb128 0x18
	.long	0x59ed
	.byte	0x1
	.long	0x1f3
	.uleb128 0x14
	.long	0x1f3
	.uleb128 0x14
	.long	0x1f3
	.uleb128 0x14
	.long	0x1f3
	.uleb128 0x14
	.long	0x547
	.uleb128 0x14
	.long	0x881
	.uleb128 0x14
	.long	0x547
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59c4
	.uleb128 0x18
	.long	0x5a03
	.byte	0x1
	.long	0x53ec
	.uleb128 0x14
	.long	0x1f3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x59f3
	.uleb128 0x13
	.long	0x5a15
	.byte	0x1
	.uleb128 0x14
	.long	0x1f3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a09
	.uleb128 0x18
	.long	0x5a35
	.byte	0x1
	.long	0x1f3
	.uleb128 0x14
	.long	0x1f3
	.uleb128 0x14
	.long	0x1f3
	.uleb128 0x14
	.long	0x1f3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5a1b
	.uleb128 0x4
	.long	0x5aaa
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0xf
	.byte	0x40
	.uleb128 0x7
	.string	"init"
	.byte	0xf
	.byte	0x42
	.long	0x5ab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"final"
	.byte	0xf
	.byte	0x45
	.long	0x5ab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"enter_nested"
	.byte	0xf
	.byte	0x48
	.long	0x5ab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"leave_nested"
	.byte	0xf
	.byte	0x4b
	.long	0x5ab6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.long	0x5ab6
	.byte	0x1
	.uleb128 0x14
	.long	0x48c3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5aaa
	.uleb128 0x4
	.long	0x5b07
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0xf
	.byte	0x51
	.uleb128 0x7
	.string	"dump_tree"
	.byte	0xf
	.byte	0x54
	.long	0x5b1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_quals"
	.byte	0xf
	.byte	0x57
	.long	0x5b32
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x18
	.long	0x5b1c
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x547
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b07
	.uleb128 0x18
	.long	0x5b32
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5b22
	.uleb128 0x4
	.long	0x5c13
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0xf
	.byte	0x5d
	.uleb128 0x7
	.string	"make_type"
	.byte	0xf
	.byte	0x60
	.long	0x5c23
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"type_for_mode"
	.byte	0xf
	.byte	0x64
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type_for_size"
	.byte	0xf
	.byte	0x68
	.long	0x5c59
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF31
	.byte	0xf
	.byte	0x6c
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1d
	.long	.LASF32
	.byte	0xf
	.byte	0x70
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"signed_or_unsigned_type"
	.byte	0xf
	.byte	0x74
	.long	0x5c8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"type_promotes_to"
	.byte	0xf
	.byte	0x7a
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"incomplete_type_error"
	.byte	0xf
	.byte	0x80
	.long	0x5ca1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x5c23
	.byte	0x1
	.long	0x1e7
	.uleb128 0x14
	.long	0x1677
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c13
	.uleb128 0x18
	.long	0x5c3e
	.byte	0x1
	.long	0x1e7
	.uleb128 0x14
	.long	0x8c3
	.uleb128 0x14
	.long	0x465
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c29
	.uleb128 0x18
	.long	0x5c59
	.byte	0x1
	.long	0x1e7
	.uleb128 0x14
	.long	0x46c
	.uleb128 0x14
	.long	0x465
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c44
	.uleb128 0x18
	.long	0x5c6f
	.byte	0x1
	.long	0x1e7
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c5f
	.uleb128 0x18
	.long	0x5c8a
	.byte	0x1
	.long	0x1e7
	.uleb128 0x14
	.long	0x465
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c75
	.uleb128 0x13
	.long	0x5ca1
	.byte	0x1
	.uleb128 0x14
	.long	0x1e7
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5c90
	.uleb128 0x4
	.long	0x5dad
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0xf
	.byte	0x86
	.uleb128 0x7
	.string	"pushlevel"
	.byte	0xf
	.byte	0x89
	.long	0x8a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"poplevel"
	.byte	0xf
	.byte	0x90
	.long	0x5dc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"global_bindings_p"
	.byte	0xf
	.byte	0x94
	.long	0x5dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"insert_block"
	.byte	0xf
	.byte	0x99
	.long	0x5de5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"set_block"
	.byte	0xf
	.byte	0x9c
	.long	0x5de5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"pushdecl"
	.byte	0xf
	.byte	0xa2
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"getdecls"
	.byte	0xf
	.byte	0xa5
	.long	0x5df1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"warn_unused_global"
	.byte	0xf
	.byte	0xa9
	.long	0x5e07
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"final_write_globals"
	.byte	0xf
	.byte	0xad
	.long	0x8bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"ok_for_sibcall"
	.byte	0xf
	.byte	0xb0
	.long	0x5e07
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x18
	.long	0x5dc7
	.byte	0x1
	.long	0x1e7
	.uleb128 0x14
	.long	0x465
	.uleb128 0x14
	.long	0x465
	.uleb128 0x14
	.long	0x465
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5dad
	.uleb128 0x29
	.byte	0x1
	.long	0x465
	.uleb128 0x3
	.byte	0x4
	.long	0x5dcd
	.uleb128 0x13
	.long	0x5de5
	.byte	0x1
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5dd9
	.uleb128 0x29
	.byte	0x1
	.long	0x1e7
	.uleb128 0x3
	.byte	0x4
	.long	0x5deb
	.uleb128 0x18
	.long	0x5e07
	.byte	0x1
	.long	0x53ec
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5df7
	.uleb128 0x2a
	.long	0x623f
	.long	.LASF33
	.value	0x120
	.byte	0xf
	.byte	0xb6
	.uleb128 0x7
	.string	"name"
	.byte	0xf
	.byte	0xb8
	.long	0x452
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"identifier_size"
	.byte	0xf
	.byte	0xbc
	.long	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"init_options"
	.byte	0xf
	.byte	0xc0
	.long	0x8bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"decode_option"
	.byte	0xf
	.byte	0xca
	.long	0x625a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"post_options"
	.byte	0xf
	.byte	0xd6
	.long	0x6266
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"init"
	.byte	0xf
	.byte	0xde
	.long	0x627c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"finish"
	.byte	0xf
	.byte	0xe1
	.long	0x8bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"parse_file"
	.byte	0xf
	.byte	0xe5
	.long	0x8a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"clear_binding_stack"
	.byte	0xf
	.byte	0xe8
	.long	0x8bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"get_alias_set"
	.byte	0xf
	.byte	0xec
	.long	0x6292
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"expand_constant"
	.byte	0xf
	.byte	0xf1
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"expand_expr"
	.byte	0xf
	.byte	0xf5
	.long	0x62b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.string	"truthvalue_conversion"
	.byte	0xf
	.value	0x102
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.string	"insert_default_attributes"
	.byte	0xf
	.value	0x106
	.long	0x5de5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.string	"safe_from_p"
	.byte	0xf
	.value	0x10f
	.long	0x62d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.string	"finish_incomplete_decl"
	.byte	0xf
	.value	0x113
	.long	0x5de5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.string	"unsafe_for_reeval"
	.byte	0xf
	.value	0x118
	.long	0x5b32
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.string	"mark_addressable"
	.byte	0xf
	.value	0x11d
	.long	0x5e07
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.string	"staticp"
	.byte	0xf
	.value	0x120
	.long	0x5b32
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.string	"dup_lang_specific_decl"
	.byte	0xf
	.value	0x124
	.long	0x5de5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.string	"unsave_expr_now"
	.byte	0xf
	.value	0x129
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.string	"maybe_build_cleanup"
	.byte	0xf
	.value	0x12d
	.long	0x5c6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.string	"set_decl_assembler_name"
	.byte	0xf
	.value	0x134
	.long	0x5de5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.string	"can_use_bit_fields_p"
	.byte	0xf
	.value	0x138
	.long	0x6266
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.string	"honor_readonly"
	.byte	0xf
	.value	0x13b
	.long	0x53ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.string	"print_statistics"
	.byte	0xf
	.value	0x13f
	.long	0x8bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.string	"print_xnode"
	.byte	0xf
	.value	0x143
	.long	0x574e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.string	"print_decl"
	.byte	0xf
	.value	0x147
	.long	0x574e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.string	"print_type"
	.byte	0xf
	.value	0x148
	.long	0x574e
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.string	"print_identifier"
	.byte	0xf
	.value	0x149
	.long	0x574e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.string	"decl_printable_name"
	.byte	0xf
	.value	0x151
	.long	0x62ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.string	"print_error_function"
	.byte	0xf
	.value	0x154
	.long	0x631f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.string	"expr_size"
	.byte	0xf
	.value	0x15b
	.long	0x5c6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.string	"attribute_table"
	.byte	0xf
	.value	0x162
	.long	0x6325
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.string	"common_attribute_table"
	.byte	0xf
	.value	0x163
	.long	0x6325
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.string	"format_attribute_table"
	.byte	0xf
	.value	0x164
	.long	0x6325
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x22
	.long	.LASF29
	.byte	0xf
	.value	0x167
	.long	0x5a3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.string	"tree_inlining"
	.byte	0xf
	.value	0x169
	.long	0x578c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x12
	.string	"tree_dump"
	.byte	0xf
	.value	0x16b
	.long	0x5abc
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x12
	.string	"decls"
	.byte	0xf
	.value	0x16d
	.long	0x5ca7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.string	"types"
	.byte	0xf
	.value	0x16f
	.long	0x5b38
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x18
	.long	0x6254
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x465
	.uleb128 0x14
	.long	0x6254
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x549
	.uleb128 0x3
	.byte	0x4
	.long	0x623f
	.uleb128 0x29
	.byte	0x1
	.long	0x53ec
	.uleb128 0x3
	.byte	0x4
	.long	0x6260
	.uleb128 0x18
	.long	0x627c
	.byte	0x1
	.long	0x452
	.uleb128 0x14
	.long	0x452
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x626c
	.uleb128 0x18
	.long	0x6292
	.byte	0x1
	.long	0x4e0
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6282
	.uleb128 0x18
	.long	0x62b7
	.byte	0x1
	.long	0x9f
	.uleb128 0x14
	.long	0x1e7
	.uleb128 0x14
	.long	0x9f
	.uleb128 0x14
	.long	0x8c3
	.uleb128 0x14
	.long	0x465
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6298
	.uleb128 0x18
	.long	0x62d2
	.byte	0x1
	.long	0x465
	.uleb128 0x14
	.long	0x9f
	.uleb128 0x14
	.long	0x1e7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62bd
	.uleb128 0x18
	.long	0x62ed
	.byte	0x1
	.long	0x452
	.uleb128 0x14
	.long	0x1e7
	.uleb128 0x14
	.long	0x465
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62d8
	.uleb128 0x13
	.long	0x6304
	.byte	0x1
	.uleb128 0x14
	.long	0x6304
	.uleb128 0x14
	.long	0x452
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x630a
	.uleb128 0x20
	.string	"diagnostic_context"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x62f3
	.uleb128 0x3
	.byte	0x4
	.long	0x632b
	.uleb128 0xd
	.long	0x5326
	.uleb128 0x2b
	.long	0x6377
	.string	"encode"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2c
	.string	"words"
	.byte	0x1
	.byte	0xa4
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"low"
	.byte	0x1
	.byte	0xa5
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"hi"
	.byte	0x1
	.byte	0xa6
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4e0
	.uleb128 0x2b
	.long	0x63c4
	.string	"decode"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.string	"words"
	.byte	0x1
	.byte	0xb4
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"low"
	.byte	0x1
	.byte	0xb5
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"hi"
	.byte	0x1
	.byte	0xb6
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f1
	.uleb128 0x2d
	.long	0x6437
	.byte	0x1
	.string	"force_fit_type"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	0x465
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0xc5
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF34
	.byte	0x1
	.byte	0xc6
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"low"
	.byte	0x1
	.byte	0xc8
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF18
	.byte	0x1
	.byte	0xc9
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF35
	.byte	0x1
	.byte	0xca
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x31
	.long	0x64cb
	.byte	0x1
	.string	"add_double"
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x465
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x32
	.string	"l1"
	.byte	0x1
	.value	0x116
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"h1"
	.byte	0x1
	.value	0x117
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"l2"
	.byte	0x1
	.value	0x116
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"h2"
	.byte	0x1
	.value	0x117
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"lv"
	.byte	0x1
	.value	0x118
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x32
	.string	"hv"
	.byte	0x1
	.value	0x119
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x33
	.string	"l"
	.byte	0x1
	.value	0x11b
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"h"
	.byte	0x1
	.value	0x11c
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0x6529
	.byte	0x1
	.string	"neg_double"
	.byte	0x1
	.value	0x131
	.byte	0x1
	.long	0x465
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x32
	.string	"l1"
	.byte	0x1
	.value	0x12d
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"h1"
	.byte	0x1
	.value	0x12e
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"lv"
	.byte	0x1
	.value	0x12f
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.string	"hv"
	.byte	0x1
	.value	0x130
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0x0
	.uleb128 0x31
	.long	0x665d
	.byte	0x1
	.string	"mul_double"
	.byte	0x1
	.value	0x14c
	.byte	0x1
	.long	0x465
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x32
	.string	"l1"
	.byte	0x1
	.value	0x148
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x32
	.string	"h1"
	.byte	0x1
	.value	0x149
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x32
	.string	"l2"
	.byte	0x1
	.value	0x148
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x32
	.string	"h2"
	.byte	0x1
	.value	0x149
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x32
	.string	"lv"
	.byte	0x1
	.value	0x14a
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x32
	.string	"hv"
	.byte	0x1
	.value	0x14b
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x34
	.long	.LASF36
	.byte	0x1
	.value	0x14d
	.long	0x665d
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"arg2"
	.byte	0x1
	.value	0x14e
	.long	0x665d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.string	"prod"
	.byte	0x1
	.value	0x14f
	.long	0x666d
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.string	"carry"
	.byte	0x1
	.value	0x150
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x151
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x151
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"k"
	.byte	0x1
	.value	0x151
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"toplow"
	.byte	0x1
	.value	0x152
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"neglow"
	.byte	0x1
	.value	0x152
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"tophigh"
	.byte	0x1
	.value	0x153
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"neghigh"
	.byte	0x1
	.value	0x153
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x16
	.long	0x666d
	.long	0x4e0
	.uleb128 0x17
	.long	0x473
	.byte	0x3
	.byte	0x0
	.uleb128 0x16
	.long	0x667d
	.long	0x4e0
	.uleb128 0x17
	.long	0x473
	.byte	0x7
	.byte	0x0
	.uleb128 0x35
	.long	0x6718
	.byte	0x1
	.string	"lshift_double"
	.byte	0x1
	.value	0x18a
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x32
	.string	"l1"
	.byte	0x1
	.value	0x184
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"h1"
	.byte	0x1
	.value	0x185
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF37
	.byte	0x1
	.value	0x185
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x186
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.string	"lv"
	.byte	0x1
	.value	0x187
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.string	"hv"
	.byte	0x1
	.value	0x188
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x32
	.string	"arith"
	.byte	0x1
	.value	0x189
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x34
	.long	.LASF38
	.byte	0x1
	.value	0x18b
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x35
	.long	0x67b3
	.byte	0x1
	.string	"rshift_double"
	.byte	0x1
	.value	0x1ce
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x32
	.string	"l1"
	.byte	0x1
	.value	0x1c8
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"h1"
	.byte	0x1
	.value	0x1c9
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF37
	.byte	0x1
	.value	0x1c9
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x1ca
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.string	"lv"
	.byte	0x1
	.value	0x1cb
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.string	"hv"
	.byte	0x1
	.value	0x1cc
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x32
	.string	"arith"
	.byte	0x1
	.value	0x1cd
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x34
	.long	.LASF38
	.byte	0x1
	.value	0x1cf
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x35
	.long	0x686d
	.byte	0x1
	.string	"lrotate_double"
	.byte	0x1
	.value	0x20f
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x32
	.string	"l1"
	.byte	0x1
	.value	0x20a
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"h1"
	.byte	0x1
	.value	0x20b
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF37
	.byte	0x1
	.value	0x20b
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x20c
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.string	"lv"
	.byte	0x1
	.value	0x20d
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.string	"hv"
	.byte	0x1
	.value	0x20e
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x33
	.string	"s1l"
	.byte	0x1
	.value	0x210
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"s2l"
	.byte	0x1
	.value	0x210
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"s1h"
	.byte	0x1
	.value	0x211
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"s2h"
	.byte	0x1
	.value	0x211
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x35
	.long	0x6927
	.byte	0x1
	.string	"rrotate_double"
	.byte	0x1
	.value	0x228
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x32
	.string	"l1"
	.byte	0x1
	.value	0x223
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"h1"
	.byte	0x1
	.value	0x224
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF37
	.byte	0x1
	.value	0x224
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF35
	.byte	0x1
	.value	0x225
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.string	"lv"
	.byte	0x1
	.value	0x226
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.string	"hv"
	.byte	0x1
	.value	0x227
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x33
	.string	"s1l"
	.byte	0x1
	.value	0x229
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"s2l"
	.byte	0x1
	.value	0x229
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"s1h"
	.byte	0x1
	.value	0x22a
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"s2h"
	.byte	0x1
	.value	0x22a
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x31
	.long	0x6c02
	.byte	0x1
	.string	"div_and_round_double"
	.byte	0x1
	.value	0x24b
	.byte	0x1
	.long	0x465
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x243
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"uns"
	.byte	0x1
	.value	0x244
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"lnum_orig"
	.byte	0x1
	.value	0x245
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x32
	.string	"hnum_orig"
	.byte	0x1
	.value	0x246
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x32
	.string	"lden_orig"
	.byte	0x1
	.value	0x247
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x32
	.string	"hden_orig"
	.byte	0x1
	.value	0x248
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x32
	.string	"lquo"
	.byte	0x1
	.value	0x249
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x32
	.string	"hquo"
	.byte	0x1
	.value	0x24a
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x32
	.string	"lrem"
	.byte	0x1
	.value	0x249
	.long	0x63c4
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x32
	.string	"hrem"
	.byte	0x1
	.value	0x24a
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x33
	.string	"quo_neg"
	.byte	0x1
	.value	0x24c
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"num"
	.byte	0x1
	.value	0x24d
	.long	0x6c02
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x33
	.string	"den"
	.byte	0x1
	.value	0x24e
	.long	0x665d
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x33
	.string	"quo"
	.byte	0x1
	.value	0x24e
	.long	0x665d
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x24f
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x24f
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"work"
	.byte	0x1
	.value	0x250
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"carry"
	.byte	0x1
	.value	0x251
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"lnum"
	.byte	0x1
	.value	0x252
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"hnum"
	.byte	0x1
	.value	0x253
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"lden"
	.byte	0x1
	.value	0x254
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"hden"
	.byte	0x1
	.value	0x255
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.long	.LASF34
	.byte	0x1
	.value	0x256
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.string	"finish_up"
	.byte	0x1
	.value	0x2f6
	.long	.L147
	.uleb128 0x38
	.long	0x6b69
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x33
	.string	"num_hi_sig"
	.byte	0x1
	.value	0x295
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"den_hi_sig"
	.byte	0x1
	.value	0x295
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"quo_est"
	.byte	0x1
	.value	0x296
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"scale"
	.byte	0x1
	.value	0x296
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x39
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0x2c1
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x6bf1
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x33
	.string	"labs_rem"
	.byte	0x1
	.value	0x321
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"habs_rem"
	.byte	0x1
	.value	0x322
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.string	"labs_den"
	.byte	0x1
	.value	0x323
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.string	"ltwice"
	.byte	0x1
	.value	0x323
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.string	"habs_den"
	.byte	0x1
	.value	0x324
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"htwice"
	.byte	0x1
	.value	0x324
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12916
	.byte	0x0
	.uleb128 0x16
	.long	0x6c12
	.long	0x4e0
	.uleb128 0x17
	.long	0x473
	.byte	0x4
	.byte	0x0
	.uleb128 0x3b
	.long	0x6c63
	.string	"negate_expr"
	.byte	0x1
	.value	0x355
	.byte	0x1
	.long	0x1e7
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x354
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x356
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0x357
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x6d79
	.string	"split_tree"
	.byte	0x1
	.value	0x396
	.byte	0x1
	.long	0x1e7
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x32
	.string	"in"
	.byte	0x1
	.value	0x392
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x393
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"conp"
	.byte	0x1
	.value	0x394
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"litp"
	.byte	0x1
	.value	0x394
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"minus_litp"
	.byte	0x1
	.value	0x394
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.string	"negate_p"
	.byte	0x1
	.value	0x395
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x33
	.string	"var"
	.byte	0x1
	.value	0x397
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x3ab
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x3ac
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"neg1_p"
	.byte	0x1
	.value	0x3ad
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"neg_litp_p"
	.byte	0x1
	.value	0x3ae
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"neg_conp_p"
	.byte	0x1
	.value	0x3ae
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"neg_var_p"
	.byte	0x1
	.value	0x3ae
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x6ddd
	.string	"associate_trees"
	.byte	0x1
	.value	0x3e7
	.byte	0x1
	.long	0x1e7
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x32
	.string	"t1"
	.byte	0x1
	.value	0x3e4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"t2"
	.byte	0x1
	.value	0x3e4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x3e5
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x3e6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x3b
	.long	0x6f4f
	.string	"int_const_binop"
	.byte	0x1
	.value	0x40c
	.byte	0x1
	.long	0x1e7
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x409
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x40a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"arg2"
	.byte	0x1
	.value	0x40a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"notrunc"
	.byte	0x1
	.value	0x40b
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"int1l"
	.byte	0x1
	.value	0x40d
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"int2l"
	.byte	0x1
	.value	0x40d
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"int1h"
	.byte	0x1
	.value	0x40e
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"int2h"
	.byte	0x1
	.value	0x40e
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"low"
	.byte	0x1
	.value	0x40f
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"hi"
	.byte	0x1
	.value	0x410
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"garbagel"
	.byte	0x1
	.value	0x411
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"garbageh"
	.byte	0x1
	.value	0x412
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x413
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x414
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"uns"
	.byte	0x1
	.value	0x415
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"is_sizetype"
	.byte	0x1
	.value	0x416
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF34
	.byte	0x1
	.value	0x418
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"no_overflow"
	.byte	0x1
	.value	0x419
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f50
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13446
	.byte	0x0
	.uleb128 0x3b
	.long	0x7091
	.string	"const_binop"
	.byte	0x1
	.value	0x4cf
	.byte	0x1
	.long	0x1e7
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x4cc
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x4cd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"arg2"
	.byte	0x1
	.value	0x4cd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"notrunc"
	.byte	0x1
	.value	0x4ce
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.long	0x6ffe
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"d1"
	.byte	0x1
	.value	0x4d8
	.long	0x40a1
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.string	"d2"
	.byte	0x1
	.value	0x4d9
	.long	0x40a1
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x34
	.long	.LASF20
	.byte	0x1
	.value	0x4da
	.long	0x40a1
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x4db
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x38
	.long	0x7080
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x4f8
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"r1"
	.byte	0x1
	.value	0x4f9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"i1"
	.byte	0x1
	.value	0x4fa
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"r2"
	.byte	0x1
	.value	0x4fb
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"i2"
	.byte	0x1
	.value	0x4fc
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x4fd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"magsquared"
	.byte	0x1
	.value	0x51f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13675
	.byte	0x0
	.uleb128 0x3b
	.long	0x70d4
	.string	"size_htab_hash"
	.byte	0x1
	.value	0x54d
	.byte	0x1
	.long	0x56ab
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x54c
	.long	0x8a2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x54e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	0x7131
	.string	"size_htab_eq"
	.byte	0x1
	.value	0x55c
	.byte	0x1
	.long	0x465
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x55a
	.long	0x8a2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.value	0x55b
	.long	0x8a2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"xt"
	.byte	0x1
	.value	0x55d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"yt"
	.byte	0x1
	.value	0x55e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x31
	.long	0x717c
	.byte	0x1
	.string	"size_int_wide"
	.byte	0x1
	.value	0x56d
	.byte	0x1
	.long	0x1e7
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x32
	.string	"number"
	.byte	0x1
	.value	0x56b
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"kind"
	.byte	0x1
	.value	0x56c
	.long	0x5430
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0x71f2
	.byte	0x1
	.string	"size_int_type_wide"
	.byte	0x1
	.value	0x57b
	.byte	0x1
	.long	0x1e7
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x32
	.string	"number"
	.byte	0x1
	.value	0x579
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x57a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"slot"
	.byte	0x1
	.value	0x57c
	.long	0x7e1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x39
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x590
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x7264
	.byte	0x1
	.string	"size_binop"
	.byte	0x1
	.value	0x5a3
	.byte	0x1
	.long	0x1e7
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x5a1
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x5a2
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x5a2
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x5a4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f36
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13906
	.byte	0x0
	.uleb128 0x31
	.long	0x72d9
	.byte	0x1
	.string	"size_diffop"
	.byte	0x1
	.value	0x5c7
	.byte	0x1
	.long	0x1e7
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x5c6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x5c6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x5c8
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"ctype"
	.byte	0x1
	.value	0x5c9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13951
	.byte	0x0
	.uleb128 0x3b
	.long	0x73c1
	.string	"fold_convert"
	.byte	0x1
	.value	0x5f2
	.byte	0x1
	.long	0x1e7
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x5f0
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x5f1
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x5f3
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF34
	.byte	0x1
	.value	0x5f4
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x39
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x61e
	.long	0x40a1
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"l"
	.byte	0x1
	.value	0x61f
	.long	0x40a1
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.string	"u"
	.byte	0x1
	.value	0x620
	.long	0x40a1
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"type1"
	.byte	0x1
	.value	0x621
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"no_upper_bound"
	.byte	0x1
	.value	0x622
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.string	"low"
	.byte	0x1
	.value	0x63b
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0x63b
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x7403
	.byte	0x1
	.string	"non_lvalue"
	.byte	0x1
	.value	0x66a
	.byte	0x1
	.long	0x1e7
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x669
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x66b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x743f
	.byte	0x1
	.string	"pedantic_non_lvalue"
	.byte	0x1
	.value	0x685
	.byte	0x1
	.long	0x1e7
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x684
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x748f
	.string	"invert_tree_comparison"
	.byte	0x1
	.value	0x693
	.byte	0x1
	.long	0x1677
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x692
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f2c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14205
	.byte	0x0
	.uleb128 0x3b
	.long	0x74dd
	.string	"swap_tree_comparison"
	.byte	0x1
	.value	0x6ad
	.byte	0x1
	.long	0x1677
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x6ac
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f27
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14218
	.byte	0x0
	.uleb128 0x3b
	.long	0x752d
	.string	"comparison_to_compcode"
	.byte	0x1
	.value	0x6c8
	.byte	0x1
	.long	0x465
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x6c7
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14231
	.byte	0x0
	.uleb128 0x3b
	.long	0x757d
	.string	"compcode_to_comparison"
	.byte	0x1
	.value	0x6e3
	.byte	0x1
	.long	0x1677
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x6e2
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9f0d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14244
	.byte	0x0
	.uleb128 0x3b
	.long	0x75b4
	.string	"truth_value_p"
	.byte	0x1
	.value	0x6fc
	.byte	0x1
	.long	0x465
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x6fb
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x7639
	.byte	0x1
	.string	"operand_equal_p"
	.byte	0x1
	.value	0x70f
	.byte	0x1
	.long	0x465
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x70d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x70d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"only_const"
	.byte	0x1
	.value	0x70e
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x33
	.string	"v1"
	.byte	0x1
	.value	0x73f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"v2"
	.byte	0x1
	.value	0x73f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x773c
	.string	"operand_equal_for_comparison_p"
	.byte	0x1
	.value	0x7ba
	.byte	0x1
	.long	0x465
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x7b8
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x7b8
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"other"
	.byte	0x1
	.value	0x7b9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"unsignedp1"
	.byte	0x1
	.value	0x7bb
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"unsignedpo"
	.byte	0x1
	.value	0x7bb
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"primarg0"
	.byte	0x1
	.value	0x7bc
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"primarg1"
	.byte	0x1
	.value	0x7bc
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"primother"
	.byte	0x1
	.value	0x7bc
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"correct_width"
	.byte	0x1
	.value	0x7bd
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x7dd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x77cd
	.string	"twoval_comparison_p"
	.byte	0x1
	.value	0x7fa
	.byte	0x1
	.long	0x465
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x7f7
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"cval1"
	.byte	0x1
	.value	0x7f8
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"cval2"
	.byte	0x1
	.value	0x7f8
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"save_p"
	.byte	0x1
	.value	0x7f9
	.long	0x881
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x7fb
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"class"
	.byte	0x1
	.value	0x7fc
	.long	0x45d
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x3b
	.long	0x7898
	.string	"eval_subst"
	.byte	0x1
	.value	0x858
	.byte	0x1
	.long	0x1e7
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x856
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"old0"
	.byte	0x1
	.value	0x857
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"new0"
	.byte	0x1
	.value	0x857
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"old1"
	.byte	0x1
	.value	0x857
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"new1"
	.byte	0x1
	.value	0x857
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x859
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x85a
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"class"
	.byte	0x1
	.value	0x85b
	.long	0x45d
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x39
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x88a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF36
	.byte	0x1
	.value	0x88b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x7901
	.string	"omit_one_operand"
	.byte	0x1
	.value	0x8ad
	.byte	0x1
	.long	0x1e7
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x8ac
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x8ac
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"omitted"
	.byte	0x1
	.value	0x8ac
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x8ae
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x7973
	.string	"pedantic_omit_one_operand"
	.byte	0x1
	.value	0x8bb
	.byte	0x1
	.long	0x1e7
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x8ba
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF30
	.byte	0x1
	.value	0x8ba
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"omitted"
	.byte	0x1
	.value	0x8ba
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x8bc
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x79dd
	.byte	0x1
	.string	"invert_truthvalue"
	.byte	0x1
	.value	0x8cb
	.byte	0x1
	.long	0x1e7
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x8ca
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x8cc
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x8cd
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9ef8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14901
	.byte	0x0
	.uleb128 0x3b
	.long	0x7a77
	.string	"distribute_bit_expr"
	.byte	0x1
	.value	0x945
	.byte	0x1
	.long	0x1e7
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x942
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x943
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0x944
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0x944
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x946
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"left"
	.byte	0x1
	.value	0x947
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"right"
	.byte	0x1
	.value	0x947
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x7b07
	.string	"make_bit_field_ref"
	.byte	0x1
	.value	0x977
	.byte	0x1
	.long	0x1e7
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x32
	.string	"inner"
	.byte	0x1
	.value	0x973
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x974
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"bitsize"
	.byte	0x1
	.value	0x975
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"bitpos"
	.byte	0x1
	.value	0x975
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0x976
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0x978
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	0x7d28
	.string	"optimize_bit_field_compare"
	.byte	0x1
	.value	0x999
	.byte	0x1
	.long	0x1e7
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x996
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"compare_type"
	.byte	0x1
	.value	0x997
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"lhs"
	.byte	0x1
	.value	0x998
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"rhs"
	.byte	0x1
	.value	0x998
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"lbitpos"
	.byte	0x1
	.value	0x99a
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"lbitsize"
	.byte	0x1
	.value	0x99a
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"rbitpos"
	.byte	0x1
	.value	0x99a
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"rbitsize"
	.byte	0x1
	.value	0x99a
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.string	"nbitpos"
	.byte	0x1
	.value	0x99a
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"nbitsize"
	.byte	0x1
	.value	0x99a
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x99b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF32
	.byte	0x1
	.value	0x99c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0x99c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"const_p"
	.byte	0x1
	.value	0x99d
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"lmode"
	.byte	0x1
	.value	0x99e
	.long	0x8c3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"rmode"
	.byte	0x1
	.value	0x99e
	.long	0x8c3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"nmode"
	.byte	0x1
	.value	0x99e
	.long	0x8c3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"lunsignedp"
	.byte	0x1
	.value	0x99f
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"runsignedp"
	.byte	0x1
	.value	0x99f
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"lvolatilep"
	.byte	0x1
	.value	0x9a0
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"rvolatilep"
	.byte	0x1
	.value	0x9a0
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"linner"
	.byte	0x1
	.value	0x9a1
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"rinner"
	.byte	0x1
	.value	0x9a1
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0x9a2
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0x9a3
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x39
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xa06
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x7e53
	.string	"decode_field_reference"
	.byte	0x1
	.value	0xa4e
	.byte	0x1
	.long	0x1e7
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa48
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"pbitsize"
	.byte	0x1
	.value	0xa49
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"pbitpos"
	.byte	0x1
	.value	0xa49
	.long	0x6377
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"pmode"
	.byte	0x1
	.value	0xa4a
	.long	0x7e53
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"punsignedp"
	.byte	0x1
	.value	0xa4b
	.long	0x881
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.string	"pvolatilep"
	.byte	0x1
	.value	0xa4b
	.long	0x881
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.string	"pmask"
	.byte	0x1
	.value	0xa4c
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.string	"pand_mask"
	.byte	0x1
	.value	0xa4d
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x33
	.string	"and_mask"
	.byte	0x1
	.value	0xa4f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0xa50
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"inner"
	.byte	0x1
	.value	0xa50
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0xa50
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0xa51
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF25
	.byte	0x1
	.value	0xa52
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8c3
	.uleb128 0x3b
	.long	0x7ed0
	.string	"all_ones_mask_p"
	.byte	0x1
	.value	0xa87
	.byte	0x1
	.long	0x465
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0xa85
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF8
	.byte	0x1
	.value	0xa86
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0xa88
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF25
	.byte	0x1
	.value	0xa89
	.long	0x46c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"tmask"
	.byte	0x1
	.value	0xa8a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	0x7f4d
	.string	"sign_bit_p"
	.byte	0x1
	.value	0xaa2
	.byte	0x1
	.long	0x1e7
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xaa0
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0xaa1
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"lo"
	.byte	0x1
	.value	0xaa3
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"hi"
	.byte	0x1
	.value	0xaa4
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"width"
	.byte	0x1
	.value	0xaa5
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0xaa6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3b
	.long	0x7f87
	.string	"simple_operand_p"
	.byte	0x1
	.value	0xacf
	.byte	0x1
	.long	0x465
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xace
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x3b
	.long	0x805f
	.string	"range_binop"
	.byte	0x1
	.value	0xb0f
	.byte	0x1
	.long	0x1e7
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xb0b
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0xb0c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.value	0xb0d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"upper0_p"
	.byte	0x1
	.value	0xb0e
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF36
	.byte	0x1
	.value	0xb0d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.string	"upper1_p"
	.byte	0x1
	.value	0xb0e
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xb10
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0xb11
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"sgn0"
	.byte	0x1
	.value	0xb12
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"sgn1"
	.byte	0x1
	.value	0xb12
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9ee3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15537
	.byte	0x0
	.uleb128 0x3b
	.long	0x81c7
	.string	"make_range"
	.byte	0x1
	.value	0xb52
	.byte	0x1
	.long	0x1e7
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xb4f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"pin_p"
	.byte	0x1
	.value	0xb50
	.long	0x881
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"plow"
	.byte	0x1
	.value	0xb51
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"phigh"
	.byte	0x1
	.value	0xb51
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0xb53
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0xb54
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.long	.LASF36
	.byte	0x1
	.value	0xb54
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0xb54
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"orig_type"
	.byte	0x1
	.value	0xb55
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"in_p"
	.byte	0x1
	.value	0xb56
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"n_in_p"
	.byte	0x1
	.value	0xb56
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"low"
	.byte	0x1
	.value	0xb57
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0xb57
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"n_low"
	.byte	0x1
	.value	0xb57
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"n_high"
	.byte	0x1
	.value	0xb57
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.long	0x81b6
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x33
	.string	"equiv_type"
	.byte	0x1
	.value	0xc10
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"high_positive"
	.byte	0x1
	.value	0xc12
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9ece
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15630
	.byte	0x0
	.uleb128 0x3b
	.long	0x8294
	.string	"build_range_check"
	.byte	0x1
	.value	0xc5f
	.byte	0x1
	.long	0x1e7
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0xc5b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xc5c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"in_p"
	.byte	0x1
	.value	0xc5d
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"low"
	.byte	0x1
	.value	0xc5e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x36
	.long	.LASF18
	.byte	0x1
	.value	0xc5e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.string	"etype"
	.byte	0x1
	.value	0xc60
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF20
	.byte	0x1
	.value	0xc61
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x33
	.string	"lo"
	.byte	0x1
	.value	0xc81
	.long	0x4f1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"hi"
	.byte	0x1
	.value	0xc82
	.long	0x4e0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0xc83
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x83ef
	.string	"merge_ranges"
	.byte	0x1
	.value	0xcaf
	.byte	0x1
	.long	0x465
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x32
	.string	"pin_p"
	.byte	0x1
	.value	0xcab
	.long	0x881
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"plow"
	.byte	0x1
	.value	0xcac
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"phigh"
	.byte	0x1
	.value	0xcac
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"in0_p"
	.byte	0x1
	.value	0xcad
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"low0"
	.byte	0x1
	.value	0xcae
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.string	"high0"
	.byte	0x1
	.value	0xcae
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x32
	.string	"in1_p"
	.byte	0x1
	.value	0xcad
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x32
	.string	"low1"
	.byte	0x1
	.value	0xcae
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x32
	.string	"high1"
	.byte	0x1
	.value	0xcae
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x33
	.string	"no_overlap"
	.byte	0x1
	.value	0xcb0
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"subset"
	.byte	0x1
	.value	0xcb1
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"temp"
	.byte	0x1
	.value	0xcb2
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xcb3
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"in_p"
	.byte	0x1
	.value	0xcb4
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"low"
	.byte	0x1
	.value	0xcb5
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0xcb5
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"lowequal"
	.byte	0x1
	.value	0xcb6
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"highequal"
	.byte	0x1
	.value	0xcb9
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x8514
	.string	"fold_range_test"
	.byte	0x1
	.value	0xd34
	.byte	0x1
	.long	0x1e7
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xd33
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"or_op"
	.byte	0x1
	.value	0xd35
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"in0_p"
	.byte	0x1
	.value	0xd37
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"in1_p"
	.byte	0x1
	.value	0xd37
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"in_p"
	.byte	0x1
	.value	0xd37
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"low0"
	.byte	0x1
	.value	0xd38
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"low1"
	.byte	0x1
	.value	0xd38
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"low"
	.byte	0x1
	.value	0xd38
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"high0"
	.byte	0x1
	.value	0xd38
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"high1"
	.byte	0x1
	.value	0xd38
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0xd38
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"lhs"
	.byte	0x1
	.value	0xd39
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"rhs"
	.byte	0x1
	.value	0xd3a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0xd3b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0xd64
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x85a2
	.string	"unextend"
	.byte	0x1
	.value	0xd80
	.byte	0x1
	.long	0x1e7
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.value	0xd7c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xd7d
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF41
	.byte	0x1
	.value	0xd7e
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF42
	.byte	0x1
	.value	0xd7f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0xd81
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"modesize"
	.byte	0x1
	.value	0xd82
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"temp"
	.byte	0x1
	.value	0xd83
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x8b01
	.string	"fold_truthop"
	.byte	0x1
	.value	0xdbe
	.byte	0x1
	.long	0x1e7
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xdbc
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"truth_type"
	.byte	0x1
	.value	0xdbd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"lhs"
	.byte	0x1
	.value	0xdbd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"rhs"
	.byte	0x1
	.value	0xdbd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"wanted_code"
	.byte	0x1
	.value	0xdc8
	.long	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"lcode"
	.byte	0x1
	.value	0xdc9
	.long	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x33
	.string	"rcode"
	.byte	0x1
	.value	0xdc9
	.long	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"ll_arg"
	.byte	0x1
	.value	0xdca
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x33
	.string	"lr_arg"
	.byte	0x1
	.value	0xdca
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"rl_arg"
	.byte	0x1
	.value	0xdca
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.string	"rr_arg"
	.byte	0x1
	.value	0xdca
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"ll_inner"
	.byte	0x1
	.value	0xdcb
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.string	"lr_inner"
	.byte	0x1
	.value	0xdcb
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"rl_inner"
	.byte	0x1
	.value	0xdcb
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.string	"rr_inner"
	.byte	0x1
	.value	0xdcb
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"ll_bitsize"
	.byte	0x1
	.value	0xdcc
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x33
	.string	"ll_bitpos"
	.byte	0x1
	.value	0xdcc
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x33
	.string	"lr_bitsize"
	.byte	0x1
	.value	0xdcc
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x33
	.string	"lr_bitpos"
	.byte	0x1
	.value	0xdcc
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x33
	.string	"rl_bitsize"
	.byte	0x1
	.value	0xdcd
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x33
	.string	"rl_bitpos"
	.byte	0x1
	.value	0xdcd
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x33
	.string	"rr_bitsize"
	.byte	0x1
	.value	0xdcd
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x33
	.string	"rr_bitpos"
	.byte	0x1
	.value	0xdcd
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x33
	.string	"xll_bitpos"
	.byte	0x1
	.value	0xdce
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x33
	.string	"xlr_bitpos"
	.byte	0x1
	.value	0xdce
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x33
	.string	"xrl_bitpos"
	.byte	0x1
	.value	0xdce
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x33
	.string	"xrr_bitpos"
	.byte	0x1
	.value	0xdce
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x33
	.string	"lnbitsize"
	.byte	0x1
	.value	0xdcf
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.string	"lnbitpos"
	.byte	0x1
	.value	0xdcf
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x33
	.string	"rnbitsize"
	.byte	0x1
	.value	0xdcf
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x33
	.string	"rnbitpos"
	.byte	0x1
	.value	0xdcf
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.string	"ll_unsignedp"
	.byte	0x1
	.value	0xdd0
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x33
	.string	"lr_unsignedp"
	.byte	0x1
	.value	0xdd0
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.string	"rl_unsignedp"
	.byte	0x1
	.value	0xdd0
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x33
	.string	"rr_unsignedp"
	.byte	0x1
	.value	0xdd0
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x33
	.string	"ll_mode"
	.byte	0x1
	.value	0xdd1
	.long	0x8c3
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x33
	.string	"lr_mode"
	.byte	0x1
	.value	0xdd1
	.long	0x8c3
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.string	"rl_mode"
	.byte	0x1
	.value	0xdd1
	.long	0x8c3
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x33
	.string	"rr_mode"
	.byte	0x1
	.value	0xdd1
	.long	0x8c3
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.string	"lnmode"
	.byte	0x1
	.value	0xdd2
	.long	0x8c3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"rnmode"
	.byte	0x1
	.value	0xdd2
	.long	0x8c3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"ll_mask"
	.byte	0x1
	.value	0xdd3
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x33
	.string	"lr_mask"
	.byte	0x1
	.value	0xdd3
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x33
	.string	"rl_mask"
	.byte	0x1
	.value	0xdd3
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x33
	.string	"rr_mask"
	.byte	0x1
	.value	0xdd3
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x33
	.string	"ll_and_mask"
	.byte	0x1
	.value	0xdd4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x33
	.string	"lr_and_mask"
	.byte	0x1
	.value	0xdd4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x33
	.string	"rl_and_mask"
	.byte	0x1
	.value	0xdd4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x33
	.string	"rr_and_mask"
	.byte	0x1
	.value	0xdd4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.string	"l_const"
	.byte	0x1
	.value	0xdd5
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"r_const"
	.byte	0x1
	.value	0xdd5
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"lntype"
	.byte	0x1
	.value	0xdd6
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"rntype"
	.byte	0x1
	.value	0xdd6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF30
	.byte	0x1
	.value	0xdd6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"first_bit"
	.byte	0x1
	.value	0xdd7
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"end_bit"
	.byte	0x1
	.value	0xdd7
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"volatilep"
	.byte	0x1
	.value	0xdd8
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x38
	.long	0x8ae7
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x33
	.string	"compcode"
	.byte	0x1
	.value	0xdfa
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	0x8abe
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x34
	.long	.LASF43
	.byte	0x1
	.value	0xdff
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF44
	.byte	0x1
	.value	0xdff
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x39
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x34
	.long	.LASF43
	.byte	0x1
	.value	0xe0a
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF44
	.byte	0x1
	.value	0xe0a
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0xf13
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8be0
	.string	"optimize_minmax_comparison"
	.byte	0x1
	.value	0xf67
	.byte	0x1
	.long	0x1e7
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0xf66
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0xf68
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0xf69
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"op_code"
	.byte	0x1
	.value	0xf6a
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"comp_const"
	.byte	0x1
	.value	0xf6b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"minmax_const"
	.byte	0x1
	.value	0xf6c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"consts_equal"
	.byte	0x1
	.value	0xf6d
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"consts_lt"
	.byte	0x1
	.value	0xf6d
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"inner"
	.byte	0x1
	.value	0xf6e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	0x8c64
	.string	"extract_muldiv"
	.byte	0x1
	.value	0xfda
	.byte	0x1
	.long	0x1e7
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0xfd6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.value	0xfd7
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xfd8
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF45
	.byte	0x1
	.value	0xfd9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.value	0xfe1
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"depth"
	.byte	0x1
	.value	0xfe0
	.long	0x465
	.byte	0x5
	.byte	0x3
	.long	depth.16991
	.byte	0x0
	.uleb128 0x3b
	.long	0x8d44
	.string	"extract_muldiv_1"
	.byte	0x1
	.value	0xff3
	.byte	0x1
	.long	0x1e7
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0xfef
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"c"
	.byte	0x1
	.value	0xff0
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xff1
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF45
	.byte	0x1
	.value	0xff2
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0xff4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"tcode"
	.byte	0x1
	.value	0xff5
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"ctype"
	.byte	0x1
	.value	0xff6
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"t1"
	.byte	0x1
	.value	0xff9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"t2"
	.byte	0x1
	.value	0xff9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"same_p"
	.byte	0x1
	.value	0xffa
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0xffb
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0xffb
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x3b
	.long	0x8d9b
	.string	"strip_compound_expr"
	.byte	0x1
	.value	0x110f
	.byte	0x1
	.long	0x1e7
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x110d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x110e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x1110
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x8e00
	.string	"constant_boolean_node"
	.byte	0x1
	.value	0x1132
	.byte	0x1
	.long	0x1e7
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x36
	.long	.LASF20
	.byte	0x1
	.value	0x1130
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x1131
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x113a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x8e67
	.string	"count_cond"
	.byte	0x1
	.value	0x1149
	.byte	0x1
	.long	0x465
	.long	.LFB71
	.long	.LFE71
	.long	.LLST56
	.uleb128 0x32
	.string	"expr"
	.byte	0x1
	.value	0x1147
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"lim"
	.byte	0x1
	.value	0x1148
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"ctrue"
	.byte	0x1
	.value	0x114a
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.string	"cfalse"
	.byte	0x1
	.value	0x114a
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3b
	.long	0x9028
	.string	"fold_binary_op_with_conditional_arg"
	.byte	0x1
	.value	0x1165
	.byte	0x1
	.long	0x1e7
	.long	.LFB72
	.long	.LFE72
	.long	.LLST57
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x1160
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x1161
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"cond"
	.byte	0x1
	.value	0x1162
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x1163
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.string	"cond_first_p"
	.byte	0x1
	.value	0x1164
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.string	"test"
	.byte	0x1
	.value	0x1166
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"true_value"
	.byte	0x1
	.value	0x1166
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"false_value"
	.byte	0x1
	.value	0x1166
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"lhs"
	.byte	0x1
	.value	0x1167
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"rhs"
	.byte	0x1
	.value	0x1168
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"true_lhs"
	.byte	0x1
	.value	0x1171
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"true_rhs"
	.byte	0x1
	.value	0x1172
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"false_lhs"
	.byte	0x1
	.value	0x1173
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"false_rhs"
	.byte	0x1
	.value	0x1174
	.long	0x5419
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"lhs_code"
	.byte	0x1
	.value	0x1177
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"rhs_code"
	.byte	0x1
	.value	0x1178
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"lhs_type"
	.byte	0x1
	.value	0x117a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"rhs_type"
	.byte	0x1
	.value	0x117b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"save"
	.byte	0x1
	.value	0x117c
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.string	"testtype"
	.byte	0x1
	.value	0x11ab
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x908f
	.string	"fold_real_zero_addition_p"
	.byte	0x1
	.value	0x11f6
	.byte	0x1
	.long	0x53ec
	.long	.LFB73
	.long	.LFE73
	.long	.LLST58
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x11f4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"addend"
	.byte	0x1
	.value	0x11f4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"negate"
	.byte	0x1
	.value	0x11f5
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0x9d74
	.byte	0x1
	.string	"fold"
	.byte	0x1
	.value	0x121b
	.byte	0x1
	.long	0x1e7
	.long	.LFB74
	.long	.LFE74
	.long	.LLST59
	.uleb128 0x32
	.string	"expr"
	.byte	0x1
	.value	0x121a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x121c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x33
	.string	"orig_t"
	.byte	0x1
	.value	0x121c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x33
	.string	"t1"
	.byte	0x1
	.value	0x121d
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0x121e
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x121f
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x34
	.long	.LASF40
	.byte	0x1
	.value	0x1220
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x34
	.long	.LASF36
	.byte	0x1
	.value	0x1220
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x34
	.long	.LASF0
	.byte	0x1
	.value	0x1221
	.long	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x33
	.string	"kind"
	.byte	0x1
	.value	0x1222
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x33
	.string	"invert"
	.byte	0x1
	.value	0x1223
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x33
	.string	"wins"
	.byte	0x1
	.value	0x1226
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x37
	.string	"bit_ior"
	.byte	0x1
	.value	0x15e0
	.long	.L2020
	.uleb128 0x37
	.string	"bit_rotate"
	.byte	0x1
	.value	0x15fa
	.long	.L2299
	.uleb128 0x37
	.string	"associate"
	.byte	0x1
	.value	0x15a1
	.long	.L2306
	.uleb128 0x37
	.string	"binary"
	.byte	0x1
	.value	0x1648
	.long	.L2377
	.uleb128 0x37
	.string	"bit_and"
	.byte	0x1
	.value	0x1646
	.long	.L2022
	.uleb128 0x37
	.string	"truth_andor"
	.byte	0x1
	.value	0x1775
	.long	.L2628
	.uleb128 0x38
	.long	0x91fb
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.string	"subop"
	.byte	0x1
	.value	0x1238
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -456
	.byte	0x0
	.uleb128 0x38
	.long	0x9252
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x1250
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1251
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x39
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0x1254
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x33
	.string	"subop"
	.byte	0x1
	.value	0x1255
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -440
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9284
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x33
	.string	"arg01"
	.byte	0x1
	.value	0x12b6
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x33
	.string	"arg02"
	.byte	0x1
	.value	0x12b7
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -432
	.byte	0x0
	.uleb128 0x38
	.long	0x9442
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x33
	.string	"inside_type"
	.byte	0x1
	.value	0x1329
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x33
	.string	"inter_type"
	.byte	0x1
	.value	0x132a
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x33
	.string	"final_type"
	.byte	0x1
	.value	0x132b
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x33
	.string	"inside_int"
	.byte	0x1
	.value	0x132c
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x33
	.string	"inside_ptr"
	.byte	0x1
	.value	0x132d
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x33
	.string	"inside_float"
	.byte	0x1
	.value	0x132e
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x33
	.string	"inside_prec"
	.byte	0x1
	.value	0x132f
	.long	0x46c
	.byte	0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x33
	.string	"inside_unsignedp"
	.byte	0x1
	.value	0x1330
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x33
	.string	"inter_int"
	.byte	0x1
	.value	0x1331
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x33
	.string	"inter_ptr"
	.byte	0x1
	.value	0x1332
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x33
	.string	"inter_float"
	.byte	0x1
	.value	0x1333
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x33
	.string	"inter_prec"
	.byte	0x1
	.value	0x1334
	.long	0x46c
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x33
	.string	"inter_unsignedp"
	.byte	0x1
	.value	0x1335
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x33
	.string	"final_int"
	.byte	0x1
	.value	0x1336
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x33
	.string	"final_ptr"
	.byte	0x1
	.value	0x1337
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x33
	.string	"final_float"
	.byte	0x1
	.value	0x1338
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x33
	.string	"final_prec"
	.byte	0x1
	.value	0x1339
	.long	0x46c
	.byte	0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x33
	.string	"final_unsignedp"
	.byte	0x1
	.value	0x133a
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.byte	0x0
	.uleb128 0x38
	.long	0x9461
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x33
	.string	"prev"
	.byte	0x1
	.value	0x137c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.byte	0x0
	.uleb128 0x38
	.long	0x94e8
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x33
	.string	"and"
	.byte	0x1
	.value	0x138e
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x33
	.string	"and0"
	.byte	0x1
	.value	0x138f
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x33
	.string	"and1"
	.byte	0x1
	.value	0x138f
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x33
	.string	"change"
	.byte	0x1
	.value	0x1390
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x39
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x33
	.string	"cst"
	.byte	0x1
	.value	0x139a
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x39
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x33
	.string	"uns"
	.byte	0x1
	.value	0x13a5
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9504
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x33
	.string	"m"
	.byte	0x1
	.value	0x13c6
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.byte	0x0
	.uleb128 0x38
	.long	0x9542
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x33
	.string	"low"
	.byte	0x1
	.value	0x13da
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0x13db
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x34
	.long	.LASF34
	.byte	0x1
	.value	0x13dc
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.byte	0x0
	.uleb128 0x38
	.long	0x9580
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x33
	.string	"low"
	.byte	0x1
	.value	0x1409
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x34
	.long	.LASF18
	.byte	0x1
	.value	0x140a
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x34
	.long	.LASF34
	.byte	0x1
	.value	0x140b
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.byte	0x0
	.uleb128 0x38
	.long	0x95d4
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x33
	.string	"parg0"
	.byte	0x1
	.value	0x146c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x33
	.string	"parg1"
	.byte	0x1
	.value	0x146c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x33
	.string	"parg"
	.byte	0x1
	.value	0x146c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x33
	.string	"marg"
	.byte	0x1
	.value	0x146c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.byte	0x0
	.uleb128 0x38
	.long	0x969b
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x33
	.string	"arg00"
	.byte	0x1
	.value	0x1485
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x33
	.string	"arg01"
	.byte	0x1
	.value	0x1485
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x33
	.string	"arg10"
	.byte	0x1
	.value	0x1485
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x33
	.string	"arg11"
	.byte	0x1
	.value	0x1485
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x33
	.string	"alt0"
	.byte	0x1
	.value	0x1486
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x33
	.string	"alt1"
	.byte	0x1
	.value	0x1486
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x33
	.string	"same"
	.byte	0x1
	.value	0x1486
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x39
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x33
	.string	"int01"
	.byte	0x1
	.value	0x14a4
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x33
	.string	"int11"
	.byte	0x1
	.value	0x14a4
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0x14a4
	.long	0x4e0
	.byte	0x3
	.byte	0x91
	.sleb128 -552
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x978b
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x33
	.string	"code0"
	.byte	0x1
	.value	0x14cf
	.long	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x33
	.string	"code1"
	.byte	0x1
	.value	0x14cf
	.long	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x39
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x33
	.string	"tree01"
	.byte	0x1
	.value	0x14d8
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x33
	.string	"tree11"
	.byte	0x1
	.value	0x14d8
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x33
	.string	"code01"
	.byte	0x1
	.value	0x14d9
	.long	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x33
	.string	"code11"
	.byte	0x1
	.value	0x14d9
	.long	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x38
	.long	0x9757
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x33
	.string	"tree110"
	.byte	0x1
	.value	0x14eb
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x33
	.string	"tree111"
	.byte	0x1
	.value	0x14eb
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.byte	0x0
	.uleb128 0x39
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x33
	.string	"tree010"
	.byte	0x1
	.value	0x14fd
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x33
	.string	"tree011"
	.byte	0x1
	.value	0x14fd
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x982d
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x33
	.string	"var0"
	.byte	0x1
	.value	0x151b
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x33
	.string	"con0"
	.byte	0x1
	.value	0x151b
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x33
	.string	"lit0"
	.byte	0x1
	.value	0x151b
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -508
	.uleb128 0x33
	.string	"minus_lit0"
	.byte	0x1
	.value	0x151b
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x33
	.string	"var1"
	.byte	0x1
	.value	0x151c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.string	"con1"
	.byte	0x1
	.value	0x151c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x33
	.string	"lit1"
	.byte	0x1
	.value	0x151c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x33
	.string	"minus_lit1"
	.byte	0x1
	.value	0x151c
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -516
	.byte	0x0
	.uleb128 0x38
	.long	0x984b
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x15d9
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -228
	.byte	0x0
	.uleb128 0x38
	.long	0x9869
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x34
	.long	.LASF35
	.byte	0x1
	.value	0x1623
	.long	0x46c
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.byte	0x0
	.uleb128 0x38
	.long	0x9885
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x166a
	.long	0x40a1
	.byte	0x3
	.byte	0x91
	.sleb128 -712
	.byte	0x0
	.uleb128 0x38
	.long	0x98eb
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x33
	.string	"a00"
	.byte	0x1
	.value	0x1730
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x33
	.string	"a01"
	.byte	0x1
	.value	0x1731
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x33
	.string	"a10"
	.byte	0x1
	.value	0x1732
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x33
	.string	"a11"
	.byte	0x1
	.value	0x1733
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.string	"commutative"
	.byte	0x1
	.value	0x1734
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.byte	0x0
	.uleb128 0x38
	.long	0x9a22
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x33
	.string	"constop"
	.byte	0x1
	.value	0x17c4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x33
	.string	"varop"
	.byte	0x1
	.value	0x17c4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x33
	.string	"constopnum"
	.byte	0x1
	.value	0x17c5
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x38
	.long	0x99ad
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x34
	.long	.LASF46
	.byte	0x1
	.value	0x17d6
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x39
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x34
	.long	.LASF8
	.byte	0x1
	.value	0x17e9
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0x17ed
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0x17ed
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.long	.LASF25
	.byte	0x1
	.value	0x17ee
	.long	0x46c
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x17ef
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x34
	.long	.LASF46
	.byte	0x1
	.value	0x1818
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x39
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x34
	.long	.LASF8
	.byte	0x1
	.value	0x1829
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x34
	.long	.LASF42
	.byte	0x1
	.value	0x182d
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x34
	.long	.LASF31
	.byte	0x1
	.value	0x182d
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x34
	.long	.LASF25
	.byte	0x1
	.value	0x182e
	.long	0x46c
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x34
	.long	.LASF47
	.byte	0x1
	.value	0x182f
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9aad
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x33
	.string	"width"
	.byte	0x1
	.value	0x186e
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x39
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x33
	.string	"signed_max"
	.byte	0x1
	.value	0x1876
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x33
	.string	"max"
	.byte	0x1
	.value	0x1877
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x33
	.string	"min"
	.byte	0x1
	.value	0x1877
	.long	0x4f1
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x39
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x33
	.string	"st0"
	.byte	0x1
	.value	0x18ef
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.string	"st1"
	.byte	0x1
	.value	0x18ef
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9ae2
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x33
	.string	"newtype"
	.byte	0x1
	.value	0x1976
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x33
	.string	"newmod"
	.byte	0x1
	.value	0x1977
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x38
	.long	0x9b1e
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x33
	.string	"arg00"
	.byte	0x1
	.value	0x1994
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x39
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x33
	.string	"stype"
	.byte	0x1
	.value	0x1998
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9bdb
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x33
	.string	"cval1"
	.byte	0x1
	.value	0x19e4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x33
	.string	"cval2"
	.byte	0x1
	.value	0x19e4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x33
	.string	"save_p"
	.byte	0x1
	.value	0x19e5
	.long	0x465
	.byte	0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x39
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x33
	.string	"maxval"
	.byte	0x1
	.value	0x19f3
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"minval"
	.byte	0x1
	.value	0x19f4
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.string	"high_result"
	.byte	0x1
	.value	0x19f9
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"equal_result"
	.byte	0x1
	.value	0x19fd
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.string	"low_result"
	.byte	0x1
	.value	0x1a01
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9c45
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x33
	.string	"subtype"
	.byte	0x1
	.value	0x1a52
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.string	"real0"
	.byte	0x1
	.value	0x1a53
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"imag0"
	.byte	0x1
	.value	0x1a53
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"real1"
	.byte	0x1
	.value	0x1a53
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"imag1"
	.byte	0x1
	.value	0x1a53
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x38
	.long	0x9c7a
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x33
	.string	"fndecl"
	.byte	0x1
	.value	0x1a6e
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"arglist"
	.byte	0x1
	.value	0x1a6f
	.long	0x1e7
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x38
	.long	0x9cf4
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x33
	.string	"arg2"
	.byte	0x1
	.value	0x1b04
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"comp_code"
	.byte	0x1
	.value	0x1b05
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x39
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x33
	.string	"comp_op0"
	.byte	0x1
	.value	0x1b6c
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"comp_op1"
	.byte	0x1
	.value	0x1b6d
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"comp_type"
	.byte	0x1
	.value	0x1b6e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x9d46
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x33
	.string	"code0"
	.byte	0x1
	.value	0x1c58
	.long	0x1677
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"kind0"
	.byte	0x1
	.value	0x1c59
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"arg00"
	.byte	0x1
	.value	0x1c5a
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"arg01"
	.byte	0x1
	.value	0x1c5b
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x38
	.long	0x9d63
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0x1c81
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3a
	.long	.LASF39
	.long	0x9eb9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.17815
	.byte	0x0
	.uleb128 0x3b
	.long	0x9df3
	.string	"multiple_of_p"
	.byte	0x1
	.value	0x1d81
	.byte	0x1
	.long	0x465
	.long	.LFB75
	.long	.LFE75
	.long	.LLST60
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x1d7e
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"top"
	.byte	0x1
	.value	0x1d7f
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"bottom"
	.byte	0x1
	.value	0x1d80
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x1d96
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"t1"
	.byte	0x1
	.value	0x1d96
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x9e33
	.byte	0x1
	.string	"tree_expr_nonnegative_p"
	.byte	0x1
	.value	0x1dc5
	.byte	0x1
	.long	0x465
	.long	.LFB76
	.long	.LFE76
	.long	.LLST61
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x1dc4
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x9ea9
	.byte	0x1
	.string	"rtl_expr_nonnegative_p"
	.byte	0x1
	.value	0x1dfe
	.byte	0x1
	.long	0x465
	.long	.LFB77
	.long	.LFE77
	.long	.LLST62
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0x1dfd
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x33
	.string	"units"
	.byte	0x1
	.value	0x1e0b
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1e0b
	.long	0x465
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0x1e0c
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x9eb9
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0x4
	.byte	0x0
	.uleb128 0xd
	.long	0x9ea9
	.uleb128 0x16
	.long	0x9ece
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0xa
	.byte	0x0
	.uleb128 0xd
	.long	0x9ebe
	.uleb128 0x16
	.long	0x9ee3
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0xb
	.byte	0x0
	.uleb128 0xd
	.long	0x9ed3
	.uleb128 0x16
	.long	0x9ef8
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0x11
	.byte	0x0
	.uleb128 0xd
	.long	0x9ee8
	.uleb128 0x16
	.long	0x9f0d
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0x16
	.byte	0x0
	.uleb128 0xd
	.long	0x9efd
	.uleb128 0xd
	.long	0x9efd
	.uleb128 0x16
	.long	0x9f27
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x9f17
	.uleb128 0xd
	.long	0x9efd
	.uleb128 0xd
	.long	0x9ed3
	.uleb128 0xd
	.long	0x9ebe
	.uleb128 0xd
	.long	0x9ed3
	.uleb128 0x16
	.long	0x9f50
	.long	0x45d
	.uleb128 0x17
	.long	0x473
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.long	0x9f40
	.uleb128 0xd
	.long	0x9f17
	.uleb128 0x33
	.string	"new_const"
	.byte	0x1
	.value	0x573
	.long	0x1e7
	.byte	0x5
	.byte	0x3
	.long	new_const
	.uleb128 0x33
	.string	"size_htab"
	.byte	0x1
	.value	0x575
	.long	0x5740
	.byte	0x5
	.byte	0x3
	.long	size_htab
	.uleb128 0x3c
	.string	"target_flags"
	.byte	0xd
	.byte	0x21
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"mips_tune"
	.byte	0xd
	.byte	0xa4
	.long	0x2d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"optimize"
	.byte	0xe
	.byte	0x41
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"pedantic"
	.byte	0xe
	.byte	0xe3
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_unsafe_math_optimizations"
	.byte	0xe
	.value	0x171
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_finite_math_only"
	.byte	0xe
	.value	0x175
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_honor_shift"
	.byte	0xe
	.value	0x273
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_signaling_nans"
	.byte	0xe
	.value	0x2b8
	.long	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0xa069
	.long	0xb0c
	.uleb128 0x17
	.long	0x473
	.byte	0x35
	.byte	0x0
	.uleb128 0x3e
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.long	0xa076
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xa059
	.uleb128 0x16
	.long	0xa08b
	.long	0x488
	.uleb128 0x17
	.long	0x473
	.byte	0x35
	.byte	0x0
	.uleb128 0x3c
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0xa09e
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xa07b
	.uleb128 0x16
	.long	0xa0b3
	.long	0x499
	.uleb128 0x17
	.long	0x473
	.byte	0x35
	.byte	0x0
	.uleb128 0x3c
	.string	"mode_bitsize"
	.byte	0x5
	.byte	0x69
	.long	0xa0c9
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xa0a3
	.uleb128 0x3c
	.string	"word_mode"
	.byte	0x5
	.byte	0xad
	.long	0x8c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0xa0ec
	.long	0x45d
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x3c
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0xa104
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xa0e1
	.uleb128 0x16
	.long	0xa114
	.long	0x488
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x3c
	.string	"tree_code_length"
	.byte	0x3
	.byte	0x4e
	.long	0xa12e
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xa109
	.uleb128 0x16
	.long	0xa143
	.long	0x1e7
	.uleb128 0x17
	.long	0x473
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3d
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0xa133
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0xa16a
	.long	0x1e7
	.uleb128 0x17
	.long	0x473
	.byte	0xa
	.byte	0x0
	.uleb128 0x3d
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0xa15a
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0xa192
	.long	0x1e7
	.uleb128 0x17
	.long	0x473
	.byte	0x5
	.byte	0x0
	.uleb128 0x3d
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xb10
	.long	0xa182
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"pedantic_lvalues"
	.byte	0x1
	.value	0x67d
	.long	0x465
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pedantic_lvalues
	.uleb128 0x3d
	.string	"dconst0"
	.byte	0x6
	.value	0x14d
	.long	0x40a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"dconst1"
	.byte	0x6
	.value	0x14e
	.long	0x40a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"htab_hash_pointer"
	.byte	0xa
	.byte	0xa0
	.long	0x56bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.long	.LASF33
	.byte	0xf
	.value	0x176
	.long	0xa216
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x5e0d
	.uleb128 0x16
	.long	0xa22b
	.long	0x54ff
	.uleb128 0x17
	.long	0x473
	.byte	0x1
	.byte	0x0
	.uleb128 0x42
	.string	"gt_ggc_r_gt_fold_const_h"
	.byte	0x13
	.byte	0x19
	.long	0xa252
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_fold_const_h
	.uleb128 0xd
	.long	0xa21b
	.uleb128 0x16
	.long	0xa267
	.long	0x5551
	.uleb128 0x17
	.long	0x473
	.byte	0x1
	.byte	0x0
	.uleb128 0x42
	.string	"gt_ggc_rc_gt_fold_const_h"
	.byte	0x13
	.byte	0x24
	.long	0xa28f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_rc_gt_fold_const_h
	.uleb128 0xd
	.long	0xa257
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x17
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x24
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x25
	.uleb128 0x17
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
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3f
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1da
	.value	0x2
	.long	.Ldebug_info0
	.long	0xa295
	.long	0x63ca
	.string	"force_fit_type"
	.long	0x6437
	.string	"add_double"
	.long	0x64cb
	.string	"neg_double"
	.long	0x6529
	.string	"mul_double"
	.long	0x667d
	.string	"lshift_double"
	.long	0x6718
	.string	"rshift_double"
	.long	0x67b3
	.string	"lrotate_double"
	.long	0x686d
	.string	"rrotate_double"
	.long	0x6927
	.string	"div_and_round_double"
	.long	0x7131
	.string	"size_int_wide"
	.long	0x717c
	.string	"size_int_type_wide"
	.long	0x71f2
	.string	"size_binop"
	.long	0x7264
	.string	"size_diffop"
	.long	0x73c1
	.string	"non_lvalue"
	.long	0x7403
	.string	"pedantic_non_lvalue"
	.long	0x75b4
	.string	"operand_equal_p"
	.long	0x7973
	.string	"invert_truthvalue"
	.long	0x908f
	.string	"fold"
	.long	0x9df3
	.string	"tree_expr_nonnegative_p"
	.long	0x9e33
	.string	"rtl_expr_nonnegative_p"
	.long	0xa1a9
	.string	"pedantic_lvalues"
	.long	0xa22b
	.string	"gt_ggc_r_gt_fold_const_h"
	.long	0xa267
	.string	"gt_ggc_rc_gt_fold_const_h"
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
.LASF34:
	.string	"overflow"
.LASF37:
	.string	"count"
.LASF38:
	.string	"signmask"
.LASF30:
	.string	"result"
.LASF44:
	.string	"rcompcode"
.LASF18:
	.string	"high"
.LASF10:
	.string	"lang_flag_0"
.LASF11:
	.string	"lang_flag_1"
.LASF12:
	.string	"lang_flag_2"
.LASF16:
	.string	"lang_flag_6"
.LASF8:
	.string	"size"
.LASF6:
	.string	"mem_attrs"
.LASF32:
	.string	"signed_type"
.LASF1:
	.string	"common"
.LASF28:
	.string	"lang_specific"
.LASF13:
	.string	"lang_flag_3"
.LASF29:
	.string	"function"
.LASF3:
	.string	"unsigned int"
.LASF22:
	.string	"abstract_origin"
.LASF45:
	.string	"wide_type"
.LASF26:
	.string	"pointer_depth"
.LASF27:
	.string	"user_align"
.LASF23:
	.string	"size_unit"
.LASF2:
	.string	"type"
.LASF47:
	.string	"folded_compare"
.LASF20:
	.string	"value"
.LASF43:
	.string	"lcompcode"
.LASF25:
	.string	"precision"
.LASF31:
	.string	"unsigned_type"
.LASF14:
	.string	"lang_flag_4"
.LASF15:
	.string	"lang_flag_5"
.LASF17:
	.string	"lang_flag_7"
.LASF21:
	.string	"abstract_flag"
.LASF35:
	.string	"prec"
.LASF0:
	.string	"code"
.LASF33:
	.string	"lang_hooks"
.LASF5:
	.string	"mode_class"
.LASF41:
	.string	"unsignedp"
.LASF19:
	.string	"ht_identifier"
.LASF7:
	.string	"offset"
.LASF42:
	.string	"mask"
.LASF39:
	.string	"__FUNCTION__"
.LASF9:
	.string	"built_in_class"
.LASF46:
	.string	"newconst"
.LASF4:
	.string	"_IO_FILE"
.LASF24:
	.string	"attributes"
.LASF40:
	.string	"arg0"
.LASF36:
	.string	"arg1"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
.globl __i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl	(%esp), %ecx
	ret
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
