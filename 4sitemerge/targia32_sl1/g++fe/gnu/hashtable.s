	.file	"hashtable.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl gcc_obstack_init
	.type	gcc_obstack_init, @function
gcc_obstack_init:
.LFB15:
	.file 1 "../../../kg++fe/gnu/hashtable.c"
	.loc 1 52 0
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
	.loc 1 53 0
	movl	xmalloc@GOT(%ebx), %eax
	movl	%eax, %edx
	movl	free@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_begin@PLT
	.loc 1 56 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	gcc_obstack_init, .-gcc_obstack_init
	.type	calc_hash, @function
calc_hash:
.LFB16:
	.loc 1 64 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$16, %esp
.LCFI6:
	.loc 1 65 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 66 0
	movl	$0, -4(%ebp)
	.loc 1 69 0
	jmp	.L4
.L5:
	.loc 1 70 0
	movl	-4(%ebp), %eax
	imull	$67, %eax, %edx
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	subl	$113, %eax
	movl	%eax, -4(%ebp)
	addl	$1, 8(%ebp)
.L4:
	.loc 1 69 0
	subl	$1, -8(%ebp)
	cmpl	$-1, -8(%ebp)
	jne	.L5
	.loc 1 72 0
	movl	12(%ebp), %eax
	addl	-4(%ebp), %eax
	.loc 1 74 0
	leave
	ret
.LFE16:
	.size	calc_hash, .-calc_hash
.globl ht_create
	.type	ht_create, @function
