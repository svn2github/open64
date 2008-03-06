	.file	"cppfiles.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl _cpp_init_includes
	.type	_cpp_init_includes, @function
_cpp_init_includes:
.LFB21:
	.file 1 "../../../kgccfe/gnu/cppfiles.c"
	.loc 1 156 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$20, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 157 0
	movl	free@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	strcmp@GOT(%ebx), %eax
	movl	%eax, %ecx
	leal	destroy_node@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	splay_tree_new@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 168(%eax)
	.loc 1 161 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	_cpp_init_includes, .-_cpp_init_includes
.globl _cpp_cleanup_includes
	.type	_cpp_cleanup_includes, @function
_cpp_cleanup_includes:
.LFB22:
	.loc 1 167 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$4, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 168 0
	movl	8(%ebp), %eax
	movl	168(%eax), %eax
	movl	%eax, (%esp)
	call	splay_tree_delete@PLT
	.loc 1 169 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	_cpp_cleanup_includes, .-_cpp_cleanup_includes
	.type	destroy_node, @function
destroy_node:
.LFB23:
	.loc 1 175 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$20, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 178 0
	cmpl	$0, -8(%ebp)
	je	.L8
	.loc 1 180 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_cache
	.loc 1 181 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L8:
	.loc 1 183 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	destroy_node, .-destroy_node
.globl _cpp_never_reread
	.type	_cpp_never_reread, @function
_cpp_never_reread:
.LFB24:
	.loc 1 189 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	.loc 1 190 0
	movl	8(%ebp), %eax
	movl	$-1, 4(%eax)
	.loc 1 191 0
	popl	%ebp
	ret
.LFE24:
	.size	_cpp_never_reread, .-_cpp_never_reread
	.type	find_or_create_entry, @function
