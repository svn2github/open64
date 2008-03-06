	.file	"make_depend.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	""
	.text
	.type	MDfile_init, @function
MDfile_init:
.LFB15:
	.file 1 "../../libcmplrs/make_depend.c"
	.loc 1 173 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 174 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 175 0
	movl	8(%ebp), %edx
	leal	.LC0@GOTOFF(%ecx), %eax
	movl	%eax, 4(%edx)
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 177 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 178 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 179 0
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
	.loc 1 180 0
	popl	%ebp
	ret
.LFE15:
	.size	MDfile_init, .-MDfile_init
	.section	.rodata
.LC1:
	.string	" \n"
	.text
	.type	MDtoolcmp, @function
MDtoolcmp:
.LFB16:
	.loc 1 193 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$36, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 197 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strpbrk@PLT
	movl	%eax, -12(%ebp)
	.loc 1 198 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 200 0
	cmpl	$0, -12(%ebp)
	je	.L4
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L6
.L4:
	movl	$-1, -24(%ebp)
	jmp	.L7
.L6:
	.loc 1 202 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	movl	%eax, -24(%ebp)
.L7:
	movl	-24(%ebp), %eax
	.loc 1 203 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	MDtoolcmp, .-MDtoolcmp
	.section	.rodata
.LC2:
	.string	": "
	.text
	.type	MDtargcmp, @function
MDtargcmp:
.LFB17:
	.loc 1 216 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$36, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 220 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strpbrk@PLT
	movl	%eax, -12(%ebp)
	.loc 1 221 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 223 0
	cmpl	$0, -12(%ebp)
	je	.L10
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L12
.L10:
	movl	$-1, -24(%ebp)
	jmp	.L13
.L12:
	.loc 1 225 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	movl	%eax, -24(%ebp)
.L13:
	movl	-24(%ebp), %eax
	.loc 1 226 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	MDtargcmp, .-MDtargcmp
.globl MDnewstab
	.type	MDnewstab, @function