ht_create:
.LFB17:
	.loc 1 81 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$36, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 82 0
	movl	8(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	.loc 1 85 0
	movl	$72, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 86 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	$72, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 89 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 90 0
	movl	-8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 92 0
	movl	$4, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 44(%eax)
	.loc 1 93 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 94 0
	movl	-8(%ebp), %eax
	.loc 1 95 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	ht_create, .-ht_create
.globl ht_destroy
	.type	ht_destroy, @function
ht_destroy:
.LFB18:
	.loc 1 102 0
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
.LBB2:
	.loc 1 103 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L11
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L11
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L14
.L11:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L14:
.LBE2:
	.loc 1 104 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 105 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 106 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	ht_destroy, .-ht_destroy
.globl ht_lookup
	.type	ht_lookup, @function
ht_lookup:
.LFB19:
	.loc 1 122 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%edi
.LCFI17:
	pushl	%esi
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$76, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 123 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	calc_hash
	movl	%eax, -60(%ebp)
	.loc 1 129 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	.loc 1 130 0
	movl	-48(%ebp), %eax
	andl	-60(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 134 0
	movl	-60(%ebp), %edx
	movl	%edx, %eax
	sall	$4, %eax
	addl	%edx, %eax
	andl	-48(%ebp), %eax
	orl	$1, %eax
	movl	%eax, -56(%ebp)
	.loc 1 135 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
.L17:
	.loc 1 139 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 141 0
	cmpl	$0, -44(%ebp)
	je	.L18
	.loc 1 144 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-60(%ebp), %eax
	jne	.L20
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L20
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, -68(%ebp)
	movl	%edx, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -76(%ebp)
	cld
	movl	-76(%ebp), %ecx
	cmpl	%ecx, -76(%ebp)
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %edi
	movl	-76(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L20
	.loc 1 147 0
	cmpl	$2, 20(%ebp)
	jne	.L24
.LBB3:
	.loc 1 150 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-36(%ebp), %eax
	jae	.L26
	movl	-40(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-36(%ebp), %eax
	jbe	.L26
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-40(%ebp), %eax
	movl	8(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L24
.L26:
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L24:
.LBE3:
	.loc 1 151 0
	movl	-44(%ebp), %esi
	movl	%esi, -64(%ebp)
	jmp	.L29
.L20:
	.loc 1 154 0
	movl	-56(%ebp), %eax
	addl	-52(%ebp), %eax
	andl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	.loc 1 155 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 156 0
	jmp	.L17
.L18:
	.loc 1 158 0
	cmpl	$0, 20(%ebp)
	jne	.L30
	.loc 1 159 0
	movl	$0, -64(%ebp)
	jmp	.L29
.L30:
	.loc 1 161 0
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -44(%ebp)
	.loc 1 162 0
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	-52(%ebp), %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 164 0
	movl	-44(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 165 0
	movl	-44(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 166 0
	cmpl	$1, 20(%ebp)
	jne	.L32
.LBB4:
	.loc 1 167 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB5:
	movl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L34
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L34:
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	12(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movb	$0, (%eax)
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE5:
.LBB6:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L36
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L36:
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
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpl	%eax, %ecx
	jle	.L38
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L38:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE6:
.LBE4:
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L40
.L32:
	.loc 1 169 0
	movl	-44(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
.L40:
	.loc 1 171 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jb	.L41
	.loc 1 173 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ht_expand
.L41:
	.loc 1 175 0
	movl	-44(%ebp), %eax
	movl	%eax, -64(%ebp)
.L29:
	movl	-64(%ebp), %eax
	.loc 1 176 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	ht_lookup, .-ht_lookup
	.type	ht_expand, @function
ht_expand:
.LFB20:
	.loc 1 183 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$52, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 187 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	addl	%eax, %eax
	movl	%eax, -24(%ebp)
	.loc 1 188 0
	movl	$4, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 189 0
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 191 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 192 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	%eax, -28(%ebp)
.L45:
	.loc 1 194 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L46
.LBB7:
	.loc 1 198 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 199 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$4, %eax
	addl	%edx, %eax
	andl	-20(%ebp), %eax
	orl	$1, %eax
	movl	%eax, -8(%ebp)
	.loc 1 200 0
	movl	-20(%ebp), %eax
	andl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L48:
	.loc 1 204 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L49
	.loc 1 206 0
	movl	-16(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 207 0
	jmp	.L46
.L49:
	.loc 1 210 0
	movl	-8(%ebp), %eax
	addl	-16(%ebp), %eax
	andl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 211 0
	jmp	.L48
.L46:
.LBE7:
	.loc 1 213 0
	addl	$4, -32(%ebp)
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L45
	.loc 1 215 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 216 0
	movl	8(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 217 0
	movl	8(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 52(%edx)
	.loc 1 218 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	ht_expand, .-ht_expand
.globl ht_forall
	.type	ht_forall, @function
ht_forall:
.LFB21:
	.loc 1 227 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	subl	$40, %esp
.LCFI27:
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	addl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L54:
	.loc 1 233 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L55
	.loc 1 235 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	60(%eax), %ecx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	12(%ebp), %eax
	call	*%eax
	testl	%eax, %eax
	je	.L58
.L55:
	.loc 1 238 0
	addl	$4, -8(%ebp)
	movl	-8(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jb	.L54
.L58:
	.loc 1 239 0
	leave
	ret
.LFE21:
	.size	ht_forall, .-ht_forall
	.section	.rodata
.LC0:
	.string	"\nString pool\nentries\t\t%lu\n"
.LC2:
	.string	"identifiers\t%lu (%.2f%%)\n"
.LC3:
	.string	"slots\t\t%lu\n"
	.align 4
.LC4:
	.string	"bytes\t\t%lu%c (%lu%c overhead)\n"
.LC5:
	.string	"table size\t%lu%c\n"
.LC6:
	.string	"coll/search\t%.4f\n"
.LC7:
	.string	"ins/search\t%.4f\n"
	.align 4
.LC8:
	.string	"avg. entry\t%.2f bytes (+/- %.2f)\n"
.LC9:
	.string	"longest entry\t%lu\n"
	.align 8
.LC1:
	.long	0
	.long	1079574528
	.text
.globl ht_dump_statistics
	.type	ht_dump_statistics, @function
ht_dump_statistics:
.LFB22:
	.loc 1 246 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$148, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 259 0
	movl	$0, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 260 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 261 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
.L60:
	.loc 1 263 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L61
.LBB8:
	.loc 1 265 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 267 0
	movl	-12(%ebp), %eax
	addl	%eax, -32(%ebp)
	.loc 1 268 0
	movl	-12(%ebp), %eax
	imull	-12(%ebp), %eax
	addl	%eax, -24(%ebp)
	.loc 1 269 0
	movl	-12(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jbe	.L63
	.loc 1 270 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L63:
	.loc 1 271 0
	addl	$1, -44(%ebp)
.L61:
.LBE8:
	.loc 1 273 0
	addl	$4, -20(%ebp)
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jb	.L60
	.loc 1 275 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 276 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_memory_used@PLT
	subl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	sall	$2, %eax
	movl	%eax, -36(%ebp)
	.loc 1 279 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 281 0
	movl	-44(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fldl	.LC1@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	-48(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	fstpl	12(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 283 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 285 0
	cmpl	$10239, -40(%ebp)
	jbe	.L66
	cmpl	$10485759, -40(%ebp)
	ja	.L68
	movl	$107, -116(%ebp)
	jmp	.L70
.L68:
	movl	$77, -116(%ebp)
.L70:
	movl	-116(%ebp), %eax
	movl	%eax, -120(%ebp)
	jmp	.L71
.L66:
	movl	$32, -120(%ebp)
.L71:
	cmpl	$10239, -40(%ebp)
	jbe	.L72
	cmpl	$10485759, -40(%ebp)
	ja	.L74
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -108(%ebp)
	jmp	.L76
.L74:
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -108(%ebp)
.L76:
	movl	-108(%ebp), %eax
	movl	%eax, -112(%ebp)
	jmp	.L77
.L72:
	movl	-40(%ebp), %edx
	movl	%edx, -112(%ebp)
.L77:
	cmpl	$10239, -32(%ebp)
	jbe	.L78
	cmpl	$10485759, -32(%ebp)
	ja	.L80
	movl	$107, -100(%ebp)
	jmp	.L82
.L80:
	movl	$77, -100(%ebp)
.L82:
	movl	-100(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L83
.L78:
	movl	$32, -104(%ebp)
.L83:
	cmpl	$10239, -32(%ebp)
	jbe	.L84
	cmpl	$10485759, -32(%ebp)
	ja	.L86
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -92(%ebp)
	jmp	.L88
.L86:
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -92(%ebp)
.L88:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L89
.L84:
	movl	-32(%ebp), %edx
	movl	%edx, -96(%ebp)
.L89:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 288 0
	cmpl	$10239, -36(%ebp)
	jbe	.L90
	cmpl	$10485759, -36(%ebp)
	ja	.L92
	movl	$107, -84(%ebp)
	jmp	.L94
.L92:
	movl	$77, -84(%ebp)
.L94:
	movl	-84(%ebp), %edx
	movl	%edx, -88(%ebp)
	jmp	.L95
.L90:
	movl	$32, -88(%ebp)
.L95:
	cmpl	$10239, -36(%ebp)
	jbe	.L96
	cmpl	$10485759, -36(%ebp)
	ja	.L98
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -76(%ebp)
	jmp	.L100
.L98:
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -76(%ebp)
.L100:
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L101
.L96:
	movl	-36(%ebp), %edx
	movl	%edx, -80(%ebp)
.L101:
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 291 0
	movl	-32(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	movl	-48(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-72(%ebp)
	.loc 1 292 0
	fldl	-72(%ebp)
	fmull	-72(%ebp)
	fstpl	-56(%ebp)
	.loc 1 293 0
	movl	-24(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	movl	-48(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-64(%ebp)
	.loc 1 295 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	fstpl	8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 297 0
	movl	-48(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	fstpl	8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 299 0
	fldl	-64(%ebp)
	fsubl	-56(%ebp)
	fstpl	(%esp)
	call	approx_sqrt@PLT
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	fstpl	16(%esp)
	fldl	-72(%ebp)
	fstpl	8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 301 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 305 0
	addl	$148, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	ht_dump_statistics, .-ht_dump_statistics
	.section	.rodata
	.align 8
.LC11:
	.long	-350469331
	.long	1058682594
	.text
.globl approx_sqrt
	.type	approx_sqrt, @function
approx_sqrt:
.LFB23:
	.loc 1 312 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%ebx
.LCFI34:
	subl	$36, %esp
.LCFI35:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 315 0
	fldl	-32(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	ja	.L106
	jmp	.L104
.L106:
	.loc 1 316 0
	call	abort@PLT
.L104:
	.loc 1 317 0
	fldl	-32(%ebp)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	jp	.L114
	je	.L109
.L114:
	jmp	.L107
.L109:
	.loc 1 318 0
	fldz
	fstpl	-40(%ebp)
	jmp	.L110
.L107:
	.loc 1 320 0
	fldl	-32(%ebp)
	fstpl	-24(%ebp)
.L111:
	.loc 1 323 0
	fldl	-24(%ebp)
	fmull	-24(%ebp)
	fsubl	-32(%ebp)
	fldl	-24(%ebp)
	fadd	%st(0), %st
	fdivrp	%st, %st(1)
	fstpl	-16(%ebp)
	.loc 1 324 0
	fldl	-24(%ebp)
	fsubl	-16(%ebp)
	fstpl	-24(%ebp)
	.loc 1 326 0
	fldl	-16(%ebp)
	fldl	.LC11@GOTOFF(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L111
	.loc 1 327 0
	fldl	-24(%ebp)
	fstpl	-40(%ebp)
.L110:
	fldl	-40(%ebp)
	.loc 1 328 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	approx_sqrt, .-approx_sqrt
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
	.long	.LCFI3-.LCFI1
	.byte	0x83
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
	.long	.LCFI4-.LFB16
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
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
	.long	.LCFI11-.LFB18
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI16
	.byte	0x83
	.uleb128 0x5
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
	.long	.LCFI24-.LCFI22
	.byte	0x83
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
	.long	.LCFI25-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
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
	.long	.LCFI28-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI29
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
	.file 2 "/usr/include/stdio.h"
	.file 3 "../../../include/gnu/obstack.h"
	.file 4 "../../../kg++fe/gnu/hashtable.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.section	.debug_info
	.long	0xd28
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/hashtable.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
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
	.uleb128 0x4
	.string	"size_t"
	.byte	0x5
	.byte	0xd6
	.long	0xad
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
	.uleb128 0x4
	.string	"__quad_t"
	.byte	0x7
	.byte	0x3b
	.long	0x121
	.uleb128 0x4
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x16b
	.uleb128 0x2
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x14c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x9e
	.uleb128 0x7
	.long	0x40b
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x483
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x9
	.long	0x41b
	.long	0x9e
	.uleb128 0xa
	.long	0xb4
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x421
	.uleb128 0xb
	.long	0xc9
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0xd
	.long	0x477
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x434
	.uleb128 0x6
	.byte	0x4
	.long	0x190
	.uleb128 0x9
	.long	0x493
	.long	0x9e
	.uleb128 0xa
	.long	0xb4
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x426
	.uleb128 0x9
	.long	0x4a9
	.long	0x9e
	.uleb128 0xa
	.long	0xb4
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4af
	.uleb128 0xf
	.uleb128 0xd
	.long	0x4f8
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x3
	.byte	0xa2
	.uleb128 0x10
	.long	.LASF2
	.byte	0x3
	.byte	0xa3
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"prev"
	.byte	0x3
	.byte	0xa4
	.long	0x4f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"contents"
	.byte	0x3
	.byte	0xa5
	.long	0x40b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4b0
	.uleb128 0x11
	.long	0x62b
	.string	"obstack"
	.byte	0x2c
	.byte	0x2
	.value	0x31b
	.uleb128 0xe
	.string	"chunk_size"
	.byte	0x3
	.byte	0xaa
	.long	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"chunk"
	.byte	0x3
	.byte	0xab
	.long	0x4f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"object_base"
	.byte	0x3
	.byte	0xac
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"next_free"
	.byte	0x3
	.byte	0xad
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"chunk_limit"
	.byte	0x3
	.byte	0xae
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"temp"
	.byte	0x3
	.byte	0xaf
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"alignment_mask"
	.byte	0x3
	.byte	0xb0
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"chunkfun"
	.byte	0x3
	.byte	0xb5
	.long	0x640
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"freefun"
	.byte	0x3
	.byte	0xb6
	.long	0x657
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"extra_arg"
	.byte	0x3
	.byte	0xb7
	.long	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.string	"use_extra_arg"
	.byte	0x3
	.byte	0xbd
	.long	0xad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"maybe_empty_object"
	.byte	0x3
	.byte	0xbe
	.long	0xad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.string	"alloc_failed"
	.byte	0x3
	.byte	0xc2
	.long	0xad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x13
	.long	0x640
	.byte	0x1
	.long	0x4f8
	.uleb128 0x14
	.long	0x188
	.uleb128 0x14
	.long	0x16b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x62b
	.uleb128 0x15
	.long	0x657
	.byte	0x1
	.uleb128 0x14
	.long	0x188
	.uleb128 0x14
	.long	0x4f8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x646
	.uleb128 0x7
	.long	0x69b
	.long	.LASF3
	.byte	0xc
	.byte	0x4
	.byte	0x19
	.uleb128 0xe
	.string	"str"
	.byte	0x4
	.byte	0x1c
	.long	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"len"
	.byte	0x4
	.byte	0x1d
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"hash_value"
	.byte	0x4
	.byte	0x1e
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.string	"hash_table"
	.byte	0x4
	.byte	0x29
	.long	0x6ad
	.uleb128 0xd
	.long	0x74d
	.string	"ht"
	.byte	0x48
	.byte	0x4
	.byte	0x29
	.uleb128 0xe
	.string	"stack"
	.byte	0x4
	.byte	0x32
	.long	0x4fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"entries"
	.byte	0x4
	.byte	0x34
	.long	0x7a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"alloc_node"
	.byte	0x4
	.byte	0x36
	.long	0x7c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"nslots"
	.byte	0x4
	.byte	0x38
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"nelements"
	.byte	0x4
	.byte	0x39
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"pfile"
	.byte	0x4
	.byte	0x3c
	.long	0x7d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"searches"
	.byte	0x4
	.byte	0x3f
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"collisions"
	.byte	0x4
	.byte	0x40
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x4
	.string	"hashnode"
	.byte	0x4
	.byte	0x2a
	.long	0x75d
	.uleb128 0x6
	.byte	0x4
	.long	0x65d
	.uleb128 0x16
	.long	0x7a4
	.string	"ht_lookup_option"
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.uleb128 0x17
	.string	"HT_NO_INSERT"
	.sleb128 0
	.uleb128 0x17
	.string	"HT_ALLOC"
	.sleb128 1
	.uleb128 0x17
	.string	"HT_ALLOCED"
	.sleb128 2
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x74d
	.uleb128 0x13
	.long	0x7ba
	.byte	0x1
	.long	0x74d
	.uleb128 0x14
	.long	0x7ba
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x69b
	.uleb128 0x6
	.byte	0x4
	.long	0x7aa
	.uleb128 0x18
	.string	"cpp_reader"
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0x7c6
	.uleb128 0x4
	.string	"ht_cb"
	.byte	0x4
	.byte	0x51
	.long	0x7e6
	.uleb128 0x6
	.byte	0x4
	.long	0x7ec
	.uleb128 0x13
	.long	0x806
	.byte	0x1
	.long	0xa6
	.uleb128 0x14
	.long	0x7d3
	.uleb128 0x14
	.long	0x74d
	.uleb128 0x14
	.long	0x4a9
	.byte	0x0
	.uleb128 0x19
	.long	0x83f
	.byte	0x1
	.string	"gcc_obstack_init"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1a
	.string	"obstack"
	.byte	0x1
	.byte	0x33
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x4fe
	.uleb128 0x1b
	.long	0x89c
	.string	"calc_hash"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	0xad
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1a
	.string	"str"
	.byte	0x1
	.byte	0x3e
	.long	0x41b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x3f
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.byte	0x41
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0x42
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x1d
	.long	0x8ef
	.byte	0x1
	.string	"ht_create"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x7ba
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x1a
	.string	"order"
	.byte	0x1
	.byte	0x50
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"nslots"
	.byte	0x1
	.byte	0x52
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF4
	.byte	0x1
	.byte	0x53
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x19
	.long	0x946
	.byte	0x1
	.string	"ht_destroy"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0x65
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1c
	.string	"__o"
	.byte	0x1
	.byte	0x67
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"__obj"
	.byte	0x1
	.byte	0x67
	.long	0x188
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0xa8b
	.byte	0x1
	.string	"ht_lookup"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	0x74d
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0x76
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"str"
	.byte	0x1
	.byte	0x77
	.long	0x41b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x78
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.string	"insert"
	.byte	0x1
	.byte	0x79
	.long	0x763
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.string	"hash"
	.byte	0x1
	.byte	0x7b
	.long	0xad
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.string	"hash2"
	.byte	0x1
	.byte	0x7c
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"index"
	.byte	0x1
	.byte	0x7d
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.byte	0x7e
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"node"
	.byte	0x1
	.byte	0x7f
	.long	0x74d
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	0xa1d
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1c
	.string	"__o"
	.byte	0x1
	.byte	0x96
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"__obj"
	.byte	0x1
	.byte	0x96
	.long	0x188
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x20
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1c
	.string	"__h"
	.byte	0x1
	.byte	0xa7
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	0xa60
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1c
	.string	"__o"
	.byte	0x1
	.byte	0xa7
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"__len"
	.byte	0x1
	.byte	0xa7
	.long	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x20
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1c
	.string	"__o1"
	.byte	0x1
	.byte	0xa7
	.long	0x83f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"value"
	.byte	0x1
	.byte	0xa7
	.long	0x188
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.long	0xb3b
	.string	"ht_expand"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xb6
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"nentries"
	.byte	0x1
	.byte	0xb8
	.long	0x7a4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0xb8
	.long	0x7a4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.byte	0xb8
	.long	0x7a4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"size"
	.byte	0x1
	.byte	0xb9
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF5
	.byte	0x1
	.byte	0xb9
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1c
	.string	"index"
	.byte	0x1
	.byte	0xc4
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"hash"
	.byte	0x1
	.byte	0xc4
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"hash2"
	.byte	0x1
	.byte	0xc4
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	0xb9c
	.byte	0x1
	.string	"ht_forall"
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xe0
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"cb"
	.byte	0x1
	.byte	0xe1
	.long	0x7d9
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"v"
	.byte	0x1
	.byte	0xe2
	.long	0x4a9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0xe4
	.long	0x7a4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.byte	0xe4
	.long	0x7a4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x19
	.long	0xcc3
	.byte	0x1
	.string	"ht_dump_statistics"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x1
	.byte	0xf5
	.long	0x7ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"nelts"
	.byte	0x1
	.byte	0xf7
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"nids"
	.byte	0x1
	.byte	0xf7
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"overhead"
	.byte	0x1
	.byte	0xf7
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"headers"
	.byte	0x1
	.byte	0xf7
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.string	"total_bytes"
	.byte	0x1
	.byte	0xf8
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"longest"
	.byte	0x1
	.byte	0xf8
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"sum_of_squares"
	.byte	0x1
	.byte	0xf8
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"exp_len"
	.byte	0x1
	.byte	0xf9
	.long	0xcc3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"exp_len2"
	.byte	0x1
	.byte	0xf9
	.long	0xcc3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"exp2_len"
	.byte	0x1
	.byte	0xf9
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.byte	0xfa
	.long	0x7a4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF2
	.byte	0x1
	.byte	0xfa
	.long	0x7a4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x109
	.long	0xbb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x24
	.long	0xd1b
	.byte	0x1
	.string	"approx_sqrt"
	.byte	0x1
	.value	0x138
	.byte	0x1
	.long	0xcc3
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x137
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x139
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"d"
	.byte	0x1
	.value	0x139
	.long	0xcc3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x26
	.string	"stderr"
	.byte	0x2
	.byte	0x90
	.long	0x47d
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x83
	.value	0x2
	.long	.Ldebug_info0
	.long	0xd2c
	.long	0x806
	.string	"gcc_obstack_init"
	.long	0x89c
	.string	"ht_create"
	.long	0x8ef
	.string	"ht_destroy"
	.long	0x946
	.string	"ht_lookup"
	.long	0xb3b
	.string	"ht_forall"
	.long	0xb9c
	.string	"ht_dump_statistics"
	.long	0xccd
	.string	"approx_sqrt"
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
	.string	"_IO_FILE"
.LASF4:
	.string	"table"
.LASF2:
	.string	"limit"
.LASF0:
	.string	"unsigned int"
.LASF5:
	.string	"sizemask"
.LASF3:
	.string	"ht_identifier"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
