	.file	"bitmap.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	bitmap_obstack_init
	.comm	bitmap_obstack_init,4,4
.globl bitmap_release_memory
	.type	bitmap_release_memory, @function
bitmap_release_memory:
.LFB18:
	.file 1 "../../../kgccfe/gnu/bitmap.c"
	.loc 1 173 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$36, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 174 0
	movl	$0, bitmap_free@GOTOFF(%ebx)
	.loc 1 175 0
	movl	bitmap_obstack_init@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L7
	.loc 1 177 0
	movl	$0, bitmap_obstack_init@GOTOFF(%ebx)
.LBB2:
	.loc 1 178 0
	leal	bitmap_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L4
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L4
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L7
.L4:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L7:
.LBE2:
	.loc 1 180 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	bitmap_release_memory, .-bitmap_release_memory
.globl bitmap_clear
	.type	bitmap_clear, @function
bitmap_clear:
.LFB21:
	.loc 1 263 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$24, %esp
.LCFI6:
	.loc 1 266 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L9
.L10:
	.loc 1 268 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 269 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_elem_to_freelist
	.loc 1 266 0
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
.L9:
	cmpl	$0, -8(%ebp)
	jne	.L10
	.loc 1 272 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 273 0
	leave
	ret
.LFE21:
	.size	bitmap_clear, .-bitmap_clear
	.type	bitmap_elem_to_freelist, @function
bitmap_elem_to_freelist:
.LFB15:
	.loc 1 59 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 60 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L14
	.loc 1 62 0
	movl	bitmap_free@GOTOFF(%ecx), %eax
	movl	12(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 63 0
	movl	12(%ebp), %eax
	movl	%eax, bitmap_free@GOTOFF(%ecx)
	jmp	.L17
.L14:
	.loc 1 67 0
	movl	bitmap_ggc_free@GOTOFF(%ecx), %eax
	movl	12(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 68 0
	movl	12(%ebp), %eax
	movl	%eax, bitmap_ggc_free@GOTOFF(%ecx)
.L17:
	.loc 1 70 0
	popl	%ebp
	ret
.LFE15:
	.size	bitmap_elem_to_freelist, .-bitmap_elem_to_freelist
.globl bitmap_copy
	.type	bitmap_copy, @function
bitmap_copy:
.LFB22:
	.loc 1 281 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$20, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 282 0
	movl	$0, -16(%ebp)
	.loc 1 287 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 290 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L19
.L20:
.LBB3:
	.loc 1 292 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_element_allocate
	movl	%eax, -8(%ebp)
	.loc 1 294 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 300 0
	movl	$0, -12(%ebp)
	jmp	.L21
.L22:
	.loc 1 301 0
	movl	-12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax,%edx,4), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax,%ecx,4)
	.loc 1 300 0
	addl	$1, -12(%ebp)
.L21:
	cmpl	$3, -12(%ebp)
	jle	.L22
	.loc 1 306 0
	cmpl	$0, -16(%ebp)
	jne	.L24
	.loc 1 308 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 309 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 310 0
	movl	-8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L26
.L24:
	.loc 1 314 0
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 315 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 316 0
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L26:
	.loc 1 319 0
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
.LBE3:
	.loc 1 290 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L19:
	cmpl	$0, -20(%ebp)
	jne	.L20
	.loc 1 321 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	bitmap_copy, .-bitmap_copy
	.type	bitmap_element_allocate, @function
bitmap_element_allocate:
.LFB17:
	.loc 1 108 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%esi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$64, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 111 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L30
	.loc 1 113 0
	movl	bitmap_free@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L32
	.loc 1 115 0
	movl	bitmap_free@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 116 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, bitmap_free@GOTOFF(%ebx)
	jmp	.L43
.L32:
	.loc 1 123 0
	movl	bitmap_obstack_init@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L35
	.loc 1 125 0
	movl	$1, bitmap_obstack_init@GOTOFF(%ebx)
	.loc 1 143 0
	movl	xmalloc@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	free@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	leal	bitmap_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_obstack_begin@PLT
.L35:
.LBB4:
	.loc 1 149 0
	leal	bitmap_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.LBB5:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	$28, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-20(%ebp), %eax
	jge	.L37
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L37:
	movl	-24(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE5:
.LBB6:
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L39
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L39:
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L41
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L41:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE6:
.LBE4:
	movl	%eax, -32(%ebp)
	jmp	.L43
.L30:
	.loc 1 155 0
	movl	bitmap_ggc_free@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L44
	.loc 1 157 0
	movl	bitmap_ggc_free@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 158 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, bitmap_ggc_free@GOTOFF(%ebx)
	jmp	.L43
.L44:
	.loc 1 161 0
	movl	$28, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -32(%ebp)
.L43:
	.loc 1 164 0
	movl	-32(%ebp), %eax
	addl	$12, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	.loc 1 166 0
	movl	-32(%ebp), %eax
	.loc 1 167 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE17:
	.size	bitmap_element_allocate, .-bitmap_element_allocate
.globl bitmap_clear_bit
	.type	bitmap_clear_bit, @function
bitmap_clear_bit:
.LFB24:
	.loc 1 368 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%esi
.LCFI20:
	subl	$36, %esp
.LCFI21:
	.loc 1 369 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_find_bit
	movl	%eax, -16(%ebp)
	.loc 1 371 0
	cmpl	$0, -16(%ebp)
	je	.L51
.LBB7:
	.loc 1 373 0
	movl	12(%ebp), %eax
	andl	$31, %eax
	movl	%eax, -12(%ebp)
	.loc 1 374 0
	movl	12(%ebp), %eax
	shrl	$5, %eax
	andl	$3, %eax
	movl	%eax, -8(%ebp)
	.loc 1 375 0
	movl	-8(%ebp), %esi
	movl	-8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax,%edx,4), %edx
	movl	-12(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	notl	%eax
	andl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax,%esi,4)
	.loc 1 378 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_element_zerop
	testl	%eax, %eax
	je	.L51
	.loc 1 379 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_element_free
.L51:
.LBE7:
	.loc 1 381 0
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE24:
	.size	bitmap_clear_bit, .-bitmap_clear_bit
	.type	bitmap_find_bit, @function
bitmap_find_bit:
.LFB23:
	.loc 1 332 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	subl	$20, %esp
.LCFI24:
	.loc 1 334 0
	movl	12(%ebp), %eax
	shrl	$7, %eax
	movl	%eax, -4(%ebp)
	.loc 1 336 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L53
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	jne	.L55
.L53:
	.loc 1 338 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L56
