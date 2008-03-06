	.file	"dyn-string.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl dyn_string_init
	.type	dyn_string_init, @function
dyn_string_init:
.LFB5:
	.file 1 "../../libiberty/dyn-string.c"
	.loc 1 71 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$4, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 73 0
	cmpl	$0, 12(%ebp)
	jne	.L2
	.loc 1 74 0
	movl	$1, 12(%ebp)
.L2:
	.loc 1 81 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 83 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 85 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movb	$0, (%eax)
	.loc 1 87 0
	movl	$1, %eax
	.loc 1 88 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	dyn_string_init, .-dyn_string_init
.globl dyn_string_new
	.type	dyn_string_new, @function
dyn_string_new:
.LFB6:
	.loc 1 99 0
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
	.loc 1 111 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 112 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_init@PLT
	.loc 1 114 0
	movl	-8(%ebp), %eax
	.loc 1 115 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	dyn_string_new, .-dyn_string_new
.globl dyn_string_delete
	.type	dyn_string_delete, @function
dyn_string_delete:
.LFB7:
	.loc 1 122 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$4, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 123 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 124 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 125 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE7:
	.size	dyn_string_delete, .-dyn_string_delete
.globl dyn_string_release
	.type	dyn_string_release, @function
dyn_string_release:
.LFB8:
	.loc 1 134 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$20, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 136 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 138 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 140 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 142 0
	movl	-8(%ebp), %eax
	.loc 1 143 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	dyn_string_release, .-dyn_string_release
.globl dyn_string_resize
	.type	dyn_string_resize, @function
dyn_string_resize:
.LFB9:
	.loc 1 156 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%ebx
.LCFI18:
	subl	$36, %esp
.LCFI19:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 157 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 160 0
	addl	$1, 12(%ebp)
	.loc 1 163 0
	jmp	.L12
.L13:
	.loc 1 164 0
	sall	-8(%ebp)
.L12:
	.loc 1 163 0
	movl	12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jg	.L13
	.loc 1 166 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	je	.L15
	.loc 1 168 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 178 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	xrealloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L15:
	.loc 1 182 0
	movl	8(%ebp), %eax
	.loc 1 183 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	dyn_string_resize, .-dyn_string_resize
.globl dyn_string_clear
	.type	dyn_string_clear, @function
dyn_string_clear:
.LFB10:
	.loc 1 190 0
	pushl	%ebp
.LCFI20:
	movl	%esp, %ebp
.LCFI21:
	.loc 1 192 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movb	$0, (%eax)
	.loc 1 193 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 194 0
	popl	%ebp
	ret
.LFE10:
	.size	dyn_string_clear, .-dyn_string_clear
.globl dyn_string_copy
	.type	dyn_string_copy, @function
dyn_string_copy:
.LFB11:
	.loc 1 204 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$20, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 205 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L21
	.loc 1 206 0
	call	abort@PLT
.L21:
	.loc 1 209 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L23
	.loc 1 210 0
	movl	$0, -8(%ebp)
	jmp	.L25
.L23:
	.loc 1 212 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 214 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 215 0
	movl	$1, -8(%ebp)
.L25:
	movl	-8(%ebp), %eax
	.loc 1 216 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE11:
	.size	dyn_string_copy, .-dyn_string_copy
.globl dyn_string_copy_cstr
	.type	dyn_string_copy_cstr, @function
dyn_string_copy_cstr:
.LFB12:
	.loc 1 226 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%edi
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$32, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 227 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 229 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L28
	.loc 1 230 0
	movl	$0, -28(%ebp)
	jmp	.L30
.L28:
	.loc 1 232 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 1 234 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 235 0
	movl	$1, -28(%ebp)
.L30:
	movl	-28(%ebp), %eax
	.loc 1 236 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE12:
	.size	dyn_string_copy_cstr, .-dyn_string_copy_cstr
.globl dyn_string_prepend
	.type	dyn_string_prepend, @function
dyn_string_prepend:
.LFB13:
	.loc 1 247 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$20, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 248 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_insert@PLT
	.loc 1 249 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	dyn_string_prepend, .-dyn_string_prepend
.globl dyn_string_prepend_cstr
	.type	dyn_string_prepend_cstr, @function
dyn_string_prepend_cstr:
.LFB14:
	.loc 1 259 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	pushl	%ebx
.LCFI37:
	subl	$20, %esp
.LCFI38:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 260 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_insert_cstr@PLT
	.loc 1 261 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE14:
	.size	dyn_string_prepend_cstr, .-dyn_string_prepend_cstr
