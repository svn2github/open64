	.file	"hashtab.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl htab_hash_pointer
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	htab_hash_pointer, @object
	.size	htab_hash_pointer, 4
htab_hash_pointer:
	.long	hash_pointer
.globl htab_eq_pointer
	.align 4
	.type	htab_eq_pointer, @object
	.size	htab_eq_pointer, 4
htab_eq_pointer:
	.long	eq_pointer
	.section	.rodata
	.align 32
	.type	primes.3010, @object
	.size	primes.3010, 120
primes.3010:
	.long	7
	.long	13
	.long	31
	.long	61
	.long	127
	.long	251
	.long	509
	.long	1021
	.long	2039
	.long	4093
	.long	8191
	.long	16381
	.long	32749
	.long	65521
	.long	131071
	.long	262139
	.long	524287
	.long	1048573
	.long	2097143
	.long	4194301
	.long	8388593
	.long	16777213
	.long	33554393
	.long	67108859
	.long	134217689
	.long	268435399
	.long	536870909
	.long	1073741789
	.long	2147483647
	.long	-5
	.align 4
.LC0:
	.string	"Cannot find prime bigger than %lu\n"
	.text
	.type	higher_prime_number, @function
higher_prime_number:
.LFB5:
	.file 1 "../../libiberty/hashtab.c"
	.loc 1 88 0
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
	.loc 1 125 0
	leal	primes.3010@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 126 0
	leal	120+primes.3010@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 128 0
	jmp	.L10
.L3:
.LBB2:
	.loc 1 130 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	sall	$2, %eax
	addl	-16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 131 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jae	.L4
	.loc 1 132 0
	movl	-8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -16(%ebp)
	jmp	.L2
.L4:
	.loc 1 134 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L2:
.L10:
.LBE2:
	.loc 1 128 0
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L3
	.loc 1 138 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jae	.L7
	.loc 1 140 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 141 0
	call	abort@PLT
.L7:
	.loc 1 144 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 145 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	higher_prime_number, .-higher_prime_number
	.type	hash_pointer, @function
hash_pointer:
.LFB6:
	.loc 1 152 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	.loc 1 153 0
	movl	8(%ebp), %eax
	sarl	$3, %eax
	.loc 1 154 0
	popl	%ebp
	ret
.LFE6:
	.size	hash_pointer, .-hash_pointer
	.type	eq_pointer, @function
eq_pointer:
.LFB7:
	.loc 1 162 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	.loc 1 163 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 164 0
	popl	%ebp
	ret
.LFE7:
	.size	eq_pointer, .-eq_pointer
.globl htab_create_alloc
	.type	htab_create_alloc, @function
htab_create_alloc:
.LFB8:
	.loc 1 179 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$40, %esp
.LCFI10:
	.loc 1 182 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	higher_prime_number
	movl	%eax, 8(%ebp)
	.loc 1 183 0
	movl	$44, 4(%esp)
	movl	$1, (%esp)
	movl	24(%ebp), %eax
	call	*%eax
	movl	%eax, -4(%ebp)
	.loc 1 184 0
	cmpl	$0, -4(%ebp)
	jne	.L16
	.loc 1 185 0
	movl	$0, -20(%ebp)
	jmp	.L18
.L16:
	.loc 1 186 0
	movl	$4, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	24(%ebp), %eax
	call	*%eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 187 0
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L19
	.loc 1 189 0
	cmpl	$0, 28(%ebp)
	je	.L21
	.loc 1 190 0
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	movl	28(%ebp), %eax
	call	*%eax
.L21:
	.loc 1 191 0
	movl	$0, -20(%ebp)
	jmp	.L18