.L55:
	.loc 1 340 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	jbe	.L57
	.loc 1 341 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 342 0
	jmp	.L59
.L60:
	.loc 1 343 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L59:
	.loc 1 342 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L63
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	ja	.L60
	jmp	.L63
.L57:
	.loc 1 347 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 348 0
	jmp	.L64
.L65:
	.loc 1 349 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L64:
	.loc 1 348 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L63
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	jb	.L65
.L63:
	.loc 1 354 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 355 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 356 0
	cmpl	$0, -8(%ebp)
	je	.L67
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	je	.L67
	.loc 1 357 0
	movl	$0, -8(%ebp)
.L67:
	.loc 1 359 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
.L56:
	movl	-20(%ebp), %eax
	.loc 1 360 0
	leave
	ret
.LFE23:
	.size	bitmap_find_bit, .-bitmap_find_bit
	.type	bitmap_element_zerop, @function
bitmap_element_zerop:
.LFB19:
	.loc 1 187 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	subl	$20, %esp
.LCFI27:
	.loc 1 193 0
	movl	$0, -4(%ebp)
	jmp	.L72
.L73:
	.loc 1 194 0
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L74
	.loc 1 195 0
	movl	$0, -20(%ebp)
	jmp	.L76
.L74:
	.loc 1 193 0
	addl	$1, -4(%ebp)
.L72:
	cmpl	$3, -4(%ebp)
	jle	.L73
	.loc 1 197 0
	movl	$1, -20(%ebp)
.L76:
	movl	-20(%ebp), %eax
	.loc 1 199 0
	leave
	ret
.LFE19:
	.size	bitmap_element_zerop, .-bitmap_element_zerop
	.type	bitmap_element_free, @function
bitmap_element_free:
.LFB16:
	.loc 1 79 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	subl	$28, %esp
.LCFI30:
	.loc 1 80 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 81 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 83 0
	cmpl	$0, -4(%ebp)
	je	.L80
	.loc 1 84 0
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L80:
	.loc 1 86 0
	cmpl	$0, -8(%ebp)
	je	.L82
	.loc 1 87 0
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx)
.L82:
	.loc 1 89 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L84
	.loc 1 90 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L84:
	.loc 1 94 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L86
	.loc 1 96 0
	cmpl	$0, -8(%ebp)
	je	.L88
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L90
.L88:
	movl	-4(%ebp), %edx
	movl	%edx, -20(%ebp)
.L90:
	movl	8(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%eax)
	.loc 1 97 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L86
	.loc 1 98 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L86:
	.loc 1 100 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_elem_to_freelist
	.loc 1 101 0
	leave
	ret
.LFE16:
	.size	bitmap_element_free, .-bitmap_element_free
.globl bitmap_set_bit
	.type	bitmap_set_bit, @function
bitmap_set_bit:
.LFB25:
	.loc 1 389 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	subl	$24, %esp