find_or_create_entry:
.LFB25:
	.loc 1 200 0
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
	.loc 1 203 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 205 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_simplify_pathname@PLT
	.loc 1 206 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	168(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -16(%ebp)
	.loc 1 207 0
	cmpl	$0, -16(%ebp)
	je	.L12
	.loc 1 208 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	jmp	.L14
.L12:
	.loc 1 211 0
	movl	$120, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 212 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 213 0
	call	__errno_location@PLT
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 108(%eax)
	.loc 1 214 0
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	168(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_insert@PLT
	movl	%eax, -16(%ebp)
.L14:
	.loc 1 219 0
	movl	-16(%ebp), %eax
	.loc 1 220 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	find_or_create_entry, .-find_or_create_entry
.globl _cpp_fake_include
	.type	_cpp_fake_include, @function
_cpp_fake_include:
.LFB26:
	.loc 1 227 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	subl	$8, %esp
.LCFI20:
	.loc 1 228 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_or_create_entry
	.loc 1 229 0
	leave
	ret
.LFE26:
	.size	_cpp_fake_include, .-_cpp_fake_include
	.type	open_file, @function
open_file:
.LFB27:
	.loc 1 244 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$36, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 245 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_or_create_entry
	movl	%eax, -12(%ebp)
	.loc 1 246 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 248 0
	movl	-8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L19
	.loc 1 251 0
	call	__errno_location@PLT
	movl	-8(%ebp), %edx
	movl	108(%edx), %edx
	movl	%edx, (%eax)
	.loc 1 252 0
	movl	$0, -24(%ebp)
	jmp	.L21
.L19:
	.loc 1 256 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L22
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	je	.L24
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L22
.L24:
	.loc 1 257 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L21
.L22:
	.loc 1 260 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L26
	.loc 1 261 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L21
.L26:
	.loc 1 277 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L28
	.loc 1 279 0
	movl	-8(%ebp), %eax
	movl	$0, 104(%eax)
	jmp	.L30
.L28:
	.loc 1 288 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	$438, 8(%esp)
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	open@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 104(%eax)
.L30:
	.loc 1 290 0
	movl	-8(%ebp), %eax
	movl	104(%eax), %eax
	cmpl	$-1, %eax
	je	.L31
	movl	-8(%ebp), %edx
	addl	$16, %edx
	movl	-8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fstat@PLT
	testl	%eax, %eax
	jne	.L31
	.loc 1 292 0
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	je	.L34
	.loc 1 293 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L21
.L34:
	.loc 1 298 0
	call	__errno_location@PLT
	movl	$2, (%eax)
	.loc 1 299 0
	movl	-8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 300 0
	movl	-8(%ebp), %eax
	movl	$-1, 104(%eax)
.L31:
	.loc 1 303 0
	call	__errno_location@PLT
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 108(%eax)
	.loc 1 304 0
	movl	$0, -24(%ebp)
.L21:
	movl	-24(%ebp), %eax
	.loc 1 305 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	open_file, .-open_file
	.section	.rodata
.LC0:
	.string	"<stdin>"
	.text
	.type	stack_include_file, @function
stack_include_file:
.LFB28:
	.loc 1 315 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$68, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 320 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L38
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	je	.L40
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L38
.L40:
	.loc 1 321 0
	movl	$0, -44(%ebp)
	jmp	.L42
.L38:
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L43
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	jmp	.L45
.L43:
	movl	$0, -36(%ebp)
.L45:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L46
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L48
.L46:
	movl	$0, -32(%ebp)
.L48:
	movl	-32(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jle	.L49
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L51
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	jmp	.L53
.L51:
	movl	$0, -28(%ebp)
.L53:
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L54
.L49:
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L55
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L57
.L55:
	movl	$0, -24(%ebp)
.L57:
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
.L54:
	movl	-40(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 327 0
	movl	8(%ebp), %eax
	movl	436(%eax), %edx
	cmpl	$0, -12(%ebp)
	setne	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jbe	.L58
	movl	12(%ebp), %eax
	movzwl	112(%eax), %eax
	testw	%ax, %ax
	jne	.L58
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L61
	movl	8(%ebp), %eax
	movzbl	442(%eax), %eax
	testb	%al, %al
	jne	.L58
.L61:
	.loc 1 330 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	deps_add_dep@PLT
.L58:
	.loc 1 334 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L63
	.loc 1 336 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_include_file
	testl	%eax, %eax
	je	.L65
	.loc 1 339 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_never_reread@PLT
	.loc 1 340 0
	movl	$0, -44(%ebp)
	jmp	.L42
.L65:
	.loc 1 345 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	andl	$61440, %eax
	cmpl	$32768, %eax
	jne	.L67
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	.L67
	.loc 1 346 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_never_reread@PLT
.L67:
	.loc 1 347 0
	movl	12(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 348 0
	movl	12(%ebp), %eax
	movl	$-1, 104(%eax)
.L63:
	.loc 1 351 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L70
	.loc 1 353 0
	movl	12(%ebp), %eax
	movzwl	112(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movw	%dx, 112(%eax)
.L70:
	.loc 1 356 0
	movl	8(%ebp), %eax
	movzbl	426(%eax), %eax
	movzbl	%al, %ecx
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_push_buffer@PLT
	movl	%eax, -16(%ebp)
	.loc 1 358 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 359 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movzwl	114(%edx), %eax
	addl	$1, %eax
	movw	%ax, 114(%edx)
	.loc 1 362 0
	movl	8(%ebp), %eax
	movb	$1, 120(%eax)
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	$0, 112(%eax)
	.loc 1 366 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 367 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L72
	.loc 1 368 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L72:
	.loc 1 369 0
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$1, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do_file_change@PLT
	.loc 1 371 0
	movl	$1, -44(%ebp)
.L42:
	movl	-44(%ebp), %eax
	.loc 1 372 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	stack_include_file, .-stack_include_file
	.data
	.align 4
	.type	pagesize.7434, @object
	.size	pagesize.7434, 4
pagesize.7434:
	.long	-1
	.section	.rodata
.LC1:
	.string	"%s is shorter than expected"
.LC2:
	.string	"%s is a block device"
	.text
	.type	read_include_file, @function
read_include_file:
.LFB29:
	.loc 1 392 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$52, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 399 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	andl	$61440, %eax
	cmpl	$32768, %eax
	jne	.L76
	.loc 1 414 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 416 0
	movl	12(%ebp), %eax
	movb	$0, 116(%eax)
	.loc 1 418 0
	movl	pagesize.7434@GOTOFF(%ebx), %eax
	cmpl	$-1, %eax
	jne	.L78
	.loc 1 419 0
	call	getpagesize@PLT
	movl	%eax, pagesize.7434@GOTOFF(%ebx)
.L78:
	.loc 1 421 0
	movl	pagesize.7434@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	cmpl	$2, %eax
	jle	.L80
	movl	pagesize.7434@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %edx
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L80
	.loc 1 423 0
	movl	12(%ebp), %eax
	movl	104(%eax), %eax
	movl	-20(%ebp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$2, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	mmap@PLT
	movl	%eax, -8(%ebp)
	.loc 1 424 0
	cmpl	$-1, -8(%ebp)
	je	.L83
	.loc 1 431 0
	movl	12(%ebp), %eax
	movb	$1, 116(%eax)
	.loc 1 421 0
	jmp	.L92
.L80:
	.loc 1 436 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 437 0
	movl	$0, -16(%ebp)
	.loc 1 438 0
	jmp	.L86
.L87:
	.loc 1 440 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	addl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	104(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	read@PLT
	movl	%eax, -12(%ebp)
	.loc 1 441 0
	cmpl	$0, -12(%ebp)
	js	.L83
	.loc 1 443 0
	cmpl	$0, -12(%ebp)
	jne	.L89
	.loc 1 446 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 448 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 449 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 450 0
	movl	12(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 60(%edx)
	.loc 1 451 0
	jmp	.L91
.L89:
	.loc 1 453 0
	movl	-12(%ebp), %eax
	addl	%eax, -16(%ebp)
.L86:
	.loc 1 438 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L87
.L91:
	.loc 1 456 0
	movl	-20(%ebp), %eax
	addl	-8(%ebp), %eax
	movb	$0, (%eax)
	jmp	.L92
.L76:
	.loc 1 459 0
	movl	12(%ebp), %eax
	movl	32(%eax), %eax
	andl	$61440, %eax
	cmpl	$24576, %eax
	jne	.L93
	.loc 1 461 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 462 0
	jmp	.L95
.L93:
	.loc 1 469 0
	movl	$8192, -20(%ebp)
	.loc 1 471 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 472 0
	movl	$0, -16(%ebp)
	.loc 1 473 0
	jmp	.L105
.L97:
	.loc 1 475 0
	movl	-12(%ebp), %eax
	addl	%eax, -16(%ebp)
	.loc 1 476 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L96
	.loc 1 478 0
	sall	-20(%ebp)
	.loc 1 479 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, -8(%ebp)
.L96:
.L105:
	.loc 1 473 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	addl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	104(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	read@PLT
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jg	.L97
	.loc 1 482 0
	cmpl	$0, -12(%ebp)
	js	.L83
	.loc 1 485 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	cmpl	-20(%ebp), %eax
	jge	.L101
	.loc 1 486 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, -8(%ebp)
.L101:
	.loc 1 489 0
	movl	-16(%ebp), %eax
	addl	-8(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 490 0
	movl	12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 60(%edx)
.L92:
	.loc 1 493 0
	movl	12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 494 0
	movl	$0, -24(%ebp)
	jmp	.L103
.L83:
	.loc 1 497 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_errno@PLT
.L95:
	.loc 1 499 0
	movl	$1, -24(%ebp)
.L103:
	movl	-24(%ebp), %eax
	.loc 1 500 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	read_include_file, .-read_include_file
	.type	purge_cache, @function
purge_cache:
.LFB30:
	.loc 1 506 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$20, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 507 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L112
	.loc 1 510 0
	movl	8(%ebp), %eax
	movzbl	116(%eax), %eax
	testb	%al, %al
	je	.L109
	.loc 1 517 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	munmap@PLT
	jmp	.L111
.L109:
	.loc 1 521 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L111:
	.loc 1 522 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
.L112:
	.loc 1 524 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	purge_cache, .-purge_cache
.globl cpp_included
	.type	cpp_included, @function
cpp_included:
.LFB31:
	.loc 1 532 0
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
	subl	$76, %esp
.LCFI42:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 532 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 537 0
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L114
	movl	-52(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L116
.L114:
	.loc 1 540 0
	movl	-52(%ebp), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	168(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -20(%ebp)
	.loc 1 541 0
	cmpl	$0, -20(%ebp)
	je	.L117
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L117
	movl	$1, -60(%ebp)
	jmp	.L120
.L117:
	movl	$0, -60(%ebp)
.L120:
	movl	-60(%ebp), %edx
	movl	%edx, -64(%ebp)
	jmp	.L121
.L116:
	.loc 1 545 0
	movl	-52(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -68(%ebp)
	movl	$0, %eax
	cld
	movl	-68(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	172(%eax), %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 546 0
	movl	-48(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L122
.L123:
	.loc 1 548 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 549 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	addl	-28(%ebp), %eax
	movb	$47, (%eax)
	.loc 1 550 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	addl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 1 551 0
	movl	-48(%ebp), %eax
	movzbl	417(%eax), %eax
	testb	%al, %al
	je	.L124
	.loc 1 552 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_filename
	movl	%eax, -24(%ebp)
	jmp	.L126
.L124:
	.loc 1 554 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L126:
	.loc 1 556 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	movl	168(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	splay_tree_lookup@PLT
	movl	%eax, -20(%ebp)
	.loc 1 557 0
	cmpl	$0, -20(%ebp)
	je	.L127
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L127
	.loc 1 558 0
	movl	$1, -64(%ebp)
	jmp	.L121
.L127:
	.loc 1 546 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L122:
	cmpl	$0, -32(%ebp)
	jne	.L123
	.loc 1 560 0
	movl	$0, -64(%ebp)
.L121:
	movl	-64(%ebp), %eax
	.loc 1 561 0
	movl	-16(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L132
	call	__stack_chk_fail_local
.L132:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE31:
	.size	cpp_included, .-cpp_included
	.section	.rodata
	.align 4
.LC3:
	.string	"no include path in which to find %s"
	.text
	.type	find_include_file, @function
find_include_file:
.LFB32:
	.loc 1 573 0
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
	subl	$76, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 573 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 574 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 579 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L134
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L136
.L134:
	.loc 1 580 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	open_file
	movl	%eax, -60(%ebp)
	jmp	.L137
.L136:
	.loc 1 585 0
	cmpl	$1, 16(%ebp)
	jne	.L138
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L138
	.loc 1 586 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 585 0
	jmp	.L141
.L138:
	.loc 1 587 0
	movl	-52(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$64, %al
	jne	.L142
	.loc 1 588 0
	movl	-48(%ebp), %eax
	movl	372(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L141
.L142:
	.loc 1 590 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	search_from
	movl	%eax, -36(%ebp)
.L141:
	.loc 1 592 0
	cmpl	$0, -36(%ebp)
	jne	.L144
	.loc 1 594 0
	movl	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 596 0
	movl	$-1, -60(%ebp)
	jmp	.L137
.L144:
	.loc 1 600 0
	movl	-40(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	$0, %eax
	cld
	movl	-64(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	-48(%ebp), %eax
	movl	172(%eax), %eax
	leal	(%edx,%eax), %eax
	addl	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 601 0
	jmp	.L146
.L147:
.LBB2:
	.loc 1 603 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 604 0
	movl	-20(%ebp), %ecx
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 607 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L148
	.loc 1 608 0
	subl	$1, -20(%ebp)
.L148:
	.loc 1 609 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	movb	$47, (%eax)
	.loc 1 610 0
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 1 611 0
	movl	-48(%ebp), %eax
	movzbl	417(%eax), %eax
	testb	%al, %al
	je	.L150
	.loc 1 612 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	remap_filename
	movl	%eax, -24(%ebp)
	jmp	.L152
.L150:
	.loc 1 614 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L152:
	.loc 1 616 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	open_file
	movl	%eax, -32(%ebp)
	.loc 1 617 0
	cmpl	$0, -32(%ebp)
	je	.L153
	.loc 1 619 0
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 620 0
	movl	-32(%ebp), %edi
	movl	%edi, -60(%ebp)
	jmp	.L137
.L153:
.LBE2:
	.loc 1 601 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L146:
	cmpl	$0, -36(%ebp)
	jne	.L147
	.loc 1 624 0
	movl	$0, -60(%ebp)
.L137:
	movl	-60(%ebp), %eax
	.loc 1 625 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L157
	call	__stack_chk_fail_local
.L157:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE32:
	.size	find_include_file, .-find_include_file
.globl cpp_make_system_header
	.type	cpp_make_system_header, @function
cpp_make_system_header:
.LFB33:
	.loc 1 634 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$52, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 635 0
	movl	$0, -8(%ebp)
	.loc 1 638 0
	cmpl	$0, 12(%ebp)
	je	.L159
	.loc 1 639 0
	cmpl	$0, 16(%ebp)
	je	.L161
	movl	$2, -24(%ebp)
	jmp	.L163
.L161:
	movl	$1, -24(%ebp)
.L163:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.L159:
	.loc 1 640 0
	movl	-8(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	8(%eax), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do_file_change@PLT
	.loc 1 642 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	cpp_make_system_header, .-cpp_make_system_header
.globl _cpp_report_missing_guards
	.type	_cpp_report_missing_guards, @function
_cpp_report_missing_guards:
.LFB34:
	.loc 1 649 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$36, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 650 0
	movl	$0, -8(%ebp)
	.loc 1 651 0
	movl	8(%ebp), %eax
	movl	168(%eax), %edx
	leal	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	report_missing_guard@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	splay_tree_foreach@PLT
	.loc 1 653 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	_cpp_report_missing_guards, .-_cpp_report_missing_guards
	.section	.rodata
	.align 4
.LC4:
	.string	"Multiple include guards may be useful for:\n"
	.text
	.type	report_missing_guard, @function
report_missing_guard:
.LFB35:
	.loc 1 660 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%ebx
.LCFI59:
	subl	$36, %esp
.LCFI60:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 661 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 662 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 664 0
	cmpl	$0, -12(%ebp)
	je	.L168
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L168
	movl	-12(%ebp), %eax
	movzwl	112(%eax), %eax
	cmpw	$1, %ax
	jne	.L168
	.loc 1 666 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L172
	.loc 1 668 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$43, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 669 0
	movl	-8(%ebp), %eax
	movl	$1, (%eax)
.L172:
	.loc 1 671 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 672 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L168:
	.loc 1 674 0
	movl	$0, %eax
	.loc 1 675 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	report_missing_guard, .-report_missing_guard
	.type	handle_missing_header, @function
handle_missing_header:
.LFB36:
	.loc 1 685 0
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
	.loc 1 687 0
	movl	8(%ebp), %eax
	movl	436(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, 16(%ebp)
	jne	.L176
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	17(%eax), %eax
	testb	%al, %al
	je	.L178
.L176:
	movl	$1, -28(%ebp)
	jmp	.L179
.L178:
	movl	$0, -28(%ebp)
.L179:
	movl	-28(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	seta	%al
	movb	%al, -5(%ebp)
	.loc 1 689 0
	movl	8(%ebp), %eax
	movzbl	440(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L180
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L180
	.loc 1 690 0
	movl	8(%ebp), %eax
	movl	220(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	deps_add_dep@PLT
	.loc 1 689 0
	jmp	.L188
.L180:
	.loc 1 697 0
	movl	8(%ebp), %eax
	movl	436(%eax), %eax
	testl	%eax, %eax
	je	.L184
	movzbl	-5(%ebp), %eax
	xorl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L184
	movl	$0, -24(%ebp)
	jmp	.L187
.L184:
	movl	$3, -24(%ebp)
.L187:
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_errno@PLT
.L188:
	.loc 1 699 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	handle_missing_header, .-handle_missing_header
.globl _cpp_execute_include
	.type	_cpp_execute_include, @function
_cpp_execute_include:
.LFB37:
	.loc 1 709 0
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
	.loc 1 710 0
	movb	$0, -5(%ebp)
	.loc 1 711 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_include_file
	movl	%eax, -12(%ebp)
	.loc 1 713 0
	cmpl	$0, -12(%ebp)
	jne	.L190
	.loc 1 714 0
	movl	12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$64, %al
	sete	%al
	movzbl	%al, %edx
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_missing_header
	jmp	.L192
.L190:
	.loc 1 716 0
	cmpl	$-1, -12(%ebp)
	je	.L192
	.loc 1 718 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stack_include_file
	movb	%al, -5(%ebp)
	.loc 1 720 0
	cmpl	$2, 16(%ebp)
	jne	.L192
	.loc 1 721 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_never_reread@PLT
.L192:
	.loc 1 724 0
	movzbl	-5(%ebp), %eax
	.loc 1 725 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	_cpp_execute_include, .-_cpp_execute_include
.globl _cpp_compare_file_date
	.type	_cpp_compare_file_date, @function
_cpp_compare_file_date:
.LFB38:
	.loc 1 734 0
	pushl	%ebp
.LCFI69:
	movl	%esp, %ebp
.LCFI70:
	pushl	%ebx
.LCFI71:
	subl	$36, %esp
.LCFI72:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 735 0
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_include_file
	movl	%eax, -8(%ebp)
	.loc 1 737 0
	cmpl	$0, -8(%ebp)
	je	.L197
	cmpl	$-1, -8(%ebp)
	jne	.L199
.L197:
	.loc 1 738 0
	movl	$-1, -24(%ebp)
	jmp	.L200
.L199:
	.loc 1 740 0
	movl	-8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	jle	.L201
	.loc 1 742 0
	movl	-8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, (%esp)
	call	close@PLT
	.loc 1 743 0
	movl	-8(%ebp), %eax
	movl	$-1, 104(%eax)
.L201:
	.loc 1 746 0
	movl	-8(%ebp), %eax
	movl	80(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	movl	80(%eax), %eax
	cmpl	%eax, %edx
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L200:
	movl	-24(%ebp), %eax
	.loc 1 747 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	_cpp_compare_file_date, .-_cpp_compare_file_date
.globl _cpp_read_file
	.type	_cpp_read_file, @function
_cpp_read_file:
.LFB39:
	.loc 1 757 0
	pushl	%ebp
.LCFI73:
	movl	%esp, %ebp
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$36, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 758 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	open_file
	movl	%eax, -8(%ebp)
	.loc 1 760 0
	cmpl	$0, -8(%ebp)
	jne	.L205
	.loc 1 762 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_errno@PLT
	.loc 1 763 0
	movl	$0, -24(%ebp)
	jmp	.L207
.L205:
	.loc 1 766 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stack_include_file
	movzbl	%al, %eax
	movl	%eax, -24(%ebp)
.L207:
	movl	-24(%ebp), %eax
	.loc 1 767 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	_cpp_read_file, .-_cpp_read_file
.globl _cpp_pop_file_buffer
	.type	_cpp_pop_file_buffer, @function
_cpp_pop_file_buffer:
.LFB40:
	.loc 1 775 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	subl	$8, %esp
.LCFI79:
	.loc 1 778 0
	movl	8(%ebp), %eax
	movzbl	120(%eax), %eax
	testb	%al, %al
	je	.L210
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L210
	.loc 1 779 0
	movl	8(%ebp), %eax
	movl	112(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%eax)
.L210:
	.loc 1 782 0
	movl	8(%ebp), %eax
	movb	$0, 120(%eax)
	.loc 1 784 0
	movl	12(%ebp), %eax
	movzwl	114(%eax), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	movw	%dx, 114(%eax)
	.loc 1 785 0
	movl	12(%ebp), %eax
	movzwl	114(%eax), %eax
	testw	%ax, %ax
	jne	.L218
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L218
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$-1, %eax
	je	.L216
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	16(%eax), %eax
	cmpb	$1, %al
	jne	.L218
.L216:
	.loc 1 786 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_cache
.L218:
	.loc 1 787 0
	leave
	ret
.LFE40:
	.size	_cpp_pop_file_buffer, .-_cpp_pop_file_buffer
	.section	.rodata
.LC5:
	.string	"."
	.text
	.type	search_from, @function
search_from:
.LFB41:
	.loc 1 799 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%ebx
.LCFI82:
	subl	$36, %esp
.LCFI83:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 800 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 804 0
	cmpl	$3, 12(%ebp)
	je	.L220
	.loc 1 808 0
	movl	8(%ebp), %eax
	movzbl	419(%eax), %eax
	testb	%al, %al
	je	.L222
	.loc 1 809 0
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L224
.L222:
	.loc 1 811 0
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	jne	.L225
	.loc 1 813 0
	movl	-12(%ebp), %eax
	movb	$1, 46(%eax)
	.loc 1 815 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	lbasename@PLT
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 817 0
	cmpl	$0, -8(%ebp)
	je	.L220
	.loc 1 821 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 822 0
	cmpl	$1, -8(%ebp)
	jbe	.L230
	.loc 1 823 0
	subl	$1, -8(%ebp)
	jmp	.L230
.L220:
	.loc 1 828 0
	movl	-12(%ebp), %edx
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 52(%edx)
	.loc 1 829 0
	movl	$1, -8(%ebp)
.L230:
	.loc 1 832 0
	movl	8(%ebp), %eax
	movl	172(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L231
	.loc 1 833 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 172(%edx)
.L231:
	.loc 1 835 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 56(%edx)
	.loc 1 836 0
	movl	8(%ebp), %eax
	movl	368(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 48(%eax)
	.loc 1 837 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movzbl	17(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 72(%eax)
.L225:
	.loc 1 840 0
	movl	-12(%ebp), %eax
	addl	$48, %eax
	movl	%eax, -24(%ebp)
.L224:
	movl	-24(%ebp), %eax
	.loc 1 841 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	search_from, .-search_from
	.type	read_filename_string, @function
read_filename_string:
.LFB42:
	.loc 1 864 0
	pushl	%ebp
.LCFI84:
	movl	%esp, %ebp
.LCFI85:
	pushl	%ebx
.LCFI86:
	subl	$36, %esp
.LCFI87:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 868 0
	movl	$20, -8(%ebp)
	.loc 1 869 0
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 870 0
	movzbl	8(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$3072, %eax
	testl	%eax, %eax
	jne	.L235
	.loc 1 872 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -12(%ebp)
	.loc 1 873 0
	jmp	.L237
.L238:
	.loc 1 875 0
	movl	-12(%ebp), %eax
	movl	-16(%ebp), %edx
	subl	%edx, %eax
	cmpl	-8(%ebp), %eax
	jne	.L239
	.loc 1 877 0
	sall	-8(%ebp)
	.loc 1 878 0
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 879 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
.L239:
	.loc 1 881 0
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -12(%ebp)
.L237:
	.loc 1 873 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, 8(%ebp)
	cmpl	$-1, 8(%ebp)
	je	.L235
	movzbl	8(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$3072, %eax
	testl	%eax, %eax
	je	.L238
.L235:
	.loc 1 884 0
	movl	-12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 885 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ungetc@PLT
	.loc 1 886 0
	movl	-16(%ebp), %eax
	.loc 1 887 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	read_filename_string, .-read_filename_string
	.section	.rodata
.LC6:
	.string	"r"
.LC7:
	.string	"/"
	.text
	.type	read_name_map, @function
read_name_map:
.LFB43:
	.loc 1 901 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%edi
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$80, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 901 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 907 0
	movl	-44(%ebp), %eax
	movl	376(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L244
.L245:
	.loc 1 909 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L246
	.loc 1 910 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L248
.L246:
	.loc 1 908 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L244:
	.loc 1 907 0
	cmpl	$0, -40(%ebp)
	jne	.L245
	.loc 1 912 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -40(%ebp)
	.loc 1 914 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 917 0
	movl	-40(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 919 0
	movl	-48(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -60(%ebp)
	movl	$0, %eax
	cld
	movl	-60(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$12, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %edx
	movl	%edx, -36(%ebp)
	.loc 1 920 0
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 921 0
	movl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L250
	.loc 1 922 0
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	$0, %eax
	cld
	movl	-64(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-36(%ebp), %eax
	movw	$47, (%eax)
.L250:
	.loc 1 923 0
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -68(%ebp)
	movl	$0, %eax
	cld
	movl	-68(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-36(%ebp), %eax
	movl	$1684104552, (%eax)
	movl	$1731097189, 4(%eax)
	movw	$25443, 8(%eax)
	movb	$0, 10(%eax)
	.loc 1 924 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, -32(%ebp)
	.loc 1 927 0
	cmpl	$0, -32(%ebp)
	je	.L252
	.loc 1 931 0
	jmp	.L269
.L255:
.LBB3:
.LBB4:
	.loc 1 936 0
	movzbl	-28(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$3072, %eax
	testl	%eax, %eax
	jne	.L254
	.loc 1 938 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_filename_string
	movl	%eax, -24(%ebp)
.L257:
	.loc 1 939 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -28(%ebp)
	cmpl	$-1, -28(%ebp)
	je	.L258
	movzbl	-28(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L257
.L258:
	.loc 1 941 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_filename_string
	movl	%eax, -20(%ebp)
	.loc 1 943 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 945 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 948 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L260
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$36, %al
	jne	.L262
.L260:
	.loc 1 949 0
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 948 0
	jmp	.L263
.L262:
	.loc 1 952 0
	movl	$0, 12(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 953 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L263:
	.loc 1 956 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 957 0
	movl	-40(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 959 0
	jmp	.L264
.L265:
	.loc 1 960 0
	cmpl	$-1, -28(%ebp)
	je	.L254
.L264:
	.loc 1 959 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -28(%ebp)
	cmpl	$10, -28(%ebp)
	jne	.L265
.L254:
.L269:
.LBE4:
	.loc 1 931 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -28(%ebp)
	cmpl	$-1, -28(%ebp)
	jne	.L255
	.loc 1 963 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L252:
.LBE3:
	.loc 1 967 0
	movl	-44(%ebp), %eax
	movl	376(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 968 0
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 376(%edx)
	.loc 1 970 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -56(%ebp)
.L248:
	movl	-56(%ebp), %eax
	.loc 1 971 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L268
	call	__stack_chk_fail_local
.L268:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	read_name_map, .-read_name_map
	.section	.rodata
	.align 4
.LC8:
	.string	"absolute file name in remap_filename"
	.text
	.type	remap_filename, @function
remap_filename:
.LFB44:
	.loc 1 980 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%edi
.LCFI95:
	pushl	%esi
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$76, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 980 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 985 0
	movl	-56(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L271
.LBB5:
	.loc 1 988 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %edx
	movl	%edx, -68(%ebp)
	movl	-68(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %ecx
	movl	%ecx, -20(%ebp)
	.loc 1 989 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-56(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 990 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	addl	-20(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 992 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	read_name_map
	movl	%eax, %edx
	movl	-56(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 993 0
	movl	-56(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L271
	.loc 1 994 0
	movl	-52(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L274
.L271:
.LBE5:
	.loc 1 998 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	addl	-52(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1000 0
	movl	-56(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L275
.L276:
	.loc 1 1001 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L277
	.loc 1 1002 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L274
.L277:
	.loc 1 1000 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L275:
	cmpl	$0, -36(%ebp)
	jne	.L276
	.loc 1 1008 0
	movl	$47, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1009 0
	cmpl	$0, -28(%ebp)
	jne	.L280
	.loc 1 1010 0
	movl	-52(%ebp), %edx
	movl	%edx, -64(%ebp)
	jmp	.L274
.L280:
	.loc 1 1013 0
	movl	-28(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jne	.L282
	.loc 1 1014 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
.L282:
	.loc 1 1016 0
	movl	-28(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	12(%esp), %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 1017 0
	movl	-28(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1018 0
	movl	-28(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1019 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1021 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	read_name_map
	movl	%eax, -36(%ebp)
	jmp	.L284
.L285:
	.loc 1 1022 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L286
	.loc 1 1023 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -64(%ebp)
	jmp	.L274
.L286:
	.loc 1 1021 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L284:
	cmpl	$0, -36(%ebp)
	jne	.L285
	.loc 1 1025 0
	movl	-52(%ebp), %eax
	movl	%eax, -64(%ebp)
.L274:
	movl	-64(%ebp), %eax
	.loc 1 1026 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L290
	call	__stack_chk_fail_local
.L290:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	remap_filename, .-remap_filename
	.type	remove_component_p, @function
remove_component_p:
.LFB45:
	.loc 1 1035 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$116, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1040 0
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lstat@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1048 0
	cmpl	$0, -8(%ebp)
	jne	.L292
	.loc 1 1049 0
	call	__errno_location@PLT
	movl	$0, (%eax)
.L292:
	.loc 1 1051 0
	cmpl	$0, -8(%ebp)
	jne	.L294
	movl	-80(%ebp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L294
	movl	$1, -104(%ebp)
	jmp	.L297
.L294:
	movl	$0, -104(%ebp)
.L297:
	movl	-104(%ebp), %eax
	.loc 1 1052 0
	addl	$116, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	remove_component_p, .-remove_component_p
.globl _cpp_simplify_pathname
	.type	_cpp_simplify_pathname, @function
_cpp_simplify_pathname:
.LFB46:
	.loc 1 1071 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$52, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1075 0
	movl	$0, -12(%ebp)
	.loc 1 1077 0
	call	__errno_location@PLT
	movl	$0, (%eax)
	.loc 1 1079 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L300
	.loc 1 1080 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L302
.L300:
	.loc 1 1093 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1097 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L303
	.loc 1 1099 0
	movl	$1, -12(%ebp)
	.loc 1 1100 0
	addl	$1, -24(%ebp)
	.loc 1 1101 0
	addl	$1, -28(%ebp)
	.loc 1 1102 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L303
	.loc 1 1104 0
	addl	$1, -28(%ebp)
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L306
.L307:
	.loc 1 1106 0
	addl	$1, -28(%ebp)
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L307
	jmp	.L303
.L306:
	.loc 1 1109 0
	addl	$1, -24(%ebp)
.L303:
	.loc 1 1113 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L345
.L309:
.L345:
.LBB6:
	.loc 1 1116 0
	movl	$0, -8(%ebp)
	.loc 1 1118 0
	jmp	.L310
.L311:
	.loc 1 1119 0
	addl	$1, -28(%ebp)
.L310:
	.loc 1 1118 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L311
	.loc 1 1121 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L313
	.loc 1 1124 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L315
	.loc 1 1126 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L313
	.loc 1 1128 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L318
	.loc 1 1130 0
	addl	$2, -28(%ebp)
	.loc 1 1131 0
	jmp	.L309
.L318:
	.loc 1 1133 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L315
	movl	-28(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L322
	movl	-28(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L315
.L322:
	.loc 1 1136 0
	cmpl	$0, -12(%ebp)
	je	.L324
	movl	-16(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L324
	.loc 1 1138 0
	addl	$2, -28(%ebp)
	.loc 1 1139 0
	jmp	.L309
.L324:
	.loc 1 1143 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L327
	call	__errno_location@PLT
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L327
	.loc 1 1146 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1147 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_component_p
	testl	%eax, %eax
	je	.L327
	.loc 1 1149 0
	jmp	.L331
.L332:
	.loc 1 1150 0
	subl	$1, -24(%ebp)
.L331:
	.loc 1 1149 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jbe	.L333
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L332
.L333:
	.loc 1 1151 0
	addl	$2, -28(%ebp)
	.loc 1 1152 0
	jmp	.L309
.L327:
	.loc 1 1155 0
	movl	$1, -8(%ebp)
.L315:
	.loc 1 1160 0
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jbe	.L337
	.loc 1 1161 0
	movl	-24(%ebp), %eax
	movb	$47, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 1164 0
	jmp	.L337
.L338:
	.loc 1 1165 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-24(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -24(%ebp)
	addl	$1, -28(%ebp)
.L337:
	.loc 1 1164 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L339
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L338
.L339:
	.loc 1 1167 0
	cmpl	$0, -8(%ebp)
	je	.L309
	.loc 1 1168 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1169 0
	jmp	.L309
.L313:
.LBE6:
	.loc 1 1173 0
	movl	-24(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L342
	.loc 1 1174 0
	movl	-24(%ebp), %eax
	movb	$46, (%eax)
	addl	$1, -24(%ebp)
.L342:
	.loc 1 1175 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1177 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
.L302:
	movl	-40(%ebp), %eax
	.loc 1 1182 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	_cpp_simplify_pathname, .-_cpp_simplify_pathname
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI0-.LFB21
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI4-.LFB22
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI9
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI14-.LFB25
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
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI18-.LFB26
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
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI21-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI22
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI25-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI26
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI29-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI30
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI33-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI34
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI37-.LFB31
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI43-.LFB32
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI49-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI50
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI53-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI56-.LCFI54
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI57-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI60-.LCFI58
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI61-.LFB36
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI65-.LFB37
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI69-.LFB38
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI73-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI76-.LCFI74
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI77-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI80-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI83-.LCFI81
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI84-.LFB42
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
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI88-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI89
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI93-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI98-.LCFI94
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI99-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI102-.LCFI100
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI103-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI106-.LCFI104
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
	.file 2 "../../../kgccfe/gnu/cpplib.h"
	.file 3 "../../../kgccfe/gnu/hashtable.h"
	.file 4 "../../../kgccfe/gnu/cpphash.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "/usr/include/bits/stat.h"
	.file 8 "/usr/include/time.h"
	.file 9 "../../../kgccfe/gnu/line-map.h"
	.file 10 "../../../include/gnu/splay-tree.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "../../../include/gnu/obstack.h"
	.file 13 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 14 "/usr/include/libio.h"
	.file 15 "../../../include/gnu/safe-ctype.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB24-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI13-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB29-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI29-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI30-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB34-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI53-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB37-.Ltext0
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
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB40-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB45-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI99-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI100-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB46-.Ltext0
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI103-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI104-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3544
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cppfiles.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa3
	.uleb128 0x3
	.long	0xa8
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
	.byte	0xd
	.byte	0xd6
	.long	0xb7
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
	.byte	0x6
	.byte	0x3b
	.long	0x12b
	.uleb128 0x6
	.string	"__u_quad_t"
	.byte	0x6
	.byte	0x3c
	.long	0x13c
	.uleb128 0x6
	.string	"__dev_t"
	.byte	0x6
	.byte	0x89
	.long	0x166
	.uleb128 0x6
	.string	"__uid_t"
	.byte	0x6
	.byte	0x8a
	.long	0xb7
	.uleb128 0x6
	.string	"__gid_t"
	.byte	0x6
	.byte	0x8b
	.long	0xb7
	.uleb128 0x6
	.string	"__ino_t"
	.byte	0x6
	.byte	0x8c
	.long	0xfa
	.uleb128 0x6
	.string	"__mode_t"
	.byte	0x6
	.byte	0x8e
	.long	0xb7
	.uleb128 0x6
	.string	"__nlink_t"
	.byte	0x6
	.byte	0x8f
	.long	0xb7
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x1e4
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x156
	.uleb128 0x6
	.string	"__time_t"
	.byte	0x6
	.byte	0x98
	.long	0x1e4
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x6
	.string	"__blksize_t"
	.byte	0x6
	.byte	0xa7
	.long	0x1e4
	.uleb128 0x6
	.string	"__blkcnt_t"
	.byte	0x6
	.byte	0xac
	.long	0x1e4
	.uleb128 0x6
	.string	"__ssize_t"
	.byte	0x6
	.byte	0xb7
	.long	0xb0
	.uleb128 0x2
	.byte	0x4
	.long	0xa8
	.uleb128 0x6
	.string	"FILE"
	.byte	0xb
	.byte	0x2e
	.long	0x25b
	.uleb128 0x8
	.long	0x4d6
	.long	.LASF1
	.byte	0x94
	.byte	0xb
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0xe
	.value	0x10c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0xe
	.value	0x111
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0xe
	.value	0x112
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0xe
	.value	0x113
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0xe
	.value	0x114
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0xe
	.value	0x115
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0xe
	.value	0x116
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0xe
	.value	0x117
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0xe
	.value	0x118
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0xe
	.value	0x11a
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0xe
	.value	0x11b
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0xe
	.value	0x11c
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0xe
	.value	0x11e
	.long	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0xe
	.value	0x120
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0xe
	.value	0x122
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0xe
	.value	0x126
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0xe
	.value	0x128
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0xe
	.value	0x12c
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0xe
	.value	0x12d
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0xe
	.value	0x12e
	.long	0x554
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0xe
	.value	0x132
	.long	0x564
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0xe
	.value	0x13b
	.long	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0xe
	.value	0x144
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0xe
	.value	0x145
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0xe
	.value	0x146
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0xe
	.value	0x147
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0xe
	.value	0x148
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0xe
	.value	0x14a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0xe
	.value	0x14c
	.long	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.long	0x4e6
	.long	0xa8
	.uleb128 0xb
	.long	0xbe
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4ec
	.uleb128 0x3
	.long	0xd3
	.uleb128 0x2
	.byte	0x4
	.long	0xd3
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0xe
	.byte	0xb0
	.uleb128 0xd
	.long	0x548
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xe
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0xe
	.byte	0xb7
	.long	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0xe
	.byte	0xb8
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0xe
	.byte	0xbc
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x505
	.uleb128 0x2
	.byte	0x4
	.long	0x25b
	.uleb128 0xa
	.long	0x564
	.long	0xa8
	.uleb128 0xb
	.long	0xbe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4f7
	.uleb128 0xa
	.long	0x57a
	.long	0xa8
	.uleb128 0xb
	.long	0xbe
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.string	"ino_t"
	.byte	0x5
	.byte	0x32
	.long	0x1a5
	.uleb128 0x6
	.string	"dev_t"
	.byte	0x5
	.byte	0x3e
	.long	0x178
	.uleb128 0x6
	.string	"ssize_t"
	.byte	0x5
	.byte	0x6e
	.long	0x238
	.uleb128 0xd
	.long	0x5d8
	.string	"timespec"
	.byte	0x8
	.byte	0x8
	.byte	0x7a
	.uleb128 0xe
	.string	"tv_sec"
	.byte	0x8
	.byte	0x7b
	.long	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tv_nsec"
	.byte	0x8
	.byte	0x7c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xb0
	.uleb128 0xd
	.long	0x722
	.string	"stat"
	.byte	0x58
	.byte	0x7
	.byte	0x25
	.uleb128 0xe
	.string	"st_dev"
	.byte	0x7
	.byte	0x26
	.long	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x7
	.byte	0x27
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"st_ino"
	.byte	0x7
	.byte	0x29
	.long	0x1a5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"st_mode"
	.byte	0x7
	.byte	0x2d
	.long	0x1b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"st_nlink"
	.byte	0x7
	.byte	0x2e
	.long	0x1c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"st_uid"
	.byte	0x7
	.byte	0x2f
	.long	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st_gid"
	.byte	0x7
	.byte	0x30
	.long	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"st_rdev"
	.byte	0x7
	.byte	0x31
	.long	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x7
	.byte	0x32
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"st_size"
	.byte	0x7
	.byte	0x34
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"st_blksize"
	.byte	0x7
	.byte	0x38
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"st_blocks"
	.byte	0x7
	.byte	0x3b
	.long	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"st_atim"
	.byte	0x7
	.byte	0x46
	.long	0x5a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"st_mtim"
	.byte	0x7
	.byte	0x47
	.long	0x5a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"st_ctim"
	.byte	0x7
	.byte	0x48
	.long	0x5a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"__unused4"
	.byte	0x7
	.byte	0x55
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"__unused5"
	.byte	0x7
	.byte	0x56
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0xd
	.long	0x76a
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xc
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF2
	.byte	0xc
	.byte	0xa3
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0xc
	.byte	0xa4
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"contents"
	.byte	0xc
	.byte	0xa5
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x722
	.uleb128 0x10
	.long	0x89d
	.string	"obstack"
	.byte	0x2c
	.byte	0xb
	.value	0x31b
	.uleb128 0xe
	.string	"chunk_size"
	.byte	0xc
	.byte	0xaa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"chunk"
	.byte	0xc
	.byte	0xab
	.long	0x76a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"object_base"
	.byte	0xc
	.byte	0xac
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"next_free"
	.byte	0xc
	.byte	0xad
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"chunk_limit"
	.byte	0xc
	.byte	0xae
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"temp"
	.byte	0xc
	.byte	0xaf
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"alignment_mask"
	.byte	0xc
	.byte	0xb0
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"chunkfun"
	.byte	0xc
	.byte	0xb5
	.long	0x8b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"freefun"
	.byte	0xc
	.byte	0xb6
	.long	0x8c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"extra_arg"
	.byte	0xc
	.byte	0xb7
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"use_extra_arg"
	.byte	0xc
	.byte	0xbd
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"maybe_empty_object"
	.byte	0xc
	.byte	0xbe
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"alloc_failed"
	.byte	0xc
	.byte	0xc2
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x12
	.long	0x8b2
	.byte	0x1
	.long	0x76a
	.uleb128 0x13
	.long	0x211
	.uleb128 0x13
	.long	0x1e4
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x89d
	.uleb128 0x14
	.long	0x8c9
	.byte	0x1
	.uleb128 0x13
	.long	0x211
	.uleb128 0x13
	.long	0x76a
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x8b8
	.uleb128 0x8
	.long	0x90d
	.long	.LASF3
	.byte	0xc
	.byte	0x3
	.byte	0x19
	.uleb128 0xe
	.string	"str"
	.byte	0x3
	.byte	0x1c
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"len"
	.byte	0x3
	.byte	0x1d
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"hash_value"
	.byte	0x3
	.byte	0x1e
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x3
	.byte	0x29
	.long	0x918
	.uleb128 0xd
	.long	0x9b6
	.string	"ht"
	.byte	0x48
	.byte	0x3
	.byte	0x29
	.uleb128 0xe
	.string	"stack"
	.byte	0x3
	.byte	0x32
	.long	0x770
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"entries"
	.byte	0x3
	.byte	0x34
	.long	0x9cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"alloc_node"
	.byte	0x3
	.byte	0x36
	.long	0x9e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"nslots"
	.byte	0x3
	.byte	0x38
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"nelements"
	.byte	0x3
	.byte	0x39
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF5
	.byte	0x3
	.byte	0x3c
	.long	0xdb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"searches"
	.byte	0x3
	.byte	0x3f
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"collisions"
	.byte	0x3
	.byte	0x40
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x6
	.string	"hashnode"
	.byte	0x3
	.byte	0x2a
	.long	0x9c6
	.uleb128 0x2
	.byte	0x4
	.long	0x8cf
	.uleb128 0x2
	.byte	0x4
	.long	0x9b6
	.uleb128 0x12
	.long	0x9e2
	.byte	0x1
	.long	0x9b6
	.uleb128 0x13
	.long	0x9e2
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x90d
	.uleb128 0x2
	.byte	0x4
	.long	0x9d2
	.uleb128 0x16
	.long	0xdb6
	.long	.LASF6
	.value	0x210
	.byte	0x3
	.byte	0x28
	.uleb128 0x17
	.long	.LASF7
	.byte	0x4
	.value	0x151
	.long	0x26ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"overlaid_buffer"
	.byte	0x4
	.value	0x154
	.long	0x26ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"state"
	.byte	0x4
	.value	0x157
	.long	0x23b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF8
	.byte	0x4
	.value	0x15a
	.long	0xe76
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"map"
	.byte	0x4
	.value	0x15b
	.long	0x1f42
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"line"
	.byte	0x4
	.value	0x15c
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"directive_line"
	.byte	0x4
	.value	0x15f
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"a_buff"
	.byte	0x4
	.value	0x162
	.long	0x23b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"u_buff"
	.byte	0x4
	.value	0x163
	.long	0x23b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"free_buffs"
	.byte	0x4
	.value	0x164
	.long	0x23b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"base_context"
	.byte	0x4
	.value	0x167
	.long	0x22d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"context"
	.byte	0x4
	.value	0x168
	.long	0x26f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.long	.LASF9
	.byte	0x4
	.value	0x16b
	.long	0x2700
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"next_include_file"
	.byte	0x4
	.value	0x170
	.long	0x271c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.string	"mi_cmacro"
	.byte	0x4
	.value	0x173
	.long	0x2728
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.string	"mi_ind_cmacro"
	.byte	0x4
	.value	0x174
	.long	0x2728
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.string	"mi_valid"
	.byte	0x4
	.value	0x175
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.string	"cur_token"
	.byte	0x4
	.value	0x178
	.long	0x212b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.string	"base_run"
	.byte	0x4
	.value	0x179
	.long	0x2270
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.string	"cur_run"
	.byte	0x4
	.value	0x179
	.long	0x22c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.string	"lookaheads"
	.byte	0x4
	.value	0x17a
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.string	"keep_tokens"
	.byte	0x4
	.value	0x17d
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.string	"errors"
	.byte	0x4
	.value	0x180
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.string	"macro_buffer"
	.byte	0x4
	.value	0x183
	.long	0x4f1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.string	"macro_buffer_len"
	.byte	0x4
	.value	0x184
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.string	"all_include_files"
	.byte	0x4
	.value	0x187
	.long	0x27d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.string	"max_include_len"
	.byte	0x4
	.value	0x18b
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.string	"first_unused_line"
	.byte	0x4
	.value	0x18e
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.string	"date"
	.byte	0x4
	.value	0x191
	.long	0x2131
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.string	"time"
	.byte	0x4
	.value	0x192
	.long	0x2131
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.string	"avoid_paste"
	.byte	0x4
	.value	0x195
	.long	0x1657
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.string	"eof"
	.byte	0x4
	.value	0x196
	.long	0x1657
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.string	"deps"
	.byte	0x4
	.value	0x199
	.long	0x27e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.string	"hash_ob"
	.byte	0x4
	.value	0x19d
	.long	0x770
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.string	"buffer_ob"
	.byte	0x4
	.value	0x1a1
	.long	0x770
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.string	"pragmas"
	.byte	0x4
	.value	0x1a5
	.long	0x27f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.string	"cb"
	.byte	0x4
	.value	0x1a8
	.long	0x184c
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x17
	.long	.LASF4
	.byte	0x4
	.value	0x1ab
	.long	0x27fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.string	"op_stack"
	.byte	0x4
	.value	0x1ae
	.long	0x2807
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.string	"op_limit"
	.byte	0x4
	.value	0x1ae
	.long	0x2807
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.string	"opts"
	.byte	0x4
	.value	0x1b1
	.long	0x109d
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x17
	.long	.LASF10
	.byte	0x4
	.value	0x1b5
	.long	0x24eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x9
	.string	"print"
	.byte	0x4
	.value	0x1b8
	.long	0x2549
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.string	"our_hashtable"
	.byte	0x4
	.value	0x1bb
	.long	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.string	"out"
	.byte	0x4
	.value	0x1c4
	.long	0x269a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.string	"saved_line"
	.byte	0x4
	.value	0x1c8
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x9ee
	.uleb128 0x18
	.long	0xdf1
	.string	"lc_reason"
	.byte	0x4
	.byte	0x9
	.byte	0x1f
	.uleb128 0x19
	.string	"LC_ENTER"
	.sleb128 0
	.uleb128 0x19
	.string	"LC_LEAVE"
	.sleb128 1
	.uleb128 0x19
	.string	"LC_RENAME"
	.sleb128 2
	.byte	0x0
	.uleb128 0xd
	.long	0xe76
	.string	"line_map"
	.byte	0x14
	.byte	0x9
	.byte	0x2a
	.uleb128 0xe
	.string	"to_file"
	.byte	0x9
	.byte	0x2b
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to_line"
	.byte	0x9
	.byte	0x2c
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"from_line"
	.byte	0x9
	.byte	0x2d
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"included_from"
	.byte	0x9
	.byte	0x2e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"reason"
	.byte	0x9
	.byte	0x2f
	.long	0xdbc
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x9
	.byte	0x30
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0x8
	.long	0xef4
	.long	.LASF8
	.byte	0x18
	.byte	0x9
	.byte	0x35
	.uleb128 0xe
	.string	"maps"
	.byte	0x9
	.byte	0x36
	.long	0xef4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"allocated"
	.byte	0x9
	.byte	0x37
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"used"
	.byte	0x9
	.byte	0x38
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"last_listed"
	.byte	0x9
	.byte	0x3d
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"depth"
	.byte	0x9
	.byte	0x40
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"trace_includes"
	.byte	0x9
	.byte	0x43
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xdf1
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	.LASF6
	.byte	0x2
	.byte	0x28
	.long	0x9ee
	.uleb128 0x15
	.long	.LASF11
	.byte	0x2
	.byte	0x2a
	.long	0xf19
	.uleb128 0x8
	.long	0x109d
	.long	.LASF11
	.byte	0x58
	.byte	0x2
	.byte	0x2a
	.uleb128 0x9
	.string	"cur"
	.byte	0x4
	.value	0x114
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"backup_to"
	.byte	0x4
	.value	0x115
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF12
	.byte	0x4
	.value	0x116
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"line_base"
	.byte	0x4
	.value	0x117
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"prev"
	.byte	0x4
	.value	0x119
	.long	0x25c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"buf"
	.byte	0x4
	.value	0x11b
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"inc"
	.byte	0x4
	.value	0x11f
	.long	0x2688
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.long	.LASF13
	.byte	0x4
	.value	0x123
	.long	0x2694
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"col_adjust"
	.byte	0x4
	.value	0x126
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"saved_flags"
	.byte	0x4
	.value	0x129
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"last_Wtrigraphs"
	.byte	0x4
	.value	0x12d
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"warned_cplusplus_comments"
	.byte	0x4
	.value	0x133
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"from_stage3"
	.byte	0x4
	.value	0x138
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"search_cached"
	.byte	0x4
	.value	0x13c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"return_at_eof"
	.byte	0x4
	.value	0x141
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"dir"
	.byte	0x4
	.value	0x145
	.long	0x1e1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"saved_cur"
	.byte	0x4
	.value	0x148
	.long	0x2131
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.string	"saved_rlimit"
	.byte	0x4
	.value	0x148
	.long	0x2131
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x8
	.long	0x1657
	.long	.LASF14
	.byte	0x68
	.byte	0x2
	.byte	0x2b
	.uleb128 0xe
	.string	"tabstop"
	.byte	0x2
	.byte	0xe5
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"pending"
	.byte	0x2
	.byte	0xe8
	.long	0x1e19
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"quote_include"
	.byte	0x2
	.byte	0xeb
	.long	0x1e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"bracket_include"
	.byte	0x2
	.byte	0xec
	.long	0x1e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"map_list"
	.byte	0x2
	.byte	0xf0
	.long	0x1f09
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"include_prefix"
	.byte	0x2
	.byte	0xf4
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"include_prefix_len"
	.byte	0x2
	.byte	0xf5
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"lang"
	.byte	0x2
	.byte	0xf8
	.long	0x1ca8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"verbose"
	.byte	0x2
	.byte	0xfb
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"cplusplus"
	.byte	0x2
	.byte	0xfe
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x9
	.string	"cplusplus_comments"
	.byte	0x2
	.value	0x101
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x9
	.string	"objc"
	.byte	0x2
	.value	0x105
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0x9
	.string	"discard_comments"
	.byte	0x2
	.value	0x108
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"discard_comments_in_macro_exp"
	.byte	0x2
	.value	0x10c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x9
	.string	"trigraphs"
	.byte	0x2
	.value	0x10f
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x9
	.string	"digraphs"
	.byte	0x2
	.value	0x112
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x9
	.string	"extended_numbers"
	.byte	0x2
	.value	0x115
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"print_include_names"
	.byte	0x2
	.value	0x118
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x9
	.string	"pedantic_errors"
	.byte	0x2
	.value	0x11b
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x9
	.string	"inhibit_warnings"
	.byte	0x2
	.value	0x11e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x9
	.string	"warn_deprecated"
	.byte	0x2
	.value	0x121
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"warn_system_headers"
	.byte	0x2
	.value	0x124
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"inhibit_errors"
	.byte	0x2
	.value	0x128
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"warn_comments"
	.byte	0x2
	.value	0x12b
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"warn_trigraphs"
	.byte	0x2
	.value	0x12e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"warn_import"
	.byte	0x2
	.value	0x131
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x9
	.string	"warn_multichar"
	.byte	0x2
	.value	0x134
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x9
	.string	"warn_traditional"
	.byte	0x2
	.value	0x138
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x9
	.string	"warn_long_long"
	.byte	0x2
	.value	0x13b
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"warn_endif_labels"
	.byte	0x2
	.value	0x13e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x9
	.string	"warn_num_sign_change"
	.byte	0x2
	.value	0x142
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x9
	.string	"warnings_are_errors"
	.byte	0x2
	.value	0x145
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x9
	.string	"no_output"
	.byte	0x2
	.value	0x149
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"remap"
	.byte	0x2
	.value	0x14d
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x9
	.string	"no_line_commands"
	.byte	0x2
	.value	0x150
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.string	"ignore_srcdir"
	.byte	0x2
	.value	0x154
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3b
	.uleb128 0x9
	.string	"dollars_in_ident"
	.byte	0x2
	.value	0x157
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"warn_undef"
	.byte	0x2
	.value	0x15a
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x9
	.string	"warn_unused_macros"
	.byte	0x2
	.value	0x15d
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x9
	.string	"c99"
	.byte	0x2
	.value	0x160
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x9
	.string	"std"
	.byte	0x2
	.value	0x163
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"pedantic"
	.byte	0x2
	.value	0x166
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.string	"preprocessed"
	.byte	0x2
	.value	0x16a
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x9
	.string	"no_standard_includes"
	.byte	0x2
	.value	0x16d
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x9
	.string	"no_standard_cplusplus_includes"
	.byte	0x2
	.value	0x170
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"dump_macros"
	.byte	0x2
	.value	0x173
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x9
	.string	"dump_includes"
	.byte	0x2
	.value	0x176
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"show_column"
	.byte	0x2
	.value	0x179
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"operator_names"
	.byte	0x2
	.value	0x17c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"traditional"
	.byte	0x2
	.value	0x17f
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x9
	.string	"deps"
	.byte	0x2
	.value	0x190
	.long	0x1da2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"precision"
	.byte	0x2
	.value	0x196
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"char_precision"
	.byte	0x2
	.value	0x196
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"int_precision"
	.byte	0x2
	.value	0x196
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"wchar_precision"
	.byte	0x2
	.value	0x196
	.long	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"unsigned_char"
	.byte	0x2
	.value	0x199
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"unsigned_wchar"
	.byte	0x2
	.value	0x199
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0x9
	.string	"stdc_0_in_system_headers"
	.byte	0x2
	.value	0x19c
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.byte	0x0
	.uleb128 0x15
	.long	.LASF15
	.byte	0x2
	.byte	0x2c
	.long	0x1662
	.uleb128 0x8
	.long	0x16bc
	.long	.LASF15
	.byte	0x10
	.byte	0x2
	.byte	0x2c
	.uleb128 0xe
	.string	"line"
	.byte	0x2
	.byte	0xb6
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"col"
	.byte	0x2
	.byte	0xb7
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"type"
	.byte	0x2
	.byte	0xb8
	.long	0x1901
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"flags"
	.byte	0x2
	.byte	0xb9
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"val"
	.byte	0x2
	.byte	0xc2
	.long	0x1d1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF16
	.byte	0x2
	.byte	0x2d
	.long	0x16c7
	.uleb128 0x8
	.long	0x16f1
	.long	.LASF16
	.byte	0x8
	.byte	0x2
	.byte	0x2d
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0xa5
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"text"
	.byte	0x2
	.byte	0xa6
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	.LASF17
	.byte	0x2
	.byte	0x2e
	.long	0x16fc
	.uleb128 0x8
	.long	0x1793
	.long	.LASF17
	.byte	0x18
	.byte	0x2
	.byte	0x2e
	.uleb128 0x9
	.string	"ident"
	.byte	0x2
	.value	0x1e6
	.long	0x8cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"arg_index"
	.byte	0x2
	.value	0x1e7
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"directive_index"
	.byte	0x2
	.value	0x1e8
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"rid_code"
	.byte	0x2
	.value	0x1e9
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"type"
	.byte	0x2
	.value	0x1ea
	.long	0x1fe0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"flags"
	.byte	0x2
	.value	0x1eb
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x9
	.string	"value"
	.byte	0x2
	.value	0x1f7
	.long	0x2093
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF18
	.byte	0x2
	.byte	0x2f
	.long	0x179e
	.uleb128 0x8
	.long	0x184c
	.long	.LASF18
	.byte	0x14
	.byte	0x2
	.byte	0x2f
	.uleb128 0xe
	.string	"params"
	.byte	0x4
	.byte	0x49
	.long	0x213c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x4
	.byte	0x52
	.long	0x2108
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"line"
	.byte	0x4
	.byte	0x55
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"count"
	.byte	0x4
	.byte	0x58
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"paramc"
	.byte	0x4
	.byte	0x5b
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"fun_like"
	.byte	0x4
	.byte	0x5e
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"variadic"
	.byte	0x4
	.byte	0x61
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"syshdr"
	.byte	0x4
	.byte	0x64
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"used"
	.byte	0x4
	.byte	0x67
	.long	0xb7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x1901
	.long	.LASF19
	.byte	0x20
	.byte	0x2
	.byte	0x30
	.uleb128 0x9
	.string	"line_change"
	.byte	0x2
	.value	0x1a3
	.long	0x1f2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"file_change"
	.byte	0x2
	.value	0x1a4
	.long	0x1f4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"include"
	.byte	0x2
	.value	0x1a5
	.long	0x1f6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"define"
	.byte	0x2
	.value	0x1a7
	.long	0x1f8a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"undef"
	.byte	0x2
	.value	0x1a8
	.long	0x1f8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ident"
	.byte	0x2
	.value	0x1a9
	.long	0x1fb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"def_pragma"
	.byte	0x2
	.value	0x1aa
	.long	0x1fc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"register_builtins"
	.byte	0x2
	.value	0x1ad
	.long	0x1fda
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x1ca8
	.string	"cpp_ttype"
	.byte	0x4
	.byte	0x2
	.byte	0x97
	.uleb128 0x19
	.string	"CPP_EQ"
	.sleb128 0
	.uleb128 0x19
	.string	"CPP_NOT"
	.sleb128 1
	.uleb128 0x19
	.string	"CPP_GREATER"
	.sleb128 2
	.uleb128 0x19
	.string	"CPP_LESS"
	.sleb128 3
	.uleb128 0x19
	.string	"CPP_PLUS"
	.sleb128 4
	.uleb128 0x19
	.string	"CPP_MINUS"
	.sleb128 5
	.uleb128 0x19
	.string	"CPP_MULT"
	.sleb128 6
	.uleb128 0x19
	.string	"CPP_DIV"
	.sleb128 7
	.uleb128 0x19
	.string	"CPP_MOD"
	.sleb128 8
	.uleb128 0x19
	.string	"CPP_AND"
	.sleb128 9
	.uleb128 0x19
	.string	"CPP_OR"
	.sleb128 10
	.uleb128 0x19
	.string	"CPP_XOR"
	.sleb128 11
	.uleb128 0x19
	.string	"CPP_RSHIFT"
	.sleb128 12
	.uleb128 0x19
	.string	"CPP_LSHIFT"
	.sleb128 13
	.uleb128 0x19
	.string	"CPP_MIN"
	.sleb128 14
	.uleb128 0x19
	.string	"CPP_MAX"
	.sleb128 15
	.uleb128 0x19
	.string	"CPP_COMPL"
	.sleb128 16
	.uleb128 0x19
	.string	"CPP_AND_AND"
	.sleb128 17
	.uleb128 0x19
	.string	"CPP_OR_OR"
	.sleb128 18
	.uleb128 0x19
	.string	"CPP_QUERY"
	.sleb128 19
	.uleb128 0x19
	.string	"CPP_COLON"
	.sleb128 20
	.uleb128 0x19
	.string	"CPP_COMMA"
	.sleb128 21
	.uleb128 0x19
	.string	"CPP_OPEN_PAREN"
	.sleb128 22
	.uleb128 0x19
	.string	"CPP_CLOSE_PAREN"
	.sleb128 23
	.uleb128 0x19
	.string	"CPP_EOF"
	.sleb128 24
	.uleb128 0x19
	.string	"CPP_EQ_EQ"
	.sleb128 25
	.uleb128 0x19
	.string	"CPP_NOT_EQ"
	.sleb128 26
	.uleb128 0x19
	.string	"CPP_GREATER_EQ"
	.sleb128 27
	.uleb128 0x19
	.string	"CPP_LESS_EQ"
	.sleb128 28
	.uleb128 0x19
	.string	"CPP_PLUS_EQ"
	.sleb128 29
	.uleb128 0x19
	.string	"CPP_MINUS_EQ"
	.sleb128 30
	.uleb128 0x19
	.string	"CPP_MULT_EQ"
	.sleb128 31
	.uleb128 0x19
	.string	"CPP_DIV_EQ"
	.sleb128 32
	.uleb128 0x19
	.string	"CPP_MOD_EQ"
	.sleb128 33
	.uleb128 0x19
	.string	"CPP_AND_EQ"
	.sleb128 34
	.uleb128 0x19
	.string	"CPP_OR_EQ"
	.sleb128 35
	.uleb128 0x19
	.string	"CPP_XOR_EQ"
	.sleb128 36
	.uleb128 0x19
	.string	"CPP_RSHIFT_EQ"
	.sleb128 37
	.uleb128 0x19
	.string	"CPP_LSHIFT_EQ"
	.sleb128 38
	.uleb128 0x19
	.string	"CPP_MIN_EQ"
	.sleb128 39
	.uleb128 0x19
	.string	"CPP_MAX_EQ"
	.sleb128 40
	.uleb128 0x19
	.string	"CPP_HASH"
	.sleb128 41
	.uleb128 0x19
	.string	"CPP_PASTE"
	.sleb128 42
	.uleb128 0x19
	.string	"CPP_OPEN_SQUARE"
	.sleb128 43
	.uleb128 0x19
	.string	"CPP_CLOSE_SQUARE"
	.sleb128 44
	.uleb128 0x19
	.string	"CPP_OPEN_BRACE"
	.sleb128 45
	.uleb128 0x19
	.string	"CPP_CLOSE_BRACE"
	.sleb128 46
	.uleb128 0x19
	.string	"CPP_SEMICOLON"
	.sleb128 47
	.uleb128 0x19
	.string	"CPP_ELLIPSIS"
	.sleb128 48
	.uleb128 0x19
	.string	"CPP_PLUS_PLUS"
	.sleb128 49
	.uleb128 0x19
	.string	"CPP_MINUS_MINUS"
	.sleb128 50
	.uleb128 0x19
	.string	"CPP_DEREF"
	.sleb128 51
	.uleb128 0x19
	.string	"CPP_DOT"
	.sleb128 52
	.uleb128 0x19
	.string	"CPP_SCOPE"
	.sleb128 53
	.uleb128 0x19
	.string	"CPP_DEREF_STAR"
	.sleb128 54
	.uleb128 0x19
	.string	"CPP_DOT_STAR"
	.sleb128 55
	.uleb128 0x19
	.string	"CPP_ATSIGN"
	.sleb128 56
	.uleb128 0x19
	.string	"CPP_NAME"
	.sleb128 57
	.uleb128 0x19
	.string	"CPP_NUMBER"
	.sleb128 58
	.uleb128 0x19
	.string	"CPP_CHAR"
	.sleb128 59
	.uleb128 0x19
	.string	"CPP_WCHAR"
	.sleb128 60
	.uleb128 0x19
	.string	"CPP_OTHER"
	.sleb128 61
	.uleb128 0x19
	.string	"CPP_STRING"
	.sleb128 62
	.uleb128 0x19
	.string	"CPP_WSTRING"
	.sleb128 63
	.uleb128 0x19
	.string	"CPP_HEADER_NAME"
	.sleb128 64
	.uleb128 0x19
	.string	"CPP_COMMENT"
	.sleb128 65
	.uleb128 0x19
	.string	"CPP_MACRO_ARG"
	.sleb128 66
	.uleb128 0x19
	.string	"CPP_PADDING"
	.sleb128 67
	.uleb128 0x19
	.string	"N_TTYPES"
	.sleb128 68
	.byte	0x0
	.uleb128 0x18
	.long	0x1d1c
	.string	"c_lang"
	.byte	0x4
	.byte	0x2
	.byte	0x9f
	.uleb128 0x19
	.string	"CLK_GNUC89"
	.sleb128 0
	.uleb128 0x19
	.string	"CLK_GNUC99"
	.sleb128 1
	.uleb128 0x19
	.string	"CLK_STDC89"
	.sleb128 2
	.uleb128 0x19
	.string	"CLK_STDC94"
	.sleb128 3
	.uleb128 0x19
	.string	"CLK_STDC99"
	.sleb128 4
	.uleb128 0x19
	.string	"CLK_GNUCXX"
	.sleb128 5
	.uleb128 0x19
	.string	"CLK_CXX98"
	.sleb128 6
	.uleb128 0x19
	.string	"CLK_ASM"
	.sleb128 7
	.byte	0x0
	.uleb128 0x1b
	.long	0x1d61
	.byte	0x8
	.byte	0x2
	.byte	0xbc
	.uleb128 0x1c
	.string	"node"
	.byte	0x2
	.byte	0xbd
	.long	0x1d61
	.uleb128 0x1c
	.string	"source"
	.byte	0x2
	.byte	0xbe
	.long	0x1d67
	.uleb128 0x1c
	.string	"str"
	.byte	0x2
	.byte	0xbf
	.long	0x16c7
	.uleb128 0x1c
	.string	"arg_no"
	.byte	0x2
	.byte	0xc0
	.long	0xb7
	.uleb128 0x1c
	.string	"c"
	.byte	0x2
	.byte	0xc1
	.long	0xd3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x16f1
	.uleb128 0x2
	.byte	0x4
	.long	0x1d6d
	.uleb128 0x3
	.long	0x1657
	.uleb128 0x1d
	.long	0x1da2
	.byte	0x4
	.byte	0x2
	.value	0x185
	.uleb128 0x19
	.string	"DEPS_NONE"
	.sleb128 0
	.uleb128 0x19
	.string	"DEPS_USER"
	.sleb128 1
	.uleb128 0x19
	.string	"DEPS_SYSTEM"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1e
	.long	0x1e0b
	.byte	0x8
	.byte	0x2
	.value	0x183
	.uleb128 0x9
	.string	"style"
	.byte	0x2
	.value	0x185
	.long	0x1d72
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"missing_files"
	.byte	0x2
	.value	0x188
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"phony_targets"
	.byte	0x2
	.value	0x18c
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"ignore_main_file"
	.byte	0x2
	.value	0x18f
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x1f
	.string	"cpp_pending"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1e0b
	.uleb128 0xd
	.long	0x1e9d
	.string	"search_path"
	.byte	0x20
	.byte	0x2
	.byte	0xeb
	.uleb128 0xe
	.string	"next"
	.byte	0x4
	.byte	0x86
	.long	0x1e9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF20
	.byte	0x4
	.byte	0x8a
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"len"
	.byte	0x4
	.byte	0x8b
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"ino"
	.byte	0x4
	.byte	0x8e
	.long	0x57a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dev"
	.byte	0x4
	.byte	0x8f
	.long	0x587
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x4
	.byte	0x91
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"name_map"
	.byte	0x4
	.byte	0x94
	.long	0x21eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1e1f
	.uleb128 0xd
	.long	0x1f09
	.string	"file_name_map_list"
	.byte	0xc
	.byte	0x2
	.byte	0x33
	.uleb128 0x9
	.string	"map_list_next"
	.byte	0x1
	.value	0x37b
	.long	0x1f09
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map_list_name"
	.byte	0x1
	.value	0x37c
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"map_list_map"
	.byte	0x1
	.value	0x37d
	.long	0x21eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1ea3
	.uleb128 0x14
	.long	0x1f25
	.byte	0x1
	.uleb128 0x13
	.long	0x1f25
	.uleb128 0x13
	.long	0x1d67
	.uleb128 0x13
	.long	0xb0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xf03
	.uleb128 0x2
	.byte	0x4
	.long	0x1f0f
	.uleb128 0x14
	.long	0x1f42
	.byte	0x1
	.uleb128 0x13
	.long	0x1f25
	.uleb128 0x13
	.long	0x1f42
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f48
	.uleb128 0x3
	.long	0xdf1
	.uleb128 0x2
	.byte	0x4
	.long	0x1f31
	.uleb128 0x14
	.long	0x1f6e
	.byte	0x1
	.uleb128 0x13
	.long	0x1f25
	.uleb128 0x13
	.long	0xb7
	.uleb128 0x13
	.long	0x4e6
	.uleb128 0x13
	.long	0x1d67
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f53
	.uleb128 0x14
	.long	0x1f8a
	.byte	0x1
	.uleb128 0x13
	.long	0x1f25
	.uleb128 0x13
	.long	0xb7
	.uleb128 0x13
	.long	0x1d61
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f74
	.uleb128 0x14
	.long	0x1fa6
	.byte	0x1
	.uleb128 0x13
	.long	0x1f25
	.uleb128 0x13
	.long	0xb7
	.uleb128 0x13
	.long	0x1fa6
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1fac
	.uleb128 0x3
	.long	0x16bc
	.uleb128 0x2
	.byte	0x4
	.long	0x1f90
	.uleb128 0x14
	.long	0x1fc8
	.byte	0x1
	.uleb128 0x13
	.long	0x1f25
	.uleb128 0x13
	.long	0xb7
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1fb7
	.uleb128 0x14
	.long	0x1fda
	.byte	0x1
	.uleb128 0x13
	.long	0x1f25
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1fce
	.uleb128 0x20
	.long	0x2018
	.string	"node_type"
	.byte	0x4
	.byte	0x2
	.value	0x1c8
	.uleb128 0x19
	.string	"NT_VOID"
	.sleb128 0
	.uleb128 0x19
	.string	"NT_MACRO"
	.sleb128 1
	.uleb128 0x19
	.string	"NT_ASSERTION"
	.sleb128 2
	.byte	0x0
	.uleb128 0x20
	.long	0x2093
	.string	"builtin_type"
	.byte	0x4
	.byte	0x2
	.value	0x1d1
	.uleb128 0x19
	.string	"BT_SPECLINE"
	.sleb128 0
	.uleb128 0x19
	.string	"BT_DATE"
	.sleb128 1
	.uleb128 0x19
	.string	"BT_FILE"
	.sleb128 2
	.uleb128 0x19
	.string	"BT_BASE_FILE"
	.sleb128 3
	.uleb128 0x19
	.string	"BT_INCLUDE_LEVEL"
	.sleb128 4
	.uleb128 0x19
	.string	"BT_TIME"
	.sleb128 5
	.uleb128 0x19
	.string	"BT_STDC"
	.sleb128 6
	.uleb128 0x19
	.string	"BT_PRAGMA"
	.sleb128 7
	.byte	0x0
	.uleb128 0x21
	.long	0x20dc
	.byte	0x4
	.byte	0x2
	.value	0x1ee
	.uleb128 0x22
	.string	"macro"
	.byte	0x2
	.value	0x1ef
	.long	0x20dc
	.uleb128 0x22
	.string	"answers"
	.byte	0x2
	.value	0x1f0
	.long	0x20eb
	.uleb128 0x22
	.string	"operator"
	.byte	0x2
	.value	0x1f4
	.long	0x1901
	.uleb128 0x22
	.string	"builtin"
	.byte	0x2
	.value	0x1f6
	.long	0x2018
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1793
	.uleb128 0x1f
	.string	"answer"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x20e2
	.uleb128 0x6
	.string	"uchar"
	.byte	0x4
	.byte	0x20
	.long	0xd3
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x1b
	.long	0x212b
	.byte	0x4
	.byte	0x4
	.byte	0x4f
	.uleb128 0x1c
	.string	"tokens"
	.byte	0x4
	.byte	0x50
	.long	0x212b
	.uleb128 0x1c
	.string	"text"
	.byte	0x4
	.byte	0x51
	.long	0x2131
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1657
	.uleb128 0x2
	.byte	0x4
	.long	0x2137
	.uleb128 0x3
	.long	0x20f1
	.uleb128 0x2
	.byte	0x4
	.long	0x1d61
	.uleb128 0x15
	.long	.LASF21
	.byte	0x4
	.byte	0x6f
	.long	0x214d
	.uleb128 0x8
	.long	0x2194
	.long	.LASF21
	.byte	0x10
	.byte	0x4
	.byte	0x6f
	.uleb128 0xe
	.string	"next"
	.byte	0x4
	.byte	0x72
	.long	0x2194
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"base"
	.byte	0x4
	.byte	0x73
	.long	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cur"
	.byte	0x4
	.byte	0x73
	.long	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x73
	.long	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x214d
	.uleb128 0xd
	.long	0x21eb
	.string	"file_name_map"
	.byte	0xc
	.byte	0x4
	.byte	0x94
	.uleb128 0x9
	.string	"map_next"
	.byte	0x1
	.value	0x353
	.long	0x21eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map_from"
	.byte	0x1
	.value	0x354
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"map_to"
	.byte	0x1
	.value	0x355
	.long	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x219a
	.uleb128 0x18
	.long	0x223f
	.string	"include_type"
	.byte	0x4
	.byte	0x4
	.byte	0x98
	.uleb128 0x19
	.string	"IT_INCLUDE"
	.sleb128 0
	.uleb128 0x19
	.string	"IT_INCLUDE_NEXT"
	.sleb128 1
	.uleb128 0x19
	.string	"IT_IMPORT"
	.sleb128 2
	.uleb128 0x19
	.string	"IT_CMDLINE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x23
	.long	0x226a
	.string	"utoken"
	.byte	0x4
	.byte	0x4
	.byte	0x9b
	.uleb128 0x1c
	.string	"token"
	.byte	0x4
	.byte	0x9c
	.long	0x1d67
	.uleb128 0x1c
	.string	"ptoken"
	.byte	0x4
	.byte	0x9d
	.long	0x226a
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d67
	.uleb128 0x15
	.long	.LASF22
	.byte	0x4
	.byte	0xa1
	.long	0x227b
	.uleb128 0x8
	.long	0x22c3
	.long	.LASF22
	.byte	0x10
	.byte	0x4
	.byte	0xa1
	.uleb128 0xe
	.string	"next"
	.byte	0x4
	.byte	0xa4
	.long	0x22c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x4
	.byte	0xa4
	.long	0x22c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x4
	.byte	0xa5
	.long	0x212b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0xa5
	.long	0x212b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2270
	.uleb128 0x15
	.long	.LASF23
	.byte	0x4
	.byte	0xae
	.long	0x22d4
	.uleb128 0x8
	.long	0x233d
	.long	.LASF23
	.byte	0x1c
	.byte	0x4
	.byte	0xae
	.uleb128 0xe
	.string	"next"
	.byte	0x4
	.byte	0xb2
	.long	0x23aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x4
	.byte	0xb2
	.long	0x23aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0x4
	.byte	0xc5
	.long	0x238a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"buff"
	.byte	0x4
	.byte	0xc9
	.long	0x23b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"macro"
	.byte	0x4
	.byte	0xcc
	.long	0x1d61
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"direct_p"
	.byte	0x4
	.byte	0xcf
	.long	0xefa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x2365
	.byte	0x8
	.byte	0x4
	.byte	0xba
	.uleb128 0xe
	.string	"first"
	.byte	0x4
	.byte	0xbb
	.long	0x223f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"last"
	.byte	0x4
	.byte	0xbc
	.long	0x223f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x24
	.long	0x238a
	.byte	0x8
	.byte	0x4
	.byte	0xc1
	.uleb128 0xe
	.string	"cur"
	.byte	0x4
	.byte	0xc2
	.long	0x2131
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF12
	.byte	0x4
	.byte	0xc3
	.long	0x2131
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1b
	.long	0x23aa
	.byte	0x8
	.byte	0x4
	.byte	0xb5
	.uleb128 0x1c
	.string	"iso"
	.byte	0x4
	.byte	0xbd
	.long	0x233d
	.uleb128 0x1c
	.string	"trad"
	.byte	0x4
	.byte	0xc4
	.long	0x2365
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x22c9
	.uleb128 0x2
	.byte	0x4
	.long	0x2142
	.uleb128 0xd
	.long	0x24eb
	.string	"lexer_state"
	.byte	0x10
	.byte	0x4
	.byte	0xd3
	.uleb128 0xe
	.string	"in_directive"
	.byte	0x4
	.byte	0xd5
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"directive_wants_padding"
	.byte	0x4
	.byte	0xda
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"skipping"
	.byte	0x4
	.byte	0xdd
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"angled_headers"
	.byte	0x4
	.byte	0xe0
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.string	"in_expression"
	.byte	0x4
	.byte	0xe3
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"save_comments"
	.byte	0x4
	.byte	0xe7
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"lexing_comment"
	.byte	0x4
	.byte	0xea
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"va_args_ok"
	.byte	0x4
	.byte	0xed
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"poisoned_ok"
	.byte	0x4
	.byte	0xf0
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"prevent_expansion"
	.byte	0x4
	.byte	0xf3
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.string	"parsing_args"
	.byte	0x4
	.byte	0xf6
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"skip_eval"
	.byte	0x4
	.byte	0xf9
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x2549
	.long	.LASF10
	.byte	0x10
	.byte	0x4
	.byte	0xfe
	.uleb128 0xe
	.string	"n_defined"
	.byte	0x4
	.byte	0xff
	.long	0x1d61
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"n_true"
	.byte	0x4
	.value	0x100
	.long	0x1d61
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"n_false"
	.byte	0x4
	.value	0x101
	.long	0x1d61
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"n__VA_ARGS__"
	.byte	0x4
	.value	0x102
	.long	0x1d61
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x25bf
	.string	"printer"
	.byte	0x18
	.byte	0x4
	.value	0x108
	.uleb128 0x9
	.string	"outf"
	.byte	0x4
	.value	0x109
	.long	0x25bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map"
	.byte	0x4
	.value	0x10a
	.long	0x1f42
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"prev"
	.byte	0x4
	.value	0x10b
	.long	0x1d67
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"source"
	.byte	0x4
	.value	0x10c
	.long	0x1d67
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"line"
	.byte	0x4
	.value	0x10d
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"printed"
	.byte	0x4
	.value	0x10e
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x24f
	.uleb128 0x2
	.byte	0x4
	.long	0xf19
	.uleb128 0x10
	.long	0x2688
	.string	"include_file"
	.byte	0x78
	.byte	0x4
	.value	0x11f
	.uleb128 0xf
	.long	.LASF20
	.byte	0x1
	.byte	0x57
	.long	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"cmacro"
	.byte	0x1
	.byte	0x58
	.long	0x2728
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"foundhere"
	.byte	0x1
	.byte	0x59
	.long	0x29be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF7
	.byte	0x1
	.byte	0x5c
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"st"
	.byte	0x1
	.byte	0x5d
	.long	0x5de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"fd"
	.byte	0x1
	.byte	0x5e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"err_no"
	.byte	0x1
	.byte	0x5f
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.string	"include_count"
	.byte	0x1
	.byte	0x60
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"refcnt"
	.byte	0x1
	.byte	0x61
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xe
	.string	"mapped"
	.byte	0x1
	.byte	0x62
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x25cb
	.uleb128 0x25
	.long	.LASF13
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x268e
	.uleb128 0x1e
	.long	0x26e8
	.byte	0x10
	.byte	0x4
	.value	0x1bf
	.uleb128 0x9
	.string	"base"
	.byte	0x4
	.value	0x1c0
	.long	0x26e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x4
	.value	0x1c1
	.long	0x26e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cur"
	.byte	0x4
	.value	0x1c2
	.long	0x26e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"first_line"
	.byte	0x4
	.value	0x1c3
	.long	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x20f1
	.uleb128 0x2
	.byte	0x4
	.long	0xf0e
	.uleb128 0x2
	.byte	0x4
	.long	0x22d4
	.uleb128 0x25
	.long	.LASF9
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2706
	.uleb128 0x3
	.long	0x26fa
	.uleb128 0x1f
	.string	"pending_option"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2722
	.uleb128 0x2
	.byte	0x4
	.long	0x270b
	.uleb128 0x2
	.byte	0x4
	.long	0x272e
	.uleb128 0x3
	.long	0x16f1
	.uleb128 0x10
	.long	0x27d4
	.string	"splay_tree_s"
	.byte	0x1c
	.byte	0x4
	.value	0x187
	.uleb128 0xe
	.string	"root"
	.byte	0xa
	.byte	0x62
	.long	0x283b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"comp"
	.byte	0xa
	.byte	0x65
	.long	0x28b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"delete_key"
	.byte	0xa
	.byte	0x68
	.long	0x28e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"delete_value"
	.byte	0xa
	.byte	0x6b
	.long	0x291a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"allocate"
	.byte	0xa
	.byte	0x6e
	.long	0x294e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"deallocate"
	.byte	0xa
	.byte	0x6f
	.long	0x2987
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"allocate_data"
	.byte	0xa
	.byte	0x70
	.long	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2733
	.uleb128 0x1f
	.string	"deps"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x27da
	.uleb128 0x1f
	.string	"pragma_entry"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x27e7
	.uleb128 0x2
	.byte	0x4
	.long	0x918
	.uleb128 0x1f
	.string	"op"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2802
	.uleb128 0x6
	.string	"splay_tree_key"
	.byte	0xa
	.byte	0x2f
	.long	0xfa
	.uleb128 0x6
	.string	"splay_tree_value"
	.byte	0xa
	.byte	0x30
	.long	0xfa
	.uleb128 0x6
	.string	"splay_tree_node"
	.byte	0xa
	.byte	0x33
	.long	0x2852
	.uleb128 0x2
	.byte	0x4
	.long	0x2858
	.uleb128 0xd
	.long	0x28b0
	.string	"splay_tree_node_s"
	.byte	0x10
	.byte	0xa
	.byte	0x33
	.uleb128 0xe
	.string	"key"
	.byte	0xa
	.byte	0x54
	.long	0x280d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"value"
	.byte	0xa
	.byte	0x57
	.long	0x2823
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"left"
	.byte	0xa
	.byte	0x5a
	.long	0x283b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"right"
	.byte	0xa
	.byte	0x5b
	.long	0x283b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x6
	.string	"splay_tree_compare_fn"
	.byte	0xa
	.byte	0x37
	.long	0x28cd
	.uleb128 0x2
	.byte	0x4
	.long	0x28d3
	.uleb128 0x12
	.long	0x28e8
	.byte	0x1
	.long	0xb0
	.uleb128 0x13
	.long	0x280d
	.uleb128 0x13
	.long	0x280d
	.byte	0x0
	.uleb128 0x6
	.string	"splay_tree_delete_key_fn"
	.byte	0xa
	.byte	0x3b
	.long	0x2908
	.uleb128 0x2
	.byte	0x4
	.long	0x290e
	.uleb128 0x14
	.long	0x291a
	.byte	0x1
	.uleb128 0x13
	.long	0x280d
	.byte	0x0
	.uleb128 0x6
	.string	"splay_tree_delete_value_fn"
	.byte	0xa
	.byte	0x3f
	.long	0x293c
	.uleb128 0x2
	.byte	0x4
	.long	0x2942
	.uleb128 0x14
	.long	0x294e
	.byte	0x1
	.uleb128 0x13
	.long	0x2823
	.byte	0x0
	.uleb128 0x6
	.string	"splay_tree_allocate_fn"
	.byte	0xa
	.byte	0x48
	.long	0x296c
	.uleb128 0x2
	.byte	0x4
	.long	0x2972
	.uleb128 0x12
	.long	0x2987
	.byte	0x1
	.long	0x211
	.uleb128 0x13
	.long	0xb0
	.uleb128 0x13
	.long	0x211
	.byte	0x0
	.uleb128 0x6
	.string	"splay_tree_deallocate_fn"
	.byte	0xa
	.byte	0x4e
	.long	0x29a7
	.uleb128 0x2
	.byte	0x4
	.long	0x29ad
	.uleb128 0x14
	.long	0x29be
	.byte	0x1
	.uleb128 0x13
	.long	0x211
	.uleb128 0x13
	.long	0x211
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x29c4
	.uleb128 0x3
	.long	0x1e1f
	.uleb128 0x26
	.long	0x2a00
	.byte	0x1
	.string	"_cpp_init_includes"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST0
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0x9b
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x26
	.long	0x2a3a
	.byte	0x1
	.string	"_cpp_cleanup_includes"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST1
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0xa6
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x28
	.long	0x2a74
	.string	"destroy_node"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST2
	.uleb128 0x29
	.string	"v"
	.byte	0x1
	.byte	0xae
	.long	0x2823
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.byte	0xb0
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x2aab
	.byte	0x1
	.string	"_cpp_never_reread"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST3
	.uleb128 0x29
	.string	"file"
	.byte	0x1
	.byte	0xbc
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2b
	.long	0x2b21
	.string	"find_or_create_entry"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0x283b
	.long	.LFB25
	.long	.LFE25
	.long	.LLST4
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0xc6
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.byte	0xc7
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"node"
	.byte	0x1
	.byte	0xc9
	.long	0x283b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"file"
	.byte	0x1
	.byte	0xca
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF20
	.byte	0x1
	.byte	0xcb
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x2b65
	.byte	0x1
	.string	"_cpp_fake_include"
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST5
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0xe1
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF24
	.byte	0x1
	.byte	0xe2
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2b
	.long	0x2bc0
	.string	"open_file"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.long	0x2688
	.long	.LFB27
	.long	.LFE27
	.long	.LLST6
	.uleb128 0x27
	.long	.LASF5
	.byte	0x1
	.byte	0xf2
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF25
	.byte	0x1
	.byte	0xf3
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"nd"
	.byte	0x1
	.byte	0xf5
	.long	0x283b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"file"
	.byte	0x1
	.byte	0xf6
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x2c38
	.string	"stack_include_file"
	.byte	0x1
	.value	0x13b
	.byte	0x1
	.long	0xefa
	.long	.LFB28
	.long	.LFE28
	.long	.LLST7
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x139
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"inc"
	.byte	0x1
	.value	0x13a
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"fp"
	.byte	0x1
	.value	0x13c
	.long	0x26ee
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"sysp"
	.byte	0x1
	.value	0x13d
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LASF25
	.byte	0x1
	.value	0x13e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x2cfc
	.string	"read_include_file"
	.byte	0x1
	.value	0x188
	.byte	0x1
	.long	0xb0
	.long	.LFB29
	.long	.LFE29
	.long	.LLST8
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x186
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"inc"
	.byte	0x1
	.value	0x187
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"size"
	.byte	0x1
	.value	0x189
	.long	0x594
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"offset"
	.byte	0x1
	.value	0x189
	.long	0x594
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"count"
	.byte	0x1
	.value	0x189
	.long	0x594
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x18a
	.long	0x26e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.string	"fail"
	.byte	0x1
	.value	0x1f2
	.long	.L95
	.uleb128 0x32
	.string	"perror_fail"
	.byte	0x1
	.value	0x1f0
	.long	.L83
	.uleb128 0x30
	.string	"pagesize"
	.byte	0x1
	.value	0x18c
	.long	0xb0
	.byte	0x5
	.byte	0x3
	.long	pagesize.7434
	.byte	0x0
	.uleb128 0x33
	.long	0x2d2d
	.string	"purge_cache"
	.byte	0x1
	.value	0x1fa
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST9
	.uleb128 0x2f
	.string	"inc"
	.byte	0x1
	.value	0x1f9
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.long	0x2dad
	.byte	0x1
	.string	"cpp_included"
	.byte	0x1
	.value	0x214
	.byte	0x1
	.long	0xb0
	.long	.LFB31
	.long	.LFE31
	.long	.LLST10
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x212
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x213
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.string	"path"
	.byte	0x1
	.value	0x215
	.long	0x1e9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x216
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.value	0x216
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"nd"
	.byte	0x1
	.value	0x217
	.long	0x283b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	0x2e6b
	.string	"find_include_file"
	.byte	0x1
	.value	0x23d
	.byte	0x1
	.long	0x2688
	.long	.LFB32
	.long	.LFE32
	.long	.LLST11
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x23a
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF26
	.byte	0x1
	.value	0x23b
	.long	0x1d67
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.string	"type"
	.byte	0x1
	.value	0x23c
	.long	0x21f1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x23e
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"path"
	.byte	0x1
	.value	0x23f
	.long	0x1e9d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"file"
	.byte	0x1
	.value	0x240
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x241
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.value	0x241
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x25b
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x2ede
	.byte	0x1
	.string	"cpp_make_system_header"
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST12
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x278
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"syshdr"
	.byte	0x1
	.value	0x279
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"externc"
	.byte	0x1
	.value	0x279
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"flags"
	.byte	0x1
	.value	0x27b
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x2f31
	.byte	0x1
	.string	"_cpp_report_missing_guards"
	.byte	0x1
	.value	0x289
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST13
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x288
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"banner"
	.byte	0x1
	.value	0x28a
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x2f9a
	.string	"report_missing_guard"
	.byte	0x1
	.value	0x294
	.byte	0x1
	.long	0xb0
	.long	.LFB35
	.long	.LFE35
	.long	.LLST14
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x292
	.long	0x283b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x293
	.long	0x211
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x295
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"bannerp"
	.byte	0x1
	.value	0x296
	.long	0x5d8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x3013
	.string	"handle_missing_header"
	.byte	0x1
	.value	0x2ad
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST15
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x2aa
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x2ab
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"angle_brackets"
	.byte	0x1
	.value	0x2ac
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"print_dep"
	.byte	0x1
	.value	0x2ae
	.long	0xefa
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x34
	.long	0x3093
	.byte	0x1
	.string	"_cpp_execute_include"
	.byte	0x1
	.value	0x2c5
	.byte	0x1
	.long	0xefa
	.long	.LFB37
	.long	.LFE37
	.long	.LLST16
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x2c2
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF26
	.byte	0x1
	.value	0x2c3
	.long	0x1d67
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"type"
	.byte	0x1
	.value	0x2c4
	.long	0x21f1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"stacked"
	.byte	0x1
	.value	0x2c6
	.long	0xefa
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x30
	.string	"inc"
	.byte	0x1
	.value	0x2c7
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	0x30f2
	.byte	0x1
	.string	"_cpp_compare_file_date"
	.byte	0x1
	.value	0x2de
	.byte	0x1
	.long	0xb0
	.long	.LFB38
	.long	.LFE38
	.long	.LLST17
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x2dc
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF26
	.byte	0x1
	.value	0x2dd
	.long	0x1d67
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"inc"
	.byte	0x1
	.value	0x2df
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x3147
	.byte	0x1
	.string	"_cpp_read_file"
	.byte	0x1
	.value	0x2f5
	.byte	0x1
	.long	0xefa
	.long	.LFB39
	.long	.LFE39
	.long	.LLST18
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x2f3
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x2f4
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x2f6
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x3191
	.byte	0x1
	.string	"_cpp_pop_file_buffer"
	.byte	0x1
	.value	0x307
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST19
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x305
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"inc"
	.byte	0x1
	.value	0x306
	.long	0x2688
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x3205
	.string	"search_from"
	.byte	0x1
	.value	0x31f
	.byte	0x1
	.long	0x1e9d
	.long	.LFB41
	.long	.LFE41
	.long	.LLST20
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x31d
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"type"
	.byte	0x1
	.value	0x31e
	.long	0x21f1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF7
	.byte	0x1
	.value	0x320
	.long	0x26ee
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"dlen"
	.byte	0x1
	.value	0x321
	.long	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.string	"use_cwd"
	.byte	0x1
	.value	0x33b
	.long	.L220
	.byte	0x0
	.uleb128 0x2d
	.long	0x327e
	.string	"read_filename_string"
	.byte	0x1
	.value	0x360
	.byte	0x1
	.long	0x249
	.long	.LFB42
	.long	.LFE42
	.long	.LLST21
	.uleb128 0x2f
	.string	"ch"
	.byte	0x1
	.value	0x35e
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0x35f
	.long	0x25bf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"alloc"
	.byte	0x1
	.value	0x361
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"set"
	.byte	0x1
	.value	0x361
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x362
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x334b
	.string	"read_name_map"
	.byte	0x1
	.value	0x385
	.byte	0x1
	.long	0x21eb
	.long	.LFB43
	.long	.LFE43
	.long	.LLST22
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x383
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.string	"dirname"
	.byte	0x1
	.value	0x384
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"map_list_ptr"
	.byte	0x1
	.value	0x386
	.long	0x1f09
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x387
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x388
	.long	0x25bf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x30
	.string	"ch"
	.byte	0x1
	.value	0x3a1
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x30
	.string	"from"
	.byte	0x1
	.value	0x3a5
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"to"
	.byte	0x1
	.value	0x3a5
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"ptr"
	.byte	0x1
	.value	0x3a6
	.long	0x21eb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x33f7
	.string	"remap_filename"
	.byte	0x1
	.value	0x3d4
	.byte	0x1
	.long	0x249
	.long	.LFB44
	.long	.LFE44
	.long	.LLST23
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x3d1
	.long	0x1f25
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF20
	.byte	0x1
	.value	0x3d2
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.string	"loc"
	.byte	0x1
	.value	0x3d3
	.long	0x1e9d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"map"
	.byte	0x1
	.value	0x3d5
	.long	0x21eb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.string	"from"
	.byte	0x1
	.value	0x3d6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x3d6
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"dir"
	.byte	0x1
	.value	0x3d7
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x30
	.string	"dname"
	.byte	0x1
	.value	0x3dc
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3454
	.string	"remove_component_p"
	.byte	0x1
	.value	0x40b
	.byte	0x1
	.long	0xb0
	.long	.LFB45
	.long	.LFE45
	.long	.LLST24
	.uleb128 0x2f
	.string	"path"
	.byte	0x1
	.value	0x40a
	.long	0x9d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x40c
	.long	0x5de
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.string	"result"
	.byte	0x1
	.value	0x40d
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x350c
	.byte	0x1
	.string	"_cpp_simplify_pathname"
	.byte	0x1
	.value	0x42f
	.byte	0x1
	.long	0x249
	.long	.LFB46
	.long	.LFE46
	.long	.LLST25
	.uleb128 0x2f
	.string	"path"
	.byte	0x1
	.value	0x42e
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"from"
	.byte	0x1
	.value	0x431
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"to"
	.byte	0x1
	.value	0x431
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"base"
	.byte	0x1
	.value	0x432
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"orig_base"
	.byte	0x1
	.value	0x432
	.long	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"absolute"
	.byte	0x1
	.value	0x433
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x30
	.string	"move_base"
	.byte	0x1
	.value	0x45c
	.long	0xb0
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.string	"stderr"
	.byte	0xb
	.byte	0x90
	.long	0x54e
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x352c
	.long	0xe4
	.uleb128 0xb
	.long	0xbe
	.byte	0xff
	.byte	0x0
	.uleb128 0x37
	.string	"_sch_istable"
	.byte	0xf
	.byte	0x48
	.long	0x3542
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x351c
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x17
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4
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
	.uleb128 0x1e
	.uleb128 0x13
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x131
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3548
	.long	0x29c9
	.string	"_cpp_init_includes"
	.long	0x2a00
	.string	"_cpp_cleanup_includes"
	.long	0x2a74
	.string	"_cpp_never_reread"
	.long	0x2b21
	.string	"_cpp_fake_include"
	.long	0x2d2d
	.string	"cpp_included"
	.long	0x2e6b
	.string	"cpp_make_system_header"
	.long	0x2ede
	.string	"_cpp_report_missing_guards"
	.long	0x3013
	.string	"_cpp_execute_include"
	.long	0x3093
	.string	"_cpp_compare_file_date"
	.long	0x30f2
	.string	"_cpp_read_file"
	.long	0x3147
	.string	"_cpp_pop_file_buffer"
	.long	0x3454
	.string	"_cpp_simplify_pathname"
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
.LASF12:
	.string	"rlimit"
.LASF24:
	.string	"fname"
.LASF18:
	.string	"cpp_macro"
.LASF10:
	.string	"spec_nodes"
.LASF5:
	.string	"pfile"
.LASF8:
	.string	"line_maps"
.LASF16:
	.string	"cpp_string"
.LASF19:
	.string	"cpp_callbacks"
.LASF23:
	.string	"cpp_context"
.LASF3:
	.string	"ht_identifier"
.LASF11:
	.string	"cpp_buffer"
.LASF9:
	.string	"directive"
.LASF21:
	.string	"_cpp_buff"
.LASF20:
	.string	"name"
.LASF13:
	.string	"if_stack"
.LASF25:
	.string	"filename"
.LASF15:
	.string	"cpp_token"
.LASF14:
	.string	"cpp_options"
.LASF2:
	.string	"limit"
.LASF6:
	.string	"cpp_reader"
.LASF1:
	.string	"_IO_FILE"
.LASF7:
	.string	"buffer"
.LASF4:
	.string	"hash_table"
.LASF17:
	.string	"cpp_hashnode"
.LASF22:
	.string	"tokenrun"
.LASF26:
	.string	"header"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