.L19:
	.loc 1 193 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 194 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 195 0
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 196 0
	movl	-4(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 197 0
	movl	-4(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 36(%edx)
	.loc 1 198 0
	movl	-4(%ebp), %edx
	movl	28(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 199 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L18:
	movl	-20(%ebp), %eax
	.loc 1 200 0
	leave
	ret
.LFE8:
	.size	htab_create_alloc, .-htab_create_alloc
.globl htab_create
	.type	htab_create, @function
htab_create:
.LFB9:
	.loc 1 211 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$36, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 212 0
	movl	free@GOT(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	xcalloc@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_create_alloc@PLT
	.loc 1 213 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	htab_create, .-htab_create
.globl htab_try_create
	.type	htab_try_create, @function
htab_try_create:
.LFB10:
	.loc 1 221 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$36, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 222 0
	movl	free@GOT(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	calloc@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_create_alloc@PLT
	.loc 1 223 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	htab_try_create, .-htab_try_create
.globl htab_delete
	.type	htab_delete, @function
htab_delete:
.LFB11:
	.loc 1 231 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	subl	$24, %esp
.LCFI21:
	.loc 1 234 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L29
	.loc 1 235 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L31
.L32:
	.loc 1 236 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L33
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L33
	.loc 1 238 0
	movl	8(%ebp), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%ecx
.L33:
	.loc 1 235 0
	subl	$1, -4(%ebp)
.L31:
	cmpl	$0, -4(%ebp)
	jns	.L32
.L29:
	.loc 1 240 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 242 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 243 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L38:
	.loc 1 245 0
	leave
	ret
.LFE11:
	.size	htab_delete, .-htab_delete
.globl htab_empty
	.type	htab_empty, @function
htab_empty:
.LFB12:
	.loc 1 252 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%edi
.LCFI24:
	subl	$20, %esp
.LCFI25:
	.loc 1 255 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 256 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	subl	$1, %eax
	movl	%eax, -8(%ebp)
	jmp	.L42
.L43:
	.loc 1 257 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L44
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L44
	.loc 1 259 0
	movl	8(%ebp), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%ecx
.L44:
	.loc 1 256 0
	subl	$1, -8(%ebp)
.L42:
	cmpl	$0, -8(%ebp)
	jns	.L43
.L40:
	.loc 1 261 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 262 0
	addl	$20, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	htab_empty, .-htab_empty
	.type	find_empty_slot_for_expand, @function
find_empty_slot_for_expand:
.LFB13:
	.loc 1 275 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%ebx
.LCFI28:
	subl	$20, %esp
.LCFI29:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 276 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 277 0
	movl	12(%ebp), %eax
	movl	$0, %edx
	divl	-20(%ebp)
	movl	%edx, -16(%ebp)
	.loc 1 278 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 281 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L49
	.loc 1 282 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L51
.L49:
	.loc 1 283 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L52
	.loc 1 284 0
	call	abort@PLT
.L52:
	.loc 1 286 0
	movl	-20(%ebp), %edx
	subl	$2, %edx
	movl	12(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%ebp)
.L54:
	.loc 1 289 0
	movl	-8(%ebp), %eax
	addl	%eax, -16(%ebp)
	.loc 1 290 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jb	.L55
	.loc 1 291 0
	movl	-20(%ebp), %eax
	subl	%eax, -16(%ebp)
.L55:
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 294 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L57
	.loc 1 295 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L51
.L57:
	.loc 1 296 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L54
	.loc 1 297 0
	call	abort@PLT
.L51:
	.loc 1 298 0
	movl	-24(%ebp), %eax
	.loc 1 299 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	find_empty_slot_for_expand, .-find_empty_slot_for_expand
	.type	htab_expand, @function
htab_expand:
.LFB14:
	.loc 1 312 0
	pushl	%ebp
.LCFI30:
	movl	%esp, %ebp
.LCFI31:
	subl	$56, %esp
.LCFI32:
	.loc 1 319 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 320 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 322 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	addl	%eax, %eax
	movl	%eax, (%esp)
	call	higher_prime_number
	movl	%eax, -12(%ebp)
	.loc 1 324 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -16(%ebp)
	.loc 1 325 0
	cmpl	$0, -16(%ebp)
	jne	.L63
	.loc 1 326 0
	movl	$0, -36(%ebp)
	jmp	.L65
.L63:
	.loc 1 327 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 328 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 331 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 333 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
.L66:
.LBB3:
	.loc 1 336 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 338 0
	cmpl	$0, -8(%ebp)
	je	.L67
	cmpl	$1, -8(%ebp)
	je	.L67
.LBB4:
	.loc 1 340 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_empty_slot_for_expand
	movl	%eax, -4(%ebp)
	.loc 1 342 0
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L67:
.LBE4:
	.loc 1 345 0
	addl	$4, -20(%ebp)
.LBE3:
	.loc 1 347 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L66
	.loc 1 349 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	je	.L71
	.loc 1 350 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L71:
	.loc 1 351 0
	movl	$1, -36(%ebp)
.L65:
	movl	-36(%ebp), %eax
	.loc 1 352 0
	leave
	ret
.LFE14:
	.size	htab_expand, .-htab_expand
.globl htab_find_with_hash
	.type	htab_find_with_hash, @function
htab_find_with_hash:
.LFB15:
	.loc 1 362 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	subl	$40, %esp
.LCFI35:
	.loc 1 368 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 369 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 370 0
	movl	16(%ebp), %eax
	movl	$0, %edx
	divl	-8(%ebp)
	movl	%edx, -16(%ebp)
	.loc 1 372 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 373 0
	cmpl	$0, -4(%ebp)
	je	.L75
	cmpl	$1, -4(%ebp)
	je	.L77
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L77
.L75:
	.loc 1 375 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L79
.L77:
	.loc 1 377 0
	movl	-8(%ebp), %edx
	subl	$2, %edx
	movl	16(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L88
.L80:
.L88:
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 382 0
	movl	-12(%ebp), %eax
	addl	%eax, -16(%ebp)
	.loc 1 383 0
	movl	-16(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L81
	.loc 1 384 0
	movl	-8(%ebp), %eax
	subl	%eax, -16(%ebp)
.L81:
	.loc 1 386 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 387 0
	cmpl	$0, -4(%ebp)
	je	.L83
	cmpl	$1, -4(%ebp)
	je	.L80
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L80
.L83:
	.loc 1 389 0
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
.L79:
	.loc 1 390 0
	movl	-20(%ebp), %eax
	.loc 1 391 0
	leave
	ret
.LFE15:
	.size	htab_find_with_hash, .-htab_find_with_hash
.globl htab_find
	.type	htab_find, @function
htab_find:
.LFB16:
	.loc 1 400 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$20, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 401 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_find_with_hash@PLT
	.loc 1 402 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	htab_find, .-htab_find
.globl htab_find_slot_with_hash
	.type	htab_find_slot_with_hash, @function
htab_find_slot_with_hash:
.LFB17:
	.loc 1 418 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	subl	$56, %esp
.LCFI42:
	.loc 1 425 0
	cmpl	$1, 20(%ebp)
	jne	.L92
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%eax,%edx), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	cmpl	%eax, %edx
	ja	.L92
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_expand
	testl	%eax, %eax
	jne	.L92
	.loc 1 427 0
	movl	$0, -36(%ebp)
	jmp	.L96
.L92:
	.loc 1 429 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 430 0
	movl	16(%ebp), %eax
	movl	$0, %edx
	divl	-8(%ebp)
	movl	%edx, -16(%ebp)
	.loc 1 432 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 433 0
	movl	$0, -20(%ebp)
	.loc 1 435 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 436 0
	cmpl	$0, -4(%ebp)
	je	.L97
	.loc 1 438 0
	cmpl	$1, -4(%ebp)
	jne	.L99
	.loc 1 439 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L101
.L99:
	.loc 1 440 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L101
	.loc 1 441 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	%edx, -36(%ebp)
	jmp	.L96
.L101:
	.loc 1 443 0
	movl	-8(%ebp), %edx
	subl	$2, %edx
	movl	16(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L118
.L103:
.L118:
	.loc 1 446 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 447 0
	movl	-12(%ebp), %eax
	addl	%eax, -16(%ebp)
	.loc 1 448 0
	movl	-16(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L104
	.loc 1 449 0
	movl	-8(%ebp), %eax
	subl	%eax, -16(%ebp)
.L104:
	.loc 1 451 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 452 0
	cmpl	$0, -4(%ebp)
	je	.L97
	.loc 1 454 0
	cmpl	$1, -4(%ebp)
	jne	.L107
	.loc 1 456 0
	cmpl	$0, -20(%ebp)
	jne	.L103
	.loc 1 457 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L103
.L107:
	.loc 1 459 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	je	.L103
	.loc 1 460 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	%edx, -36(%ebp)
	jmp	.L96
.L97:
	.loc 1 464 0
	cmpl	$0, 20(%ebp)
	jne	.L113
	.loc 1 465 0
	movl	$0, -36(%ebp)
	jmp	.L96
.L113:
	.loc 1 467 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 469 0
	cmpl	$0, -20(%ebp)
	je	.L115
	.loc 1 471 0
	movl	-20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 472 0
	movl	-20(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L96
.L115:
	.loc 1 475 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	%edx, -36(%ebp)
.L96:
	movl	-36(%ebp), %eax
	.loc 1 476 0
	leave
	ret
.LFE17:
	.size	htab_find_slot_with_hash, .-htab_find_slot_with_hash
.globl htab_find_slot
	.type	htab_find_slot, @function
htab_find_slot:
.LFB18:
	.loc 1 486 0
	pushl	%ebp
.LCFI43:
	movl	%esp, %ebp
.LCFI44:
	pushl	%ebx
.LCFI45:
	subl	$20, %esp
.LCFI46:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 487 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_find_slot_with_hash@PLT
	.loc 1 489 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	htab_find_slot, .-htab_find_slot
.globl htab_remove_elt
	.type	htab_remove_elt, @function
htab_remove_elt:
.LFB19:
	.loc 1 499 0
	pushl	%ebp
.LCFI47:
	movl	%esp, %ebp
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$36, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 502 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	htab_find_slot@PLT
	movl	%eax, -8(%ebp)
	.loc 1 503 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L126
	.loc 1 506 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L124
	.loc 1 507 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L124:
	.loc 1 509 0
	movl	-8(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 510 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
.L126:
	.loc 1 511 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	htab_remove_elt, .-htab_remove_elt
.globl htab_clear_slot
	.type	htab_clear_slot, @function
htab_clear_slot:
.LFB20:
	.loc 1 521 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$4, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 522 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	ja	.L128
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	cmpl	12(%ebp), %eax
	jbe	.L128
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L128
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L132
.L128:
	.loc 1 524 0
	call	abort@PLT
.L132:
	.loc 1 526 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L133
	.loc 1 527 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L133:
	.loc 1 529 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 530 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 531 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	htab_clear_slot, .-htab_clear_slot
.globl htab_traverse
	.type	htab_traverse, @function
htab_traverse:
.LFB21:
	.loc 1 543 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	subl	$24, %esp
.LCFI57:
	.loc 1 544 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 545 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	sall	$2, %eax
	addl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
.L137:
.LBB5:
	.loc 1 549 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 551 0
	cmpl	$0, -4(%ebp)
	je	.L138
	cmpl	$1, -4(%ebp)
	je	.L138
	.loc 1 552 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L142
.L138:
.LBE5:
	.loc 1 555 0
	addl	$4, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L137
.L142:
	.loc 1 556 0
	leave
	ret
.LFE21:
	.size	htab_traverse, .-htab_traverse
.globl htab_size
	.type	htab_size, @function
htab_size:
.LFB22:
	.loc 1 563 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	.loc 1 564 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	.loc 1 565 0
	popl	%ebp
	ret
.LFE22:
	.size	htab_size, .-htab_size
.globl htab_elements
	.type	htab_elements, @function
htab_elements:
.LFB23:
	.loc 1 572 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	.loc 1 573 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	.loc 1 574 0
	popl	%ebp
	ret
.LFE23:
	.size	htab_elements, .-htab_elements
.globl htab_collisions
	.type	htab_collisions, @function
htab_collisions:
.LFB24:
	.loc 1 582 0
	pushl	%ebp
.LCFI62:
	movl	%esp, %ebp
.LCFI63:
	subl	$8, %esp
.LCFI64:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 583 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L148
	.loc 1 584 0
	fldz
	fstpl	-8(%ebp)
	jmp	.L150
.L148:
	.loc 1 586 0
	movl	8(%ebp), %eax
	movl	32(%eax), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-8(%ebp)
.L150:
	fldl	-8(%ebp)
	.loc 1 587 0
	leave
	ret
.LFE24:
	.size	htab_collisions, .-htab_collisions
.globl htab_hash_string
	.type	htab_hash_string, @function
htab_hash_string:
.LFB25:
	.loc 1 617 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	subl	$16, %esp
.LCFI67:
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 619 0
	movl	$0, -8(%ebp)
	.loc 1 622 0
	jmp	.L153
.L154:
	.loc 1 623 0
	movl	-8(%ebp), %eax
	imull	$67, %eax, %edx
	movzbl	-1(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$113, %eax
	movl	%eax, -8(%ebp)
.L153:
	.loc 1 622 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	setne	%al
	addl	$1, -12(%ebp)
	testb	%al, %al
	jne	.L154
	.loc 1 625 0
	movl	-8(%ebp), %eax
	.loc 1 626 0
	leave
	ret
.LFE25:
	.size	htab_hash_string, .-htab_hash_string
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI0-.LFB5
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI4-.LFB6
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI6-.LFB7
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI11-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI15-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI19-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI22-.LFB12
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
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI26-.LFB13
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI30-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI33-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI36-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI37
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI40-.LFB17
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI43-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI44-.LCFI43
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI46-.LCFI44
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI47-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI48
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI51-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI52
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI55-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI58-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI60-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI62-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI65-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
	.file 2 "../../include/gnu/hashtab.h"
	.file 3 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/bits/types.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI47-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI48-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xf7e
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/hashtab.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x3
	.byte	0xd6
	.long	0xa6
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
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
	.string	"int"
	.byte	0x4
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
	.byte	0x6
	.byte	0x3b
	.long	0x10c
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x156
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x137
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x182
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.byte	0x4
	.long	0x190
	.uleb128 0x7
	.long	0x1a5
	.byte	0x1
	.long	0x105
	.uleb128 0x8
	.long	0x1a5
	.uleb128 0x8
	.long	0x1a5
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x1ab
	.uleb128 0x9
	.uleb128 0xa
	.long	0x427
	.long	.LASF1
	.byte	0x94
	.byte	0x4
	.byte	0x2e
	.uleb128 0xb
	.string	"_flags"
	.byte	0x5
	.value	0x10c
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_IO_read_ptr"
	.byte	0x5
	.value	0x111
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_IO_read_end"
	.byte	0x5
	.value	0x112
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"_IO_read_base"
	.byte	0x5
	.value	0x113
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"_IO_write_base"
	.byte	0x5
	.value	0x114
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"_IO_write_ptr"
	.byte	0x5
	.value	0x115
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"_IO_write_end"
	.byte	0x5
	.value	0x116
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"_IO_buf_base"
	.byte	0x5
	.value	0x117
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"_IO_buf_end"
	.byte	0x5
	.value	0x118
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"_IO_save_base"
	.byte	0x5
	.value	0x11a
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"_IO_backup_base"
	.byte	0x5
	.value	0x11b
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"_IO_save_end"
	.byte	0x5
	.value	0x11c
	.long	0x17c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"_markers"
	.byte	0x5
	.value	0x11e
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"_chain"
	.byte	0x5
	.value	0x120
	.long	0x4a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"_fileno"
	.byte	0x5
	.value	0x122
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"_flags2"
	.byte	0x5
	.value	0x126
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"_old_offset"
	.byte	0x5
	.value	0x128
	.long	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"_cur_column"
	.byte	0x5
	.value	0x12c
	.long	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"_vtable_offset"
	.byte	0x5
	.value	0x12d
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.string	"_shortbuf"
	.byte	0x5
	.value	0x12e
	.long	0x4a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xb
	.string	"_lock"
	.byte	0x5
	.value	0x132
	.long	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"_offset"
	.byte	0x5
	.value	0x13b
	.long	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"__pad1"
	.byte	0x5
	.value	0x144
	.long	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"__pad2"
	.byte	0x5
	.value	0x145
	.long	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"__pad3"
	.byte	0x5
	.value	0x146
	.long	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"__pad4"
	.byte	0x5
	.value	0x147
	.long	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"__pad5"
	.byte	0x5
	.value	0x148
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"_mode"
	.byte	0x5
	.value	0x14a
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"_unused2"
	.byte	0x5
	.value	0x14c
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x42d
	.uleb128 0xc
	.long	0xad
	.uleb128 0x6
	.byte	0x4
	.long	0x17a
	.uleb128 0x6
	.byte	0x4
	.long	0x43e
	.uleb128 0xd
	.long	0x44a
	.byte	0x1
	.uleb128 0x8
	.long	0x17a
	.byte	0x0
	.uleb128 0xe
	.string	"_IO_lock_t"
	.byte	0x5
	.byte	0xb0
	.uleb128 0xf
	.long	0x49b
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x5
	.byte	0xb6
	.uleb128 0x10
	.string	"_next"
	.byte	0x5
	.byte	0xb7
	.long	0x49b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"_sbuf"
	.byte	0x5
	.byte	0xb8
	.long	0x4a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"_pos"
	.byte	0x5
	.byte	0xbc
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x458
	.uleb128 0x6
	.byte	0x4
	.long	0x1ac
	.uleb128 0x11
	.long	0x4b7
	.long	0x182
	.uleb128 0x12
	.long	0x173
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x44a
	.uleb128 0x11
	.long	0x4cd
	.long	0x182
	.uleb128 0x12
	.long	0x173
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0x2
	.byte	0x32
	.long	0xa6
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0x2
	.byte	0x37
	.long	0x4ef
	.uleb128 0x6
	.byte	0x4
	.long	0x4f5
	.uleb128 0x7
	.long	0x505
	.byte	0x1
	.long	0x4cd
	.uleb128 0x8
	.long	0x1a5
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0x2
	.byte	0x3e
	.long	0x18a
	.uleb128 0x2
	.string	"htab_del"
	.byte	0x2
	.byte	0x42
	.long	0x438
	.uleb128 0x2
	.string	"htab_trav"
	.byte	0x2
	.byte	0x48
	.long	0x535
	.uleb128 0x6
	.byte	0x4
	.long	0x53b
	.uleb128 0x7
	.long	0x550
	.byte	0x1
	.long	0x105
	.uleb128 0x8
	.long	0x432
	.uleb128 0x8
	.long	0x17a
	.byte	0x0
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0x2
	.byte	0x4e
	.long	0x562
	.uleb128 0x6
	.byte	0x4
	.long	0x568
	.uleb128 0x7
	.long	0x57d
	.byte	0x1
	.long	0x17a
	.uleb128 0x8
	.long	0x98
	.uleb128 0x8
	.long	0x98
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0x2
	.byte	0x51
	.long	0x438
	.uleb128 0xa
	.long	0x65a
	.long	.LASF2
	.byte	0x2c
	.byte	0x2
	.byte	0x59
	.uleb128 0x13
	.long	.LASF3
	.byte	0x2
	.byte	0x5b
	.long	0x4de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"eq_f"
	.byte	0x2
	.byte	0x5e
	.long	0x505
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.long	.LASF4
	.byte	0x2
	.byte	0x61
	.long	0x514
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"entries"
	.byte	0x2
	.byte	0x64
	.long	0x432
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.long	.LASF5
	.byte	0x2
	.byte	0x67
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"n_elements"
	.byte	0x2
	.byte	0x6a
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"n_deleted"
	.byte	0x2
	.byte	0x6d
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"searches"
	.byte	0x2
	.byte	0x71
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"collisions"
	.byte	0x2
	.byte	0x75
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"alloc_f"
	.byte	0x2
	.byte	0x78
	.long	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"free_f"
	.byte	0x2
	.byte	0x79
	.long	0x57d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.string	"htab_t"
	.byte	0x2
	.byte	0x7c
	.long	0x668
	.uleb128 0x6
	.byte	0x4
	.long	0x58e
	.uleb128 0x14
	.long	0x69a
	.string	"insert_option"
	.byte	0x4
	.byte	0x2
	.byte	0x7f
	.uleb128 0x15
	.string	"NO_INSERT"
	.sleb128 0
	.uleb128 0x15
	.string	"INSERT"
	.sleb128 1
	.byte	0x0
	.uleb128 0x16
	.long	0x720
	.string	"higher_prime_number"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0xd4
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x57
	.long	0xd4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"low"
	.byte	0x1
	.byte	0x7d
	.long	0x720
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"high"
	.byte	0x1
	.byte	0x7e
	.long	0x720
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	0x70b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x18
	.string	"mid"
	.byte	0x1
	.byte	0x82
	.long	0x720
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.string	"primes"
	.byte	0x1
	.byte	0x5b
	.long	0xf2e
	.byte	0x5
	.byte	0x3
	.long	primes.3010
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x726
	.uleb128 0xc
	.long	0xd4
	.uleb128 0x16
	.long	0x75d
	.string	"hash_pointer"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x4cd
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x97
	.long	0x1a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x16
	.long	0x79b
	.string	"eq_pointer"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	0x105
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x17
	.string	"p1"
	.byte	0x1
	.byte	0xa0
	.long	0x1a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"p2"
	.byte	0x1
	.byte	0xa1
	.long	0x1a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1a
	.long	0x834
	.byte	0x1
	.string	"htab_create_alloc"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	0x65a
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.byte	0xad
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.byte	0xae
	.long	0x4de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"eq_f"
	.byte	0x1
	.byte	0xaf
	.long	0x505
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.byte	0xb0
	.long	0x514
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.string	"alloc_f"
	.byte	0x1
	.byte	0xb1
	.long	0x550
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x17
	.string	"free_f"
	.byte	0x1
	.byte	0xb2
	.long	0x57d
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.string	"result"
	.byte	0x1
	.byte	0xb4
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1a
	.long	0x893
	.byte	0x1
	.string	"htab_create"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.long	0x65a
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.byte	0xcf
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.byte	0xd0
	.long	0x4de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"eq_f"
	.byte	0x1
	.byte	0xd1
	.long	0x505
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.byte	0xd2
	.long	0x514
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x1a
	.long	0x8f6
	.byte	0x1
	.string	"htab_try_create"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	0x65a
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x1
	.byte	0xd9
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF3
	.byte	0x1
	.byte	0xda
	.long	0x4de
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"eq_f"
	.byte	0x1
	.byte	0xdb
	.long	0x505
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x1
	.byte	0xdc
	.long	0x514
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x1c
	.long	0x932
	.byte	0x1
	.string	"htab_delete"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.byte	0xe6
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xe8
	.long	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1c
	.long	0x96d
	.byte	0x1
	.string	"htab_empty"
	.byte	0x1
	.byte	0xfc
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.byte	0xfb
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.long	0x105
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0xa02
	.string	"find_empty_slot_for_expand"
	.byte	0x1
	.value	0x113
	.byte	0x1
	.long	0x432
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x111
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"hash"
	.byte	0x1
	.value	0x112
	.long	0x4cd
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF5
	.byte	0x1
	.value	0x114
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"index"
	.byte	0x1
	.value	0x115
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"slot"
	.byte	0x1
	.value	0x116
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"hash2"
	.byte	0x1
	.value	0x117
	.long	0x4cd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1d
	.long	0xabd
	.string	"htab_expand"
	.byte	0x1
	.value	0x138
	.byte	0x1
	.long	0x105
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x137
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"oentries"
	.byte	0x1
	.value	0x139
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.string	"olimit"
	.byte	0x1
	.value	0x13a
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.value	0x13b
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"nentries"
	.byte	0x1
	.value	0x13c
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"nsize"
	.byte	0x1
	.value	0x13d
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.value	0x150
	.long	0x17a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x21
	.string	"q"
	.byte	0x1
	.value	0x154
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0xb5c
	.byte	0x1
	.string	"htab_find_with_hash"
	.byte	0x1
	.value	0x16a
	.byte	0x1
	.long	0x17a
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x167
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x168
	.long	0x1a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"hash"
	.byte	0x1
	.value	0x169
	.long	0x4cd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"index"
	.byte	0x1
	.value	0x16b
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"hash2"
	.byte	0x1
	.value	0x16c
	.long	0x4cd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.long	.LASF5
	.byte	0x1
	.value	0x16d
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.string	"entry"
	.byte	0x1
	.value	0x16e
	.long	0x17a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x23
	.long	0xb9f
	.byte	0x1
	.string	"htab_find"
	.byte	0x1
	.value	0x190
	.byte	0x1
	.long	0x17a
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x18e
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x18f
	.long	0x1a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x23
	.long	0xc87
	.byte	0x1
	.string	"htab_find_slot_with_hash"
	.byte	0x1
	.value	0x1a2
	.byte	0x1
	.long	0x432
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x19e
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x19f
	.long	0x1a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"hash"
	.byte	0x1
	.value	0x1a0
	.long	0x4cd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.string	"insert"
	.byte	0x1
	.value	0x1a1
	.long	0x66e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x21
	.string	"first_deleted_slot"
	.byte	0x1
	.value	0x1a3
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"index"
	.byte	0x1
	.value	0x1a4
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"hash2"
	.byte	0x1
	.value	0x1a5
	.long	0x4cd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.long	.LASF5
	.byte	0x1
	.value	0x1a6
	.long	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.string	"entry"
	.byte	0x1
	.value	0x1a7
	.long	0x17a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.string	"empty_entry"
	.byte	0x1
	.value	0x1cf
	.long	.L97
	.byte	0x0
	.uleb128 0x23
	.long	0xce1
	.byte	0x1
	.string	"htab_find_slot"
	.byte	0x1
	.value	0x1e6
	.byte	0x1
	.long	0x432
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x1e3
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x1e4
	.long	0x1a5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"insert"
	.byte	0x1
	.value	0x1e5
	.long	0x66e
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x25
	.long	0xd36
	.byte	0x1
	.string	"htab_remove_elt"
	.byte	0x1
	.value	0x1f3
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x1f1
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF6
	.byte	0x1
	.value	0x1f2
	.long	0x17a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"slot"
	.byte	0x1
	.value	0x1f4
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0xd7c
	.byte	0x1
	.string	"htab_clear_slot"
	.byte	0x1
	.value	0x209
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x207
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"slot"
	.byte	0x1
	.value	0x208
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x25
	.long	0xe0c
	.byte	0x1
	.string	"htab_traverse"
	.byte	0x1
	.value	0x21f
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x21c
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"callback"
	.byte	0x1
	.value	0x21d
	.long	0x524
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"info"
	.byte	0x1
	.value	0x21e
	.long	0x17a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.string	"slot"
	.byte	0x1
	.value	0x220
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"limit"
	.byte	0x1
	.value	0x221
	.long	0x432
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x22
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.value	0x225
	.long	0x17a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.long	0xe40
	.byte	0x1
	.string	"htab_size"
	.byte	0x1
	.value	0x233
	.byte	0x1
	.long	0x98
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x232
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.long	0xe78
	.byte	0x1
	.string	"htab_elements"
	.byte	0x1
	.value	0x23c
	.byte	0x1
	.long	0x98
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x23b
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x23
	.long	0xeb2
	.byte	0x1
	.string	"htab_collisions"
	.byte	0x1
	.value	0x246
	.byte	0x1
	.long	0xeb2
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.value	0x245
	.long	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x23
	.long	0xf1e
	.byte	0x1
	.string	"htab_hash_string"
	.byte	0x1
	.value	0x269
	.byte	0x1
	.long	0x4cd
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x268
	.long	0x1a5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"str"
	.byte	0x1
	.value	0x26a
	.long	0x427
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.value	0x26b
	.long	0x4cd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.value	0x26c
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.uleb128 0x11
	.long	0xf2e
	.long	0xd4
	.uleb128 0x12
	.long	0x173
	.byte	0x1d
	.byte	0x0
	.uleb128 0xc
	.long	0xf1e
	.uleb128 0x26
	.string	"stderr"
	.byte	0x4
	.byte	0x90
	.long	0x4a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"htab_hash_pointer"
	.byte	0x1
	.byte	0x4f
	.long	0x4de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	htab_hash_pointer
	.uleb128 0x27
	.string	"htab_eq_pointer"
	.byte	0x1
	.byte	0x50
	.long	0x505
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	htab_eq_pointer
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.long	0x16a
	.value	0x2
	.long	.Ldebug_info0
	.long	0xf82
	.long	0x79b
	.string	"htab_create_alloc"
	.long	0x834
	.string	"htab_create"
	.long	0x893
	.string	"htab_try_create"
	.long	0x8f6
	.string	"htab_delete"
	.long	0x932
	.string	"htab_empty"
	.long	0xabd
	.string	"htab_find_with_hash"
	.long	0xb5c
	.string	"htab_find"
	.long	0xb9f
	.string	"htab_find_slot_with_hash"
	.long	0xc87
	.string	"htab_find_slot"
	.long	0xce1
	.string	"htab_remove_elt"
	.long	0xd36
	.string	"htab_clear_slot"
	.long	0xd7c
	.string	"htab_traverse"
	.long	0xe0c
	.string	"htab_size"
	.long	0xe40
	.string	"htab_elements"
	.long	0xe78
	.string	"htab_collisions"
	.long	0xebc
	.string	"htab_hash_string"
	.long	0xf43
	.string	"htab_hash_pointer"
	.long	0xf63
	.string	"htab_eq_pointer"
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
	.string	"htab"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"del_f"
.LASF5:
	.string	"size"
.LASF1:
	.string	"_IO_FILE"
.LASF6:
	.string	"element"
.LASF3:
	.string	"hash_f"
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