.globl dyn_string_insert
	.type	dyn_string_insert, @function
dyn_string_insert:
.LFB15:
	.loc 1 273 0
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%esi
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$32, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 276 0
	movl	16(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L37
	.loc 1 277 0
	call	abort@PLT
.L37:
	.loc 1 279 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L39
	.loc 1 280 0
	movl	$0, -28(%ebp)
	jmp	.L41
.L39:
	.loc 1 282 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L42
.L43:
	.loc 1 283 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	addl	-12(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
	.loc 1 282 0
	subl	$1, -12(%ebp)
.L42:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L43
	.loc 1 285 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	16(%ebp), %eax
	movl	8(%eax), %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	strncpy@PLT
	.loc 1 287 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 288 0
	movl	$1, -28(%ebp)
.L41:
	movl	-28(%ebp), %eax
	.loc 1 289 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE15:
	.size	dyn_string_insert, .-dyn_string_insert
.globl dyn_string_insert_cstr
	.type	dyn_string_insert_cstr, @function
dyn_string_insert_cstr:
.LFB16:
	.loc 1 301 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%edi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$48, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 303 0
	movl	16(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 305 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L47
	.loc 1 306 0
	movl	$0, -28(%ebp)
	jmp	.L49
.L47:
	.loc 1 308 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L50
.L51:
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
	.loc 1 308 0
	subl	$1, -16(%ebp)
.L50:
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L51
	.loc 1 311 0
	movl	-12(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	%ecx, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncpy@PLT
	.loc 1 313 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	addl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 314 0
	movl	$1, -28(%ebp)
.L49:
	movl	-28(%ebp), %eax
	.loc 1 315 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	dyn_string_insert_cstr, .-dyn_string_insert_cstr
.globl dyn_string_insert_char
	.type	dyn_string_insert_char, @function
dyn_string_insert_char:
.LFB17:
	.loc 1 326 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$36, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L55
	.loc 1 330 0
	movl	$0, -24(%ebp)
	jmp	.L57
.L55:
	.loc 1 332 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L58
.L59:
	.loc 1 333 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	leal	(%edx,%eax), %eax
	leal	1(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
	.loc 1 332 0
	subl	$1, -8(%ebp)
.L58:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L59
	.loc 1 335 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	16(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 337 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 338 0
	movl	$1, -24(%ebp)
.L57:
	movl	-24(%ebp), %eax
	.loc 1 339 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	dyn_string_insert_char, .-dyn_string_insert_char
.globl dyn_string_append
	.type	dyn_string_append, @function
dyn_string_append:
.LFB18:
	.loc 1 349 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%ebx
.LCFI55:
	subl	$20, %esp
.LCFI56:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 350 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L63
	.loc 1 351 0
	movl	$0, -8(%ebp)
	jmp	.L65
.L63:
	.loc 1 352 0
	movl	12(%ebp), %eax
	movl	8(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 353 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 354 0
	movl	$1, -8(%ebp)
.L65:
	movl	-8(%ebp), %eax
	.loc 1 355 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	dyn_string_append, .-dyn_string_append
.globl dyn_string_append_cstr
	.type	dyn_string_append_cstr, @function
dyn_string_append_cstr:
.LFB19:
	.loc 1 365 0
	pushl	%ebp
.LCFI57:
	movl	%esp, %ebp
.LCFI58:
	pushl	%edi
.LCFI59:
	pushl	%ebx
.LCFI60:
	subl	$32, %esp
.LCFI61:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 366 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 370 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L68
	.loc 1 371 0
	movl	$0, -28(%ebp)
	jmp	.L70
.L68:
	.loc 1 372 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy@PLT
	.loc 1 373 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	addl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 374 0
	movl	$1, -28(%ebp)
.L70:
	movl	-28(%ebp), %eax
	.loc 1 375 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	dyn_string_append_cstr, .-dyn_string_append_cstr
.globl dyn_string_append_char
	.type	dyn_string_append_char, @function
dyn_string_append_char:
.LFB20:
	.loc 1 384 0
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
	.loc 1 386 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L73
	.loc 1 387 0
	movl	$0, -8(%ebp)
	jmp	.L75
.L73:
	.loc 1 389 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%al, (%edx)
	.loc 1 391 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	.loc 1 393 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 394 0
	movl	$1, -8(%ebp)
.L75:
	movl	-8(%ebp), %eax
	.loc 1 395 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	dyn_string_append_char, .-dyn_string_append_char
.globl dyn_string_substring
	.type	dyn_string_substring, @function
dyn_string_substring:
.LFB21:
	.loc 1 409 0
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
	.loc 1 411 0
	movl	16(%ebp), %edx
	movl	20(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 413 0
	movl	16(%ebp), %eax
	cmpl	20(%ebp), %eax
	jg	.L78
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jl	.L78
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	20(%ebp), %eax
	jge	.L81
.L78:
	.loc 1 414 0
	call	abort@PLT
.L81:
	.loc 1 417 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dyn_string_resize@PLT
	testl	%eax, %eax
	jne	.L82
	.loc 1 418 0
	movl	$0, -24(%ebp)
	jmp	.L84
.L82:
	.loc 1 420 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L85
.L86:
	.loc 1 421 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	addl	16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, (%ecx)
.L85:
	.loc 1 420 0
	subl	$1, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	.L86
	.loc 1 423 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movb	$0, (%eax)
	.loc 1 425 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 427 0
	movl	$1, -24(%ebp)
.L84:
	movl	-24(%ebp), %eax
	.loc 1 428 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	dyn_string_substring, .-dyn_string_substring
.globl dyn_string_eq
	.type	dyn_string_eq, @function
dyn_string_eq:
.LFB22:
	.loc 1 436 0
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
	.loc 1 438 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L90
	.loc 1 439 0
	movl	$0, -8(%ebp)
	jmp	.L92
.L90:
	.loc 1 441 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
.L92:
	movl	-8(%ebp), %eax
	.loc 1 442 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	dyn_string_eq, .-dyn_string_eq
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI8-.LFB7
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI12-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI15-.LCFI13
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI16-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI19-.LCFI17
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
	.long	.LCFI20-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI22-.LFB11
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
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI26-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI27
	.byte	0x83
	.uleb128 0x4
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
	.long	.LCFI31-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
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
	.long	.LCFI35-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI38-.LCFI36
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI39-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI40
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI44-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI45
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI49-.LFB17
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI53-.LFB18
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI57-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI61-.LCFI58
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI62-.LFB20
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI66-.LFB21
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI70-.LFB22
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
.LEFDE34:
	.file 2 "../../include/gnu/dyn-string.h"
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI35-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI36-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI39-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI40-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI45-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7a8
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/dyn-string.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.byte	0x4
	.long	0x145
	.uleb128 0x3
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.byte	0x4
	.long	0x153
	.uleb128 0x5
	.long	0x145
	.uleb128 0x6
	.long	0x19a
	.string	"dyn_string"
	.byte	0xc
	.byte	0x2
	.byte	0x18
	.uleb128 0x7
	.string	"allocated"
	.byte	0x2
	.byte	0x19
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF1
	.byte	0x2
	.byte	0x1a
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"s"
	.byte	0x2
	.byte	0x1b
	.long	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.string	"dyn_string_t"
	.byte	0x2
	.byte	0x1c
	.long	0x1ae
	.uleb128 0x4
	.byte	0x4
	.long	0x158
	.uleb128 0xa
	.long	0x206
	.byte	0x1
	.string	"dyn_string_init"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.long	0xfa
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xb
	.string	"ds_struct_ptr"
	.byte	0x1
	.byte	0x45
	.long	0x1ae
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"space"
	.byte	0x1
	.byte	0x46
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xa
	.long	0x250
	.byte	0x1
	.string	"dyn_string_new"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	0x19a
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0xb
	.string	"space"
	.byte	0x1
	.byte	0x62
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"result"
	.byte	0x1
	.byte	0x64
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xd
	.long	0x285
	.byte	0x1
	.string	"dyn_string_delete"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0xb
	.string	"ds"
	.byte	0x1
	.byte	0x79
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.long	0x2d0
	.byte	0x1
	.string	"dyn_string_release"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.long	0x13f
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0xb
	.string	"ds"
	.byte	0x1
	.byte	0x85
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"result"
	.byte	0x1
	.byte	0x88
	.long	0x13f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xa
	.long	0x331
	.byte	0x1
	.string	"dyn_string_resize"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x19a
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0xb
	.string	"ds"
	.byte	0x1
	.byte	0x9a
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"space"
	.byte	0x1
	.byte	0x9b
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.string	"new_allocated"
	.byte	0x1
	.byte	0x9d
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xd
	.long	0x365
	.byte	0x1
	.string	"dyn_string_clear"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0xb
	.string	"ds"
	.byte	0x1
	.byte	0xbd
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.long	0x3ab
	.byte	0x1
	.string	"dyn_string_copy"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.long	0xfa
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0xe
	.long	.LASF2
	.byte	0x1
	.byte	0xca
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"src"
	.byte	0x1
	.byte	0xcb
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xa
	.long	0x404
	.byte	0x1
	.string	"dyn_string_copy_cstr"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.long	0xfa
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0xe
	.long	.LASF2
	.byte	0x1
	.byte	0xe0
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"src"
	.byte	0x1
	.byte	0xe1
	.long	0x14d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.long	.LASF1
	.byte	0x1
	.byte	0xe3
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xa
	.long	0x44d
	.byte	0x1
	.string	"dyn_string_prepend"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	0xfa
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0xe
	.long	.LASF2
	.byte	0x1
	.byte	0xf5
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"src"
	.byte	0x1
	.byte	0xf6
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x10
	.long	0x49e
	.byte	0x1
	.string	"dyn_string_prepend_cstr"
	.byte	0x1
	.value	0x103
	.byte	0x1
	.long	0xfa
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.value	0x101
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.value	0x102
	.long	0x14d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x10
	.long	0x505
	.byte	0x1
	.string	"dyn_string_insert"
	.byte	0x1
	.value	0x111
	.byte	0x1
	.long	0xfa
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.value	0x10e
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.value	0x10f
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.value	0x110
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x112
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x10
	.long	0x580
	.byte	0x1
	.string	"dyn_string_insert_cstr"
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.long	0xfa
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.value	0x12a
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.value	0x12b
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.value	0x12c
	.long	0x14d
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x12e
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x12f
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x10
	.long	0x5ea
	.byte	0x1
	.string	"dyn_string_insert_char"
	.byte	0x1
	.value	0x146
	.byte	0x1
	.long	0xfa
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.value	0x143
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.value	0x144
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.value	0x145
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x147
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x10
	.long	0x633
	.byte	0x1
	.string	"dyn_string_append"
	.byte	0x1
	.value	0x15d
	.byte	0x1
	.long	0xfa
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.value	0x15b
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.value	0x15c
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x10
	.long	0x690
	.byte	0x1
	.string	"dyn_string_append_cstr"
	.byte	0x1
	.value	0x16d
	.byte	0x1
	.long	0xfa
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.value	0x16b
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.value	0x16c
	.long	0x14d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x16e
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x10
	.long	0x6de
	.byte	0x1
	.string	"dyn_string_append_char"
	.byte	0x1
	.value	0x180
	.byte	0x1
	.long	0xfa
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.value	0x17e
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.value	0x17f
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x10
	.long	0x768
	.byte	0x1
	.string	"dyn_string_substring"
	.byte	0x1
	.value	0x199
	.byte	0x1
	.long	0xfa
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x11
	.long	.LASF2
	.byte	0x1
	.value	0x195
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.value	0x196
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"start"
	.byte	0x1
	.value	0x197
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.value	0x198
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.value	0x19a
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF1
	.byte	0x1
	.value	0x19b
	.long	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.string	"dyn_string_eq"
	.byte	0x1
	.value	0x1b4
	.byte	0x1
	.long	0xfa
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x12
	.string	"ds1"
	.byte	0x1
	.value	0x1b2
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"ds2"
	.byte	0x1
	.value	0x1b3
	.long	0x19a
	.byte	0x2
	.byte	0x91
	.sleb128 4
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.long	0x1b0
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7ac
	.long	0x1b4
	.string	"dyn_string_init"
	.long	0x206
	.string	"dyn_string_new"
	.long	0x250
	.string	"dyn_string_delete"
	.long	0x285
	.string	"dyn_string_release"
	.long	0x2d0
	.string	"dyn_string_resize"
	.long	0x331
	.string	"dyn_string_clear"
	.long	0x365
	.string	"dyn_string_copy"
	.long	0x3ab
	.string	"dyn_string_copy_cstr"
	.long	0x404
	.string	"dyn_string_prepend"
	.long	0x44d
	.string	"dyn_string_prepend_cstr"
	.long	0x49e
	.string	"dyn_string_insert"
	.long	0x505
	.string	"dyn_string_insert_cstr"
	.long	0x580
	.string	"dyn_string_insert_char"
	.long	0x5ea
	.string	"dyn_string_append"
	.long	0x633
	.string	"dyn_string_append_cstr"
	.long	0x690
	.string	"dyn_string_append_char"
	.long	0x6de
	.string	"dyn_string_substring"
	.long	0x768
	.string	"dyn_string_eq"
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
	.string	"length"
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"dest"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
