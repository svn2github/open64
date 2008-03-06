	.file	"repo.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.13097, @object
	.size	__FUNCTION__.13097, 12
__FUNCTION__.13097:
	.string	"repo_get_id"
.LC0:
	.string	"../../../kg++fe/gnu/cp/repo.c"
	.text
	.type	repo_get_id, @function
repo_get_id:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/repo.c"
	.loc 1 96 0
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
	.loc 1 97 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L2
.LBB2:
	.loc 1 104 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L4
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L6
.L4:
	.loc 1 105 0
	leal	__FUNCTION__.13097@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$105, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L6:
	.loc 1 107 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	get_vtbl_decl_for_binfo@PLT
	movl	%eax, -8(%ebp)
	.loc 1 109 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 110 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 111 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L8
.L2:
.LBE2:
	.loc 1 113 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, -24(%ebp)
.L8:
	movl	-24(%ebp), %eax
	.loc 1 114 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	repo_get_id, .-repo_get_id
	.section	.rodata
	.type	__FUNCTION__.13121, @object
	.size	__FUNCTION__.13121, 19
__FUNCTION__.13121:
	.string	"repo_template_used"
	.text
.globl repo_template_used
	.type	repo_template_used, @function
repo_template_used:
.LFB16:
	.loc 1 122 0
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
	.loc 1 125 0
	movl	flag_use_repository@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L30
	.loc 1 128 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_get_id
	movl	%eax, -8(%ebp)
	.loc 1 129 0
	cmpl	$0, -8(%ebp)
	je	.L30
	.loc 1 132 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	jne	.L14
	.loc 1 134 0
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L18
	.loc 1 135 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_class_instantiated@PLT
	jmp	.L18
.L14:
	.loc 1 137 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$100, %al
	jne	.L19
	.loc 1 139 0
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L18
	.loc 1 144 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L23
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L25
.L23:
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	je	.L25
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L25
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L28
.L25:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L28:
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_decl_instantiated@PLT
	jmp	.L18