.LCFI33:
	.loc 1 390 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_find_bit
	movl	%eax, -16(%ebp)
	.loc 1 391 0
	movl	12(%ebp), %eax
	shrl	$5, %eax
	andl	$3, %eax
	movl	%eax, -12(%ebp)
	.loc 1 392 0
	movl	12(%ebp), %eax
	andl	$31, %eax
	movl	%eax, -8(%ebp)
	.loc 1 393 0
	movl	-8(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -4(%ebp)
	.loc 1 395 0
	cmpl	$0, -16(%ebp)
	jne	.L94
	.loc 1 397 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_element_allocate
	movl	%eax, -16(%ebp)
	.loc 1 398 0
	movl	12(%ebp), %eax
	movl	%eax, %edx
	shrl	$7, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 399 0
	movl	-12(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 12(%edx,%ecx,4)
	.loc 1 400 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_element_link
	jmp	.L97
.L94:
	.loc 1 403 0
	movl	-12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, %edx
	orl	-4(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax,%ecx,4)
.L97:
	.loc 1 404 0
	leave
	ret
.LFE25:
	.size	bitmap_set_bit, .-bitmap_set_bit
	.type	bitmap_element_link, @function
bitmap_element_link:
.LFB20:
	.loc 1 207 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	subl	$16, %esp
.LCFI36:
	.loc 1 208 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 212 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L99
	.loc 1 214 0
	movl	12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 215 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L101
.L99:
	.loc 1 220 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L102
	.loc 1 222 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 223 0
	jmp	.L104
.L105:
	.loc 1 224 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.L104:
	.loc 1 223 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L106
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L105
.L106:
	.loc 1 227 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L108
	.loc 1 228 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L110
.L108:
	.loc 1 230 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.L110:
	.loc 1 232 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 233 0
	movl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 234 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L101
.L102:
	.loc 1 240 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 241 0
	jmp	.L111
.L112:
	.loc 1 242 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L111:
	.loc 1 241 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L113
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-8(%ebp), %eax
	jb	.L112
.L113:
	.loc 1 245 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L115
	.loc 1 246 0
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
.L115:
	.loc 1 248 0
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 249 0
	movl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 250 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.L101:
	.loc 1 254 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 255 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 256 0
	leave
	ret
.LFE20:
	.size	bitmap_element_link, .-bitmap_element_link
.globl bitmap_bit_p
	.type	bitmap_bit_p, @function
bitmap_bit_p:
.LFB26:
	.loc 1 412 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	subl	$28, %esp
.LCFI39:
	.loc 1 417 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_find_bit
	movl	%eax, -12(%ebp)
	.loc 1 418 0
	cmpl	$0, -12(%ebp)
	jne	.L119
	.loc 1 419 0
	movl	$0, -20(%ebp)
	jmp	.L121
.L119:
	.loc 1 421 0
	movl	12(%ebp), %eax
	andl	$31, %eax
	movl	%eax, -8(%ebp)
	.loc 1 422 0
	movl	12(%ebp), %eax
	shrl	$5, %eax
	andl	$3, %eax
	movl	%eax, -4(%ebp)
	.loc 1 424 0
	movl	-4(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	-8(%ebp), %ecx
	shrl	%cl, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movl	%edx, -20(%ebp)
.L121:
	movl	-20(%ebp), %eax
	.loc 1 425 0
	leave
	ret
.LFE26:
	.size	bitmap_bit_p, .-bitmap_bit_p
.globl bitmap_first_set_bit
	.type	bitmap_first_set_bit, @function
bitmap_first_set_bit:
.LFB27:
	.loc 1 433 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	subl	$20, %esp
.LCFI42:
	.loc 1 434 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 438 0
	cmpl	$0, -16(%ebp)
	jne	.L124
	.loc 1 439 0
	movl	$-1, -20(%ebp)
	jmp	.L126
.L124:
	.loc 1 446 0
	movl	$0, -8(%ebp)
	jmp	.L127
.L128:
	.loc 1 447 0
	movl	-8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L129
	.loc 1 446 0
	addl	$1, -8(%ebp)
.L127:
	cmpl	$3, -8(%ebp)
	jbe	.L128
.L129:
	.loc 1 454 0
	movl	$0, -4(%ebp)
	.loc 1 455 0
	movl	-12(%ebp), %eax
	negl	%eax
	andl	%eax, -12(%ebp)
	.loc 1 464 0
	movzwl	-12(%ebp),%eax
	testl	%eax, %eax
	jne	.L131
	.loc 1 465 0
	shrl	$16, -12(%ebp)
	addl	$16, -4(%ebp)
.L131:
	.loc 1 466 0
	movzbl	-12(%ebp),%eax
	testl	%eax, %eax
	jne	.L133
	.loc 1 467 0
	shrl	$8, -12(%ebp)
	addl	$8, -4(%ebp)
.L133:
	.loc 1 468 0
	movl	-12(%ebp), %eax
	andl	$240, %eax
	testl	%eax, %eax
	je	.L135
	.loc 1 469 0
	addl	$4, -4(%ebp)
.L135:
	.loc 1 470 0
	movl	-12(%ebp), %eax
	andl	$204, %eax
	testl	%eax, %eax
	je	.L137
	.loc 1 471 0
	addl	$2, -4(%ebp)
.L137:
	.loc 1 472 0
	movl	-12(%ebp), %eax
	andl	$170, %eax
	testl	%eax, %eax
	je	.L139
	.loc 1 473 0
	addl	$1, -4(%ebp)
.L139:
	.loc 1 475 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-8(%ebp), %eax
	sall	$5, %eax
	addl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L126:
	movl	-20(%ebp), %eax
	.loc 1 478 0
	leave
	ret
.LFE27:
	.size	bitmap_first_set_bit, .-bitmap_first_set_bit
.globl bitmap_last_set_bit
	.type	bitmap_last_set_bit, @function
bitmap_last_set_bit:
.LFB28:
	.loc 1 486 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	subl	$20, %esp
.LCFI45:
	.loc 1 487 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 491 0
	cmpl	$0, -16(%ebp)
	jne	.L146
	.loc 1 492 0
	movl	$-1, -20(%ebp)
	jmp	.L145
.L147:
	.loc 1 495 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L146:
	.loc 1 494 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L147
	.loc 1 502 0
	movl	$4, -8(%ebp)
	jmp	.L149
.L150:
	.loc 1 503 0
	movl	-8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L151
.L149:
	.loc 1 502 0
	subl	$1, -8(%ebp)
	cmpl	$-1, -8(%ebp)
	jne	.L150
.L151:
	.loc 1 509 0
	movl	$0, -4(%ebp)
	.loc 1 517 0
	movl	-12(%ebp), %eax
	movw	$0, %ax
	testl	%eax, %eax
	je	.L152
	.loc 1 518 0
	shrl	$16, -12(%ebp)
	addl	$16, -4(%ebp)
.L152:
	.loc 1 519 0
	movl	-12(%ebp), %eax
	andl	$65280, %eax
	testl	%eax, %eax
	je	.L154
	.loc 1 520 0
	shrl	$8, -12(%ebp)
	addl	$8, -4(%ebp)
.L154:
	.loc 1 521 0
	movl	-12(%ebp), %eax
	andl	$240, %eax
	testl	%eax, %eax
	je	.L156
	.loc 1 522 0
	shrl	$4, -12(%ebp)
	addl	$4, -4(%ebp)
.L156:
	.loc 1 523 0
	movl	-12(%ebp), %eax
	andl	$12, %eax
	testl	%eax, %eax
	je	.L158
	.loc 1 524 0
	shrl	$2, -12(%ebp)
	addl	$2, -4(%ebp)
.L158:
	.loc 1 525 0
	movl	-12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L160
	.loc 1 526 0
	addl	$1, -4(%ebp)
.L160:
	.loc 1 528 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-8(%ebp), %eax
	sall	$5, %eax
	addl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L145:
	movl	-20(%ebp), %eax
	.loc 1 531 0
	leave
	ret
.LFE28:
	.size	bitmap_last_set_bit, .-bitmap_last_set_bit
	.section	.rodata
	.type	__FUNCTION__.9014, @object
	.size	__FUNCTION__.9014, 17
__FUNCTION__.9014:
	.string	"bitmap_operation"
.LC0:
	.string	"../../../kgccfe/gnu/bitmap.c"
	.text
.globl bitmap_operation
	.type	bitmap_operation, @function
bitmap_operation:
.LFB29:
	.loc 1 542 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$164, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 545 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 546 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 547 0
	cmpl	$0, -124(%ebp)
	je	.L164
	movl	-124(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L166
.L164:
	movl	$-1, -156(%ebp)
.L166:
	movl	-156(%ebp), %eax
	movl	%eax, -116(%ebp)
	.loc 1 548 0
	cmpl	$0, -120(%ebp)
	je	.L167
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -152(%ebp)
	jmp	.L169
.L167:
	movl	$-1, -152(%ebp)
.L169:
	movl	-152(%ebp), %eax
	movl	%eax, -112(%ebp)
	.loc 1 549 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 554 0
	movl	$0, -88(%ebp)
	.loc 1 587 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 589 0
	jmp	.L231
.L171:
	.loc 1 593 0
	movl	-116(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jne	.L172
	.loc 1 595 0
	movl	-116(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 596 0
	movl	-124(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 597 0
	movl	-120(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 598 0
	movl	-124(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 599 0
	cmpl	$0, -124(%ebp)
	je	.L174
	movl	-124(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -148(%ebp)
	jmp	.L176
.L174:
	movl	$-1, -148(%ebp)
.L176:
	movl	-148(%ebp), %eax
	movl	%eax, -116(%ebp)
	.loc 1 600 0
	movl	-120(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 601 0
	cmpl	$0, -120(%ebp)
	je	.L177
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -144(%ebp)
	jmp	.L179
.L177:
	movl	$-1, -144(%ebp)
.L179:
	movl	-144(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	.L189
.L172:
	.loc 1 603 0
	movl	-116(%ebp), %eax
	cmpl	-112(%ebp), %eax
	jae	.L181
	.loc 1 605 0
	movl	-116(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 606 0
	movl	-124(%ebp), %eax
	movl	%eax, -104(%ebp)
	.loc 1 607 0
	movl	bitmap_zero_bits@GOT(%ebx), %eax
	movl	%eax, -100(%ebp)
	.loc 1 608 0
	movl	-124(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -124(%ebp)
	.loc 1 609 0
	cmpl	$0, -124(%ebp)
	je	.L183
	movl	-124(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -140(%ebp)
	jmp	.L185
.L183:
	movl	$-1, -140(%ebp)
.L185:
	movl	-140(%ebp), %eax
	movl	%eax, -116(%ebp)
	jmp	.L189
.L181:
	.loc 1 613 0
	movl	-112(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 614 0
	movl	bitmap_zero_bits@GOT(%ebx), %eax
	movl	%eax, -104(%ebp)
	.loc 1 615 0
	movl	-120(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 616 0
	movl	-120(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 617 0
	cmpl	$0, -120(%ebp)
	je	.L186
	movl	-120(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -136(%ebp)
	jmp	.L188
.L186:
	movl	$-1, -136(%ebp)
.L188:
	movl	-136(%ebp), %eax
	movl	%eax, -112(%ebp)
	.loc 1 622 0
	jmp	.L189
.L190:
	.loc 1 624 0
	movl	$1, -88(%ebp)
	.loc 1 625 0
	movl	-108(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 626 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 627 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_elem_to_freelist
.L189:
	.loc 1 622 0
	cmpl	$0, -108(%ebp)
	je	.L191
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-92(%ebp), %eax
	jb	.L190
.L191:
	.loc 1 629 0
	cmpl	$0, -108(%ebp)
	je	.L193
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-92(%ebp), %eax
	jne	.L193
	.loc 1 631 0
	movl	-108(%ebp), %eax
	movl	%eax, -96(%ebp)
	.loc 1 632 0
	movl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	.loc 1 629 0
	jmp	.L196
.L193:
	.loc 1 635 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_element_allocate
	movl	%eax, -96(%ebp)
.L196:
	.loc 1 639 0
	cmpl	$4, 20(%ebp)
	ja	.L197
	movl	20(%ebp), %eax
	sall	$2, %eax
	movl	.L203@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L203:
	.long	.L198@GOTOFF
	.long	.L199@GOTOFF
	.long	.L200@GOTOFF
	.long	.L201@GOTOFF
	.long	.L202@GOTOFF
	.text
.L197:
	.loc 1 642 0
	leal	__FUNCTION__.9014@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$642, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L198:
.LBB8:
	.loc 1 645 0
	movl	$0, -72(%ebp)
	jmp	.L204
.L205:
	movl	-72(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -80(%ebp)
	movl	-72(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	andl	-80(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-72(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	cmpl	-84(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -88(%ebp)
	movl	-72(%ebp), %ecx
	movl	-96(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 12(%edx,%ecx,4)
	addl	$1, -72(%ebp)
.L204:
	cmpl	$3, -72(%ebp)
	jle	.L205
	.loc 1 646 0
	jmp	.L207
.L199:
.LBE8:
.LBB9:
	.loc 1 649 0
	movl	$0, -56(%ebp)
	jmp	.L208
.L209:
	movl	-56(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -64(%ebp)
	movl	-56(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	notl	%eax
	andl	-64(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-56(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	cmpl	-68(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -88(%ebp)
	movl	-56(%ebp), %ecx
	movl	-96(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%eax, 12(%edx,%ecx,4)
	addl	$1, -56(%ebp)
.L208:
	cmpl	$3, -56(%ebp)
	jle	.L209
	.loc 1 650 0
	jmp	.L207
.L200:
.LBE9:
.LBB10:
	.loc 1 653 0
	movl	$0, -40(%ebp)
	jmp	.L211
.L212:
	movl	-40(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -48(%ebp)
	movl	-40(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	orl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-40(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	cmpl	-52(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -88(%ebp)
	movl	-40(%ebp), %ecx
	movl	-96(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 12(%edx,%ecx,4)
	addl	$1, -40(%ebp)
.L211:
	cmpl	$3, -40(%ebp)
	jle	.L212
	.loc 1 654 0
	jmp	.L207
.L202:
.LBE10:
.LBB11:
	.loc 1 656 0
	movl	$0, -24(%ebp)
	jmp	.L214
.L215:
	movl	-24(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	notl	%eax
	orl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-24(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	cmpl	-36(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -88(%ebp)
	movl	-24(%ebp), %ecx
	movl	-96(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 12(%edx,%ecx,4)
	addl	$1, -24(%ebp)
.L214:
	cmpl	$3, -24(%ebp)
	jle	.L215
	.loc 1 657 0
	jmp	.L207
.L201:
.LBE11:
.LBB12:
	.loc 1 659 0
	movl	$0, -8(%ebp)
	jmp	.L217
.L218:
	movl	-8(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	movl	-8(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	xorl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-8(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	cmpl	-20(%ebp), %eax
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -88(%ebp)
	movl	-8(%ebp), %ecx
	movl	-96(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 12(%edx,%ecx,4)
	addl	$1, -8(%ebp)
.L217:
	cmpl	$3, -8(%ebp)
	jle	.L218
.L207:
.LBE12:
	.loc 1 663 0
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_element_zerop
	testl	%eax, %eax
	jne	.L219
	.loc 1 665 0
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 666 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_element_link
	jmp	.L170
.L219:
	.loc 1 670 0
	movl	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_elem_to_freelist
.L170:
.L231:
	.loc 1 589 0
	cmpl	$0, -124(%ebp)
	jne	.L171
	cmpl	$0, -120(%ebp)
	jne	.L171
	.loc 1 675 0
	cmpl	$0, -108(%ebp)
	je	.L223
	.loc 1 677 0
	movl	$1, -88(%ebp)
	.loc 1 678 0
	movl	-108(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L225
.L226:
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
.L225:
	movl	-96(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L226
	.loc 1 680 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L228
	.loc 1 682 0
	movl	bitmap_free@GOTOFF(%ebx), %eax
	movl	-96(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 683 0
	movl	-108(%ebp), %eax
	movl	%eax, bitmap_free@GOTOFF(%ebx)
	jmp	.L223
.L228:
	.loc 1 687 0
	movl	bitmap_ggc_free@GOTOFF(%ebx), %eax
	movl	-96(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 688 0
	movl	-108(%ebp), %eax
	movl	%eax, bitmap_ggc_free@GOTOFF(%ebx)
.L223:
	.loc 1 694 0
	movl	-88(%ebp), %eax
	.loc 1 695 0
	addl	$164, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	bitmap_operation, .-bitmap_operation
.globl bitmap_equal_p
	.type	bitmap_equal_p, @function
bitmap_equal_p:
.LFB30:
	.loc 1 703 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$52, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 707 0
	leal	-24(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	.loc 1 708 0
	movl	$3, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 709 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 711 0
	movl	-8(%ebp), %eax
	.loc 1 712 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	bitmap_equal_p, .-bitmap_equal_p
.globl bitmap_ior_and_compl
	.type	bitmap_ior_and_compl, @function
bitmap_ior_and_compl:
.LFB31:
	.loc 1 722 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$36, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 725 0
	movl	$0, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 726 0
	movl	$0, -8(%ebp)
	.loc 1 728 0
	movl	$1, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 729 0
	movl	$2, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 730 0
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 731 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	bitmap_ior_and_compl, .-bitmap_ior_and_compl
.globl bitmap_union_of_diff
	.type	bitmap_union_of_diff, @function
bitmap_union_of_diff:
.LFB32:
	.loc 1 739 0
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
	.loc 1 743 0
	movl	$0, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 744 0
	movl	$0, -12(%ebp)
	.loc 1 746 0
	movl	$1, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	.loc 1 747 0
	movl	$2, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_operation@PLT
	movl	%eax, -8(%ebp)
	.loc 1 748 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	.loc 1 750 0
	movl	-8(%ebp), %eax
	.loc 1 751 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	bitmap_union_of_diff, .-bitmap_union_of_diff
.globl bitmap_initialize
	.type	bitmap_initialize, @function
bitmap_initialize:
.LFB33:
	.loc 1 759 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	pushl	%ebx
.LCFI64:
	subl	$4, %esp
.LCFI65:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 760 0
	cmpl	$0, 8(%ebp)
	jne	.L239
	cmpl	$0, 12(%ebp)
	jne	.L239
	.loc 1 761 0
	movl	$16, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, 8(%ebp)
.L239:
	.loc 1 763 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 764 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 766 0
	movl	8(%ebp), %eax
	.loc 1 767 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	bitmap_initialize, .-bitmap_initialize
	.section	.rodata
.LC1:
	.string	"\nfirst = "
.LC2:
	.string	"%p"
.LC3:
	.string	" current = "
.LC4:
	.string	" indx = %u\n"
.LC5:
	.string	" next = "
.LC6:
	.string	" prev = "
.LC7:
	.string	" indx = %u\n\t\tbits = {"
.LC8:
	.string	"\n\t\t\t"
.LC9:
	.string	" %u"
.LC10:
	.string	" }\n"
	.text
.globl debug_bitmap_file
	.type	debug_bitmap_file, @function
debug_bitmap_file:
.LFB34:
	.loc 1 775 0
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
	.loc 1 778 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 779 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 780 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 781 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 782 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 784 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L244
.L245:
.LBB13:
	.loc 1 786 0
	movl	$26, -8(%ebp)
	.loc 1 788 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	fputc@PLT
	.loc 1 789 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 790 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 791 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 792 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$8, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 793 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 794 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 796 0
	movl	$0, -16(%ebp)
	jmp	.L246
.L247:
	.loc 1 797 0
	movl	$0, -12(%ebp)
	jmp	.L248
.L249:
	.loc 1 798 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax,%edx,4), %eax
	movl	-12(%ebp), %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L250
	.loc 1 800 0
	cmpl	$70, -8(%ebp)
	jbe	.L252
	.loc 1 802 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 803 0
	movl	$24, -8(%ebp)
.L252:
	.loc 1 806 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	sall	$5, %eax
	addl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 808 0
	addl	$4, -8(%ebp)
.L250:
	.loc 1 797 0
	addl	$1, -12(%ebp)
.L248:
	cmpl	$31, -12(%ebp)
	jbe	.L249
	.loc 1 796 0
	addl	$1, -16(%ebp)
.L246:
	cmpl	$3, -16(%ebp)
	jbe	.L247
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.LBE13:
	.loc 1 784 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L244:
	cmpl	$0, -20(%ebp)
	jne	.L245
	.loc 1 813 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	debug_bitmap_file, .-debug_bitmap_file
.globl debug_bitmap
	.type	debug_bitmap, @function
debug_bitmap:
.LFB35:
	.loc 1 821 0
	pushl	%ebp
.LCFI70:
	movl	%esp, %ebp
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$20, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 822 0
	movl	stdout@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	debug_bitmap_file@PLT
	.loc 1 823 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	debug_bitmap, .-debug_bitmap
	.section	.rodata
.LC11:
	.string	""
.LC12:
	.string	"%s%d"
.LC13:
	.string	", "
	.text
.globl bitmap_print
	.type	bitmap_print, @function
bitmap_print:
.LFB36:
	.loc 1 834 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%ebx
.LCFI76:
	subl	$52, %esp
.LCFI77:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 835 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 838 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
.LBB14:
	.loc 1 839 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L261
.L262:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L261:
	cmpl	$0, -28(%ebp)
	je	.L263
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	jb	.L262
.L263:
	cmpl	$0, -28(%ebp)
	je	.L268
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-24(%ebp), %eax
	je	.L268
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L268
.L271:
.LBB15:
	movl	-16(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	12(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L272
	jmp	.L274
.L275:
.LBB16:
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L276
	movl	-8(%ebp), %eax
	notl	%eax
	andl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	sall	$5, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L272
.L276:
.LBE16:
	addl	$1, -20(%ebp)
.L274:
	cmpl	$31, -20(%ebp)
	jbe	.L275
.L272:
	movl	$0, -20(%ebp)
.LBE15:
	addl	$1, -16(%ebp)
.L270:
	cmpl	$3, -16(%ebp)
	jbe	.L271
	movl	$0, -16(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L268:
	cmpl	$0, -28(%ebp)
	jne	.L270
.LBE14:
	.loc 1 844 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 845 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	bitmap_print, .-bitmap_print
.globl gt_ggc_rd_gt_bitmap_h
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	gt_ggc_rd_gt_bitmap_h, @object
	.size	gt_ggc_rd_gt_bitmap_h, 32
gt_ggc_rd_gt_bitmap_h:
	.long	bitmap_ggc_free
	.long	1
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.local	bitmap_obstack
	.comm	bitmap_obstack,44,32
	.local	bitmap_free
	.comm	bitmap_free,4,4
	.local	bitmap_ggc_free
	.comm	bitmap_ggc_free,4,4
	.comm	bitmap_zero_bits,28,4
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI0-.LFB18
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI7-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI9-.LFB22
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
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI13-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI14
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI18-.LFB24
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
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI22-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI25-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI28-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI31-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI34-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
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
	.long	.LCFI37-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI40-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI43-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI46-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI47
	.byte	0x83
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
	.long	.LCFI50-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI51
	.byte	0x83
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
	.long	.LCFI54-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI55
	.byte	0x83
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
	.long	.LCFI58-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI62-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI66-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI70-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI71
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
	.long	.LCFI74-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI77-.LCFI75
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
	.file 2 "/usr/include/stdio.h"
	.file 3 "../../../include/gnu/obstack.h"
	.file 4 "../../../kgccfe/gnu/bitmap.h"
	.file 5 "../../../kgccfe/gnu/rtl.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "../../../kgccfe/gnu/MIPS/gt-bitmap.h"
	.file 10 "../../../kgccfe/gnu/ggc.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB15-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB16-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI29-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI50-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI51-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI55-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1566
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/bitmap.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa1
	.uleb128 0x3
	.long	0xa6
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
	.byte	0x8
	.byte	0xd6
	.long	0xb5
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
	.uleb128 0x6
	.string	"__quad_t"
	.byte	0x7
	.byte	0x3b
	.long	0x129
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x173
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x154
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xa6
	.uleb128 0x6
	.string	"FILE"
	.byte	0x2
	.byte	0x2e
	.long	0x1a4
	.uleb128 0x8
	.long	0x41f
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x498
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0x10d
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.long	0x42f
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x435
	.uleb128 0xc
	.long	0x441
	.byte	0x1
	.uleb128 0xd
	.long	0x190
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0xf
	.long	0x492
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0x10
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x498
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x44f
	.uleb128 0x2
	.byte	0x4
	.long	0x1a4
	.uleb128 0xa
	.long	0x4ae
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x441
	.uleb128 0xa
	.long	0x4c4
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x51c
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x5
	.byte	0x7d
	.uleb128 0x10
	.string	"first"
	.byte	0x4
	.byte	0x3d
	.long	0x7ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"current"
	.byte	0x4
	.byte	0x3e
	.long	0x7ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"indx"
	.byte	0x4
	.byte	0x3f
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF2
	.byte	0x4
	.byte	0x40
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4c4
	.uleb128 0xf
	.long	0x56c
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x3
	.byte	0xa2
	.uleb128 0x10
	.string	"limit"
	.byte	0x3
	.byte	0xa3
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"prev"
	.byte	0x3
	.byte	0xa4
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"contents"
	.byte	0x3
	.byte	0xa5
	.long	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x522
	.uleb128 0x12
	.long	0x69f
	.string	"obstack"
	.byte	0x2c
	.byte	0x2
	.value	0x31b
	.uleb128 0x10
	.string	"chunk_size"
	.byte	0x3
	.byte	0xaa
	.long	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"chunk"
	.byte	0x3
	.byte	0xab
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"object_base"
	.byte	0x3
	.byte	0xac
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"next_free"
	.byte	0x3
	.byte	0xad
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"chunk_limit"
	.byte	0x3
	.byte	0xae
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"temp"
	.byte	0x3
	.byte	0xaf
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"alignment_mask"
	.byte	0x3
	.byte	0xb0
	.long	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"chunkfun"
	.byte	0x3
	.byte	0xb5
	.long	0x6b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"freefun"
	.byte	0x3
	.byte	0xb6
	.long	0x6cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"extra_arg"
	.byte	0x3
	.byte	0xb7
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.string	"use_extra_arg"
	.byte	0x3
	.byte	0xbd
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"maybe_empty_object"
	.byte	0x3
	.byte	0xbe
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"alloc_failed"
	.byte	0x3
	.byte	0xc2
	.long	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x14
	.long	0x6b4
	.byte	0x1
	.long	0x56c
	.uleb128 0xd
	.long	0x190
	.uleb128 0xd
	.long	0x173
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x69f
	.uleb128 0xc
	.long	0x6cb
	.byte	0x1
	.uleb128 0xd
	.long	0x190
	.uleb128 0xd
	.long	0x56c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6ba
	.uleb128 0xf
	.long	0x723
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0xa
	.byte	0x34
	.uleb128 0x10
	.string	"base"
	.byte	0xa
	.byte	0x35
	.long	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"nelt"
	.byte	0xa
	.byte	0x36
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"stride"
	.byte	0xa
	.byte	0x37
	.long	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"cb"
	.byte	0xa
	.byte	0x38
	.long	0x42f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x6
	.string	"BITMAP_WORD"
	.byte	0x4
	.byte	0x1d
	.long	0xf8
	.uleb128 0xf
	.long	0x78e
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x4
	.byte	0x34
	.uleb128 0x10
	.string	"next"
	.byte	0x4
	.byte	0x35
	.long	0x78e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"prev"
	.byte	0x4
	.byte	0x36
	.long	0x78e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"indx"
	.byte	0x4
	.byte	0x37
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"bits"
	.byte	0x4
	.byte	0x38
	.long	0x794
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x736
	.uleb128 0xa
	.long	0x7a4
	.long	0x723
	.uleb128 0xb
	.long	0xbc
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.string	"bitmap_element"
	.byte	0x4
	.byte	0x39
	.long	0x736
	.uleb128 0x2
	.byte	0x4
	.long	0x7a4
	.uleb128 0x6
	.string	"bitmap_head"
	.byte	0x4
	.byte	0x42
	.long	0x4c4
	.uleb128 0x6
	.string	"bitmap"
	.byte	0x4
	.byte	0x43
	.long	0x51c
	.uleb128 0x15
	.long	0x843
	.string	"bitmap_bits"
	.byte	0x4
	.byte	0x4
	.byte	0x46
	.uleb128 0x16
	.string	"BITMAP_AND"
	.sleb128 0
	.uleb128 0x16
	.string	"BITMAP_AND_COMPL"
	.sleb128 1
	.uleb128 0x16
	.string	"BITMAP_IOR"
	.sleb128 2
	.uleb128 0x16
	.string	"BITMAP_XOR"
	.sleb128 3
	.uleb128 0x16
	.string	"BITMAP_IOR_COMPL"
	.sleb128 4
	.byte	0x0
	.uleb128 0x17
	.long	0x897
	.byte	0x1
	.string	"bitmap_release_memory"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST0
	.uleb128 0x18
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x19
	.string	"__o"
	.byte	0x1
	.byte	0xb2
	.long	0x897
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.string	"__obj"
	.byte	0x1
	.byte	0xb2
	.long	0x190
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x572
	.uleb128 0x1a
	.long	0x8ef
	.byte	0x1
	.string	"bitmap_clear"
	.byte	0x1
	.value	0x107
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST1
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x106
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x108
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.string	"next"
	.byte	0x1
	.value	0x108
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1e
	.long	0x938
	.string	"bitmap_elem_to_freelist"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST2
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0x39
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"elt"
	.byte	0x1
	.byte	0x3a
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1a
	.long	0x9c8
	.byte	0x1
	.string	"bitmap_copy"
	.byte	0x1
	.value	0x119
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST3
	.uleb128 0x21
	.string	"to"
	.byte	0x1
	.value	0x117
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"from"
	.byte	0x1
	.value	0x118
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"from_ptr"
	.byte	0x1
	.value	0x11a
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"to_ptr"
	.byte	0x1
	.value	0x11a
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x11c
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1d
	.string	"to_elt"
	.byte	0x1
	.value	0x124
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xa82
	.string	"bitmap_element_allocate"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	0x7ba
	.long	.LFB17
	.long	.LFE17
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0x6b
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF3
	.byte	0x1
	.byte	0x6d
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x19
	.string	"__h"
	.byte	0x1
	.byte	0x95
	.long	0x897
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	0xa57
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x19
	.string	"__o"
	.byte	0x1
	.byte	0x95
	.long	0x897
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"__len"
	.byte	0x1
	.byte	0x95
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x18
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x19
	.string	"__o1"
	.byte	0x1
	.byte	0x95
	.long	0x897
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.string	"value"
	.byte	0x1
	.byte	0x95
	.long	0x190
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0xaff
	.byte	0x1
	.string	"bitmap_clear_bit"
	.byte	0x1
	.value	0x170
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST5
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x16e
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"bit"
	.byte	0x1
	.value	0x16f
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.value	0x171
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x175
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x1
	.value	0x176
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0xb66
	.string	"bitmap_find_bit"
	.byte	0x1
	.value	0x14c
	.byte	0x1
	.long	0x7ba
	.long	.LFB23
	.long	.LFE23
	.long	.LLST6
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x14a
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"bit"
	.byte	0x1
	.value	0x14b
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x14d
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.string	"indx"
	.byte	0x1
	.value	0x14e
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x22
	.long	0xbae
	.string	"bitmap_element_zerop"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	0xae
	.long	.LFB19
	.long	.LFE19
	.long	.LLST7
	.uleb128 0x1f
	.long	.LASF3
	.byte	0x1
	.byte	0xba
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xbf
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1e
	.long	0xc11
	.string	"bitmap_element_free"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST8
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0x4d
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"elt"
	.byte	0x1
	.byte	0x4e
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"next"
	.byte	0x1
	.byte	0x50
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.string	"prev"
	.byte	0x1
	.byte	0x51
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1a
	.long	0xc95
	.byte	0x1
	.string	"bitmap_set_bit"
	.byte	0x1
	.value	0x185
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST9
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x183
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"bit"
	.byte	0x1
	.value	0x184
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.value	0x186
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x1
	.value	0x187
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x188
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.string	"bit_val"
	.byte	0x1
	.value	0x189
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1e
	.long	0xcf7
	.string	"bitmap_element_link"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST10
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xcd
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF3
	.byte	0x1
	.byte	0xce
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"indx"
	.byte	0x1
	.byte	0xd0
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.byte	0xd1
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x26
	.long	0xd6a
	.byte	0x1
	.string	"bitmap_bit_p"
	.byte	0x1
	.value	0x19c
	.byte	0x1
	.long	0xae
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x19a
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"bit"
	.byte	0x1
	.value	0x19b
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.value	0x19d
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x19e
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x1
	.value	0x19f
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x26
	.long	0xde4
	.byte	0x1
	.string	"bitmap_first_set_bit"
	.byte	0x1
	.value	0x1b1
	.byte	0x1
	.long	0xae
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x21
	.string	"a"
	.byte	0x1
	.value	0x1b0
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.value	0x1b2
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"word"
	.byte	0x1
	.value	0x1b3
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x1
	.value	0x1b4
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x1b4
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x26
	.long	0xe5d
	.byte	0x1
	.string	"bitmap_last_set_bit"
	.byte	0x1
	.value	0x1e6
	.byte	0x1
	.long	0xae
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x21
	.string	"a"
	.byte	0x1
	.value	0x1e5
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.value	0x1e7
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"word"
	.byte	0x1
	.value	0x1e8
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x1
	.value	0x1e9
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x1e9
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x26
	.long	0x1109
	.byte	0x1
	.string	"bitmap_operation"
	.byte	0x1
	.value	0x21e
	.byte	0x1
	.long	0xae
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x21
	.string	"to"
	.byte	0x1
	.value	0x21a
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"from1"
	.byte	0x1
	.value	0x21b
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"from2"
	.byte	0x1
	.value	0x21c
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"operation"
	.byte	0x1
	.value	0x21d
	.long	0x7e1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.string	"from1_ptr"
	.byte	0x1
	.value	0x221
	.long	0x7ba
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1d
	.string	"from2_ptr"
	.byte	0x1
	.value	0x222
	.long	0x7ba
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1d
	.string	"indx1"
	.byte	0x1
	.value	0x223
	.long	0xb5
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1d
	.string	"indx2"
	.byte	0x1
	.value	0x224
	.long	0xb5
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1d
	.string	"to_ptr"
	.byte	0x1
	.value	0x225
	.long	0x7ba
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1d
	.string	"from1_tmp"
	.byte	0x1
	.value	0x226
	.long	0x7ba
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.string	"from2_tmp"
	.byte	0x1
	.value	0x227
	.long	0x7ba
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1d
	.string	"to_tmp"
	.byte	0x1
	.value	0x228
	.long	0x7ba
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.string	"indx"
	.byte	0x1
	.value	0x229
	.long	0xb5
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1d
	.string	"changed"
	.byte	0x1
	.value	0x22a
	.long	0xae
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	0xfdc
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.value	0x285
	.long	0x723
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1d
	.string	"f1"
	.byte	0x1
	.value	0x285
	.long	0x723
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.string	"f2"
	.byte	0x1
	.value	0x285
	.long	0x723
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x285
	.long	0xae
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x24
	.long	0x1023
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.value	0x289
	.long	0x723
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.string	"f1"
	.byte	0x1
	.value	0x289
	.long	0x723
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"f2"
	.byte	0x1
	.value	0x289
	.long	0x723
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x289
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0x0
	.uleb128 0x24
	.long	0x1067
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.value	0x28d
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.string	"f1"
	.byte	0x1
	.value	0x28d
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"f2"
	.byte	0x1
	.value	0x28d
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x28d
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x24
	.long	0x10ab
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.value	0x290
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"f1"
	.byte	0x1
	.value	0x290
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"f2"
	.byte	0x1
	.value	0x290
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x290
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x24
	.long	0x10ef
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.value	0x293
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"f1"
	.byte	0x1
	.value	0x293
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"f2"
	.byte	0x1
	.value	0x293
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x293
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x27
	.string	"__FUNCTION__"
	.long	0x1489
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.9014
	.byte	0x0
	.uleb128 0x26
	.long	0x1169
	.byte	0x1
	.string	"bitmap_equal_p"
	.byte	0x1
	.value	0x2bf
	.byte	0x1
	.long	0xae
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x21
	.string	"a"
	.byte	0x1
	.value	0x2bd
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.value	0x2be
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.value	0x2c0
	.long	0x7c0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.value	0x2c1
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1a
	.long	0x11d4
	.byte	0x1
	.string	"bitmap_ior_and_compl"
	.byte	0x1
	.value	0x2d2
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x21
	.string	"to"
	.byte	0x1
	.value	0x2cf
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"from1"
	.byte	0x1
	.value	0x2d0
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"from2"
	.byte	0x1
	.value	0x2d1
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"tmp"
	.byte	0x1
	.value	0x2d3
	.long	0x7c0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x26
	.long	0x125c
	.byte	0x1
	.string	"bitmap_union_of_diff"
	.byte	0x1
	.value	0x2e3
	.byte	0x1
	.long	0xae
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x21
	.string	"dst"
	.byte	0x1
	.value	0x2df
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"a"
	.byte	0x1
	.value	0x2e0
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.value	0x2e1
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.value	0x2e2
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.string	"tmp"
	.byte	0x1
	.value	0x2e4
	.long	0x7c0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"changed"
	.byte	0x1
	.value	0x2e5
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x12a7
	.byte	0x1
	.string	"bitmap_initialize"
	.byte	0x1
	.value	0x2f7
	.byte	0x1
	.long	0x7d3
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x2f5
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.value	0x2f6
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1a
	.long	0x1331
	.byte	0x1
	.string	"debug_bitmap_file"
	.byte	0x1
	.value	0x307
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x21
	.string	"file"
	.byte	0x1
	.value	0x305
	.long	0x1331
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x306
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.value	0x308
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x312
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x312
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.string	"col"
	.byte	0x1
	.value	0x312
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x198
	.uleb128 0x1a
	.long	0x136a
	.byte	0x1
	.string	"debug_bitmap"
	.byte	0x1
	.value	0x335
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x334
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x1a
	.long	0x1479
	.byte	0x1
	.string	"bitmap_print"
	.byte	0x1
	.value	0x342
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x21
	.string	"file"
	.byte	0x1
	.value	0x33e
	.long	0x1331
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.value	0x33f
	.long	0x7d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"prefix"
	.byte	0x1
	.value	0x340
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"suffix"
	.byte	0x1
	.value	0x341
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.string	"comma"
	.byte	0x1
	.value	0x343
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x344
	.long	0xae
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1d
	.string	"ptr_"
	.byte	0x1
	.value	0x347
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"indx_"
	.byte	0x1
	.value	0x347
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"bit_num_"
	.byte	0x1
	.value	0x347
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"word_num_"
	.byte	0x1
	.value	0x347
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x1d
	.string	"word_"
	.byte	0x1
	.value	0x347
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x1d
	.string	"mask_"
	.byte	0x1
	.value	0x347
	.long	0x723
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x1489
	.long	0xa6
	.uleb128 0xb
	.long	0xbc
	.byte	0x10
	.byte	0x0
	.uleb128 0x3
	.long	0x1479
	.uleb128 0x19
	.string	"bitmap_obstack"
	.byte	0x1
	.byte	0x1f
	.long	0x572
	.byte	0x5
	.byte	0x3
	.long	bitmap_obstack
	.uleb128 0x19
	.string	"bitmap_obstack_init"
	.byte	0x1
	.byte	0x20
	.long	0xae
	.byte	0x5
	.byte	0x3
	.long	bitmap_obstack_init
	.uleb128 0x19
	.string	"bitmap_free"
	.byte	0x1
	.byte	0x2c
	.long	0x7ba
	.byte	0x5
	.byte	0x3
	.long	bitmap_free
	.uleb128 0x19
	.string	"bitmap_ggc_free"
	.byte	0x1
	.byte	0x2d
	.long	0x7ba
	.byte	0x5
	.byte	0x3
	.long	bitmap_ggc_free
	.uleb128 0x28
	.string	"stdout"
	.byte	0x2
	.byte	0x8f
	.long	0x498
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"bitmap_zero_bits"
	.byte	0x1
	.byte	0x2b
	.long	0x7a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bitmap_zero_bits
	.uleb128 0xa
	.long	0x1540
	.long	0x6d1
	.uleb128 0xb
	.long	0xbc
	.byte	0x1
	.byte	0x0
	.uleb128 0x29
	.string	"gt_ggc_rd_gt_bitmap_h"
	.byte	0x9
	.byte	0x19
	.long	0x1564
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_rd_gt_bitmap_h
	.uleb128 0x3
	.long	0x1530
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
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.long	0x18a
	.value	0x2
	.long	.Ldebug_info0
	.long	0x156a
	.long	0x843
	.string	"bitmap_release_memory"
	.long	0x89d
	.string	"bitmap_clear"
	.long	0x938
	.string	"bitmap_copy"
	.long	0xa82
	.string	"bitmap_clear_bit"
	.long	0xc11
	.string	"bitmap_set_bit"
	.long	0xcf7
	.string	"bitmap_bit_p"
	.long	0xd6a
	.string	"bitmap_first_set_bit"
	.long	0xde4
	.string	"bitmap_last_set_bit"
	.long	0xe5d
	.string	"bitmap_operation"
	.long	0x1109
	.string	"bitmap_equal_p"
	.long	0x1169
	.string	"bitmap_ior_and_compl"
	.long	0x11d4
	.string	"bitmap_union_of_diff"
	.long	0x125c
	.string	"bitmap_initialize"
	.long	0x12a7
	.string	"debug_bitmap_file"
	.long	0x1337
	.string	"debug_bitmap"
	.long	0x136a
	.string	"bitmap_print"
	.long	0x1511
	.string	"bitmap_zero_bits"
	.long	0x1540
	.string	"gt_ggc_rd_gt_bitmap_h"
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
.LASF2:
	.string	"using_obstack"
.LASF1:
	.string	"_IO_FILE"
.LASF6:
	.string	"word_num"
.LASF5:
	.string	"bit_num"
.LASF3:
	.string	"element"
.LASF4:
	.string	"head"
.LASF0:
	.string	"unsigned int"
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
