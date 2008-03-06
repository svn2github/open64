	.file	"hash.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl hash_table_init_n
	.type	hash_table_init_n, @function
hash_table_init_n:
.LFB15:
	.file 1 "../../../kgccfe/gnu/hash.c"
	.loc 1 46 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$60, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 49 0
	movl	24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -36(%ebp)
	.loc 1 50 0
	movl	xmalloc@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	-36(%ebp), %ecx
	movl	8(%ebp), %esi
	addl	$20, %esi
	movl	free@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	_obstack_begin@PLT
.LBB2:
	.loc 1 52 0
	movl	8(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -32(%ebp)
.LBB3:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-24(%ebp), %eax
	jge	.L2
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L2:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE3:
.LBB4:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L4
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L4:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L6
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L6:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE4:
.LBE2:
	.loc 1 51 0
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 53 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-36(%ebp), %edx
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 54 0
	movl	8(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 55 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 56 0
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 57 0
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 58 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	hash_table_init_n, .-hash_table_init_n
.globl hash_table_init
	.type	hash_table_init, @function
hash_table_init:
.LFB16:
	.loc 1 70 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%ebx
.LCFI8:
	subl	$20, %esp
.LCFI9:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 71 0
	movl	$1009, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_table_init_n@PLT
	.loc 1 72 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	hash_table_init, .-hash_table_init
.globl hash_table_free
	.type	hash_table_free, @function
hash_table_free:
.LFB17:
	.loc 1 79 0
	pushl	%ebp
.LCFI10:
	movl	%esp, %ebp
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$36, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB5:
	.loc 1 80 0
	movl	8(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L12
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L12
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L16
.L12:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L16:
.LBE5:
	.loc 1 81 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	hash_table_free, .-hash_table_free
.globl hash_lookup
	.type	hash_lookup, @function
hash_lookup:
.LFB18:
	.loc 1 93 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	subl	$40, %esp
.LCFI16:
	.loc 1 98 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -12(%ebp)
	.loc 1 100 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, -4(%ebp)
	.loc 1 101 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L18
.L19:
	.loc 1 102 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L20
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*%ecx
	testb	%al, %al
	je	.L20
	.loc 1 104 0
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L23
.L20:
	.loc 1 101 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L18:
	cmpl	$0, -8(%ebp)
	jne	.L19
	.loc 1 106 0
	cmpl	$0, 16(%ebp)
	jne	.L25
	.loc 1 107 0
	movl	$0, -20(%ebp)
	jmp	.L23
.L25:
	.loc 1 109 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	*%edx
	movl	%eax, -8(%ebp)
	.loc 1 110 0
	cmpl	$0, -8(%ebp)
	jne	.L27
	.loc 1 111 0
	movl	$0, -20(%ebp)
	jmp	.L23
.L27:
	.loc 1 113 0
	cmpl	$0, 20(%ebp)
	je	.L29
	.loc 1 114 0
	movl	8(%ebp), %edx
	addl	$20, %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	20(%ebp), %eax
	call	*%eax
	movl	%eax, 12(%ebp)
.L29:
	.loc 1 116 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 117 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 118 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 119 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 121 0
	movl	-8(%ebp), %ecx
	movl	%ecx, -20(%ebp)
.L23:
	movl	-20(%ebp), %eax
	.loc 1 122 0
	leave
	ret
.LFE18:
	.size	hash_lookup, .-hash_lookup
.globl hash_newfunc
	.type	hash_newfunc, @function
hash_newfunc:
.LFB19:
	.loc 1 131 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$20, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 132 0
	cmpl	$0, 8(%ebp)
	jne	.L33
	.loc 1 133 0
	movl	$12, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_allocate@PLT
	movl	%eax, 8(%ebp)
.L33:
	.loc 1 135 0
	movl	8(%ebp), %eax
	.loc 1 136 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	hash_newfunc, .-hash_newfunc
.globl hash_allocate
	.type	hash_allocate, @function
hash_allocate:
.LFB20:
	.loc 1 144 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%esi
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$48, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB6:
	.loc 1 145 0
	movl	8(%ebp), %eax
	addl	$20, %eax
	movl	%eax, -28(%ebp)
.LBB7:
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
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
.LBE7:
.LBB8:
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
.LBE8:
.LBE6:
	.loc 1 146 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE20:
	.size	hash_allocate, .-hash_allocate
.globl hash_traverse
	.type	hash_traverse, @function
hash_traverse:
.LFB21:
	.loc 1 155 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	subl	$24, %esp
.LCFI28:
	.loc 1 159 0
	movl	$0, -8(%ebp)
	jmp	.L45
.L46:
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L47
.L48:
	.loc 1 161 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-4(%ebp), %eax
	movl	%eax, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L52
	.loc 1 160 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L47:
	cmpl	$0, -4(%ebp)
	jne	.L48
	.loc 1 159 0
	addl	$1, -8(%ebp)
.L45:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L46
.L52:
	.loc 1 163 0
	leave
	ret
.LFE21:
	.size	hash_traverse, .-hash_traverse
.globl string_hash
	.type	string_hash, @function
string_hash:
.LFB22:
	.loc 1 170 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	subl	$16, %esp
.LCFI31:
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 177 0
	movl	$0, -12(%ebp)
	.loc 1 178 0
	movl	$0, -8(%ebp)
	.loc 1 180 0
	jmp	.L54
.L55:
	.loc 1 182 0
	movzbl	-1(%ebp), %edx
	movzbl	-1(%ebp), %eax
	sall	$17, %eax
	leal	(%edx,%eax), %eax
	addl	%eax, -12(%ebp)
	.loc 1 183 0
	movl	-12(%ebp), %eax
	shrl	$2, %eax
	xorl	%eax, -12(%ebp)
	.loc 1 184 0
	addl	$1, -8(%ebp)
.L54:
	.loc 1 180 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	setne	%al
	addl	$1, -16(%ebp)
	testb	%al, %al
	jne	.L55
	.loc 1 187 0
	movl	-8(%ebp), %eax
	sall	$17, %eax
	addl	-8(%ebp), %eax
	addl	%eax, -12(%ebp)
	.loc 1 188 0
	movl	-12(%ebp), %eax
	shrl	$2, %eax
	xorl	%eax, -12(%ebp)
	.loc 1 190 0
	movl	-12(%ebp), %eax
	.loc 1 191 0
	leave
	ret
.LFE22:
	.size	string_hash, .-string_hash
.globl string_compare
	.type	string_compare, @function
string_compare:
.LFB23:
	.loc 1 200 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$20, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 201 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 202 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	string_compare, .-string_compare
.globl string_copy
	.type	string_copy, @function
string_copy:
.LFB24:
	.loc 1 210 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%edi
.LCFI38:
	pushl	%esi
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$44, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 212 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
.LBB9:
	.loc 1 214 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB10:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -48(%ebp)
	movl	$0, %eax
	cld
	movl	-48(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-24(%ebp), %eax
	jge	.L61
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L61:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE10:
.LBB11:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L63
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L63:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.L65
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L65:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE11:
.LBE9:
	movl	%eax, -40(%ebp)
	.loc 1 215 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 217 0
	movl	-40(%ebp), %eax
	.loc 1 218 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	string_copy, .-string_copy
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
	.long	.LCFI5-.LCFI1
	.byte	0x83
	.uleb128 0x5
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
	.long	.LCFI6-.LFB16
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
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI10-.LFB17
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI14-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI17-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI18
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
	.long	.LCFI21-.LFB20
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
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI26-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI29-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI32-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI35-.LCFI33
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
	.long	.LCFI36-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI37-.LCFI36
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI37
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE18:
	.file 2 "../../../kgccfe/gnu/hash.h"
	.file 3 "/usr/include/stdio.h"
	.file 4 "../../../include/gnu/obstack.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI17-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI18-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI32-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI33-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x995
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/hash.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0x99
	.uleb128 0x6
	.long	0x15d
	.long	0x99
	.uleb128 0x7
	.long	0xaf
	.byte	0x3
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x163
	.uleb128 0x8
	.long	0xb6
	.uleb128 0x9
	.long	0x1b2
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x4
	.byte	0xa2
	.uleb128 0xa
	.string	"limit"
	.byte	0x4
	.byte	0xa3
	.long	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"prev"
	.byte	0x4
	.byte	0xa4
	.long	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"contents"
	.byte	0x4
	.byte	0xa5
	.long	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x168
	.uleb128 0xb
	.long	0x2e5
	.string	"obstack"
	.byte	0x2c
	.byte	0x3
	.value	0x31b
	.uleb128 0xa
	.string	"chunk_size"
	.byte	0x4
	.byte	0xaa
	.long	0x139
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"chunk"
	.byte	0x4
	.byte	0xab
	.long	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"object_base"
	.byte	0x4
	.byte	0xac
	.long	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"next_free"
	.byte	0x4
	.byte	0xad
	.long	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"chunk_limit"
	.byte	0x4
	.byte	0xae
	.long	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"temp"
	.byte	0x4
	.byte	0xaf
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"alignment_mask"
	.byte	0x4
	.byte	0xb0
	.long	0xa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"chunkfun"
	.byte	0x4
	.byte	0xb5
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"freefun"
	.byte	0x4
	.byte	0xb6
	.long	0x311
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.string	"extra_arg"
	.byte	0x4
	.byte	0xb7
	.long	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.string	"use_extra_arg"
	.byte	0x4
	.byte	0xbd
	.long	0xa8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"maybe_empty_object"
	.byte	0x4
	.byte	0xbe
	.long	0xa8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"alloc_failed"
	.byte	0x4
	.byte	0xc2
	.long	0xa8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xd
	.long	0x2fa
	.byte	0x1
	.long	0x1b2
	.uleb128 0xe
	.long	0x145
	.uleb128 0xe
	.long	0x139
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x2e5
	.uleb128 0xf
	.long	0x311
	.byte	0x1
	.uleb128 0xe
	.long	0x145
	.uleb128 0xe
	.long	0x1b2
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x300
	.uleb128 0x10
	.string	"hash_table_key"
	.byte	0x2
	.byte	0x1c
	.long	0x145
	.uleb128 0x9
	.long	0x36c
	.string	"hash_entry"
	.byte	0xc
	.byte	0x2
	.byte	0x24
	.uleb128 0xa
	.string	"next"
	.byte	0x2
	.byte	0x26
	.long	0x36c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"key"
	.byte	0x2
	.byte	0x28
	.long	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.byte	0x2b
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x32d
	.uleb128 0x9
	.long	0x3df
	.string	"hash_table"
	.byte	0x40
	.byte	0x2
	.byte	0x31
	.uleb128 0x11
	.long	.LASF2
	.byte	0x2
	.byte	0x33
	.long	0x3df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"size"
	.byte	0x2
	.byte	0x35
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF3
	.byte	0x2
	.byte	0x3d
	.long	0x405
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.long	.LASF1
	.byte	0x2
	.byte	0x41
	.long	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"comp"
	.byte	0x2
	.byte	0x43
	.long	0x43f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"memory"
	.byte	0x2
	.byte	0x45
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x36c
	.uleb128 0xd
	.long	0x3ff
	.byte	0x1
	.long	0x36c
	.uleb128 0xe
	.long	0x36c
	.uleb128 0xe
	.long	0x3ff
	.uleb128 0xe
	.long	0x317
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x372
	.uleb128 0x5
	.byte	0x4
	.long	0x3e5
	.uleb128 0xd
	.long	0x41b
	.byte	0x1
	.long	0xdd
	.uleb128 0xe
	.long	0x317
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x40b
	.uleb128 0xd
	.long	0x436
	.byte	0x1
	.long	0x436
	.uleb128 0xe
	.long	0x317
	.uleb128 0xe
	.long	0x317
	.byte	0x0
	.uleb128 0x2
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x5
	.byte	0x4
	.long	0x421
	.uleb128 0x12
	.long	0x532
	.byte	0x1
	.string	"hash_table_init_n"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x27
	.long	0x3ff
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.byte	0x28
	.long	0x405
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.byte	0x2b
	.long	0x41b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"comp"
	.byte	0x1
	.byte	0x2c
	.long	0x43f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"size"
	.byte	0x1
	.byte	0x2d
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.string	"alloc"
	.byte	0x1
	.byte	0x2f
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x15
	.string	"__h"
	.byte	0x1
	.byte	0x34
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	0x507
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x15
	.string	"__o"
	.byte	0x1
	.byte	0x34
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"__len"
	.byte	0x1
	.byte	0x34
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x16
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x15
	.string	"__o1"
	.byte	0x1
	.byte	0x34
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"value"
	.byte	0x1
	.byte	0x34
	.long	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x1b8
	.uleb128 0x12
	.long	0x597
	.byte	0x1
	.string	"hash_table_init"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x40
	.long	0x3ff
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.byte	0x41
	.long	0x405
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.byte	0x44
	.long	0x41b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"comp"
	.byte	0x1
	.byte	0x45
	.long	0x43f
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x12
	.long	0x5f3
	.byte	0x1
	.string	"hash_table_free"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x4e
	.long	0x3ff
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x15
	.string	"__o"
	.byte	0x1
	.byte	0x50
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"__obj"
	.byte	0x1
	.byte	0x50
	.long	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	0x683
	.byte	0x1
	.string	"hash_lookup"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0x36c
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x58
	.long	0x3ff
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x59
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"create"
	.byte	0x1
	.byte	0x5a
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"copy"
	.byte	0x1
	.byte	0x5b
	.long	0x698
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x19
	.long	.LASF1
	.byte	0x1
	.byte	0x5e
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"hashp"
	.byte	0x1
	.byte	0x5f
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.string	"index"
	.byte	0x1
	.byte	0x60
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.long	0x698
	.byte	0x1
	.long	0x317
	.uleb128 0xe
	.long	0x532
	.uleb128 0xe
	.long	0x317
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x683
	.uleb128 0x18
	.long	0x6ef
	.byte	0x1
	.string	"hash_newfunc"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.long	0x36c
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x14
	.string	"entry"
	.byte	0x1
	.byte	0x80
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x81
	.long	0x3ff
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x82
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x18
	.long	0x7a1
	.byte	0x1
	.string	"hash_allocate"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.long	0x145
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x8e
	.long	0x3ff
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"size"
	.byte	0x1
	.byte	0x8f
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x15
	.string	"__h"
	.byte	0x1
	.byte	0x91
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	0x776
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x15
	.string	"__o"
	.byte	0x1
	.byte	0x91
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"__len"
	.byte	0x1
	.byte	0x91
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x16
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x15
	.string	"__o1"
	.byte	0x1
	.byte	0x91
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"value"
	.byte	0x1
	.byte	0x91
	.long	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	0x809
	.byte	0x1
	.string	"hash_traverse"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.byte	0x98
	.long	0x3ff
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"func"
	.byte	0x1
	.byte	0x99
	.long	0x81e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"info"
	.byte	0x1
	.byte	0x9a
	.long	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x9d
	.long	0x36c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xd
	.long	0x81e
	.byte	0x1
	.long	0x436
	.uleb128 0xe
	.long	0x36c
	.uleb128 0xe
	.long	0x317
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x809
	.uleb128 0x18
	.long	0x88a
	.byte	0x1
	.string	"string_hash"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	0xdd
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0xa9
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xab
	.long	0x15d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF1
	.byte	0x1
	.byte	0xac
	.long	0xdd
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0xad
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0xae
	.long	0xa8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x8cd
	.byte	0x1
	.string	"string_compare"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0x436
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x14
	.string	"k1"
	.byte	0x1
	.byte	0xc6
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"k2"
	.byte	0x1
	.byte	0xc7
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.string	"string_copy"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	0x317
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x14
	.string	"memory"
	.byte	0x1
	.byte	0xd0
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0xd1
	.long	0x317
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"new"
	.byte	0x1
	.byte	0xd3
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"string"
	.byte	0x1
	.byte	0xd4
	.long	0x147
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x15
	.string	"__h"
	.byte	0x1
	.byte	0xd6
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	0x96d
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x15
	.string	"__o"
	.byte	0x1
	.byte	0xd6
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"__len"
	.byte	0x1
	.byte	0xd6
	.long	0xa1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x16
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x15
	.string	"__o1"
	.byte	0x1
	.byte	0xd6
	.long	0x532
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"value"
	.byte	0x1
	.byte	0xd6
	.long	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xc4
	.value	0x2
	.long	.Ldebug_info0
	.long	0x999
	.long	0x445
	.string	"hash_table_init_n"
	.long	0x538
	.string	"hash_table_init"
	.long	0x597
	.string	"hash_table_free"
	.long	0x5f3
	.string	"hash_lookup"
	.long	0x69e
	.string	"hash_newfunc"
	.long	0x6ef
	.string	"hash_allocate"
	.long	0x7a1
	.string	"hash_traverse"
	.long	0x824
	.string	"string_hash"
	.long	0x88a
	.string	"string_compare"
	.long	0x8cd
	.string	"string_copy"
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
	.string	"table"
.LASF3:
	.string	"newfunc"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"hash"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