MDnewstab:
.LFB18:
	.loc 1 266 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$4, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 267 0
	movl	$262144, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 268 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 269 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	leal	262144(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 270 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	MDnewstab, .-MDnewstab
	.section	.rodata
	.align 4
.LC3:
	.string	"String table overflow in MDupdate\n"
	.text
.globl MDstrcpy
	.type	MDstrcpy, @function
MDstrcpy:
.LFB19:
	.loc 1 285 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$36, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 289 0
	cmpl	$0, 12(%ebp)
	jne	.L18
	movl	$0, -24(%ebp)
	jmp	.L20
.L18:
	.loc 1 297 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 298 0
	cmpl	$511, -8(%ebp)
	jg	.L21
	.loc 1 299 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	MDnewstab@PLT
	.loc 1 300 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
.L21:
	.loc 1 306 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 307 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	36(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	memccpy@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 308 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	jne	.L23
	.loc 1 313 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 314 0
	movl	$1, (%esp)
	call	exit@PLT
.L23:
	.loc 1 317 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L20:
	movl	-24(%ebp), %eax
	.loc 1 318 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	MDstrcpy, .-MDstrcpy
	.type	MDhash, @function
MDhash:
.LFB20:
	.loc 1 328 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	subl	$20, %esp
.LCFI21:
	.loc 1 333 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -24(%ebp)
	movl	$0, %eax
	cld
	movl	-24(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 334 0
	movl	-20(%ebp), %eax
	addl	12(%ebp), %eax
	subl	$2, %eax
	movl	%eax, -16(%ebp)
	.loc 1 335 0
	cmpl	$2, -20(%ebp)
	jle	.L27
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L27
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$104, %al
	je	.L30
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$97, %al
	je	.L30
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L27
.L30:
	.loc 1 336 0
	movl	-16(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 335 0
	jmp	.L33
.L27:
	.loc 1 338 0
	movl	$0, -16(%ebp)
.L33:
	.loc 1 339 0
	movl	$0, -12(%ebp)
	jmp	.L34
.L35:
	.loc 1 340 0
	movl	-12(%ebp), %eax
	addl	%eax, %eax
	xorl	-8(%ebp), %eax
	addl	%eax, -12(%ebp)
	.loc 1 339 0
	addl	$1, 12(%ebp)
.L34:
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.L35
	.loc 1 341 0
	cmpl	$0, -16(%ebp)
	je	.L37
	.loc 1 342 0
	movl	-16(%ebp), %eax
	movb	$46, (%eax)
.L37:
	.loc 1 343 0
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	andl	-12(%ebp), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	.loc 1 344 0
	addl	$20, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	MDhash, .-MDhash
	.type	MDlookup, @function
MDlookup:
.LFB21:
	.loc 1 353 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$36, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 356 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	MDhash
	movl	%eax, -12(%ebp)
	jmp	.L41
.L42:
	.loc 1 357 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L43
	.loc 1 359 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L45
	.loc 1 360 0
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L47:
	.loc 1 362 0
	addl	$8, -12(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	cmpl	%eax, -12(%ebp)
	jbe	.L48
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
.L48:
	.loc 1 364 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L47
	.loc 1 365 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 366 0
	jmp	.L43
.L45:
	.loc 1 356 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L41:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L42
.L43:
	.loc 1 369 0
	movl	-12(%ebp), %eax
	.loc 1 370 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	MDlookup, .-MDlookup
	.section	.rodata
	.align 4
.LC4:
	.string	"can't reallocate memory for %s update"
	.text
	.type	MDgrow, @function
MDgrow:
.LFB22:
	.loc 1 377 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$52, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 382 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 383 0
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 384 0
	movl	-24(%ebp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	calloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 385 0
	cmpl	$0, -20(%ebp)
	jne	.L53
	.loc 1 386 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 387 0
	movl	$1, (%esp)
	call	exit@PLT
.L53:
	.loc 1 390 0
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	subl	%edx, %eax
	leal	(%ecx,%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 391 0
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 392 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 393 0
	movl	8(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 394 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L55
.L56:
	.loc 1 395 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L57
	.loc 1 397 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	MDlookup
	movl	%eax, -8(%ebp)
	.loc 1 398 0
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
.L57:
	.loc 1 394 0
	addl	$8, -12(%ebp)
.L55:
	subl	$1, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jns	.L56
	.loc 1 400 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 401 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	MDgrow, .-MDgrow
	.section	.rodata
	.align 4
.LC5:
	.string	"can't allocate memory for %s update"
	.text
.globl MDopen
	.type	MDopen, @function
MDopen:
.LFB23:
	.loc 1 408 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$36, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 412 0
	movl	$44, (%esp)
	call	malloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 413 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	MDnewstab@PLT
	.loc 1 414 0
	movl	$8, 4(%esp)
	movl	$256, (%esp)
	call	calloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 415 0
	cmpl	$0, -12(%ebp)
	je	.L62
	cmpl	$0, -8(%ebp)
	jne	.L64
.L62:
	.loc 1 416 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	20(%ebp), %eax
	call	*%eax
	.loc 1 417 0
	cmpl	$0, -12(%ebp)
	je	.L65
	.loc 1 418 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L65:
	.loc 1 419 0
	cmpl	$0, -8(%ebp)
	je	.L67
	.loc 1 420 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L67:
	.loc 1 421 0
	movl	$0, -24(%ebp)
	jmp	.L69
.L64:
	.loc 1 424 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	MDstrcpy@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 425 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	MDstrcpy@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 426 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	MDstrcpy@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 427 0
	movl	-12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 428 0
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 429 0
	movl	-12(%ebp), %eax
	movl	$192, 20(%eax)
	.loc 1 430 0
	movl	-12(%ebp), %eax
	movl	$255, 24(%eax)
	.loc 1 431 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 28(%edx)
	.loc 1 433 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L69:
	movl	-24(%ebp), %eax
	.loc 1 434 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	MDopen, .-MDopen
.globl MDupdate
	.type	MDupdate, @function
MDupdate:
.LFB24:
	.loc 1 441 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$36, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 444 0
	cmpl	$0, 8(%ebp)
	je	.L77
	.loc 1 446 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	MDlookup
	movl	%eax, -8(%ebp)
	.loc 1 447 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L77
	.loc 1 449 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L75
	.loc 1 450 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	MDgrow
	.loc 1 451 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	MDlookup
	movl	%eax, -8(%ebp)
.L75:
	.loc 1 454 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	MDstrcpy@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 456 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
.L77:
	.loc 1 457 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	MDupdate, .-MDupdate
	.type	MDparseline, @function
MDparseline:
.LFB25:
	.loc 1 523 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	subl	$20, %esp
.LCFI40:
	.loc 1 527 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 528 0
	movl	20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 529 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 538 0
	jmp	.L79
.L80:
	addl	$1, -4(%ebp)
.L79:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jae	.L81
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L80
.L81:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L83
	movl	$0, -20(%ebp)
	jmp	.L85
.L83:
	.loc 1 541 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L86
	addl	$1, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L85
.L86:
	.loc 1 544 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L88
	.loc 1 545 0
	jmp	.L90
.L91:
	addl	$1, -4(%ebp)
.L90:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jae	.L92
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L91
.L92:
	.loc 1 546 0
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L94
	movl	$0, -20(%ebp)
	jmp	.L85
.L94:
	.loc 1 547 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L88
	addl	$1, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L85
.L88:
	.loc 1 557 0
	movl	16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 560 0
	jmp	.L97
.L98:
	addl	$1, -4(%ebp)
.L97:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jae	.L99
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	je	.L99
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L98
.L99:
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	je	.L102
	movl	$0, -20(%ebp)
	jmp	.L85
.L102:
	.loc 1 563 0
	addl	$1, -4(%ebp)
	jmp	.L104
.L105:
	addl	$1, -4(%ebp)
.L104:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jae	.L108
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L105
	.loc 1 566 0
	jmp	.L108
.L109:
	addl	$1, -4(%ebp)
.L108:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jae	.L110
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	je	.L110
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L109
.L110:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L113
	movl	$0, -20(%ebp)
	jmp	.L85
.L113:
	.loc 1 569 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L115
	addl	$1, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L85
.L115:
	.loc 1 572 0
	addl	$1, -4(%ebp)
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	je	.L117
	movl	$0, -20(%ebp)
	jmp	.L85
.L117:
	.loc 1 575 0
	addl	$1, -4(%ebp)
	.loc 1 576 0
	jmp	.L119
.L120:
	addl	$1, -4(%ebp)
.L119:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jae	.L121
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L120
.L121:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L123
	movl	$0, -20(%ebp)
	jmp	.L85
.L123:
	.loc 1 582 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L125
	addl	$1, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L85
.L125:
	.loc 1 585 0
	movl	20(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 588 0
	jmp	.L127
.L128:
	addl	$1, -4(%ebp)
.L127:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jae	.L129
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L128
.L129:
	.loc 1 589 0
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jb	.L131
	movl	$0, -20(%ebp)
	jmp	.L85
.L131:
	.loc 1 592 0
	addl	$1, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L85:
	movl	-20(%ebp), %eax
	.loc 1 594 0
	leave
	ret
.LFE25:
	.size	MDparseline, .-MDparseline
	.section	.rodata
.LC6:
	.string	"open (%s): %s"
.LC7:
	.string	"fcntl (%s) : %s"
.LC8:
	.string	"fstat (%s) : %s"
.LC9:
	.string	"mmap (%s): %s"
.LC10:
	.string	"%s: damaged file"
.LC11:
	.string	"ftruncate (%s): %s"
.LC12:
	.string	"a"
.LC13:
	.string	"fdopen(%s): %s"
.LC14:
	.string	"%s:"
.LC15:
	.string	" %s"
.LC16:
	.string	" #:%s\n"
.LC17:
	.string	"fprintf(%s): %s"
	.text
.globl MDclose
	.type	MDclose, @function
MDclose:
.LFB26:
	.loc 1 625 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%edi
.LCFI43:
	pushl	%esi
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$220, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 637 0
	movl	$0, -24(%ebp)
	.loc 1 650 0
	cmpl	$0, 8(%ebp)
	je	.L178
	.loc 1 651 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L137
	.loc 1 658 0
	cmpl	$0, 12(%ebp)
	jne	.L139
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%ebp)
.L139:
	.loc 1 659 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -192(%ebp)
	movl	$0, %eax
	cld
	movl	-192(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 666 0
	leal	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	MDfile_init
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	strdup@PLT
	movl	%eax, -176(%ebp)
	.loc 1 674 0
	movl	-176(%ebp), %eax
	movl	$438, 8(%esp)
	movl	$66, 4(%esp)
	movl	%eax, (%esp)
	call	open@PLT
	movl	%eax, -180(%ebp)
	.loc 1 675 0
	movl	-180(%ebp), %eax
	testl	%eax, %eax
	jns	.L141
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror@PLT
	movl	-176(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	jmp	.L143
.L141:
	.loc 1 677 0
	movw	$1, -72(%ebp)
	.loc 1 678 0
	movw	$0, -70(%ebp)
	.loc 1 679 0
	movl	$0, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 680 0
	movl	-180(%ebp), %edx
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$7, 4(%esp)
	movl	%edx, (%esp)
	call	fcntl@PLT
	testl	%eax, %eax
	jns	.L144
	.loc 1 681 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror@PLT
	movl	-176(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	jmp	.L143
.L144:
	.loc 1 682 0
	movl	-180(%ebp), %edx
	leal	-180(%ebp), %eax
	addl	$20, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fstat@PLT
	testl	%eax, %eax
	jns	.L146
	.loc 1 683 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror@PLT
	movl	-176(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	jmp	.L143
.L146:
	.loc 1 692 0
	movl	$0, -168(%ebp)
	movl	-168(%ebp), %eax
	movl	%eax, -172(%ebp)
	.loc 1 693 0
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	jle	.L148
	.loc 1 694 0
	movl	-180(%ebp), %edx
	movl	-116(%ebp), %eax
	movl	$0, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$1, 12(%esp)
	movl	$3, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	mmap@PLT
	movl	%eax, -172(%ebp)
	.loc 1 696 0
	movl	-172(%ebp), %eax
	testl	%eax, %eax
	jns	.L150
	.loc 1 697 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror@PLT
	movl	-176(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	jmp	.L143
.L150:
	.loc 1 698 0
	movl	-116(%ebp), %eax
	movl	%eax, -164(%ebp)
	.loc 1 699 0
	movl	-172(%ebp), %edx
	movl	-164(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -168(%ebp)
.L148:
	.loc 1 709 0
	movl	$0, -40(%ebp)
	.loc 1 710 0
	movl	$0, -24(%ebp)
	.loc 1 711 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -196(%ebp)
	movl	$0, %eax
	cld
	movl	-196(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 712 0
	movl	-172(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L152
.L153:
	.loc 1 713 0
	movl	-168(%ebp), %edx
	leal	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	MDparseline
	movl	%eax, -40(%ebp)
	.loc 1 714 0
	cmpl	$0, -40(%ebp)
	jne	.L154
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-176(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	.L143
.L154:
	.loc 1 717 0
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	.L156
	.loc 1 720 0
	movl	-52(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	MDtargcmp
	testl	%eax, %eax
	jne	.L156
	.loc 1 723 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	.L156
	.loc 1 726 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-56(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	MDtoolcmp
	testl	%eax, %eax
	jne	.L156
	.loc 1 727 0
	movl	$1, -24(%ebp)
	.loc 1 728 0
	jmp	.L161
.L156:
	.loc 1 712 0
	movl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
.L152:
	movl	-168(%ebp), %eax
	cmpl	-44(%ebp), %eax
	ja	.L153
.L161:
	.loc 1 745 0
	cmpl	$0, -24(%ebp)
	je	.L162
	.loc 1 748 0
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 749 0
	movl	-168(%ebp), %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, -16(%ebp)
	.loc 1 750 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	memmove@PLT
	.loc 1 754 0
	movl	-164(%ebp), %eax
	subl	-20(%ebp), %eax
	movl	-180(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ftruncate@PLT
	testl	%eax, %eax
	je	.L162
	.loc 1 755 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror@PLT
	movl	-176(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	jmp	.L143
.L162:
	.loc 1 767 0
	movl	-180(%ebp), %eax
	leal	.LC12@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fdopen@PLT
	movl	%eax, -48(%ebp)
	cmpl	$0, -48(%ebp)
	jne	.L165
	.loc 1 768 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror@PLT
	movl	-176(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
	jmp	.L143
.L165:
	.loc 1 770 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 771 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L167
.L168:
	.loc 1 772 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L169
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L169:
	.loc 1 771 0
	addl	$8, -36(%ebp)
.L167:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	sall	$3, %eax
	leal	(%edx,%eax), %eax
	cmpl	-36(%ebp), %eax
	jae	.L168
	.loc 1 774 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	testl	%eax, %eax
	jns	.L143
	.loc 1 775 0
	movl	8(%ebp), %eax
	movl	12(%eax), %esi
	call	__errno_location@PLT
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	strerror@PLT
	movl	-176(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%esi
.L143:
	.loc 1 778 0
	cmpl	$0, -48(%ebp)
	je	.L173
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L173:
	.loc 1 779 0
	movl	-172(%ebp), %eax
	testl	%eax, %eax
	je	.L175
	movl	-116(%ebp), %eax
	movl	-172(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	munmap@PLT
.L175:
	.loc 1 780 0
	movl	-180(%ebp), %eax
	testl	%eax, %eax
	jle	.L137
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	close@PLT
.L137:
	.loc 1 783 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 784 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 785 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L178:
	.loc 1 787 0
	addl	$220, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	MDclose, .-MDclose
	.comm	scratch,80,32
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
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI3
	.byte	0x83
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
	.long	.LCFI6-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI9-.LCFI7
	.byte	0x83
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
	.long	.LCFI10-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI11
	.byte	0x83
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
	.long	.LCFI14-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0x83
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
	.long	.LCFI18-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI19
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
	.long	.LCFI22-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI23
	.byte	0x83
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
	.long	.LCFI26-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI29-.LCFI27
	.byte	0x83
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
	.long	.LCFI30-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI31
	.byte	0x83
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
	.long	.LCFI34-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI35
	.byte	0x83
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
	.long	.LCFI38-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI41-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI46-.LCFI42
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE22:
	.file 2 "/usr/include/bits/stat.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/time.h"
	.file 5 "../../include/cmplrs/make_depend.h"
	.file 6 "/usr/include/bits/fcntl.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI3-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI10-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI11-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI15-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI22-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI23-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI26-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI27-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI35-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI38-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI39-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xe78
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libcmplrs/make_depend.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libcmplrs"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x9
	.byte	0xd6
	.long	0xaa
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.byte	0x4
	.long	0xdb
	.uleb128 0x6
	.long	0xe0
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x3
	.byte	0x3b
	.long	0x12a
	.uleb128 0x2
	.string	"__u_quad_t"
	.byte	0x3
	.byte	0x3c
	.long	0x13b
	.uleb128 0x2
	.string	"__dev_t"
	.byte	0x3
	.byte	0x89
	.long	0x165
	.uleb128 0x2
	.string	"__uid_t"
	.byte	0x3
	.byte	0x8a
	.long	0xaa
	.uleb128 0x2
	.string	"__gid_t"
	.byte	0x3
	.byte	0x8b
	.long	0xaa
	.uleb128 0x2
	.string	"__ino_t"
	.byte	0x3
	.byte	0x8c
	.long	0xf9
	.uleb128 0x2
	.string	"__mode_t"
	.byte	0x3
	.byte	0x8e
	.long	0xaa
	.uleb128 0x2
	.string	"__nlink_t"
	.byte	0x3
	.byte	0x8f
	.long	0xaa
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x3
	.byte	0x90
	.long	0x1e3
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x3
	.byte	0x91
	.long	0x155
	.uleb128 0x2
	.string	"__pid_t"
	.byte	0x3
	.byte	0x92
	.long	0xce
	.uleb128 0x2
	.string	"__time_t"
	.byte	0x3
	.byte	0x98
	.long	0x1e3
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.string	"__blksize_t"
	.byte	0x3
	.byte	0xa7
	.long	0x1e3
	.uleb128 0x2
	.string	"__blkcnt_t"
	.byte	0x3
	.byte	0xac
	.long	0x1e3
	.uleb128 0x5
	.byte	0x4
	.long	0xe0
	.uleb128 0x8
	.long	0x281
	.string	"timespec"
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.uleb128 0x9
	.string	"tv_sec"
	.byte	0x4
	.byte	0x7b
	.long	0x20f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"tv_nsec"
	.byte	0x4
	.byte	0x7c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.long	0x2e6
	.string	"flock"
	.byte	0x10
	.byte	0x6
	.byte	0x8e
	.uleb128 0x9
	.string	"l_type"
	.byte	0x6
	.byte	0x8f
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"l_whence"
	.byte	0x6
	.byte	0x90
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"l_start"
	.byte	0x6
	.byte	0x92
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"l_len"
	.byte	0x6
	.byte	0x93
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"l_pid"
	.byte	0x6
	.byte	0x98
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x42a
	.string	"stat"
	.byte	0x58
	.byte	0x2
	.byte	0x25
	.uleb128 0x9
	.string	"st_dev"
	.byte	0x2
	.byte	0x26
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x2
	.byte	0x27
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"st_ino"
	.byte	0x2
	.byte	0x29
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"st_mode"
	.byte	0x2
	.byte	0x2d
	.long	0x1b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"st_nlink"
	.byte	0x2
	.byte	0x2e
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"st_uid"
	.byte	0x2
	.byte	0x2f
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"st_gid"
	.byte	0x2
	.byte	0x30
	.long	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"st_rdev"
	.byte	0x2
	.byte	0x31
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x2
	.byte	0x32
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"st_size"
	.byte	0x2
	.byte	0x34
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"st_blksize"
	.byte	0x2
	.byte	0x38
	.long	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"st_blocks"
	.byte	0x2
	.byte	0x3b
	.long	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"st_atim"
	.byte	0x2
	.byte	0x46
	.long	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"st_mtim"
	.byte	0x2
	.byte	0x47
	.long	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"st_ctim"
	.byte	0x2
	.byte	0x48
	.long	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"__unused4"
	.byte	0x2
	.byte	0x55
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.string	"__unused5"
	.byte	0x2
	.byte	0x56
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x2
	.string	"FILE"
	.byte	0x7
	.byte	0x2e
	.long	0x436
	.uleb128 0xa
	.long	0x6b1
	.long	.LASF1
	.byte	0x94
	.byte	0x7
	.byte	0x2e
	.uleb128 0xb
	.string	"_flags"
	.byte	0x8
	.value	0x10c
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_IO_read_ptr"
	.byte	0x8
	.value	0x111
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_IO_read_end"
	.byte	0x8
	.value	0x112
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"_IO_read_base"
	.byte	0x8
	.value	0x113
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"_IO_write_base"
	.byte	0x8
	.value	0x114
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"_IO_write_ptr"
	.byte	0x8
	.value	0x115
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"_IO_write_end"
	.byte	0x8
	.value	0x116
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"_IO_buf_base"
	.byte	0x8
	.value	0x117
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"_IO_buf_end"
	.byte	0x8
	.value	0x118
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"_IO_save_base"
	.byte	0x8
	.value	0x11a
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"_IO_backup_base"
	.byte	0x8
	.value	0x11b
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"_IO_save_end"
	.byte	0x8
	.value	0x11c
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"_markers"
	.byte	0x8
	.value	0x11e
	.long	0x702
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"_chain"
	.byte	0x8
	.value	0x120
	.long	0x708
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"_fileno"
	.byte	0x8
	.value	0x122
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"_flags2"
	.byte	0x8
	.value	0x126
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"_old_offset"
	.byte	0x8
	.value	0x128
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"_cur_column"
	.byte	0x8
	.value	0x12c
	.long	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"_vtable_offset"
	.byte	0x8
	.value	0x12d
	.long	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.string	"_shortbuf"
	.byte	0x8
	.value	0x12e
	.long	0x70e
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xb
	.string	"_lock"
	.byte	0x8
	.value	0x132
	.long	0x71e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"_offset"
	.byte	0x8
	.value	0x13b
	.long	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"__pad1"
	.byte	0x8
	.value	0x144
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"__pad2"
	.byte	0x8
	.value	0x145
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"__pad3"
	.byte	0x8
	.value	0x146
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"__pad4"
	.byte	0x8
	.value	0x147
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"__pad5"
	.byte	0x8
	.value	0x148
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"_mode"
	.byte	0x8
	.value	0x14a
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"_unused2"
	.byte	0x8
	.value	0x14c
	.long	0x724
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0x8
	.byte	0xb0
	.uleb128 0x8
	.long	0x702
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x8
	.byte	0xb6
	.uleb128 0x9
	.string	"_next"
	.byte	0x8
	.byte	0xb7
	.long	0x702
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_sbuf"
	.byte	0x8
	.byte	0xb8
	.long	0x708
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_pos"
	.byte	0x8
	.byte	0xbc
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x6bf
	.uleb128 0x5
	.byte	0x4
	.long	0x436
	.uleb128 0xd
	.long	0x71e
	.long	0xe0
	.uleb128 0xe
	.long	0xb1
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x6b1
	.uleb128 0xd
	.long	0x734
	.long	0xe0
	.uleb128 0xe
	.long	0xb1
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.string	"MDhandle"
	.byte	0x5
	.byte	0x33
	.long	0x744
	.uleb128 0x5
	.byte	0x4
	.long	0x74a
	.uleb128 0x8
	.long	0x810
	.string	"mdrule"
	.byte	0x2c
	.byte	0x5
	.byte	0x33
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x8f
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x1
	.byte	0x90
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF4
	.byte	0x1
	.byte	0x91
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"error"
	.byte	0x1
	.byte	0x92
	.long	0x860
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"entries"
	.byte	0x1
	.byte	0x93
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"freecount"
	.byte	0x1
	.byte	0x94
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"hashmask"
	.byte	0x1
	.byte	0x95
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"table"
	.byte	0x1
	.byte	0x96
	.long	0x84d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"stab"
	.byte	0x1
	.byte	0x97
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"stabcur"
	.byte	0x1
	.byte	0x98
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"stabmax"
	.byte	0x1
	.byte	0x99
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"Dependency"
	.byte	0x1
	.byte	0x87
	.long	0x822
	.uleb128 0xa
	.long	0x84d
	.long	.LASF5
	.byte	0x8
	.byte	0x1
	.byte	0x87
	.uleb128 0x9
	.string	"name"
	.byte	0x1
	.byte	0x8a
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"next"
	.byte	0x1
	.byte	0x8b
	.long	0x84d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x810
	.uleb128 0x10
	.long	0x860
	.byte	0x1
	.uleb128 0x11
	.long	0x246
	.uleb128 0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x853
	.uleb128 0x8
	.long	0x8cc
	.string	"mdfile"
	.byte	0x6c
	.byte	0x1
	.byte	0x9d
	.uleb128 0x9
	.string	"f"
	.byte	0x1
	.byte	0x9e
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x1
	.byte	0x9f
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"base"
	.byte	0x1
	.byte	0xa0
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"limit"
	.byte	0x1
	.byte	0xa1
	.long	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"size"
	.byte	0x1
	.byte	0xa2
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"stb"
	.byte	0x1
	.byte	0xa3
	.long	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"MDfile_t"
	.byte	0x1
	.byte	0xa4
	.long	0x866
	.uleb128 0x13
	.long	0x909
	.string	"MDfile_init"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x14
	.string	"m"
	.byte	0x1
	.byte	0xad
	.long	0x909
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x8cc
	.uleb128 0x15
	.long	0x97a
	.string	"MDtoolcmp"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.long	0xce
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x14
	.string	"tool"
	.byte	0x1
	.byte	0xc1
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xc1
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"slen"
	.byte	0x1
	.byte	0xc1
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.byte	0xc2
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"toollen"
	.byte	0x1
	.byte	0xc3
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x15
	.long	0x9e5
	.string	"MDtargcmp"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	0xce
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x14
	.string	"targ"
	.byte	0x1
	.byte	0xd8
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0xd8
	.long	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"slen"
	.byte	0x1
	.byte	0xd8
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.byte	0xd9
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.string	"targlen"
	.byte	0x1
	.byte	0xda
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x17
	.long	0xa13
	.byte	0x1
	.string	"MDnewstab"
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.value	0x109
	.long	0x734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.long	0xa78
	.byte	0x1
	.string	"MDstrcpy"
	.byte	0x1
	.value	0x11d
	.byte	0x1
	.long	0x246
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.value	0x11c
	.long	0x734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.value	0x11c
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"dest"
	.byte	0x1
	.value	0x11e
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"freespace"
	.byte	0x1
	.value	0x11f
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0xae9
	.string	"MDhash"
	.byte	0x1
	.value	0x148
	.byte	0x1
	.long	0x84d
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.value	0x147
	.long	0x734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.value	0x147
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x149
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.value	0x14a
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"v"
	.byte	0x1
	.value	0x14b
	.long	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.value	0x14b
	.long	0xaa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0xb46
	.string	"MDlookup"
	.byte	0x1
	.value	0x161
	.byte	0x1
	.long	0x84d
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.value	0x160
	.long	0x734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x160
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x162
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"prevd"
	.byte	0x1
	.value	0x162
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0xbc9
	.string	"MDgrow"
	.byte	0x1
	.value	0x179
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.value	0x178
	.long	0x734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x17a
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"m"
	.byte	0x1
	.value	0x17a
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"table"
	.byte	0x1
	.value	0x17b
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"oldtable"
	.byte	0x1
	.value	0x17b
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x17c
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"e"
	.byte	0x1
	.value	0x17c
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	0xc47
	.byte	0x1
	.string	"MDopen"
	.byte	0x1
	.value	0x198
	.byte	0x1
	.long	0x734
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x1c
	.long	.LASF2
	.byte	0x1
	.value	0x197
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x197
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x1
	.value	0x197
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"error"
	.byte	0x1
	.value	0x197
	.long	0x860
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.string	"h"
	.byte	0x1
	.value	0x199
	.long	0x734
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"table"
	.byte	0x1
	.value	0x19a
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x17
	.long	0xc90
	.byte	0x1
	.string	"MDupdate"
	.byte	0x1
	.value	0x1b9
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.value	0x1b8
	.long	0x734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x1b8
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x1ba
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1b
	.long	0xd07
	.string	"MDparseline"
	.byte	0x1
	.value	0x20b
	.byte	0x1
	.long	0x246
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x18
	.string	"line"
	.byte	0x1
	.value	0x20b
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"limit"
	.byte	0x1
	.value	0x20b
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"targ"
	.byte	0x1
	.value	0x20b
	.long	0xd07
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"tool"
	.byte	0x1
	.value	0x20b
	.long	0xd07
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.string	"next"
	.byte	0x1
	.value	0x20c
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x246
	.uleb128 0x17
	.long	0xe4f
	.byte	0x1
	.string	"MDclose"
	.byte	0x1
	.value	0x271
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x18
	.string	"h"
	.byte	0x1
	.value	0x270
	.long	0x734
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x1
	.value	0x270
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"l"
	.byte	0x1
	.value	0x272
	.long	0x281
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.string	"md"
	.byte	0x1
	.value	0x273
	.long	0x8cc
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1a
	.string	"file"
	.byte	0x1
	.value	0x274
	.long	0xe4f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"line"
	.byte	0x1
	.value	0x276
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.string	"nextline"
	.byte	0x1
	.value	0x277
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"targ"
	.byte	0x1
	.value	0x278
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.string	"tool"
	.byte	0x1
	.value	0x279
	.long	0x246
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x27a
	.long	0x84d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"targetlen"
	.byte	0x1
	.value	0x27b
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"toolnamelen"
	.byte	0x1
	.value	0x27c
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"found"
	.byte	0x1
	.value	0x27d
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"linelen"
	.byte	0x1
	.value	0x27e
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"remaininglen"
	.byte	0x1
	.value	0x27f
	.long	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"relspace"
	.byte	0x1
	.value	0x30e
	.long	.L137
	.uleb128 0x1e
	.string	"cleanup"
	.byte	0x1
	.value	0x309
	.long	.L143
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x42a
	.uleb128 0xd
	.long	0xe65
	.long	0xe0
	.uleb128 0xe
	.long	0xb1
	.byte	0x4f
	.byte	0x0
	.uleb128 0x1f
	.string	"scratch"
	.byte	0x1
	.byte	0x85
	.long	0xe55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	scratch
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.long	0x59
	.value	0x2
	.long	.Ldebug_info0
	.long	0xe7c
	.long	0x9e5
	.string	"MDnewstab"
	.long	0xa13
	.string	"MDstrcpy"
	.long	0xbc9
	.string	"MDopen"
	.long	0xc47
	.string	"MDupdate"
	.long	0xd0d
	.string	"MDclose"
	.long	0xe65
	.string	"scratch"
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
.LASF0:
	.string	"unsigned int"
.LASF5:
	.string	"dependency"
.LASF4:
	.string	"target"
.LASF3:
	.string	"filename"
.LASF2:
	.string	"toolname"
.LASF1:
	.string	"_IO_FILE"
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