.L19:
	.loc 1 149 0
	leal	__FUNCTION__.13121@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$149, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L18:
	.loc 1 151 0
	movl	-8(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L30
	.loc 1 153 0
	movl	-8(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$8, %eax
	movb	%al, 11(%edx)
	.loc 1 154 0
	movl	pending_repo@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, pending_repo@GOTOFF(%ebx)
.L30:
	.loc 1 156 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	repo_template_used, .-repo_template_used
.globl repo_template_instantiated
	.type	repo_template_instantiated, @function
repo_template_instantiated:
.LFB17:
	.loc 1 206 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$24, %esp
.LCFI10:
	.loc 1 207 0
	cmpl	$0, 12(%ebp)
	jne	.L35
.LBB3:
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	repo_get_id
	movl	%eax, -4(%ebp)
	.loc 1 210 0
	cmpl	$0, -4(%ebp)
	je	.L35
	.loc 1 211 0
	movl	-4(%ebp), %eax
	movzbl	11(%eax), %edx
	orl	$16, %edx
	movb	%dl, 11(%eax)
.L35:
.LBE3:
	.loc 1 213 0
	leave
	ret
.LFE17:
	.size	repo_template_instantiated, .-repo_template_instantiated
	.type	extract_string, @function
extract_string:
.LFB18:
	.loc 1 220 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%esi
.LCFI13:
	pushl	%ebx
.LCFI14:
	subl	$64, %esp
.LCFI15:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 221 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 222 0
	movl	$0, -40(%ebp)
	.loc 1 223 0
	movl	$0, -36(%ebp)
	jmp	.L61
.L37:
.L61:
.LBB4:
	.loc 1 227 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -9(%ebp)
	.loc 1 228 0
	cmpb	$0, -9(%ebp)
	je	.L38
	.loc 1 230 0
	addl	$1, -44(%ebp)
	.loc 1 231 0
	cmpl	$0, -40(%ebp)
	je	.L40
.LBB5:
	.loc 1 232 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L42
	movl	$1, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L42:
	movl	-32(%ebp), %eax
	movl	12(%eax), %edx
	movzbl	-9(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L37
.L40:
.LBE5:
	.loc 1 233 0
	cmpl	$0, -36(%ebp)
	jne	.L45
	cmpb	$32, -9(%ebp)
	je	.L38
.L45:
	.loc 1 235 0
	cmpl	$0, -36(%ebp)
	jne	.L47
	cmpb	$92, -9(%ebp)
	jne	.L47
	.loc 1 236 0
	movl	$1, -40(%ebp)
	.loc 1 235 0
	jmp	.L37
.L47:
	.loc 1 237 0
	cmpb	$39, -9(%ebp)
	jne	.L50
	.loc 1 238 0
	cmpl	$0, -36(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	jmp	.L37
.L50:
.LBB6:
	.loc 1 240 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L52
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L52:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movzbl	-9(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 241 0
	jmp	.L37
.L38:
.LBE6:
.LBE4:
.LBB7:
	.loc 1 243 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L54
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L54:
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movb	$0, (%eax)
	leal	1(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE7:
	.loc 1 244 0
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
.LBB8:
	.loc 1 245 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-16(%ebp), %eax
	jne	.L56
	movl	-20(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L56:
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
	jle	.L58
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L58:
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
.LBE8:
	.loc 1 246 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	extract_string, .-extract_string
	.section	.rodata
.LC1:
	.string	"COLLECT_GCC_OPTIONS"
.LC2:
	.string	"-o"
.LC3:
	.string	"-c"
.LC4:
	.string	"-frepo must be used with -c"
	.text
	.type	get_base_filename, @function
get_base_filename:
.LFB19:
	.loc 1 251 0
	pushl	%ebp
.LCFI16:
	movl	%esp, %ebp
.LCFI17:
	pushl	%edi
.LCFI18:
	pushl	%esi
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$60, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 252 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -28(%ebp)
	.loc 1 253 0
	movl	$0, -24(%ebp)
	.loc 1 254 0
	movl	$0, -20(%ebp)
	.loc 1 256 0
	jmp	.L78
.L64:
.LBB9:
	.loc 1 258 0
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_string
	movl	%eax, -16(%ebp)
	.loc 1 260 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, -40(%ebp)
	movl	$3, -44(%ebp)
	cld
	movl	-36(%ebp), %esi
	movl	-40(%ebp), %edi
	movl	-44(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L65
	.loc 1 261 0
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_string
	movl	%eax, -24(%ebp)
	jmp	.L63
.L65:
	.loc 1 262 0
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -52(%ebp)
	movl	$3, -56(%ebp)
	cld
	movl	-48(%ebp), %esi
	movl	-52(%ebp), %edi
	movl	-56(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L63
	.loc 1 263 0
	movl	$1, -20(%ebp)
.L63:
.L78:
.LBE9:
	.loc 1 256 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L68
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L64
.L68:
	.loc 1 266 0
	cmpl	$0, -20(%ebp)
	je	.L70
	cmpl	$0, -24(%ebp)
	je	.L70
	.loc 1 267 0
	movl	-24(%ebp), %esi
	movl	%esi, -32(%ebp)
	jmp	.L73
.L70:
	.loc 1 269 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L74
	cmpl	$0, -20(%ebp)
	jne	.L74
	.loc 1 271 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 272 0
	movl	flag_use_repository@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 273 0
	movl	$0, -32(%ebp)
	jmp	.L73
.L74:
	.loc 1 276 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	lbasename@PLT
	movl	%eax, -32(%ebp)
.L73:
	movl	-32(%ebp), %eax
	.loc 1 277 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	get_base_filename, .-get_base_filename
	.section	.rodata
.LC5:
	.string	"r"
	.text
	.type	open_repo_file, @function
open_repo_file:
.LFB20:
	.loc 1 282 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%edi
.LCFI24:
	pushl	%esi
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$44, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 284 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_base_filename
	movl	%eax, -16(%ebp)
	.loc 1 286 0
	cmpl	$0, -16(%ebp)
	je	.L84
	.loc 1 289 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	lbasename@PLT
	movl	%eax, -32(%ebp)
	.loc 1 290 0
	movl	$46, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -32(%ebp)
	.loc 1 291 0
	cmpl	$0, -32(%ebp)
	jne	.L82
	.loc 1 292 0
	movl	-16(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -36(%ebp)
	movl	$0, %eax
	cld
	movl	-36(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	-16(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -32(%ebp)
.L82:
	.loc 1 294 0
	movl	-32(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$5, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, repo_name@GOTOFF(%ebx)
	.loc 1 295 0
	movl	-32(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%eax, %ecx
	movl	repo_name@GOTOFF(%ebx), %eax
	movl	-16(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 296 0
	movl	-32(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	repo_name@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$1869640238, (%eax)
	movb	$0, 4(%eax)
	.loc 1 298 0
	movl	repo_name@GOTOFF(%ebx), %edx
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, repo_file@GOTOFF(%ebx)
.L84:
	.loc 1 299 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE20:
	.size	open_repo_file, .-open_repo_file
	.type	afgets, @function
afgets:
.LFB21:
	.loc 1 304 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%esi
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$48, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB10:
	.loc 1 306 0
	jmp	.L86
.L87:
	.loc 1 307 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L88
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L88:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-32(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.L86:
.LBE10:
	.loc 1 306 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IO_getc@PLT
	movl	%eax, -32(%ebp)
	cmpl	$-1, -32(%ebp)
	je	.L90
	cmpl	$10, -32(%ebp)
	jne	.L87
.L90:
.LBB11:
	.loc 1 308 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
.LBE11:
	testl	%eax, %eax
	jne	.L92
	.loc 1 309 0
	movl	$0, -44(%ebp)
	jmp	.L94
.L92:
.LBB12:
	.loc 1 310 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L95
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L95:
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movb	$0, (%eax)
	leal	1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE12:
.LBB13:
	.loc 1 311 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	-12(%ebp), %eax
	jne	.L97
	movl	-16(%ebp), %eax
	movzbl	40(%eax), %edx
	orl	$2, %edx
	movb	%dl, 40(%eax)
.L97:
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
	jle	.L99
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
.L99:
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
.LBE13:
	movl	%eax, -44(%ebp)
.L94:
	movl	-44(%ebp), %eax
	.loc 1 312 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE21:
	.size	afgets, .-afgets
	.section	.rodata
	.align 4
.LC6:
	.string	"mysterious repository information in %s"
	.text
.globl init_repo
	.type	init_repo, @function
init_repo:
.LFB22:
	.loc 1 317 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$52, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 320 0
	movl	flag_use_repository@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L121
	.loc 1 323 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 325 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	open_repo_file
	.loc 1 327 0
	movl	repo_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L121
	.loc 1 330 0
	jmp	.L122
.L107:
	.loc 1 332 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -40(%ebp)
	cmpl	$14, -40(%ebp)
	ja	.L108
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L113@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L113:
	.long	.L109@GOTOFF
	.long	.L108@GOTOFF
	.long	.L110@GOTOFF
	.long	.L111@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L108@GOTOFF
	.long	.L112@GOTOFF
	.long	.L108@GOTOFF
	.long	.L110@GOTOFF
	.text
.L109:
	.loc 1 335 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, old_args@GOTOFF(%ebx)
	.loc 1 336 0
	jmp	.L114
.L111:
	.loc 1 338 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, old_dir@GOTOFF(%ebx)
	.loc 1 339 0
	jmp	.L114
.L112:
	.loc 1 341 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, old_main@GOTOFF(%ebx)
	.loc 1 342 0
	jmp	.L114
.L110:
.LBB14:
	.loc 1 346 0
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -20(%ebp)
	.loc 1 349 0
	movl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$67, %al
	jne	.L115
	.loc 1 351 0
	movl	-20(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movb	%al, 11(%edx)
	.loc 1 352 0
	movl	global_trees@GOT(%ebx), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L117
.L115:
	.loc 1 355 0
	movl	$0, -16(%ebp)
.L117:
	.loc 1 357 0
	movl	original_repo@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, original_repo@GOTOFF(%ebx)
	.loc 1 359 0
	jmp	.L114
.L108:
.LBE14:
	.loc 1 361 0
	movl	repo_name@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L114:
.LBB15:
	.loc 1 363 0
	leal	temporary_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L118
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L118
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L106
.L118:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L106:
.L122:
.LBE15:
	.loc 1 330 0
	movl	repo_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	afgets
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	.L107
.L121:
	.loc 1 365 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	init_repo, .-init_repo
	.section	.rodata
.LC7:
	.string	"w"
	.align 4
.LC8:
	.string	"can't create repository information file `%s'"
	.text
	.type	reopen_repo_file_for_write, @function
reopen_repo_file_for_write:
.LFB23:
	.loc 1 369 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$20, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 370 0
	movl	repo_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L124
	.loc 1 371 0
	movl	repo_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L124:
	.loc 1 372 0
	movl	repo_name@GOTOFF(%ebx), %edx
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, repo_file@GOTOFF(%ebx)
	.loc 1 374 0
	movl	repo_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L128
	.loc 1 376 0
	movl	repo_name@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 377 0
	movl	flag_use_repository@GOT(%ebx), %eax
	movl	$0, (%eax)
.L128:
	.loc 1 379 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	reopen_repo_file_for_write, .-reopen_repo_file_for_write
	.section	.rodata
.LC9:
	.string	"M %s\n"
.LC10:
	.string	"D %s\n"
.LC11:
	.string	"A %s\n"
.LC12:
	.string	"%c %s\n"
	.text
.globl finish_repo
	.type	finish_repo, @function
finish_repo:
.LFB24:
	.loc 1 385 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$52, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 387 0
	movl	$0, -24(%ebp)
	.loc 1 390 0
	movl	flag_use_repository@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L166
	.loc 1 398 0
	movl	original_repo@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L132
.L133:
	.loc 1 400 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L134
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L136
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L136
.L134:
	.loc 1 403 0
	movl	$1, -24(%ebp)
	.loc 1 404 0
	jmp	.L138
.L136:
	.loc 1 406 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movzbl	11(%edx), %eax
	andl	$-9, %eax
	movb	%al, 11(%edx)
	.loc 1 398 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L132:
	cmpl	$0, -28(%ebp)
	jne	.L133
.L138:
	.loc 1 411 0
	cmpl	$0, -24(%ebp)
	jne	.L139
	.loc 1 412 0
	movl	pending_repo@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L141
.L142:
	.loc 1 414 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L143
	.loc 1 416 0
	movl	$1, -24(%ebp)
	.loc 1 417 0
	jmp	.L139
.L143:
	.loc 1 412 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L141:
	cmpl	$0, -28(%ebp)
	jne	.L142
.L139:
	.loc 1 421 0
	call	getpwd@PLT
	movl	%eax, -20(%ebp)
	.loc 1 422 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -16(%ebp)
	.loc 1 424 0
	cmpl	$0, -24(%ebp)
	jne	.L145
	movl	pending_repo@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L145
	.loc 1 425 0
	movl	main_input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	old_main@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L148
	movl	old_dir@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L148
	cmpl	$0, -16(%ebp)
	sete	%dl
	movl	old_args@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	jne	.L148
	cmpl	$0, -16(%ebp)
	je	.L145
	movl	old_args@GOTOFF(%ebx), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L145
.L148:
	.loc 1 429 0
	movl	$1, -24(%ebp)
.L145:
	.loc 1 431 0
	cmpl	$0, -24(%ebp)
	je	.L153
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L153
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	jne	.L153
	.loc 1 434 0
	call	reopen_repo_file_for_write
	.loc 1 436 0
	movl	repo_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L153
	.loc 1 439 0
	movl	main_input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	repo_file@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 440 0
	movl	repo_file@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 441 0
	cmpl	$0, -16(%ebp)
	je	.L158
	.loc 1 442 0
	movl	repo_file@GOTOFF(%ebx), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC11@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	fprintf@PLT
.L158:
	.loc 1 444 0
	movl	pending_repo@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L160
.L161:
.LBB16:
	.loc 1 446 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 447 0
	movl	-12(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L162
	movb	$67, -37(%ebp)
	jmp	.L164
.L162:
	movb	$79, -37(%ebp)
.L164:
	movzbl	-37(%ebp), %eax
	movb	%al, -5(%ebp)
	.loc 1 449 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	-5(%ebp), %edx
	movl	repo_file@GOTOFF(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.LBE16:
	.loc 1 444 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L160:
	cmpl	$0, -28(%ebp)
	jne	.L161
.L153:
	.loc 1 453 0
	movl	repo_file@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L166
	.loc 1 454 0
	movl	repo_file@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L166:
	.loc 1 455 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	finish_repo, .-finish_repo
.globl gt_ggc_r_gt_cp_repo_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_cp_repo_h, @object
	.size	gt_ggc_r_gt_cp_repo_h, 48
gt_ggc_r_gt_cp_repo_h:
	.long	original_repo
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	pending_repo
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	0
	.long	0
	.long	0
	.long	0
	.local	pending_repo
	.comm	pending_repo,4,4
	.local	original_repo
	.comm	original_repo,4,4
	.local	repo_name
	.comm	repo_name,4,4
	.local	repo_file
	.comm	repo_file,4,4
	.local	old_args
	.comm	old_args,4,4
	.local	old_dir
	.comm	old_dir,4,4
	.local	old_main
	.comm	old_main,4,4
	.local	temporary_obstack
	.comm	temporary_obstack,44,32
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI8-.LFB17
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
	.long	.LCFI15-.LCFI12
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI16-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI17
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
	.long	.LCFI22-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI23
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
	.long	.LCFI28-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI29
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI33-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI37-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI38
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
	.long	.LCFI41-.LFB24
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
.LEFDE18:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/hashtable.h"
	.file 5 "../../../kg++fe/gnu/location.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/function.h"
	.file 8 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 9 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 10 "../../../kg++fe/gnu/c-common.h"
	.file 11 "../../../kg++fe/gnu/varray.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kg++fe/omp_types.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "../../../include/gnu/obstack.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "../../../kg++fe/gnu/input.h"
	.file 19 "../../../kg++fe/gnu/diagnostic.h"
	.file 20 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 21 "../../../kg++fe/gnu/MIPS/gt-cp-repo.h"
	.file 22 "../../../kg++fe/gnu/ggc.h"
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7724
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/repo.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.string	"rtx_def"
	.byte	0x1
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0xc4
	.uleb128 0x3
	.byte	0x4
	.long	0xca
	.uleb128 0x4
	.string	"rtvec_def"
	.byte	0x1
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0xe2
	.uleb128 0x3
	.byte	0x4
	.long	0xe8
	.uleb128 0x5
	.long	0x1c2
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x3029
	.uleb128 0x7
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x3348
	.uleb128 0x7
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3390
	.uleb128 0x7
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x34b3
	.uleb128 0x7
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x33f1
	.uleb128 0x7
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x345e
	.uleb128 0x7
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x36e8
	.uleb128 0x7
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x4766
	.uleb128 0x7
	.string	"type"
	.byte	0x3
	.value	0x88f
	.long	0x394d
	.uleb128 0x7
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x371f
	.uleb128 0x7
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x3766
	.uleb128 0x7
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x37b7
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x3803
	.uleb128 0x7
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x5167
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c8
	.uleb128 0x8
	.long	0x1cd
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2ae
	.string	"mips_args"
	.byte	0x40
	.byte	0x8
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0x8
	.value	0xaad
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0x8
	.value	0xab0
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0x8
	.value	0xab5
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0x8
	.value	0xab8
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0x8
	.value	0xabb
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0x8
	.value	0xac8
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0x8
	.value	0xacb
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0x8
	.value	0xad3
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0x8
	.value	0xad4
	.long	0x2b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x2c5
	.long	0x9c
	.uleb128 0xe
	.long	0x2c5
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0x8
	.value	0xad5
	.long	0x1dc
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x14
	.byte	0x2b
	.long	0x2fa
	.uleb128 0x3
	.byte	0x4
	.long	0x1cd
	.uleb128 0x2
	.string	"va_list"
	.byte	0x14
	.byte	0x69
	.long	0x2e4
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x2ae
	.uleb128 0x9
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x9
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x9
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x9
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x9
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x9
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x11
	.byte	0x3b
	.long	0x375
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x11
	.byte	0x90
	.long	0x3bf
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x11
	.byte	0x91
	.long	0x3a0
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x1cd
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x3f0
	.uleb128 0x11
	.long	0x66b
	.long	.LASF2
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xb
	.string	"_flags"
	.byte	0x10
	.value	0x10c
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_IO_read_ptr"
	.byte	0x10
	.value	0x111
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_IO_read_end"
	.byte	0x10
	.value	0x112
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"_IO_read_base"
	.byte	0x10
	.value	0x113
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"_IO_write_base"
	.byte	0x10
	.value	0x114
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"_IO_write_ptr"
	.byte	0x10
	.value	0x115
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"_IO_write_end"
	.byte	0x10
	.value	0x116
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"_IO_buf_base"
	.byte	0x10
	.value	0x117
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"_IO_buf_end"
	.byte	0x10
	.value	0x118
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"_IO_save_base"
	.byte	0x10
	.value	0x11a
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"_IO_backup_base"
	.byte	0x10
	.value	0x11b
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"_IO_save_end"
	.byte	0x10
	.value	0x11c
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"_markers"
	.byte	0x10
	.value	0x11e
	.long	0x6ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"_chain"
	.byte	0x10
	.value	0x120
	.long	0x6f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"_fileno"
	.byte	0x10
	.value	0x122
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"_flags2"
	.byte	0x10
	.value	0x126
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"_old_offset"
	.byte	0x10
	.value	0x128
	.long	0x3b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"_cur_column"
	.byte	0x10
	.value	0x12c
	.long	0x32e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"_vtable_offset"
	.byte	0x10
	.value	0x12d
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.string	"_shortbuf"
	.byte	0x10
	.value	0x12e
	.long	0x6fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xb
	.string	"_lock"
	.byte	0x10
	.value	0x132
	.long	0x70b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"_offset"
	.byte	0x10
	.value	0x13b
	.long	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"__pad1"
	.byte	0x10
	.value	0x144
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"__pad2"
	.byte	0x10
	.value	0x145
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"__pad3"
	.byte	0x10
	.value	0x146
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"__pad4"
	.byte	0x10
	.value	0x147
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"__pad5"
	.byte	0x10
	.value	0x148
	.long	0x30f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"_mode"
	.byte	0x10
	.value	0x14a
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"_unused2"
	.byte	0x10
	.value	0x14c
	.long	0x711
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xd
	.long	0x67b
	.long	0x1cd
	.uleb128 0xe
	.long	0x2c5
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x681
	.uleb128 0x8
	.long	0x31d
	.uleb128 0x3
	.byte	0x4
	.long	0x31d
	.uleb128 0x3
	.byte	0x4
	.long	0x692
	.uleb128 0x12
	.long	0x69e
	.byte	0x1
	.uleb128 0x13
	.long	0x3dc
	.byte	0x0
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x10
	.byte	0xb0
	.uleb128 0x15
	.long	0x6ef
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x10
	.byte	0xb6
	.uleb128 0x16
	.string	"_next"
	.byte	0x10
	.byte	0xb7
	.long	0x6ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"_sbuf"
	.byte	0x10
	.byte	0xb8
	.long	0x6f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"_pos"
	.byte	0x10
	.byte	0xbc
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ac
	.uleb128 0x3
	.byte	0x4
	.long	0x3f0
	.uleb128 0xd
	.long	0x70b
	.long	0x1cd
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69e
	.uleb128 0xd
	.long	0x721
	.long	0x1cd
	.uleb128 0xe
	.long	0x2c5
	.byte	0x27
	.byte	0x0
	.uleb128 0x17
	.long	0x96a
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.uleb128 0x18
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x18
	.string	"BImode"
	.sleb128 1
	.uleb128 0x18
	.string	"QImode"
	.sleb128 2
	.uleb128 0x18
	.string	"HImode"
	.sleb128 3
	.uleb128 0x18
	.string	"SImode"
	.sleb128 4
	.uleb128 0x18
	.string	"DImode"
	.sleb128 5
	.uleb128 0x18
	.string	"TImode"
	.sleb128 6
	.uleb128 0x18
	.string	"OImode"
	.sleb128 7
	.uleb128 0x18
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x18
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x18
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x18
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x18
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x18
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x18
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x18
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x18
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x18
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x18
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x18
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x18
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x18
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x18
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x18
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x18
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x18
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x18
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x18
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x18
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x18
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x18
	.string	"COImode"
	.sleb128 30
	.uleb128 0x18
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x18
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x18
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x18
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x18
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x18
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x18
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x18
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x18
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x18
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x18
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x18
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x18
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x18
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x18
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x18
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x18
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x18
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x18
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x18
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x18
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x18
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x18
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x18
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x15
	.long	0x99c
	.string	"location_s"
	.byte	0x8
	.byte	0x5
	.byte	0x1c
	.uleb128 0x16
	.string	"file"
	.byte	0x5
	.byte	0x1e
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"line"
	.byte	0x5
	.byte	0x21
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x5
	.byte	0x23
	.long	0x96a
	.uleb128 0x17
	.long	0x12d0
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x18
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x18
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x18
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x18
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x18
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x18
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x18
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x18
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x18
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x18
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x18
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x18
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x18
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x18
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x18
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x18
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x18
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x18
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x18
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x18
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x18
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x18
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x18
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x18
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x18
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x18
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x18
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x18
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x18
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x18
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x18
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x18
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x18
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x18
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x18
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x18
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x18
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x18
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x18
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x18
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x18
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x18
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x18
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x18
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x18
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x18
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x18
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x18
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x18
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x18
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x18
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x18
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x18
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x18
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x18
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x18
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x18
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x18
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x18
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x18
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x18
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x18
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x18
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x18
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x18
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x18
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x18
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x18
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x18
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x18
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x18
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x18
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x18
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x18
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x18
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x18
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x18
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x18
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x18
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x18
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x18
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x18
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x18
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x18
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x18
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x18
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x18
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x18
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x18
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x18
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x18
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x18
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x18
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x18
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x18
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x18
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x18
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x18
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x18
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x18
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x18
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x18
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x18
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x18
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x18
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x18
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x18
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x18
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x18
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x18
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x18
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x18
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x18
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x18
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x18
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x18
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x18
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x18
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x18
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x18
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x18
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x18
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x18
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x18
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x18
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x18
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x18
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x18
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x18
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x18
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x18
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x18
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x18
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x18
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x18
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x18
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x18
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x18
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x18
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x18
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x18
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x18
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x18
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x18
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x18
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x18
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x18
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x18
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x18
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x18
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x18
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x18
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x2ae
	.uleb128 0x15
	.long	0x1320
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x16
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x132a
	.uleb128 0x4
	.string	"st"
	.byte	0x1
	.uleb128 0x19
	.long	0x137f
	.long	.LASF3
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x18
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x18
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x18
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x18
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x17
	.long	0x3029
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x18
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x18
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x18
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x18
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x18
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x18
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x18
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x18
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x18
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x18
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x18
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x18
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x18
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x18
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x18
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x18
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x18
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x18
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x18
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x18
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x18
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x18
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x18
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x18
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x18
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x18
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x18
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x18
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x18
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x18
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x18
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x18
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x18
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x18
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x18
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x18
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x18
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x18
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x18
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x18
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x18
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x18
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x18
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x18
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x18
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x18
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x18
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x18
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x18
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x18
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x18
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x18
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x18
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x18
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x18
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x18
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x18
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x18
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x18
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x18
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x18
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x18
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x18
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x18
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x18
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x18
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x18
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x18
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x18
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x18
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x18
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x18
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x18
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x18
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x18
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x18
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x18
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x18
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x18
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x18
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x18
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x18
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x18
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x18
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x18
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x18
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x18
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x18
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x18
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x18
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x18
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x18
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x18
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x18
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x18
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x18
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x18
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x18
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x18
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x18
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x18
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x18
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x18
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x18
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x18
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x18
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x18
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x18
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x18
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x18
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x18
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x18
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x18
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x18
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x18
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x18
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x18
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x18
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x18
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x18
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x18
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x18
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x18
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x18
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x18
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x18
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x18
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x18
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x18
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x18
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x18
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x18
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x18
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x18
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x18
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x18
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x18
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x18
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x18
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x18
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x18
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x18
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x18
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x18
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x18
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x18
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x18
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x18
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x18
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x18
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x18
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x18
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x18
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x18
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x18
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x18
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x18
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x18
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x18
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x18
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x18
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x18
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x18
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x18
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x18
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x18
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x18
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x18
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x18
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x18
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x18
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x18
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x18
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x18
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x18
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x18
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x18
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x18
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x18
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x18
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x18
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x18
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x18
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x18
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x18
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x18
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x18
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x18
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x18
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x18
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x18
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x18
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x18
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x18
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x18
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x18
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x18
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x18
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x18
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x18
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x18
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x18
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x18
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x18
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x18
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x18
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x18
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x18
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x18
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x18
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x18
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x18
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x18
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x18
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x18
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x18
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x18
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x18
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x18
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x18
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x18
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x18
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x15
	.long	0x330c
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x16
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"type"
	.byte	0x3
	.byte	0x8e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x9ae
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF4
	.byte	0x3
	.byte	0xa8
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x3
	.byte	0xa9
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x3
	.byte	0xaa
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x3
	.byte	0xab
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF8
	.byte	0x3
	.byte	0xac
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF9
	.byte	0x3
	.byte	0xad
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF10
	.byte	0x3
	.byte	0xae
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF11
	.byte	0x3
	.byte	0xb0
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x3348
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xb
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x3390
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x330c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x33de
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x33eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x33de
	.uleb128 0xa
	.long	0x3458
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x3458
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1320
	.uleb128 0xa
	.long	0x34b3
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x34fb
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	0x3545
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0xf
	.byte	0xa2
	.uleb128 0x16
	.string	"limit"
	.byte	0xf
	.byte	0xa3
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"prev"
	.byte	0xf
	.byte	0xa4
	.long	0x3545
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"contents"
	.byte	0xf
	.byte	0xa5
	.long	0x66b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x34fb
	.uleb128 0xa
	.long	0x3678
	.string	"obstack"
	.byte	0x2c
	.byte	0xe
	.value	0x31b
	.uleb128 0x16
	.string	"chunk_size"
	.byte	0xf
	.byte	0xaa
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"chunk"
	.byte	0xf
	.byte	0xab
	.long	0x3545
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"object_base"
	.byte	0xf
	.byte	0xac
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"next_free"
	.byte	0xf
	.byte	0xad
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"chunk_limit"
	.byte	0xf
	.byte	0xae
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"temp"
	.byte	0xf
	.byte	0xaf
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"alignment_mask"
	.byte	0xf
	.byte	0xb0
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"chunkfun"
	.byte	0xf
	.byte	0xb5
	.long	0x368d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"freefun"
	.byte	0xf
	.byte	0xb6
	.long	0x36a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"extra_arg"
	.byte	0xf
	.byte	0xb7
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1a
	.string	"use_extra_arg"
	.byte	0xf
	.byte	0xbd
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1a
	.string	"maybe_empty_object"
	.byte	0xf
	.byte	0xbe
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1a
	.string	"alloc_failed"
	.byte	0xf
	.byte	0xc2
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1d
	.long	0x368d
	.byte	0x1
	.long	0x3545
	.uleb128 0x13
	.long	0x3dc
	.uleb128 0x13
	.long	0x3bf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3678
	.uleb128 0x12
	.long	0x36a4
	.byte	0x1
	.uleb128 0x13
	.long	0x3dc
	.uleb128 0x13
	.long	0x3545
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3693
	.uleb128 0x11
	.long	0x36e8
	.long	.LASF12
	.byte	0xc
	.byte	0x4
	.byte	0x19
	.uleb128 0x16
	.string	"str"
	.byte	0x4
	.byte	0x1c
	.long	0x67b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"len"
	.byte	0x4
	.byte	0x1d
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"hash_value"
	.byte	0x4
	.byte	0x1e
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x371f
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x36aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x3766
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x37a7
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x37a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x37b7
	.long	0xd6
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x3803
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x37a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x38f3
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x3
	.value	0x40e
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x2ae
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x3
	.value	0x414
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x20
	.long	0x393a
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x7
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x1d5
	.uleb128 0x7
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x3de
	.uleb128 0x7
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x3947
	.byte	0x0
	.uleb128 0x4
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x393a
	.uleb128 0xa
	.long	0x3c97
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x3
	.value	0x555
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x3
	.value	0x556
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x2ae
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x721
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x3
	.value	0x562
	.long	0x2ae
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x3
	.value	0x564
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x3
	.value	0x565
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x3
	.value	0x566
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x3
	.value	0x567
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x3
	.value	0x568
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x569
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.value	0x56a
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x3
	.value	0x56b
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x38f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"name"
	.byte	0x3
	.value	0x576
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x57c
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x3
	.value	0x57f
	.long	0x3cb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x12e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xa
	.long	0x3cb8
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x4e0
	.long	0x6610
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3c97
	.uleb128 0xa
	.long	0x3d03
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x1e
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x2ae
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x2ae
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x20
	.long	0x3d38
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x137f
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x375
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x3cbe
	.byte	0x0
	.uleb128 0x20
	.long	0x3d77
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x4728
	.uleb128 0x7
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9c
	.uleb128 0x7
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0xd6
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x1d5
	.byte	0x0
	.uleb128 0x21
	.long	0x4728
	.string	"function"
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x16
	.string	"eh"
	.byte	0x7
	.byte	0xb5
	.long	0x5531
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"stmt"
	.byte	0x7
	.byte	0xb6
	.long	0x5545
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"expr"
	.byte	0x7
	.byte	0xb7
	.long	0x554b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"emit"
	.byte	0x7
	.byte	0xb8
	.long	0x5551
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"varasm"
	.byte	0x7
	.byte	0xb9
	.long	0x5567
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"name"
	.byte	0x7
	.byte	0xbe
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"decl"
	.byte	0x7
	.byte	0xc1
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"outer"
	.byte	0x7
	.byte	0xc4
	.long	0x4728
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"pops_args"
	.byte	0x7
	.byte	0xc9
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"args_size"
	.byte	0x7
	.byte	0xce
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.string	"pretend_args_size"
	.byte	0x7
	.byte	0xd3
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.string	"outgoing_args_size"
	.byte	0x7
	.byte	0xd7
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.string	"arg_offset_rtx"
	.byte	0x7
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.string	"args_info"
	.byte	0x7
	.byte	0xdf
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x16
	.string	"return_rtx"
	.byte	0x7
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x16
	.string	"internal_arg_pointer"
	.byte	0x7
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x22
	.long	.LASF21
	.byte	0x7
	.byte	0xec
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x16
	.string	"hard_reg_initial_vals"
	.byte	0x7
	.byte	0xf0
	.long	0x5584
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.string	"x_function_call_count"
	.byte	0x7
	.byte	0xf3
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x16
	.string	"x_nonlocal_labels"
	.byte	0x7
	.byte	0xf8
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x16
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x7
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x7
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x7
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0x7
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0x7
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0x7
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0x7
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0x7
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0x7
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0x7
	.value	0x121
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0x7
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0x7
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0x7
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0x7
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0x7
	.value	0x138
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0x7
	.value	0x13d
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0x7
	.value	0x146
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0x7
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0x7
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0x7
	.value	0x151
	.long	0x2ae
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0x7
	.value	0x157
	.long	0x53d5
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0x7
	.value	0x15a
	.long	0x5596
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0x7
	.value	0x15d
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0x7
	.value	0x160
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0x7
	.value	0x166
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0x7
	.value	0x16a
	.long	0x522b
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0x7
	.value	0x16d
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0x7
	.value	0x16e
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0x7
	.value	0x16f
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0x7
	.value	0x170
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0x7
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0x7
	.value	0x175
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0x7
	.value	0x178
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0x7
	.value	0x17d
	.long	0x55af
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0x7
	.value	0x17f
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0x7
	.value	0x181
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x7
	.value	0x184
	.long	0x57f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0x7
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
	.string	"returns_struct"
	.byte	0x7
	.value	0x190
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pcc_struct"
	.byte	0x7
	.value	0x194
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"returns_pointer"
	.byte	0x7
	.value	0x197
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"needs_context"
	.byte	0x7
	.value	0x19a
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_setjmp"
	.byte	0x7
	.value	0x19d
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_longjmp"
	.byte	0x7
	.value	0x1a0
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_alloca"
	.byte	0x7
	.value	0x1a4
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"calls_eh_return"
	.byte	0x7
	.value	0x1a7
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_label"
	.byte	0x7
	.value	0x1ab
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_nonlocal_goto"
	.byte	0x7
	.value	0x1af
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"contains_functions"
	.byte	0x7
	.value	0x1b2
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"has_computed_jump"
	.byte	0x7
	.value	0x1b5
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"is_thunk"
	.byte	0x7
	.value	0x1ba
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"all_throwers_are_sibcalls"
	.byte	0x7
	.value	0x1c1
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"instrument_entry_exit"
	.byte	0x7
	.value	0x1c5
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arc_profile"
	.byte	0x7
	.value	0x1c8
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"profile"
	.byte	0x7
	.value	0x1cb
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"limit_stack"
	.byte	0x7
	.value	0x1cf
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"stdarg"
	.byte	0x7
	.value	0x1d2
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_whole_function_mode_p"
	.byte	0x7
	.value	0x1d8
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x7
	.value	0x1e1
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_const_pool"
	.byte	0x7
	.value	0x1e4
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_pic_offset_table"
	.byte	0x7
	.value	0x1e7
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"uses_eh_lsda"
	.byte	0x7
	.value	0x1ea
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1e
	.string	"arg_pointer_save_area_init"
	.byte	0x7
	.value	0x1ed
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x7
	.value	0x1fa
	.long	0x54bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0x7
	.value	0x1fe
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d77
	.uleb128 0x23
	.long	0x4766
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x7
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x3458
	.uleb128 0x7
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x12d0
	.uleb128 0x7
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x2ae
	.byte	0x0
	.uleb128 0xa
	.long	0x4eac
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x99c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x721
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x3
	.value	0x7d3
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF3
	.byte	0x3
	.value	0x7ed
	.long	0x132f
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x3
	.value	0x7f0
	.long	0x2ae
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x3
	.value	0x7f2
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF4
	.byte	0x3
	.value	0x7fa
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x3
	.value	0x7fb
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x3
	.value	0x7fc
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x3
	.value	0x7fd
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x3
	.value	0x7fe
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x7ff
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.value	0x800
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x3
	.value	0x801
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x3d03
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x3
	.value	0x81d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"name"
	.byte	0x3
	.value	0x81e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x81f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x3
	.value	0x82b
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x3
	.value	0x82e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x3d38
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x375
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1c
	.long	.LASF20
	.byte	0x3
	.value	0x848
	.long	0x4ee3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1e
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x2ae
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1e
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x472e
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x12e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xa
	.long	0x4ee3
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xb
	.string	"decl_flags"
	.byte	0x9
	.value	0x73a
	.long	0x66ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x763
	.long	0x6aea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4eac
	.uleb128 0x17
	.long	0x5167
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xd
	.byte	0x1d
	.uleb128 0x18
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x18
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x18
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x18
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x18
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x18
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x18
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x18
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x18
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x18
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x18
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x18
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x18
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x18
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x18
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x18
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x18
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x18
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x18
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x18
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x18
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x18
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x18
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x18
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x18
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x18
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x18
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x18
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x18
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x18
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x18
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x18
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x18
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x18
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x18
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xa
	.long	0x51b6
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x1c
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x3029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x4ee9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0xd6
	.uleb128 0x15
	.long	0x522b
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x7
	.byte	0x17
	.uleb128 0x16
	.string	"modified"
	.byte	0x7
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"promoted_mode"
	.byte	0x7
	.byte	0x19
	.long	0x721
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"unsignedp"
	.byte	0x7
	.byte	0x1a
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"next"
	.byte	0x7
	.byte	0x1b
	.long	0x522b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x51c5
	.uleb128 0x11
	.long	0x527a
	.long	.LASF24
	.byte	0x10
	.byte	0x7
	.byte	0x24
	.uleb128 0x16
	.string	"first"
	.byte	0x7
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"last"
	.byte	0x7
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x22
	.long	.LASF25
	.byte	0x7
	.byte	0x28
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"next"
	.byte	0x7
	.byte	0x29
	.long	0x527a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5231
	.uleb128 0x3
	.byte	0x4
	.long	0x354b
	.uleb128 0x15
	.long	0x53d5
	.string	"emit_status"
	.byte	0x34
	.byte	0x7
	.byte	0x37
	.uleb128 0x16
	.string	"x_reg_rtx_no"
	.byte	0x7
	.byte	0x3a
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"x_first_label_num"
	.byte	0x7
	.byte	0x3d
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"x_first_insn"
	.byte	0x7
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"x_last_insn"
	.byte	0x7
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x22
	.long	.LASF25
	.byte	0x7
	.byte	0x4a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF24
	.byte	0x7
	.byte	0x50
	.long	0x527a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"x_cur_insn_uid"
	.byte	0x7
	.byte	0x54
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"x_last_linenum"
	.byte	0x7
	.byte	0x58
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"x_last_filename"
	.byte	0x7
	.byte	0x59
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"regno_pointer_align_length"
	.byte	0x7
	.byte	0x5f
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.string	"regno_pointer_align"
	.byte	0x7
	.byte	0x65
	.long	0x686
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.string	"regno_decl"
	.byte	0x7
	.byte	0x69
	.long	0x51bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.string	"x_regno_reg_rtx"
	.byte	0x7
	.byte	0x70
	.long	0x53d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x15
	.long	0x54bb
	.string	"expr_status"
	.byte	0x1c
	.byte	0x7
	.byte	0x7d
	.uleb128 0x16
	.string	"x_pending_stack_adjust"
	.byte	0x7
	.byte	0x80
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"x_inhibit_defer_pop"
	.byte	0x7
	.byte	0x91
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"x_stack_pointer_delta"
	.byte	0x7
	.byte	0x97
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"x_saveregs_value"
	.byte	0x7
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"x_apply_args_value"
	.byte	0x7
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"x_forced_labels"
	.byte	0x7
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"x_pending_chain"
	.byte	0x7
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x5525
	.long	.LASF23
	.byte	0x4
	.byte	0x7
	.value	0x1f1
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5525
	.uleb128 0x4
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5537
	.uleb128 0x3
	.byte	0x4
	.long	0x53db
	.uleb128 0x3
	.byte	0x4
	.long	0x5286
	.uleb128 0x4
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5557
	.uleb128 0x4
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x556d
	.uleb128 0x4
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x558a
	.uleb128 0x4
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x559c
	.uleb128 0xa
	.long	0x57f0
	.string	"language_function"
	.byte	0x64
	.byte	0x7
	.value	0x184
	.uleb128 0xb
	.string	"base"
	.byte	0x9
	.value	0x370
	.long	0x5d75
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_dtor_label"
	.byte	0x9
	.value	0x372
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"x_current_class_ptr"
	.byte	0x9
	.value	0x373
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"x_current_class_ref"
	.byte	0x9
	.value	0x374
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"x_eh_spec_block"
	.byte	0x9
	.value	0x375
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"x_in_charge_parm"
	.byte	0x9
	.value	0x376
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"x_vtt_parm"
	.byte	0x9
	.value	0x377
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"x_return_value"
	.byte	0x9
	.value	0x378
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"returns_value"
	.byte	0x9
	.value	0x37a
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"returns_null"
	.byte	0x9
	.value	0x37b
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"returns_abnormally"
	.byte	0x9
	.value	0x37c
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"in_function_try_handler"
	.byte	0x9
	.value	0x37d
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"in_base_initializer"
	.byte	0x9
	.value	0x37e
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"x_expanding_p"
	.byte	0x9
	.value	0x37f
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1e
	.string	"can_throw"
	.byte	0x9
	.value	0x382
	.long	0x51b6
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"x_named_label_uses"
	.byte	0x9
	.value	0x384
	.long	0x5e5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"x_named_labels"
	.byte	0x9
	.value	0x385
	.long	0x5e73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"bindings"
	.byte	0x9
	.value	0x386
	.long	0x5e0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"x_local_names"
	.byte	0x9
	.value	0x387
	.long	0x5cd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x9
	.value	0x389
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"unparsed_inlines"
	.byte	0x9
	.value	0x38a
	.long	0x5e89
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x55b5
	.uleb128 0x15
	.long	0x582c
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.uleb128 0x16
	.string	"rtx"
	.byte	0xb
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"age"
	.byte	0xb
	.byte	0x36
	.long	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x59c7
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xb
	.byte	0x3c
	.uleb128 0x18
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x18
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x18
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x18
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x18
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x18
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x18
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x18
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x18
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x18
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x18
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x18
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x18
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x18
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x18
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x18
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x18
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x18
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x18
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x18
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x18
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x5
	.long	0x5ac3
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xb
	.byte	0x55
	.uleb128 0x25
	.string	"c"
	.byte	0xb
	.byte	0x56
	.long	0x6fb
	.uleb128 0x25
	.string	"uc"
	.byte	0xb
	.byte	0x58
	.long	0x5ac3
	.uleb128 0x25
	.string	"s"
	.byte	0xb
	.byte	0x5a
	.long	0x5ad3
	.uleb128 0x25
	.string	"us"
	.byte	0xb
	.byte	0x5c
	.long	0x5ae3
	.uleb128 0x25
	.string	"i"
	.byte	0xb
	.byte	0x5e
	.long	0x5af3
	.uleb128 0x25
	.string	"u"
	.byte	0xb
	.byte	0x60
	.long	0x5b03
	.uleb128 0x25
	.string	"l"
	.byte	0xb
	.byte	0x62
	.long	0x5b13
	.uleb128 0x25
	.string	"ul"
	.byte	0xb
	.byte	0x64
	.long	0x5b23
	.uleb128 0x25
	.string	"hint"
	.byte	0xb
	.byte	0x66
	.long	0x5b33
	.uleb128 0x25
	.string	"uhint"
	.byte	0xb
	.byte	0x68
	.long	0x5b43
	.uleb128 0x25
	.string	"generic"
	.byte	0xb
	.byte	0x6a
	.long	0x5b53
	.uleb128 0x25
	.string	"cptr"
	.byte	0xb
	.byte	0x6c
	.long	0x5b63
	.uleb128 0x25
	.string	"rtx"
	.byte	0xb
	.byte	0x6e
	.long	0x5b73
	.uleb128 0x25
	.string	"rtvec"
	.byte	0xb
	.byte	0x70
	.long	0x5b83
	.uleb128 0x25
	.string	"tree"
	.byte	0xb
	.byte	0x72
	.long	0x5b93
	.uleb128 0x25
	.string	"bitmap"
	.byte	0xb
	.byte	0x74
	.long	0x5ba3
	.uleb128 0x25
	.string	"reg"
	.byte	0xb
	.byte	0x76
	.long	0x5bcb
	.uleb128 0x25
	.string	"const_equiv"
	.byte	0xb
	.byte	0x78
	.long	0x5bf0
	.uleb128 0x25
	.string	"bb"
	.byte	0xb
	.byte	0x7a
	.long	0x5c00
	.uleb128 0x25
	.string	"te"
	.byte	0xb
	.byte	0x7c
	.long	0x5c28
	.byte	0x0
	.uleb128 0xd
	.long	0x5ad3
	.long	0x31d
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5ae3
	.long	0x368
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5af3
	.long	0x32e
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b03
	.long	0x1d5
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b13
	.long	0x2ae
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b23
	.long	0x3bf
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b33
	.long	0x344
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b43
	.long	0x375
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b53
	.long	0x386
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b63
	.long	0x3dc
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b73
	.long	0x3de
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b83
	.long	0xa7
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5b93
	.long	0xc4
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5ba3
	.long	0xe2
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5bb3
	.long	0x5bc5
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bb3
	.uleb128 0xd
	.long	0x5bdb
	.long	0x5bea
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bdb
	.uleb128 0xd
	.long	0x5c00
	.long	0x57f6
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5c10
	.long	0x5c22
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c10
	.uleb128 0xd
	.long	0x5c38
	.long	0x5c43
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c38
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xb
	.byte	0x7e
	.long	0x59c7
	.uleb128 0x15
	.long	0x5cd1
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xb
	.byte	0x81
	.uleb128 0x16
	.string	"num_elements"
	.byte	0xb
	.byte	0x82
	.long	0x30f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"elements_used"
	.byte	0xb
	.byte	0x83
	.long	0x30f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"type"
	.byte	0xb
	.byte	0x85
	.long	0x582c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"name"
	.byte	0xb
	.byte	0x86
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"data"
	.byte	0xb
	.byte	0x87
	.long	0x5c49
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xb
	.byte	0x8a
	.long	0x5ce4
	.uleb128 0x3
	.byte	0x4
	.long	0x5c5c
	.uleb128 0xa
	.long	0x5d75
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xa
	.value	0x101
	.uleb128 0xb
	.string	"x_last_stmt"
	.byte	0xa
	.value	0x103
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_last_expr_type"
	.byte	0xa
	.value	0x106
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"x_last_expr_filename"
	.byte	0xa
	.value	0x108
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"stmts_are_full_exprs_p"
	.byte	0xa
	.value	0x117
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x5dc8
	.string	"c_language_function"
	.byte	0x14
	.byte	0xa
	.value	0x11f
	.uleb128 0xb
	.string	"x_stmt_tree"
	.byte	0xa
	.value	0x122
	.long	0x5cea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_scope_stmt_stack"
	.byte	0xa
	.value	0x124
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x5dfc
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xa
	.value	0x169
	.uleb128 0x1e
	.string	"declared_inline"
	.byte	0xa
	.value	0x16a
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5dfc
	.uleb128 0xf
	.string	"binding_table"
	.byte	0x9
	.value	0x103
	.long	0x5e2b
	.uleb128 0x3
	.byte	0x4
	.long	0x5e31
	.uleb128 0x4
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0x4
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5e43
	.uleb128 0x4
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5e60
	.uleb128 0x4
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5e79
	.uleb128 0x26
	.long	0x5ec9
	.string	"languages"
	.byte	0x4
	.byte	0x9
	.value	0x3f1
	.uleb128 0x18
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x18
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x18
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xa
	.long	0x5fe8
	.string	"lang_type_header"
	.byte	0x4
	.byte	0x9
	.value	0x464
	.uleb128 0x1e
	.string	"is_lang_type_class"
	.byte	0x9
	.value	0x465
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"has_type_conversion"
	.byte	0x9
	.value	0x467
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"has_init_ref"
	.byte	0x9
	.value	0x468
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"has_default_ctor"
	.byte	0x9
	.value	0x469
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"uses_multiple_inheritance"
	.byte	0x9
	.value	0x46a
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"const_needs_init"
	.byte	0x9
	.value	0x46b
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"ref_needs_init"
	.byte	0x9
	.value	0x46c
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
	.string	"has_const_assign_ref"
	.byte	0x9
	.value	0x46d
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x65d6
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0x9
	.value	0x47e
	.uleb128 0xb
	.string	"h"
	.byte	0x9
	.value	0x47f
	.long	0x5ec9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"align"
	.byte	0x9
	.value	0x481
	.long	0x31d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_mutable"
	.byte	0x9
	.value	0x483
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"com_interface"
	.byte	0x9
	.value	0x484
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"non_pod_class"
	.byte	0x9
	.value	0x485
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"nearly_empty_p"
	.byte	0x9
	.value	0x486
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x9
	.value	0x487
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_assign_ref"
	.byte	0x9
	.value	0x488
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_new"
	.byte	0x9
	.value	0x489
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_array_new"
	.byte	0x9
	.value	0x48a
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"gets_delete"
	.byte	0x9
	.value	0x48c
	.long	0x2ae
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_call_overloaded"
	.byte	0x9
	.value	0x48d
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_array_ref_overloaded"
	.byte	0x9
	.value	0x48e
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_arrow_overloaded"
	.byte	0x9
	.value	0x48f
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"interface_only"
	.byte	0x9
	.value	0x490
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"interface_unknown"
	.byte	0x9
	.value	0x491
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"marks"
	.byte	0x9
	.value	0x493
	.long	0x2ae
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"vec_new_uses_cookie"
	.byte	0x9
	.value	0x494
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"declared_class"
	.byte	0x9
	.value	0x495
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"being_defined"
	.byte	0x9
	.value	0x497
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"redefined"
	.byte	0x9
	.value	0x498
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"debug_requested"
	.byte	0x9
	.value	0x499
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF26
	.byte	0x9
	.value	0x49a
	.long	0x2ae
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"got_semicolon"
	.byte	0x9
	.value	0x49b
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"ptrmemfunc_flag"
	.byte	0x9
	.value	0x49c
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"was_anonymous"
	.byte	0x9
	.value	0x49d
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"has_real_assign_ref"
	.byte	0x9
	.value	0x49f
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"has_const_init_ref"
	.byte	0x9
	.value	0x4a0
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"has_complex_init_ref"
	.byte	0x9
	.value	0x4a1
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"has_complex_assign_ref"
	.byte	0x9
	.value	0x4a2
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"has_abstract_assign_ref"
	.byte	0x9
	.value	0x4a3
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"non_aggregate"
	.byte	0x9
	.value	0x4a4
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"is_partial_instantiation"
	.byte	0x9
	.value	0x4a5
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"java_interface"
	.byte	0x9
	.value	0x4a6
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"anon_aggr"
	.byte	0x9
	.value	0x4a8
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"non_zero_init"
	.byte	0x9
	.value	0x4a9
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"empty_p"
	.byte	0x9
	.value	0x4aa
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"contains_empty_class_p"
	.byte	0x9
	.value	0x4ab
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"has_implicit_copy_constructor"
	.byte	0x9
	.value	0x4b7
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1e
	.string	"dummy"
	.byte	0x9
	.value	0x4b8
	.long	0x2ae
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"primary_base"
	.byte	0x9
	.value	0x4bd
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"vfields"
	.byte	0x9
	.value	0x4be
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vcall_indices"
	.byte	0x9
	.value	0x4bf
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"vtables"
	.byte	0x9
	.value	0x4c0
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"typeinfo_var"
	.byte	0x9
	.value	0x4c1
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"vbases"
	.byte	0x9
	.value	0x4c2
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"nested_udts"
	.byte	0x9
	.value	0x4c3
	.long	0x5e15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"as_base"
	.byte	0x9
	.value	0x4c4
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pure_virtuals"
	.byte	0x9
	.value	0x4c5
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"friend_classes"
	.byte	0x9
	.value	0x4c6
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"methods"
	.byte	0x9
	.value	0x4c7
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"key_method"
	.byte	0x9
	.value	0x4c8
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"decl_list"
	.byte	0x9
	.value	0x4c9
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x9
	.value	0x4ca
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1c
	.long	.LASF28
	.byte	0x9
	.value	0x4cb
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"copy_constructor"
	.byte	0x9
	.value	0x4cf
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xa
	.long	0x6610
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0x9
	.value	0x4d4
	.uleb128 0xb
	.string	"h"
	.byte	0x9
	.value	0x4d5
	.long	0x5ec9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"record"
	.byte	0x9
	.value	0x4d6
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x20
	.long	0x6649
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0x9
	.value	0x4dc
	.uleb128 0x7
	.string	"h"
	.byte	0x9
	.value	0x4dd
	.long	0x5ec9
	.uleb128 0x7
	.string	"c"
	.byte	0x9
	.value	0x4de
	.long	0x5fe8
	.uleb128 0x7
	.string	"ptrmem"
	.byte	0x9
	.value	0x4df
	.long	0x65d6
	.byte	0x0
	.uleb128 0x20
	.long	0x6679
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0x9
	.value	0x722
	.uleb128 0x6
	.long	.LASF27
	.byte	0x9
	.value	0x725
	.long	0xd6
	.uleb128 0x7
	.string	"level"
	.byte	0x9
	.value	0x728
	.long	0x5e0f
	.byte	0x0
	.uleb128 0x20
	.long	0x66ca
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0x9
	.value	0x72b
	.uleb128 0x7
	.string	"access"
	.byte	0x9
	.value	0x72d
	.long	0xd6
	.uleb128 0x7
	.string	"discriminator"
	.byte	0x9
	.value	0x730
	.long	0x1d5
	.uleb128 0x7
	.string	"vcall_offset"
	.byte	0x9
	.value	0x734
	.long	0xd6
	.byte	0x0
	.uleb128 0xa
	.long	0x69a6
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0x9
	.value	0x703
	.uleb128 0xb
	.string	"base"
	.byte	0x9
	.value	0x704
	.long	0x5dc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x9
	.value	0x706
	.long	0x5e8f
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"operator_attr"
	.byte	0x9
	.value	0x708
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"constructor_attr"
	.byte	0x9
	.value	0x709
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"destructor_attr"
	.byte	0x9
	.value	0x70a
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"friend_attr"
	.byte	0x9
	.value	0x70b
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"static_function"
	.byte	0x9
	.value	0x70c
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"pure_virtual"
	.byte	0x9
	.value	0x70d
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_in_charge_parm_p"
	.byte	0x9
	.value	0x70e
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"has_vtt_parm_p"
	.byte	0x9
	.value	0x70f
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"deferred"
	.byte	0x9
	.value	0x711
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.long	.LASF26
	.byte	0x9
	.value	0x712
	.long	0x2ae
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"nonconverting"
	.byte	0x9
	.value	0x713
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"not_really_extern"
	.byte	0x9
	.value	0x714
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"needs_final_overrider"
	.byte	0x9
	.value	0x715
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"initialized_in_class"
	.byte	0x9
	.value	0x716
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"assignment_operator_p"
	.byte	0x9
	.value	0x717
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"global_ctor_p"
	.byte	0x9
	.value	0x719
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"global_dtor_p"
	.byte	0x9
	.value	0x71a
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"anticipated_p"
	.byte	0x9
	.value	0x71b
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"template_conv_p"
	.byte	0x9
	.value	0x71c
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"u1sel"
	.byte	0x9
	.value	0x71d
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"u2sel"
	.byte	0x9
	.value	0x71e
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"can_be_full"
	.byte	0x9
	.value	0x71f
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1e
	.string	"unused"
	.byte	0x9
	.value	0x720
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x729
	.long	0x6649
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"u2"
	.byte	0x9
	.value	0x735
	.long	0x6679
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x20
	.long	0x6a0f
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0x9
	.value	0x75c
	.uleb128 0x7
	.string	"sorted_fields"
	.byte	0x9
	.value	0x75d
	.long	0xd6
	.uleb128 0x7
	.string	"pending_inline_info"
	.byte	0x9
	.value	0x75e
	.long	0x5e89
	.uleb128 0x7
	.string	"saved_language_function"
	.byte	0x9
	.value	0x760
	.long	0x57f0
	.byte	0x0
	.uleb128 0xa
	.long	0x6aea
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0x9
	.value	0x73f
	.uleb128 0x1c
	.long	.LASF28
	.byte	0x9
	.value	0x740
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x9
	.value	0x745
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"cloned_function"
	.byte	0x9
	.value	0x748
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"delta"
	.byte	0x9
	.value	0x74c
	.long	0x375
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"named_return_object"
	.byte	0x9
	.value	0x751
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"operator_code"
	.byte	0x9
	.value	0x756
	.long	0x9ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1e
	.string	"u3sel"
	.byte	0x9
	.value	0x758
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.string	"pending_inline_p"
	.byte	0x9
	.value	0x759
	.long	0x2ae
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x761
	.long	0x69a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x20
	.long	0x6b0b
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0x9
	.value	0x73d
	.uleb128 0x7
	.string	"f"
	.byte	0x9
	.value	0x762
	.long	0x6a0f
	.byte	0x0
	.uleb128 0x15
	.long	0x6b5d
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x16
	.byte	0x32
	.uleb128 0x16
	.string	"base"
	.byte	0x16
	.byte	0x33
	.long	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"nelt"
	.byte	0x16
	.byte	0x34
	.long	0x30f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"stride"
	.byte	0x16
	.byte	0x35
	.long	0x30f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"cb"
	.byte	0x16
	.byte	0x36
	.long	0x68c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x27
	.long	0x6b8f
	.byte	0x8
	.byte	0x13
	.byte	0x1f
	.uleb128 0x16
	.string	"format_spec"
	.byte	0x13
	.byte	0x20
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"args_ptr"
	.byte	0x13
	.byte	0x21
	.long	0x6b8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x300
	.uleb128 0x2
	.string	"text_info"
	.byte	0x13
	.byte	0x22
	.long	0x6b5d
	.uleb128 0x28
	.long	0x6c26
	.byte	0x4
	.byte	0x13
	.byte	0x26
	.uleb128 0x18
	.string	"DK_FATAL"
	.sleb128 0
	.uleb128 0x18
	.string	"DK_ICE"
	.sleb128 1
	.uleb128 0x18
	.string	"DK_SORRY"
	.sleb128 2
	.uleb128 0x18
	.string	"DK_ERROR"
	.sleb128 3
	.uleb128 0x18
	.string	"DK_WARNING"
	.sleb128 4
	.uleb128 0x18
	.string	"DK_ANACHRONISM"
	.sleb128 5
	.uleb128 0x18
	.string	"DK_NOTE"
	.sleb128 6
	.uleb128 0x18
	.string	"DK_DEBUG"
	.sleb128 7
	.uleb128 0x18
	.string	"DK_LAST_DIAGNOSTIC_KIND"
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_t"
	.byte	0x13
	.byte	0x2b
	.long	0x6ba6
	.uleb128 0x27
	.long	0x6c77
	.byte	0x14
	.byte	0x13
	.byte	0x31
	.uleb128 0x16
	.string	"message"
	.byte	0x13
	.byte	0x32
	.long	0x6b95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"location"
	.byte	0x13
	.byte	0x33
	.long	0x99c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"kind"
	.byte	0x13
	.byte	0x35
	.long	0x6c26
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x13
	.byte	0x36
	.long	0x6c3a
	.uleb128 0x28
	.long	0x6cfb
	.byte	0x4
	.byte	0x13
	.byte	0x40
	.uleb128 0x18
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
	.sleb128 0
	.uleb128 0x18
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
	.sleb128 1
	.uleb128 0x18
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_prefixing_rule_t"
	.byte	0x13
	.byte	0x44
	.long	0x6c8e
	.uleb128 0x27
	.long	0x6dd3
	.byte	0x18
	.byte	0x13
	.byte	0x48
	.uleb128 0x16
	.string	"prefix"
	.byte	0x13
	.byte	0x4a
	.long	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"maximum_length"
	.byte	0x13
	.byte	0x4e
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"ideal_maximum_length"
	.byte	0x13
	.byte	0x52
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"indent_skip"
	.byte	0x13
	.byte	0x55
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"emitted_prefix_p"
	.byte	0x13
	.byte	0x58
	.long	0x51b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"need_newline_p"
	.byte	0x13
	.byte	0x5b
	.long	0x51b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x16
	.string	"prefixing_rule"
	.byte	0x13
	.byte	0x5e
	.long	0x6cfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x13
	.byte	0x5f
	.long	0x6d1e
	.uleb128 0x29
	.long	.LASF29
	.byte	0x13
	.byte	0x64
	.long	0x6df2
	.uleb128 0x11
	.long	0x6e79
	.long	.LASF29
	.byte	0xd0
	.byte	0x13
	.byte	0x64
	.uleb128 0x16
	.string	"state"
	.byte	0x13
	.byte	0x6c
	.long	0x6dd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"stream"
	.byte	0x13
	.byte	0x6f
	.long	0x6eb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"obstack"
	.byte	0x13
	.byte	0x72
	.long	0x354b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"line_length"
	.byte	0x13
	.byte	0x75
	.long	0x1d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x16
	.string	"digit_buffer"
	.byte	0x13
	.byte	0x79
	.long	0x6eb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x16
	.string	"format_decoder"
	.byte	0x13
	.byte	0x83
	.long	0x6e79
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x13
	.byte	0x65
	.long	0x6e8b
	.uleb128 0x3
	.byte	0x4
	.long	0x6e91
	.uleb128 0x1d
	.long	0x6ea6
	.byte	0x1
	.long	0x51b6
	.uleb128 0x13
	.long	0x6ea6
	.uleb128 0x13
	.long	0x6eac
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6de7
	.uleb128 0x3
	.byte	0x4
	.long	0x6b95
	.uleb128 0x3
	.byte	0x4
	.long	0x3e4
	.uleb128 0xd
	.long	0x6ec8
	.long	0x1cd
	.uleb128 0xe
	.long	0x2c5
	.byte	0x7f
	.byte	0x0
	.uleb128 0x29
	.long	.LASF30
	.byte	0x13
	.byte	0xac
	.long	0x6ed3
	.uleb128 0x2a
	.long	0x6fd7
	.long	.LASF30
	.value	0x110
	.byte	0x9
	.byte	0x29
	.uleb128 0x16
	.string	"buffer"
	.byte	0x13
	.byte	0xb8
	.long	0x6de7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"diagnostic_count"
	.byte	0x13
	.byte	0xbb
	.long	0x7036
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x16
	.string	"warnings_are_errors_message"
	.byte	0x13
	.byte	0xbf
	.long	0x51b6
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x16
	.string	"begin_diagnostic"
	.byte	0x13
	.byte	0xc8
	.long	0x6fd7
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x16
	.string	"end_diagnostic"
	.byte	0x13
	.byte	0xcb
	.long	0x7017
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x16
	.string	"internal_error"
	.byte	0x13
	.byte	0xce
	.long	0x7057
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x16
	.string	"last_function"
	.byte	0x13
	.byte	0xd3
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x16
	.string	"last_module"
	.byte	0x13
	.byte	0xd6
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x16
	.string	"lock"
	.byte	0x13
	.byte	0xd8
	.long	0x1d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x16
	.string	"x_data"
	.byte	0x13
	.byte	0xdb
	.long	0x3dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_starter_fn"
	.byte	0x13
	.byte	0xad
	.long	0x6ff4
	.uleb128 0x3
	.byte	0x4
	.long	0x6ffa
	.uleb128 0x12
	.long	0x700b
	.byte	0x1
	.uleb128 0x13
	.long	0x700b
	.uleb128 0x13
	.long	0x7011
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ec8
	.uleb128 0x3
	.byte	0x4
	.long	0x6c77
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x13
	.byte	0xaf
	.long	0x6fd7
	.uleb128 0xd
	.long	0x7046
	.long	0x1d5
	.uleb128 0xe
	.long	0x2c5
	.byte	0x7
	.byte	0x0
	.uleb128 0x12
	.long	0x7057
	.byte	0x1
	.uleb128 0x13
	.long	0x1c2
	.uleb128 0x13
	.long	0x6b8f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7046
	.uleb128 0x2b
	.long	0x70bd
	.string	"repo_get_id"
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	0xd6
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0x5f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	0x70ac
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2e
	.string	"vtable"
	.byte	0x1
	.byte	0x63
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	.LASF31
	.long	0x7588
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13097
	.byte	0x0
	.uleb128 0x30
	.long	0x710f
	.byte	0x1
	.string	"repo_template_used"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0x79
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"id"
	.byte	0x1
	.byte	0x7b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LASF31
	.long	0x7573
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13121
	.byte	0x0
	.uleb128 0x30
	.long	0x7176
	.byte	0x1
	.string	"repo_template_instantiated"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0xcc
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"extern_p"
	.byte	0x1
	.byte	0xcd
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2e
	.string	"id"
	.byte	0x1
	.byte	0xd1
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x726f
	.string	"extract_string"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.long	0x3de
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2c
	.string	"pp"
	.byte	0x1
	.byte	0xdb
	.long	0x726f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.byte	0xdd
	.long	0x3de
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"backquote"
	.byte	0x1
	.byte	0xde
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"inside"
	.byte	0x1
	.byte	0xdf
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.long	0x7229
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.byte	0xe3
	.long	0x1cd
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2d
	.long	0x7210
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.byte	0xe8
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x31
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.byte	0xf0
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x7245
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.byte	0xf3
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x31
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2e
	.string	"__o1"
	.byte	0x1
	.byte	0xf5
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"value"
	.byte	0x1
	.byte	0xf5
	.long	0x3dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3de
	.uleb128 0x2b
	.long	0x72f6
	.string	"get_base_filename"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.long	0x1c2
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x32
	.long	.LASF32
	.byte	0x1
	.byte	0xfa
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.byte	0xfc
	.long	0x3de
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.string	"output"
	.byte	0x1
	.byte	0xfd
	.long	0x3de
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"compiling"
	.byte	0x1
	.byte	0xfe
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.string	"q"
	.byte	0x1
	.value	0x102
	.long	0x3de
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x7344
	.string	"open_repo_file"
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x119
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x11b
	.long	0x1c2
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x33
	.string	"s"
	.byte	0x1
	.value	0x11c
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	0x7406
	.string	"afgets"
	.byte	0x1
	.value	0x130
	.byte	0x1
	.long	0x3de
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x37
	.string	"stream"
	.byte	0x1
	.value	0x12f
	.long	0x6eb2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.value	0x131
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	0x73a0
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x133
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2d
	.long	0x73bd
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x134
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2d
	.long	0x73da
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x136
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x31
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x33
	.string	"__o1"
	.byte	0x1
	.value	0x137
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"value"
	.byte	0x1
	.value	0x137
	.long	0x3dc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x749b
	.byte	0x1
	.string	"init_repo"
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x35
	.long	.LASF32
	.byte	0x1
	.value	0x13c
	.long	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x13e
	.long	0x3de
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	0x7470
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x15a
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"orig"
	.byte	0x1
	.value	0x15b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0x16b
	.long	0x5280
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"__obj"
	.byte	0x1
	.value	0x16b
	.long	0x3dc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.string	"reopen_repo_file_for_write"
	.byte	0x1
	.value	0x171
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x38
	.long	0x7563
	.byte	0x1
	.string	"finish_repo"
	.byte	0x1
	.value	0x181
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x182
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"repo_changed"
	.byte	0x1
	.value	0x183
	.long	0x1d5
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"dir"
	.byte	0x1
	.value	0x184
	.long	0x3de
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"args"
	.byte	0x1
	.value	0x184
	.long	0x3de
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3a
	.string	"out"
	.byte	0x1
	.value	0x1c4
	.long	.L153
	.uleb128 0x31
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x1be
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"type"
	.byte	0x1
	.value	0x1bf
	.long	0x1cd
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x7573
	.long	0x1cd
	.uleb128 0xe
	.long	0x2c5
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x7563
	.uleb128 0xd
	.long	0x7588
	.long	0x1cd
	.uleb128 0xe
	.long	0x2c5
	.byte	0xb
	.byte	0x0
	.uleb128 0x8
	.long	0x7578
	.uleb128 0x2e
	.string	"pending_repo"
	.byte	0x1
	.byte	0x2d
	.long	0xd6
	.byte	0x5
	.byte	0x3
	.long	pending_repo
	.uleb128 0x2e
	.string	"original_repo"
	.byte	0x1
	.byte	0x2e
	.long	0xd6
	.byte	0x5
	.byte	0x3
	.long	original_repo
	.uleb128 0x2e
	.string	"repo_name"
	.byte	0x1
	.byte	0x2f
	.long	0x3de
	.byte	0x5
	.byte	0x3
	.long	repo_name
	.uleb128 0x2e
	.string	"repo_file"
	.byte	0x1
	.byte	0x30
	.long	0x6eb2
	.byte	0x5
	.byte	0x3
	.long	repo_file
	.uleb128 0x2e
	.string	"old_args"
	.byte	0x1
	.byte	0x32
	.long	0x1c2
	.byte	0x5
	.byte	0x3
	.long	old_args
	.uleb128 0x2e
	.string	"old_dir"
	.byte	0x1
	.byte	0x32
	.long	0x1c2
	.byte	0x5
	.byte	0x3
	.long	old_dir
	.uleb128 0x2e
	.string	"old_main"
	.byte	0x1
	.byte	0x32
	.long	0x1c2
	.byte	0x5
	.byte	0x3
	.long	old_main
	.uleb128 0x2e
	.string	"temporary_obstack"
	.byte	0x1
	.byte	0x34
	.long	0x354b
	.byte	0x5
	.byte	0x3
	.long	temporary_obstack
	.uleb128 0xd
	.long	0x765b
	.long	0x1cd
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0x7673
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x7650
	.uleb128 0xd
	.long	0x7688
	.long	0xd6
	.uleb128 0xe
	.long	0x2c5
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3d
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x7678
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"flag_use_repository"
	.byte	0xa
	.value	0x2a8
	.long	0x1d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"main_input_filename"
	.byte	0x12
	.byte	0x1a
	.long	0x1c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"global_dc"
	.byte	0x13
	.value	0x109
	.long	0x700b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x76fe
	.long	0x6b0b
	.uleb128 0xe
	.long	0x2c5
	.byte	0x2
	.byte	0x0
	.uleb128 0x3e
	.string	"gt_ggc_r_gt_cp_repo_h"
	.byte	0x15
	.byte	0x19
	.long	0x7722
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_cp_repo_h
	.uleb128 0x8
	.long	0x76ee
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x16
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4
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
	.uleb128 0x29
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0x0
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
	.long	0x7c
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7728
	.long	0x70bd
	.string	"repo_template_used"
	.long	0x710f
	.string	"repo_template_instantiated"
	.long	0x7406
	.string	"init_repo"
	.long	0x74c7
	.string	"finish_repo"
	.long	0x76fe
	.string	"gt_ggc_r_gt_cp_repo_h"
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
.LASF21:
	.string	"cannot_inline"
.LASF4:
	.string	"lang_flag_0"
.LASF6:
	.string	"lang_flag_2"
.LASF8:
	.string	"lang_flag_4"
.LASF10:
	.string	"lang_flag_6"
.LASF24:
	.string	"sequence_stack"
.LASF30:
	.string	"diagnostic_context"
.LASF0:
	.string	"common"
.LASF20:
	.string	"lang_specific"
.LASF25:
	.string	"sequence_rtl_expr"
.LASF28:
	.string	"befriending_classes"
.LASF23:
	.string	"function_frequency"
.LASF32:
	.string	"filename"
.LASF5:
	.string	"lang_flag_1"
.LASF7:
	.string	"lang_flag_3"
.LASF11:
	.string	"lang_flag_7"
.LASF1:
	.string	"unsigned int"
.LASF14:
	.string	"abstract_origin"
.LASF17:
	.string	"pointer_depth"
.LASF26:
	.string	"use_template"
.LASF18:
	.string	"user_align"
.LASF15:
	.string	"size_unit"
.LASF22:
	.string	"language"
.LASF29:
	.string	"output_buffer"
.LASF3:
	.string	"built_in_class"
.LASF9:
	.string	"lang_flag_5"
.LASF13:
	.string	"abstract_flag"
.LASF19:
	.string	"context"
.LASF27:
	.string	"template_info"
.LASF31:
	.string	"__FUNCTION__"
.LASF12:
	.string	"ht_identifier"
.LASF2:
	.string	"_IO_FILE"
.LASF16:
	.string	"attributes"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
