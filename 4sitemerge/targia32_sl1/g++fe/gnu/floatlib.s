	.file	"floatlib.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl __addsf3
	.type	__addsf3, @function
__addsf3:
.LFB2:
	.file 1 "../../../kg++fe/gnu/floatlib.c"
	.loc 1 102 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$40, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 106 0
	movl	$0, -8(%ebp)
	.loc 1 108 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 109 0
	movl	12(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 112 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L2
	.loc 1 113 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 114 0
	jmp	.L4
.L2:
	.loc 1 116 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 119 0
	movl	-28(%ebp), %eax
	sarl	$23, %eax
	andl	$255, %eax
	movl	%eax, -16(%ebp)
	.loc 1 120 0
	movl	-32(%ebp), %eax
	sarl	$23, %eax
	andl	$255, %eax
	movl	%eax, -12(%ebp)
	.loc 1 122 0
	movl	-12(%ebp), %eax
	addl	$25, %eax
	cmpl	-16(%ebp), %eax
	jl	.L4
	.loc 1 124 0
	movl	-16(%ebp), %eax
	addl	$25, %eax
	cmpl	-12(%ebp), %eax
	jge	.L7
	.loc 1 125 0
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 126 0
	jmp	.L4
.L7:
	.loc 1 130 0
	movl	-28(%ebp), %eax
	andl	$8388607, %eax
	orl	$8388608, %eax
	sall	$6, %eax
	movl	%eax, -24(%ebp)
	.loc 1 131 0
	movl	-32(%ebp), %eax
	andl	$8388607, %eax
	orl	$8388608, %eax
	sall	$6, %eax
	movl	%eax, -20(%ebp)
	.loc 1 133 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jns	.L9
	.loc 1 134 0
	negl	-24(%ebp)
.L9:
	.loc 1 135 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	jns	.L11
	.loc 1 136 0
	negl	-20(%ebp)
.L11:
	.loc 1 138 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jle	.L13
	.loc 1 140 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	sarl	%cl, -20(%ebp)
	jmp	.L15
.L13:
	.loc 1 144 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	sarl	%cl, -24(%ebp)
	.loc 1 145 0
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L15:
	.loc 1 147 0
	movl	-20(%ebp), %eax
	addl	%eax, -24(%ebp)
	.loc 1 149 0
	cmpl	$0, -24(%ebp)
	jns	.L16
	.loc 1 151 0
	negl	-24(%ebp)
	.loc 1 152 0
	movl	$-2147483648, -8(%ebp)
	jmp	.L20
.L16:
	.loc 1 154 0
	cmpl	$0, -24(%ebp)
	jne	.L20
	.loc 1 155 0
	movl	$0x00000000, %eax
	movl	%eax, -28(%ebp)
	.loc 1 156 0
	jmp	.L4
.L21:
	.loc 1 162 0
	sall	-24(%ebp)
	.loc 1 163 0
	subl	$1, -16(%ebp)
.L20:
	.loc 1 160 0
	movl	-24(%ebp), %eax
	andl	$-536870912, %eax
	testl	%eax, %eax
	je	.L21
	.loc 1 167 0
	movl	-24(%ebp), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L23
	.loc 1 169 0
	sarl	-24(%ebp)
	.loc 1 170 0
	addl	$1, -16(%ebp)
.L23:
	.loc 1 174 0
	movl	-24(%ebp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L25
	movl	$32, -40(%ebp)
	jmp	.L27
.L25:
	movl	$31, -40(%ebp)
.L27:
	movl	-40(%ebp), %eax
	addl	%eax, -24(%ebp)
	.loc 1 177 0
	movl	-24(%ebp), %eax
	andl	$1073741824, %eax
	testl	%eax, %eax
	je	.L28
	.loc 1 179 0
	sarl	-24(%ebp)
	.loc 1 180 0
	addl	$1, -16(%ebp)
.L28:
	.loc 1 184 0
	sarl	$6, -24(%ebp)
	.loc 1 187 0
	andl	$-8388609, -24(%ebp)
	.loc 1 190 0
	movl	-16(%ebp), %eax
	sall	$23, %eax
	orl	-8(%ebp), %eax
	orl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L4:
	.loc 1 192 0
	movl	-28(%ebp), %eax
	movl	%eax, -44(%ebp)
	flds	-44(%ebp)
	.loc 1 193 0
	addl	$40, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE2:
	.size	__addsf3, .-__addsf3
.globl __subsf3
	.type	__subsf3, @function
__subsf3:
.LFB3:
	.loc 1 198 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$36, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 201 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 202 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 205 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L32
	.loc 1 206 0
	flds	-8(%ebp)
	fstps	-24(%ebp)
	jmp	.L34
.L32:
	.loc 1 207 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	jne	.L35
	.loc 1 208 0
	flds	-12(%ebp)
	fstps	-28(%ebp)
	movl	-28(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -24(%ebp)
	jmp	.L34
.L35:
	.loc 1 211 0
	movl	-12(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -12(%ebp)
	.loc 1 212 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__addsf3@PLT
	fstps	-24(%ebp)
.L34:
	flds	-24(%ebp)
	.loc 1 213 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE3:
	.size	__subsf3, .-__subsf3
.globl __cmpsf2
	.type	__cmpsf2, @function
__cmpsf2:
.LFB4:
	.loc 1 218 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$20, %esp
.LCFI10:
	.loc 1 221 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 222 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 224 0
	movl	-4(%ebp), %eax
	testl	%eax, %eax
	jns	.L39
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	jns	.L39
	.loc 1 226 0
	movl	-4(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -4(%ebp)
	.loc 1 227 0
	movl	-8(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -8(%ebp)
.L39:
	.loc 1 229 0
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L42
	.loc 1 230 0
	movl	$-1, -20(%ebp)
	jmp	.L44
.L42:
	.loc 1 231 0
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	cmpl	%eax, %edx
	jle	.L45
	.loc 1 232 0
	movl	$1, -20(%ebp)
	jmp	.L44
.L45:
	.loc 1 233 0
	movl	$0, -20(%ebp)
.L44:
	movl	-20(%ebp), %eax
	.loc 1 234 0
	leave
	ret
.LFE4:
	.size	__cmpsf2, .-__cmpsf2
.globl __mulsf3
	.type	__mulsf3, @function
__mulsf3:
.LFB5:
	.loc 1 239 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	subl	$36, %esp
.LCFI13:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 245 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 246 0
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 248 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	je	.L49
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L51
.L49:
	.loc 1 249 0
	movl	$0x00000000, %eax
	movl	%eax, -16(%ebp)
	.loc 1 250 0
	jmp	.L52
.L51:
	.loc 1 254 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	andl	$-2147483648, %edx
	movl	-20(%ebp), %eax
	andl	$-2147483648, %eax
	xorl	%edx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 255 0
	movl	-16(%ebp), %eax
	sarl	$23, %eax
	andl	$255, %eax
	subl	$126, %eax
	movl	%eax, -8(%ebp)
	.loc 1 256 0
	movl	-20(%ebp), %eax
	sarl	$23, %eax
	andl	$255, %eax
	addl	%eax, -8(%ebp)
	.loc 1 258 0
	movl	-16(%ebp), %eax
	andl	$8388607, %eax
	orl	$8388608, %eax
	movl	%eax, -16(%ebp)
	.loc 1 259 0
	movl	-20(%ebp), %eax
	andl	$8388607, %eax
	orl	$8388608, %eax
	movl	%eax, -20(%ebp)
	.loc 1 262 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sarl	$8, %edx
	movl	-20(%ebp), %eax
	sarl	$8, %eax
	imull	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 263 0
	movl	-16(%ebp), %eax
	movzbl	%al,%edx
	movl	-20(%ebp), %eax
	sarl	$8, %eax
	imull	%edx, %eax
	sarl	$8, %eax
	addl	%eax, -12(%ebp)
	.loc 1 264 0
	movl	-20(%ebp), %eax
	movzbl	%al,%edx
	movl	-16(%ebp), %eax
	sarl	$8, %eax
	imull	%edx, %eax
	sarl	$8, %eax
	addl	%eax, -12(%ebp)
	.loc 1 266 0
	shrl	$2, -12(%ebp)
	.loc 1 267 0
	movl	-12(%ebp), %eax
	andl	$536870912, %eax
	testl	%eax, %eax
	je	.L53
	.loc 1 270 0
	addl	$32, -12(%ebp)
	.loc 1 271 0
	shrl	$6, -12(%ebp)
	jmp	.L55
.L53:
	.loc 1 276 0
	addl	$16, -12(%ebp)
	.loc 1 277 0
	shrl	$5, -12(%ebp)
	.loc 1 278 0
	subl	$1, -8(%ebp)
.L55:
	.loc 1 280 0
	movl	-12(%ebp), %eax
	andl	$16777216, %eax
	testl	%eax, %eax
	je	.L56
	.loc 1 281 0
	shrl	-12(%ebp)
	.loc 1 282 0
	addl	$1, -8(%ebp)
.L56:
	.loc 1 285 0
	andl	$-8388609, -12(%ebp)
	.loc 1 288 0
	movl	-8(%ebp), %eax
	sall	$23, %eax
	orl	-4(%ebp), %eax
	orl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L52:
	.loc 1 290 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	flds	-36(%ebp)
	.loc 1 291 0
	leave
	ret
.LFE5:
	.size	__mulsf3, .-__mulsf3
	.section	.rodata
	.align 4
.LC2:
	.long	1333788672
	.align 4
.LC3:
	.long	1325400064
	.text
.globl __divsf3
	.type	__divsf3, @function
__divsf3:
.LFB6:
	.loc 1 296 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$40, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 302 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 303 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 306 0
	movl	-24(%ebp), %eax
	sarl	$23, %eax
	movzbl	%al,%edx
	movl	-28(%ebp), %eax
	sarl	$23, %eax
	andl	$255, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$126, %eax
	movl	%eax, -12(%ebp)
	.loc 1 309 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	andl	$-2147483648, %edx
	movl	-28(%ebp), %eax
	andl	$-2147483648, %eax
	xorl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 312 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L60
	.loc 1 314 0
	cmpl	$0, -8(%ebp)
	je	.L62
	flds	.LC2@GOTOFF(%ebx)
	fstps	-40(%ebp)
	jmp	.L64
.L62:
	flds	.LC3@GOTOFF(%ebx)
	fstps	-40(%ebp)
.L64:
	flds	-40(%ebp)
	fstps	-44(%ebp)
	jmp	.L65
.L60:
	.loc 1 317 0
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	jne	.L66
	.loc 1 318 0
	fldz
	fstps	-44(%ebp)
	jmp	.L65
.L66:
	.loc 1 321 0
	movl	-24(%ebp), %eax
	andl	$8388607, %eax
	orl	$8388608, %eax
	movl	%eax, -24(%ebp)
	.loc 1 322 0
	movl	-28(%ebp), %eax
	andl	$8388607, %eax
	orl	$8388608, %eax
	movl	%eax, -28(%ebp)
	.loc 1 325 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L68
	.loc 1 327 0
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 328 0
	subl	$1, -12(%ebp)
.L68:
	.loc 1 332 0
	movl	$16777216, -16(%ebp)
	.loc 1 333 0
	movl	$0, -20(%ebp)
	.loc 1 334 0
	jmp	.L70
.L71:
	.loc 1 336 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	cmpl	%eax, %edx
	jl	.L72
	.loc 1 338 0
	movl	-16(%ebp), %eax
	orl	%eax, -20(%ebp)
	.loc 1 339 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%ebp)
.L72:
	.loc 1 341 0
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 342 0
	sarl	-16(%ebp)
.L70:
	.loc 1 334 0
	cmpl	$0, -16(%ebp)
	jne	.L71
	.loc 1 346 0
	addl	$1, -20(%ebp)
	.loc 1 349 0
	addl	$1, -12(%ebp)
	.loc 1 350 0
	sarl	-20(%ebp)
	.loc 1 352 0
	andl	$-8388609, -20(%ebp)
	.loc 1 355 0
	movl	-12(%ebp), %eax
	sall	$23, %eax
	orl	-8(%ebp), %eax
	orl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 356 0
	flds	-24(%ebp)
	fstps	-44(%ebp)
.L65:
	flds	-44(%ebp)
	.loc 1 357 0
	addl	$40, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	__divsf3, .-__divsf3
.globl __floatsidf
	.type	__floatsidf, @function
__floatsidf:
.LFB7:
	.loc 1 362 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	subl	$24, %esp
.LCFI20:
	.loc 1 363 0
	movl	$0, -8(%ebp)
	movl	$1053, -4(%ebp)
	.loc 1 366 0
	cmpl	$0, 8(%ebp)
	jne	.L77
	.loc 1 368 0
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 369 0
	fldl	-16(%ebp)
	fstpl	-24(%ebp)
	jmp	.L79
.L77:
	.loc 1 372 0
	cmpl	$0, 8(%ebp)
	jns	.L82
	.loc 1 374 0
	movl	$-2147483648, -8(%ebp)
	.loc 1 375 0
	negl	8(%ebp)
	.loc 1 378 0
	jmp	.L82
.L83:
	.loc 1 380 0
	sall	$4, 8(%ebp)
	.loc 1 381 0
	subl	$4, -4(%ebp)
.L82:
	.loc 1 378 0
	cmpl	$16777215, 8(%ebp)
	jle	.L83
	.loc 1 384 0
	jmp	.L85
.L86:
	.loc 1 386 0
	sall	8(%ebp)
	.loc 1 387 0
	subl	$1, -4(%ebp)
.L85:
	.loc 1 384 0
	cmpl	$1073741823, 8(%ebp)
	jle	.L86
	.loc 1 391 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 392 0
	movl	-16(%ebp), %edx
	movl	-4(%ebp), %eax
	sall	$20, %eax
	orl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 393 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	sarl	$10, %eax
	andl	$-1048577, %eax
	orl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 394 0
	movl	8(%ebp), %eax
	sall	$22, %eax
	movl	%eax, -12(%ebp)
	.loc 1 396 0
	fldl	-16(%ebp)
	fstpl	-24(%ebp)
.L79:
	fldl	-24(%ebp)
	.loc 1 397 0
	leave
	ret
.LFE7:
	.size	__floatsidf, .-__floatsidf
.globl __floatdidf
	.type	__floatdidf, @function
__floatdidf:
.LFB8:
	.loc 1 401 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%edi
.LCFI23:
	pushl	%esi
.LCFI24:
	subl	$40, %esp
.LCFI25:
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 402 0
	movl	$1085, -12(%ebp)
	.loc 1 405 0
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 406 0
	movl	-32(%ebp), %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L90
	.loc 1 407 0
	fldl	-24(%ebp)
	fstpl	-48(%ebp)
	jmp	.L92
.L90:
	.loc 1 409 0
	cmpl	$0, -28(%ebp)
	jns	.L95
	.loc 1 410 0
	movl	$-2147483648, -24(%ebp)
	.loc 1 411 0
	negl	-32(%ebp)
	adcl	$0, -28(%ebp)
	negl	-28(%ebp)
	.loc 1 414 0
	jmp	.L95
.L96:
	.loc 1 415 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shldl	$8, %eax, %edx
	sall	$8, %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 416 0
	subl	$8, -12(%ebp)
.L95:
	.loc 1 414 0
	cmpl	$4194303, -28(%ebp)
	jl	.L96
	cmpl	$4194303, -28(%ebp)
	jg	.L99
	cmpl	$-1, -32(%ebp)
	jbe	.L96
	.loc 1 418 0
	jmp	.L99
.L100:
	.loc 1 419 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 420 0
	subl	$1, -12(%ebp)
.L99:
	.loc 1 418 0
	cmpl	$1073741823, -28(%ebp)
	jl	.L100
	cmpl	$1073741823, -28(%ebp)
	jg	.L102
	cmpl	$-1, -32(%ebp)
	jbe	.L100
.L102:
	.loc 1 424 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	$10, %edx, %eax
	sarl	$10, %edx
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%edx, %edi
	andl	$-1048577, %edi
	movl	-40(%ebp), %eax
	orl	%esi, %eax
	movl	-36(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 425 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	sall	$20, %eax
	orl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 427 0
	fldl	-24(%ebp)
	fstpl	-48(%ebp)
.L92:
	fldl	-48(%ebp)
	.loc 1 428 0
	addl	$40, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE8:
	.size	__floatdidf, .-__floatdidf
.globl __floatsisf
	.type	__floatsisf, @function
__floatsisf:
.LFB9:
	.loc 1 432 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$4, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 433 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__floatsidf@PLT
	fstp	%st(0)
	.loc 1 434 0
	fldz
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	__floatsisf, .-__floatsisf
.globl __floatdisf
	.type	__floatdisf, @function
__floatdisf:
.LFB10:
	.loc 1 438 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$20, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 439 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__floatdidf@PLT
	fstp	%st(0)
	.loc 1 440 0
	fldz
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	__floatdisf, .-__floatdisf
.globl __negsf2
	.type	__negsf2, @function
__negsf2:
.LFB11:
	.loc 1 445 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	subl	$20, %esp
.LCFI36:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 448 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 449 0
	movl	-4(%ebp), %eax
	testl	%eax, %eax
	jne	.L109
	.loc 1 450 0
	fldz
	fstps	-20(%ebp)
	jmp	.L111
.L109:
	.loc 1 452 0
	movl	-4(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -4(%ebp)
	.loc 1 453 0
	flds	-4(%ebp)
	fstps	-20(%ebp)
.L111:
	flds	-20(%ebp)
	.loc 1 454 0
	leave
	ret
.LFE11:
	.size	__negsf2, .-__negsf2
.globl __negdf2
	.type	__negdf2, @function
__negdf2:
.LFB12:
	.loc 1 459 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	subl	$32, %esp
.LCFI39:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 462 0
	fldl	-24(%ebp)
	fstpl	-8(%ebp)
	.loc 1 464 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	jne	.L114
	movl	-4(%ebp), %eax
	testl	%eax, %eax
	jne	.L114
	.loc 1 465 0
	fldl	-8(%ebp)
	fstpl	-32(%ebp)
	jmp	.L117
.L114:
	.loc 1 467 0
	movl	-8(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -8(%ebp)
	.loc 1 468 0
	fldl	-8(%ebp)
	fstpl	-32(%ebp)
.L117:
	fldl	-32(%ebp)
	.loc 1 469 0
	leave
	ret
.LFE12:
	.size	__negdf2, .-__negdf2
.globl __extendsfdf2
	.type	__extendsfdf2, @function
__extendsfdf2:
.LFB13:
	.loc 1 474 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	subl	$24, %esp
.LCFI42:
	.loc 1 479 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 481 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	jne	.L120
	.loc 1 483 0
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 484 0
	fldl	-16(%ebp)
	fstpl	-24(%ebp)
	jmp	.L122
.L120:
	.loc 1 487 0
	movl	-8(%ebp), %eax
	andl	$-2147483648, %eax
	movl	%eax, -16(%ebp)
	.loc 1 488 0
	movl	-8(%ebp), %eax
	sarl	$23, %eax
	andl	$255, %eax
	addl	$896, %eax
	movl	%eax, -4(%ebp)
	.loc 1 489 0
	movl	-16(%ebp), %edx
	movl	-4(%ebp), %eax
	sall	$20, %eax
	orl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 490 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	andl	$8388607, %eax
	sarl	$3, %eax
	orl	%edx, %eax
	movl	%eax, -16(%ebp)
	.loc 1 491 0
	movl	-8(%ebp), %eax
	andl	$8388607, %eax
	orl	$8388608, %eax
	sall	$29, %eax
	movl	%eax, -12(%ebp)
	.loc 1 493 0
	fldl	-16(%ebp)
	fstpl	-24(%ebp)
.L122:
	fldl	-24(%ebp)
	.loc 1 494 0
	leave
	ret
.LFE13:
	.size	__extendsfdf2, .-__extendsfdf2
.globl __truncdfsf2
	.type	__truncdfsf2, @function
__truncdfsf2:
.LFB14:
	.loc 1 499 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	subl	$48, %esp
.LCFI45:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 505 0
	fldl	-40(%ebp)
	fstpl	-24(%ebp)
	.loc 1 507 0
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	jne	.L125
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L125
	.loc 1 508 0
	fldz
	fstps	-44(%ebp)
	jmp	.L128
.L125:
	.loc 1 510 0
	movl	-24(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	subl	$896, %eax
	movl	%eax, -8(%ebp)
	.loc 1 513 0
	movl	-24(%ebp), %eax
	andl	$1048575, %eax
	orl	$1048576, %eax
	sall	$10, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	shrl	$22, %eax
	orl	%edx, %eax
	shrl	$6, %eax
	movl	%eax, -4(%ebp)
	.loc 1 516 0
	addl	$1, -4(%ebp)
	.loc 1 517 0
	sarl	-4(%ebp)
	.loc 1 520 0
	movl	-4(%ebp), %eax
	andl	$-33554432, %eax
	testl	%eax, %eax
	je	.L129
	.loc 1 522 0
	sarl	-4(%ebp)
	.loc 1 523 0
	addl	$1, -8(%ebp)
.L129:
	.loc 1 526 0
	andl	$-8388609, -4(%ebp)
	.loc 1 529 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	andl	$-2147483648, %edx
	movl	-8(%ebp), %eax
	sall	$23, %eax
	orl	%eax, %edx
	movl	-4(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 530 0
	flds	-12(%ebp)
	fstps	-44(%ebp)
.L128:
	flds	-44(%ebp)
	.loc 1 531 0
	leave
	ret
.LFE14:
	.size	__truncdfsf2, .-__truncdfsf2
.globl __cmpdf2
	.type	__cmpdf2, @function
__cmpdf2:
.LFB15:
	.loc 1 536 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	subl	$40, %esp
.LCFI48:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 539 0
	fldl	-24(%ebp)
	fstpl	-8(%ebp)
	.loc 1 540 0
	fldl	-32(%ebp)
	fstpl	-16(%ebp)
	.loc 1 542 0
	movl	-8(%ebp), %eax
	testl	%eax, %eax
	jns	.L133
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jns	.L133
	.loc 1 544 0
	movl	-8(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -8(%ebp)
	.loc 1 545 0
	movl	-16(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -16(%ebp)
.L133:
	.loc 1 547 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L136
	.loc 1 548 0
	movl	$-1, -36(%ebp)
	jmp	.L138
.L136:
	.loc 1 549 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	jle	.L139
	.loc 1 550 0
	movl	$1, -36(%ebp)
	jmp	.L138
.L139:
	.loc 1 551 0
	movl	-4(%ebp), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	jae	.L141
	.loc 1 552 0
	movl	$-1, -36(%ebp)
	jmp	.L138
.L141:
	.loc 1 553 0
	movl	-4(%ebp), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	jbe	.L143
	.loc 1 554 0
	movl	$1, -36(%ebp)
	jmp	.L138
.L143:
	.loc 1 555 0
	movl	$0, -36(%ebp)
.L138:
	movl	-36(%ebp), %eax
	.loc 1 556 0
	leave
	ret
.LFE15:
	.size	__cmpdf2, .-__cmpdf2
.globl __fixdfsi
	.type	__fixdfsi, @function
__fixdfsi:
.LFB16:
	.loc 1 561 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	subl	$40, %esp
.LCFI51:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 566 0
	fldl	-24(%ebp)
	fstpl	-16(%ebp)
	.loc 1 568 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	.L147
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L147
	.loc 1 569 0
	movl	$0, -36(%ebp)
	jmp	.L150
.L147:
	.loc 1 571 0
	movl	-16(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	subl	$1053, %eax
	movl	%eax, -8(%ebp)
	.loc 1 572 0
	movl	-16(%ebp), %eax
	andl	$1048575, %eax
	orl	$1048576, %eax
	sall	$10, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	shrl	$22, %eax
	orl	%edx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 574 0
	cmpl	$0, -8(%ebp)
	jle	.L151
	.loc 1 575 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jns	.L153
	movl	$-2147483648, %eax
	movl	%eax, -32(%ebp)
	jmp	.L155
.L153:
	movl	$2147483647, -32(%ebp)
.L155:
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L150
.L151:
	.loc 1 578 0
	cmpl	$0, -8(%ebp)
	jns	.L156
	cmpl	$-32, -8(%ebp)
	jle	.L156
	cmpl	$0, -4(%ebp)
	je	.L156
	.loc 1 579 0
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	negl	%ecx
	sarl	%cl, -4(%ebp)
	.loc 1 583 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	js	.L160
	jmp	.L161
.L156:
	.loc 1 581 0
	movl	$0, -36(%ebp)
	jmp	.L150
.L160:
	.loc 1 583 0
	movl	-4(%ebp), %eax
	movl	%eax, %edx
	negl	%edx
	movl	%edx, -28(%ebp)
	jmp	.L162
.L161:
	movl	-4(%ebp), %eax
	movl	%eax, -28(%ebp)
.L162:
	movl	-28(%ebp), %edx
	movl	%edx, -36(%ebp)
.L150:
	movl	-36(%ebp), %eax
	.loc 1 584 0
	leave
	ret
.LFE16:
	.size	__fixdfsi, .-__fixdfsi
.globl __fixdfdi
	.type	__fixdfdi, @function
__fixdfdi:
.LFB17:
	.loc 1 589 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%edi
.LCFI54:
	pushl	%esi
.LCFI55:
	subl	$56, %esp
.LCFI56:
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 594 0
	fldl	-48(%ebp)
	fstpl	-32(%ebp)
	.loc 1 596 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	jne	.L165
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L165
	.loc 1 597 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L168
.L165:
	.loc 1 599 0
	movl	-32(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	subl	$1086, %eax
	movl	%eax, -12(%ebp)
	.loc 1 600 0
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	%esi, %eax
	andb	$255, %ah
	movl	%edi, %edx
	andl	$1048575, %edx
	movl	%eax, %ecx
	orb	$0, %ch
	movl	%ecx, -24(%ebp)
	movl	%edx, %eax
	orl	$1048576, %eax
	movl	%eax, -20(%ebp)
	.loc 1 602 0
	cmpl	$0, -12(%ebp)
	jle	.L169
	.loc 1 603 0
	movl	$0, -24(%ebp)
	movl	$-2147483648, -20(%ebp)
	.loc 1 604 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	js	.L171
	.loc 1 605 0
	addl	$-1, -24(%ebp)
	adcl	$-1, -20(%ebp)
.L171:
	.loc 1 606 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	jmp	.L168
.L169:
	.loc 1 610 0
	cmpl	$0, -12(%ebp)
	jns	.L173
	cmpl	$-64, -12(%ebp)
	jle	.L173
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L173
	.loc 1 611 0
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L181
	movl	%edx, %eax
	sarl	$31, %edx
.L181:
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 615 0
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	js	.L177
	jmp	.L178
.L173:
	.loc 1 613 0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	jmp	.L168
.L177:
	.loc 1 615 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	jmp	.L179
.L178:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L179:
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
.L168:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	.loc 1 616 0
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	__fixdfdi, .-__fixdfdi
.globl __fixunsdfsi
	.type	__fixunsdfsi, @function
__fixunsdfsi:
.LFB18:
	.loc 1 621 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	subl	$32, %esp
.LCFI59:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 626 0
	fldl	-24(%ebp)
	fstpl	-16(%ebp)
	.loc 1 628 0
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	.L183
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L183
	.loc 1 629 0
	movl	$0, -28(%ebp)
	jmp	.L186
.L183:
	.loc 1 631 0
	movl	-16(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	subl	$1054, %eax
	movl	%eax, -8(%ebp)
	.loc 1 632 0
	movl	-16(%ebp), %eax
	andl	$1048575, %eax
	orl	$1048576, %eax
	sall	$11, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	shrl	$21, %eax
	orl	%edx, %eax
	movl	%eax, -4(%ebp)
	.loc 1 634 0
	cmpl	$0, -8(%ebp)
	jle	.L187
	.loc 1 635 0
	movl	$-1, -28(%ebp)
	jmp	.L186
.L187:
	.loc 1 638 0
	cmpl	$0, -8(%ebp)
	jns	.L189
	cmpl	$-32, -8(%ebp)
	jle	.L189
	cmpl	$0, -4(%ebp)
	je	.L189
	.loc 1 639 0
	movl	-8(%ebp), %eax
	movl	%eax, %ecx
	negl	%ecx
	shrl	%cl, -4(%ebp)
	.loc 1 643 0
	movl	-4(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L186
.L189:
	.loc 1 641 0
	movl	$0, -28(%ebp)
.L186:
	movl	-28(%ebp), %eax
	.loc 1 644 0
	leave
	ret
.LFE18:
	.size	__fixunsdfsi, .-__fixunsdfsi
.globl __fixunsdfdi
	.type	__fixunsdfdi, @function
__fixunsdfdi:
.LFB19:
	.loc 1 649 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	subl	$48, %esp
.LCFI62:
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 654 0
	fldl	-40(%ebp)
	fstpl	-24(%ebp)
	.loc 1 656 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L195
	.loc 1 657 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	jmp	.L197
.L195:
	.loc 1 659 0
	movl	-24(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	subl	$1086, %eax
	movl	%eax, -4(%ebp)
	.loc 1 661 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 663 0
	cmpl	$0, -4(%ebp)
	jle	.L198
	.loc 1 664 0
	movl	$-1, -48(%ebp)
	movl	$-1, -44(%ebp)
	jmp	.L197
.L198:
	.loc 1 667 0
	cmpl	$0, -4(%ebp)
	jns	.L200
	cmpl	$-64, -4(%ebp)
	jle	.L200
	movl	-16(%ebp), %eax
	orl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L200
	.loc 1 668 0
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L205
	movl	%edx, %eax
	xorl	%edx, %edx
.L205:
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	.loc 1 672 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	jmp	.L197
.L200:
	.loc 1 670 0
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
.L197:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	.loc 1 673 0
	leave
	ret
.LFE19:
	.size	__fixunsdfdi, .-__fixunsdfdi
.globl __adddf3
	.type	__adddf3, @function
__adddf3:
.LFB20:
	.loc 1 678 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%edi
.LCFI65:
	pushl	%esi
.LCFI66:
	pushl	%ebx
.LCFI67:
	subl	$76, %esp
.LCFI68:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -76(%ebp)
	.loc 1 682 0
	movl	$0, -20(%ebp)
	.loc 1 684 0
	fldl	-72(%ebp)
	fstpl	-56(%ebp)
	.loc 1 685 0
	fldl	-80(%ebp)
	fstpl	-64(%ebp)
	.loc 1 688 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L207
	.loc 1 690 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L209
	.loc 1 691 0
	fldl	-64(%ebp)
	fstpl	-56(%ebp)
	.loc 1 692 0
	jmp	.L207
.L209:
	.loc 1 695 0
	movl	-56(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	movl	%eax, -28(%ebp)
	.loc 1 696 0
	movl	-64(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	movl	%eax, -24(%ebp)
	.loc 1 698 0
	movl	-24(%ebp), %eax
	addl	$54, %eax
	cmpl	-28(%ebp), %eax
	jl	.L207
	.loc 1 700 0
	movl	-28(%ebp), %eax
	addl	$54, %eax
	cmpl	-24(%ebp), %eax
	jge	.L212
	.loc 1 701 0
	fldl	-64(%ebp)
	fstpl	-56(%ebp)
	.loc 1 702 0
	jmp	.L207
.L212:
	.loc 1 706 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%edx, %edi
	andl	$1048575, %edi
	movl	%esi, %eax
	orb	$0, %ah
	movl	%edi, %edx
	orl	$1048576, %edx
	shldl	$9, %eax, %edx
	sall	$9, %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 707 0
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%edx, %edi
	andl	$1048575, %edi
	movl	%esi, %eax
	orb	$0, %ah
	movl	%edi, %edx
	orl	$1048576, %edx
	shldl	$9, %eax, %edx
	sall	$9, %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 709 0
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	jns	.L214
	.loc 1 710 0
	negl	-48(%ebp)
	adcl	$0, -44(%ebp)
	negl	-44(%ebp)
.L214:
	.loc 1 711 0
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jns	.L216
	.loc 1 712 0
	negl	-40(%ebp)
	adcl	$0, -36(%ebp)
	negl	-36(%ebp)
.L216:
	.loc 1 714 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	.L218
	.loc 1 715 0
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L237
	movl	%edx, %eax
	sarl	$31, %edx
.L237:
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	jmp	.L220
.L218:
	.loc 1 717 0
	movl	-28(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	%edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	.L236
	movl	%edx, %eax
	sarl	$31, %edx
.L236:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 718 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L220:
	.loc 1 720 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	%eax, -48(%ebp)
	adcl	%edx, -44(%ebp)
	.loc 1 722 0
	cmpl	$0, -44(%ebp)
	jns	.L221
	.loc 1 723 0
	negl	-48(%ebp)
	adcl	$0, -44(%ebp)
	negl	-44(%ebp)
	.loc 1 724 0
	movl	$-2147483648, -20(%ebp)
	jmp	.L225
.L221:
	.loc 1 725 0
	movl	-48(%ebp), %eax
	orl	-44(%ebp), %eax
	testl	%eax, %eax
	jne	.L225
	.loc 1 726 0
	fldz
	fstpl	-56(%ebp)
	.loc 1 727 0
	jmp	.L207
.L226:
	.loc 1 732 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 733 0
	subl	$1, -28(%ebp)
.L225:
	.loc 1 731 0
	movl	-48(%ebp), %eax
	andl	$0, %eax
	movl	-44(%ebp), %edx
	andl	$-536870912, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L226
	.loc 1 737 0
	movl	-48(%ebp), %eax
	andl	$0, %eax
	movl	-44(%ebp), %edx
	andl	$-1073741824, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L228
	.loc 1 738 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 739 0
	addl	$1, -28(%ebp)
.L228:
	.loc 1 743 0
	movl	-48(%ebp), %eax
	andl	$512, %eax
	movl	-44(%ebp), %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L230
	movl	$256, -88(%ebp)
	movl	$0, -84(%ebp)
	jmp	.L232
.L230:
	movl	$255, -88(%ebp)
	movl	$0, -84(%ebp)
.L232:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	addl	%eax, -48(%ebp)
	adcl	%edx, -44(%ebp)
	.loc 1 746 0
	movl	-48(%ebp), %eax
	andl	$0, %eax
	movl	-44(%ebp), %edx
	andl	$-1073741824, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L233
	.loc 1 747 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 748 0
	addl	$1, -28(%ebp)
.L233:
	.loc 1 752 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	$9, %edx, %eax
	sarl	$9, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 755 0
	movl	-48(%ebp), %eax
	andb	$255, %ah
	movl	-44(%ebp), %edx
	andl	$-1048577, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 758 0
	movl	-28(%ebp), %eax
	sall	$20, %eax
	addl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	%esi, %eax
	orl	-48(%ebp), %eax
	movl	%edi, %edx
	orl	-44(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
.L207:
	.loc 1 761 0
	fldl	-56(%ebp)
	.loc 1 762 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	__adddf3, .-__adddf3
.globl __subdf3
	.type	__subdf3, @function
__subdf3:
.LFB21:
	.loc 1 767 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$68, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 770 0
	fldl	-32(%ebp)
	fstpl	-16(%ebp)
	.loc 1 771 0
	fldl	-40(%ebp)
	fstpl	-24(%ebp)
	.loc 1 774 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L239
	.loc 1 775 0
	fldl	-16(%ebp)
	fstpl	-48(%ebp)
	jmp	.L241
.L239:
	.loc 1 777 0
	movl	-24(%ebp), %eax
	xorl	$-2147483648, %eax
	movl	%eax, -24(%ebp)
	.loc 1 778 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L242
	.loc 1 779 0
	fldl	-24(%ebp)
	fstpl	-48(%ebp)
	jmp	.L241
.L242:
	.loc 1 780 0
	fldl	-24(%ebp)
	fstpl	8(%esp)
	fldl	-32(%ebp)
	fstpl	(%esp)
	call	__adddf3@PLT
	fstpl	-48(%ebp)
.L241:
	fldl	-48(%ebp)
	.loc 1 781 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	__subdf3, .-__subdf3
.globl __muldf3
	.type	__muldf3, @function
__muldf3:
.LFB22:
	.loc 1 786 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%edi
.LCFI75:
	pushl	%esi
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$84, %esp
.LCFI78:
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
	.loc 1 792 0
	fldl	-56(%ebp)
	fstpl	-40(%ebp)
	.loc 1 793 0
	fldl	-64(%ebp)
	fstpl	-48(%ebp)
	.loc 1 795 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L246
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L248
.L246:
	.loc 1 796 0
	fldz
	fstpl	-40(%ebp)
	.loc 1 797 0
	jmp	.L249
.L248:
	.loc 1 801 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	andl	$-2147483648, %edx
	movl	-48(%ebp), %eax
	andl	$-2147483648, %eax
	xorl	%edx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 802 0
	movl	-40(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	subl	$1022, %eax
	movl	%eax, -24(%ebp)
	.loc 1 803 0
	movl	-48(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	addl	%eax, -24(%ebp)
	.loc 1 805 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%edx, %edi
	andl	$1048575, %edi
	movl	%esi, %eax
	orb	$0, %ah
	movl	%edi, %edx
	orl	$1048576, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 806 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%edx, %edi
	andl	$1048575, %edi
	movl	%esi, %eax
	orb	$0, %ah
	movl	%edi, %edx
	orl	$1048576, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 809 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shrdl	$21, %edi, %esi
	sarl	$21, %edi
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	shrdl	$21, %edx, %eax
	sarl	$21, %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-96(%ebp), %ecx
	imull	%edi, %ecx
	movl	-92(%ebp), %edx
	imull	%esi, %edx
	movl	%edx, -68(%ebp)
	addl	-68(%ebp), %ecx
	movl	-96(%ebp), %eax
	mull	%esi
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	addl	-92(%ebp), %ecx
	movl	%ecx, -92(%ebp)
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	.loc 1 810 0
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%esi, %eax
	andl	$2097151, %eax
	movl	%edi, %edx
	andl	$0, %edx
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	shrdl	$21, %edi, %esi
	sarl	$21, %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-88(%ebp), %ecx
	imull	%edx, %ecx
	movl	-84(%ebp), %edi
	imull	%eax, %edi
	movl	%edi, -72(%ebp)
	addl	-72(%ebp), %ecx
	mull	-88(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrdl	$21, %edx, %eax
	sarl	$21, %edx
	addl	%eax, -32(%ebp)
	adcl	%edx, -28(%ebp)
	.loc 1 811 0
	movl	-48(%ebp), %esi
	movl	-44(%ebp), %edi
	movl	%esi, %eax
	andl	$2097151, %eax
	movl	%edi, %edx
	andl	$0, %edx
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-88(%ebp), %esi
	movl	-84(%ebp), %edi
	shrdl	$21, %edi, %esi
	sarl	$21, %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-88(%ebp), %ecx
	imull	%edx, %ecx
	movl	-84(%ebp), %edi
	imull	%eax, %edi
	movl	%edi, -76(%ebp)
	addl	-76(%ebp), %ecx
	mull	-88(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrdl	$21, %edx, %eax
	sarl	$21, %edx
	addl	%eax, -32(%ebp)
	adcl	%edx, -28(%ebp)
	.loc 1 813 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	$2, %edx, %eax
	shrl	$2, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 814 0
	movl	-32(%ebp), %eax
	andl	$0, %eax
	movl	-28(%ebp), %edx
	andl	$536870912, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L250
	.loc 1 816 0
	addl	$256, -32(%ebp)
	adcl	$0, -28(%ebp)
	.loc 1 817 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	$9, %edx, %eax
	shrl	$9, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	jmp	.L252
.L250:
	.loc 1 820 0
	addl	$128, -32(%ebp)
	adcl	$0, -28(%ebp)
	.loc 1 821 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	$8, %edx, %eax
	shrl	$8, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 822 0
	subl	$1, -24(%ebp)
.L252:
	.loc 1 824 0
	movl	-32(%ebp), %eax
	andl	$0, %eax
	movl	-28(%ebp), %edx
	andl	$2097152, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L253
	.loc 1 825 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 826 0
	addl	$1, -24(%ebp)
.L253:
	.loc 1 829 0
	movl	-32(%ebp), %eax
	andb	$255, %ah
	movl	-28(%ebp), %edx
	andl	$-1048577, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 832 0
	movl	-24(%ebp), %eax
	sall	$20, %eax
	addl	-20(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %eax
	orl	-32(%ebp), %eax
	movl	%edi, %edx
	orl	-28(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.L249:
	.loc 1 834 0
	fldl	-40(%ebp)
	.loc 1 835 0
	addl	$84, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	__muldf3, .-__muldf3
.globl __divdf3
	.type	__divdf3, @function
__divdf3:
.LFB23:
	.loc 1 840 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%edi
.LCFI81:
	pushl	%esi
.LCFI82:
	subl	$104, %esp
.LCFI83:
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 845 0
	fldl	-64(%ebp)
	fstpl	-40(%ebp)
	.loc 1 846 0
	fldl	-72(%ebp)
	fstpl	-48(%ebp)
	.loc 1 849 0
	movl	-40(%ebp), %eax
	sarl	$20, %eax
	movl	%eax, %edx
	andl	$2047, %edx
	movl	-48(%ebp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1022, %eax
	movl	%eax, -16(%ebp)
	.loc 1 852 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	andl	$-2147483648, %edx
	movl	-48(%ebp), %eax
	andl	$-2147483648, %eax
	xorl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 855 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L257
	.loc 1 857 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L259
	.loc 1 858 0
	movl	$-1, -40(%ebp)
	movl	$2147483647, -36(%ebp)
	jmp	.L262
.L259:
	.loc 1 860 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	.loc 1 861 0
	jmp	.L262
.L257:
	.loc 1 865 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L263
	.loc 1 866 0
	movl	-40(%ebp), %eax
	andl	$-2147483648, %eax
	addl	$2146435072, %eax
	movl	$0, %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 867 0
	jmp	.L262
.L263:
	.loc 1 872 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%edx, %edi
	andl	$1048575, %edi
	movl	%esi, %eax
	orb	$0, %ah
	movl	%edi, %edx
	orl	$1048576, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 873 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, %esi
	andl	$-1, %esi
	movl	%edx, %edi
	andl	$1048575, %edi
	movl	%esi, %eax
	orb	$0, %ah
	movl	%edi, %edx
	orl	$1048576, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 876 0
	movl	-40(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	%esi, -104(%ebp)
	movl	%edi, -100(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	-92(%ebp), %edx
	cmpl	%edx, -100(%ebp)
	jg	.L265
	movl	-92(%ebp), %ecx
	cmpl	%ecx, -100(%ebp)
	jl	.L267
	movl	-96(%ebp), %esi
	cmpl	%esi, -104(%ebp)
	jae	.L265
.L267:
	.loc 1 877 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 878 0
	subl	$1, -16(%ebp)
.L265:
	.loc 1 882 0
	movl	$0, -32(%ebp)
	movl	$2097152, -28(%ebp)
	.loc 1 883 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 884 0
	jmp	.L268
.L269:
	.loc 1 885 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	%edx, -84(%ebp)
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %ecx
	cmpl	%ecx, -84(%ebp)
	jl	.L270
	movl	-76(%ebp), %esi
	cmpl	%esi, -84(%ebp)
	jg	.L272
	movl	-80(%ebp), %edi
	cmpl	%edi, -88(%ebp)
	jb	.L270
.L272:
	.loc 1 887 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	movl	-24(%ebp), %eax
	orl	%ecx, %eax
	movl	-20(%ebp), %edx
	orl	%esi, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 888 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.L270:
	.loc 1 890 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 891 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.L268:
	.loc 1 884 0
	movl	-32(%ebp), %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L269
	.loc 1 895 0
	addl	$1, -24(%ebp)
	adcl	$0, -20(%ebp)
	.loc 1 898 0
	addl	$1, -16(%ebp)
	.loc 1 899 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 901 0
	movl	-24(%ebp), %eax
	andb	$255, %ah
	movl	-20(%ebp), %edx
	andl	$-1048577, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 904 0
	movl	-16(%ebp), %eax
	sall	$20, %eax
	addl	-12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %edi
	movl	$0, %esi
	movl	%esi, %eax
	orl	-24(%ebp), %eax
	movl	%edi, %edx
	orl	-20(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
.L262:
	.loc 1 907 0
	fldl	-40(%ebp)
	.loc 1 908 0
	addl	$104, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	__divdf3, .-__divdf3
.globl __gtdf2
	.type	__gtdf2, @function
__gtdf2:
.LFB24:
	.loc 1 912 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$52, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 913 0
	fldl	-24(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fldl	-16(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fxch	%st(1)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__cmpdf2@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	.loc 1 914 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	__gtdf2, .-__gtdf2
.globl __gedf2
	.type	__gedf2, @function
__gedf2:
.LFB25:
	.loc 1 918 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$52, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 919 0
	fldl	-24(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fldl	-16(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fxch	%st(1)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__cmpdf2@PLT
	testl	%eax, %eax
	js	.L278
	movl	$0, -32(%ebp)
	jmp	.L280
.L278:
	movl	$-1, -32(%ebp)
.L280:
	movl	-32(%ebp), %eax
	.loc 1 920 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	__gedf2, .-__gedf2
.globl __ltdf2
	.type	__ltdf2, @function
__ltdf2:
.LFB26:
	.loc 1 924 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%ebx
.LCFI94:
	subl	$52, %esp
.LCFI95:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 925 0
	fldl	-24(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fldl	-16(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fxch	%st(1)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__cmpdf2@PLT
	shrl	$31, %eax
	negl	%eax
	.loc 1 926 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	__ltdf2, .-__ltdf2
.globl __ledf2
	.type	__ledf2, @function
__ledf2:
.LFB27:
	.loc 1 930 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	pushl	%ebx
.LCFI98:
	subl	$52, %esp
.LCFI99:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 931 0
	fldl	-24(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fldl	-16(%ebp)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fxch	%st(1)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__cmpdf2@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	.loc 1 932 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	__ledf2, .-__ledf2
.globl __eqdf2
	.type	__eqdf2, @function
__eqdf2:
.LFB28:
	.loc 1 936 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%edi
.LCFI102:
	pushl	%esi
.LCFI103:
	subl	$24, %esp
.LCFI104:
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 937 0
	leal	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	leal	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-32(%ebp), %eax
	xorl	%esi, %eax
	movl	-28(%ebp), %edx
	xorl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 938 0
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	__eqdf2, .-__eqdf2
.globl __nedf2
	.type	__nedf2, @function
__nedf2:
.LFB29:
	.loc 1 942 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%edi
.LCFI107:
	pushl	%esi
.LCFI108:
	subl	$24, %esp
.LCFI109:
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 943 0
	leal	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	leal	-24(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-32(%ebp), %eax
	xorl	%esi, %eax
	movl	-28(%ebp), %edx
	xorl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 1 944 0
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	__nedf2, .-__nedf2
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
	.long	.LFB2
	.long	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI4-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI5
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI11-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI14-.LFB6
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI18-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI21-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI22
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI26-.LFB9
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
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI30-.LFB10
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
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI34-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI37-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI40-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI43-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI46-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI49-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI52-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI53
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI57-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI60-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI63-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI68-.LCFI64
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI69-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI72-.LCFI70
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI73-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI74
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI79-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI80
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI84-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI85
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI88-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI89
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI92-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI95-.LCFI93
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI96-.LFB27
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI100-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI104-.LCFI101
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI105-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI106
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE54:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB2-.Ltext0
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
	.long	.LFE2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI5-.Ltext0
	.long	.LFE3-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB4-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI9-.Ltext0
	.long	.LFE4-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB5-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI12-.Ltext0
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB8-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI21-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI22-.Ltext0
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB13-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI41-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB15-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI46-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI47-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB18-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI57-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI58-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB19-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI60-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI61-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB20-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI63-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI64-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB22-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI73-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI74-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB24-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI84-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI85-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB25-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI88-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI89-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB26-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI92-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI93-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB29-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI106-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xc2f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/floatlib.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.long	0xc6
	.byte	0x8
	.byte	0x1
	.byte	0x55
	.uleb128 0x3
	.string	"upper"
	.byte	0x1
	.byte	0x56
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x3
	.string	"lower"
	.byte	0x1
	.byte	0x57
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.long	0x118
	.string	"double_long"
	.byte	0x8
	.byte	0x1
	.byte	0x4d
	.uleb128 0x6
	.string	"d"
	.byte	0x1
	.byte	0x4e
	.long	0x118
	.uleb128 0x6
	.string	"l"
	.byte	0x1
	.byte	0x58
	.long	0x9d
	.uleb128 0x6
	.string	"ll"
	.byte	0x1
	.byte	0x5a
	.long	0x122
	.byte	0x0
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x5
	.long	0x159
	.string	"float_long"
	.byte	0x4
	.byte	0x1
	.byte	0x5e
	.uleb128 0x6
	.string	"f"
	.byte	0x1
	.byte	0x5f
	.long	0x159
	.uleb128 0x6
	.string	"l"
	.byte	0x1
	.byte	0x60
	.long	0xc6
	.byte	0x0
	.uleb128 0x4
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x7
	.long	0x212
	.byte	0x1
	.string	"__addsf3"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.long	0x159
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0x8
	.string	"a1"
	.byte	0x1
	.byte	0x65
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"a2"
	.byte	0x1
	.byte	0x65
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"mant1"
	.byte	0x1
	.byte	0x67
	.long	0xc6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"mant2"
	.byte	0x1
	.byte	0x67
	.long	0xc6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.string	"fl1"
	.byte	0x1
	.byte	0x68
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"fl2"
	.byte	0x1
	.byte	0x68
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"exp1"
	.byte	0x1
	.byte	0x69
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"exp2"
	.byte	0x1
	.byte	0x69
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.long	.LASF0
	.byte	0x1
	.byte	0x6a
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.long	.LASF2
	.byte	0x1
	.byte	0xbf
	.long	.L4
	.byte	0x0
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x7
	.long	0x272
	.byte	0x1
	.string	"__subsf3"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.long	0x159
	.long	.LFB3
	.long	.LFE3
	.long	.LLST1
	.uleb128 0x8
	.string	"a1"
	.byte	0x1
	.byte	0xc5
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"a2"
	.byte	0x1
	.byte	0xc5
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"fl1"
	.byte	0x1
	.byte	0xc7
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x9
	.string	"fl2"
	.byte	0x1
	.byte	0xc7
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x7
	.long	0x2cb
	.byte	0x1
	.string	"__cmpsf2"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.long	0xc6
	.long	.LFB4
	.long	.LFE4
	.long	.LLST2
	.uleb128 0x8
	.string	"a1"
	.byte	0x1
	.byte	0xd9
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"a2"
	.byte	0x1
	.byte	0xd9
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"fl1"
	.byte	0x1
	.byte	0xdb
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.string	"fl2"
	.byte	0x1
	.byte	0xdb
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x7
	.long	0x35a
	.byte	0x1
	.string	"__mulsf3"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.long	0x159
	.long	.LFB5
	.long	.LFE5
	.long	.LLST3
	.uleb128 0x8
	.string	"a1"
	.byte	0x1
	.byte	0xee
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"a2"
	.byte	0x1
	.byte	0xee
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"fl1"
	.byte	0x1
	.byte	0xf0
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"fl2"
	.byte	0x1
	.byte	0xf0
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.long	.LASF1
	.byte	0x1
	.byte	0xf1
	.long	0xd2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"exp"
	.byte	0x1
	.byte	0xf2
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xa
	.long	.LASF0
	.byte	0x1
	.byte	0xf3
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xc
	.long	.LASF2
	.byte	0x1
	.value	0x121
	.long	.L52
	.byte	0x0
	.uleb128 0xd
	.long	0x3f5
	.byte	0x1
	.string	"__divsf3"
	.byte	0x1
	.value	0x128
	.byte	0x1
	.long	0x159
	.long	.LFB6
	.long	.LFE6
	.long	.LLST4
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x127
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x127
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.string	"fl1"
	.byte	0x1
	.value	0x129
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"fl2"
	.byte	0x1
	.value	0x129
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF1
	.byte	0x1
	.value	0x12a
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"mask"
	.byte	0x1
	.value	0x12b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x12c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF0
	.byte	0x1
	.value	0x12c
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xd
	.long	0x456
	.byte	0x1
	.string	"__floatsidf"
	.byte	0x1
	.value	0x16a
	.byte	0x1
	.long	0x118
	.long	.LFB7
	.long	.LFE7
	.long	.LLST5
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x169
	.long	0xc6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF0
	.byte	0x1
	.value	0x16b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x16b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.string	"dl"
	.byte	0x1
	.value	0x16c
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xd
	.long	0x4a8
	.byte	0x1
	.string	"__floatdidf"
	.byte	0x1
	.value	0x191
	.byte	0x1
	.long	0x118
	.long	.LFB8
	.long	.LFE8
	.long	.LLST6
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x190
	.long	0x122
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x192
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"dl"
	.byte	0x1
	.value	0x193
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0x4dd
	.byte	0x1
	.string	"__floatsisf"
	.byte	0x1
	.value	0x1b0
	.byte	0x1
	.long	0x159
	.long	.LFB9
	.long	.LFE9
	.long	.LLST7
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x1af
	.long	0xc6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xd
	.long	0x512
	.byte	0x1
	.string	"__floatdisf"
	.byte	0x1
	.value	0x1b6
	.byte	0x1
	.long	0x159
	.long	.LFB10
	.long	.LFE10
	.long	.LLST8
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x1b5
	.long	0x122
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xd
	.long	0x553
	.byte	0x1
	.string	"__negsf2"
	.byte	0x1
	.value	0x1bd
	.byte	0x1
	.long	0x159
	.long	.LFB11
	.long	.LFE11
	.long	.LLST9
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x1bc
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"fl1"
	.byte	0x1
	.value	0x1be
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.long	0x594
	.byte	0x1
	.string	"__negdf2"
	.byte	0x1
	.value	0x1cb
	.byte	0x1
	.long	0x118
	.long	.LFB12
	.long	.LFE12
	.long	.LLST10
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x1ca
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"dl1"
	.byte	0x1
	.value	0x1cc
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xd
	.long	0x5f7
	.byte	0x1
	.string	"__extendsfdf2"
	.byte	0x1
	.value	0x1da
	.byte	0x1
	.long	0x118
	.long	.LFB13
	.long	.LFE13
	.long	.LLST11
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x1d9
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"fl1"
	.byte	0x1
	.value	0x1db
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.string	"dl"
	.byte	0x1
	.value	0x1dc
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x1dd
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.long	0x669
	.byte	0x1
	.string	"__truncdfsf2"
	.byte	0x1
	.value	0x1f3
	.byte	0x1
	.long	0x159
	.long	.LFB14
	.long	.LFE14
	.long	.LLST12
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x1f2
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x1f4
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.string	"mant"
	.byte	0x1
	.value	0x1f5
	.long	0xc6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.string	"fl"
	.byte	0x1
	.value	0x1f6
	.long	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"dl1"
	.byte	0x1
	.value	0x1f7
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0x6c7
	.byte	0x1
	.string	"__cmpdf2"
	.byte	0x1
	.value	0x218
	.byte	0x1
	.long	0xc6
	.long	.LFB15
	.long	.LFE15
	.long	.LLST13
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x217
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x217
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"dl1"
	.byte	0x1
	.value	0x219
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.string	"dl2"
	.byte	0x1
	.value	0x219
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xd
	.long	0x725
	.byte	0x1
	.string	"__fixdfsi"
	.byte	0x1
	.value	0x231
	.byte	0x1
	.long	0xc6
	.long	.LFB16
	.long	.LFE16
	.long	.LLST14
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x230
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"dl1"
	.byte	0x1
	.value	0x232
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x233
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.string	"l"
	.byte	0x1
	.value	0x234
	.long	0xc6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.long	0x783
	.byte	0x1
	.string	"__fixdfdi"
	.byte	0x1
	.value	0x24d
	.byte	0x1
	.long	0x122
	.long	.LFB17
	.long	.LFE17
	.long	.LLST15
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x24c
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"dl1"
	.byte	0x1
	.value	0x24e
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x24f
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"l"
	.byte	0x1
	.value	0x250
	.long	0x122
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0x7e4
	.byte	0x1
	.string	"__fixunsdfsi"
	.byte	0x1
	.value	0x26d
	.byte	0x1
	.long	0xd2
	.long	.LFB18
	.long	.LFE18
	.long	.LLST16
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x26c
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"dl1"
	.byte	0x1
	.value	0x26e
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x26f
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.string	"l"
	.byte	0x1
	.value	0x270
	.long	0xd2
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.long	0x845
	.byte	0x1
	.string	"__fixunsdfdi"
	.byte	0x1
	.value	0x289
	.byte	0x1
	.long	0x845
	.long	.LFB19
	.long	.LFE19
	.long	.LLST17
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x288
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"dl1"
	.byte	0x1
	.value	0x28a
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x28b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.string	"l"
	.byte	0x1
	.value	0x28c
	.long	0x845
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0xd
	.long	0x91d
	.byte	0x1
	.string	"__adddf3"
	.byte	0x1
	.value	0x2a6
	.byte	0x1
	.long	0x118
	.long	.LFB20
	.long	.LFE20
	.long	.LLST18
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x2a5
	.long	0x118
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x2a5
	.long	0x118
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.string	"mant1"
	.byte	0x1
	.value	0x2a7
	.long	0x122
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"mant2"
	.byte	0x1
	.value	0x2a7
	.long	0x122
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"fl1"
	.byte	0x1
	.value	0x2a8
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"fl2"
	.byte	0x1
	.value	0x2a8
	.long	0xe7
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.string	"exp1"
	.byte	0x1
	.value	0x2a9
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"exp2"
	.byte	0x1
	.value	0x2a9
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF0
	.byte	0x1
	.value	0x2aa
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LASF2
	.byte	0x1
	.value	0x2f8
	.long	.L207
	.byte	0x0
	.uleb128 0xd
	.long	0x97b
	.byte	0x1
	.string	"__subdf3"
	.byte	0x1
	.value	0x2ff
	.byte	0x1
	.long	0x118
	.long	.LFB21
	.long	.LFE21
	.long	.LLST19
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x2fe
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x2fe
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"fl1"
	.byte	0x1
	.value	0x300
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"fl2"
	.byte	0x1
	.value	0x300
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0xa13
	.byte	0x1
	.string	"__muldf3"
	.byte	0x1
	.value	0x312
	.byte	0x1
	.long	0x118
	.long	.LFB22
	.long	.LFE22
	.long	.LLST20
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x311
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x311
	.long	0x118
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.string	"fl1"
	.byte	0x1
	.value	0x313
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"fl2"
	.byte	0x1
	.value	0x313
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF1
	.byte	0x1
	.value	0x314
	.long	0x845
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x315
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF0
	.byte	0x1
	.value	0x316
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LASF2
	.byte	0x1
	.value	0x341
	.long	.L249
	.byte	0x0
	.uleb128 0xd
	.long	0xabc
	.byte	0x1
	.string	"__divdf3"
	.byte	0x1
	.value	0x348
	.byte	0x1
	.long	0x118
	.long	.LFB23
	.long	.LFE23
	.long	.LLST21
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x347
	.long	0x118
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x347
	.long	0x118
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.string	"fl1"
	.byte	0x1
	.value	0x349
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"fl2"
	.byte	0x1
	.value	0x349
	.long	0xe7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"mask"
	.byte	0x1
	.value	0x34a
	.long	0x122
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF1
	.byte	0x1
	.value	0x34a
	.long	0x122
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"exp"
	.byte	0x1
	.value	0x34b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF0
	.byte	0x1
	.value	0x34b
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LASF2
	.byte	0x1
	.value	0x38a
	.long	.L262
	.byte	0x0
	.uleb128 0xd
	.long	0xafb
	.byte	0x1
	.string	"__gtdf2"
	.byte	0x1
	.value	0x390
	.byte	0x1
	.long	0x212
	.long	.LFB24
	.long	.LFE24
	.long	.LLST22
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x38f
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x38f
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0xb3a
	.byte	0x1
	.string	"__gedf2"
	.byte	0x1
	.value	0x396
	.byte	0x1
	.long	0x212
	.long	.LFB25
	.long	.LFE25
	.long	.LLST23
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x395
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x395
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0xb79
	.byte	0x1
	.string	"__ltdf2"
	.byte	0x1
	.value	0x39c
	.byte	0x1
	.long	0x212
	.long	.LFB26
	.long	.LFE26
	.long	.LLST24
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x39b
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x39b
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0xbb8
	.byte	0x1
	.string	"__ledf2"
	.byte	0x1
	.value	0x3a2
	.byte	0x1
	.long	0x212
	.long	.LFB27
	.long	.LFE27
	.long	.LLST25
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x3a1
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x3a1
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xd
	.long	0xbf7
	.byte	0x1
	.string	"__eqdf2"
	.byte	0x1
	.value	0x3a8
	.byte	0x1
	.long	0x212
	.long	.LFB28
	.long	.LFE28
	.long	.LLST26
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x3a7
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x3a7
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.string	"__nedf2"
	.byte	0x1
	.value	0x3ae
	.byte	0x1
	.long	0x212
	.long	.LFB29
	.long	.LFE29
	.long	.LLST27
	.uleb128 0xe
	.string	"a1"
	.byte	0x1
	.value	0x3ad
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"a2"
	.byte	0x1
	.value	0x3ad
	.long	0x118
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
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
	.uleb128 0x3
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x193
	.value	0x2
	.long	.Ldebug_info0
	.long	0xc33
	.long	0x162
	.string	"__addsf3"
	.long	0x219
	.string	"__subsf3"
	.long	0x272
	.string	"__cmpsf2"
	.long	0x2cb
	.string	"__mulsf3"
	.long	0x35a
	.string	"__divsf3"
	.long	0x3f5
	.string	"__floatsidf"
	.long	0x456
	.string	"__floatdidf"
	.long	0x4a8
	.string	"__floatsisf"
	.long	0x4dd
	.string	"__floatdisf"
	.long	0x512
	.string	"__negsf2"
	.long	0x553
	.string	"__negdf2"
	.long	0x594
	.string	"__extendsfdf2"
	.long	0x5f7
	.string	"__truncdfsf2"
	.long	0x669
	.string	"__cmpdf2"
	.long	0x6c7
	.string	"__fixdfsi"
	.long	0x725
	.string	"__fixdfdi"
	.long	0x783
	.string	"__fixunsdfsi"
	.long	0x7e4
	.string	"__fixunsdfdi"
	.long	0x85f
	.string	"__adddf3"
	.long	0x91d
	.string	"__subdf3"
	.long	0x97b
	.string	"__muldf3"
	.long	0xa13
	.string	"__divdf3"
	.long	0xabc
	.string	"__gtdf2"
	.long	0xafb
	.string	"__gedf2"
	.long	0xb3a
	.string	"__ltdf2"
	.long	0xb79
	.string	"__ledf2"
	.long	0xbb8
	.string	"__eqdf2"
	.long	0xbf7
	.string	"__nedf2"
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
.LASF1:
	.string	"result"
.LASF2:
	.string	"test_done"
.LASF0:
	.string	"sign"
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
