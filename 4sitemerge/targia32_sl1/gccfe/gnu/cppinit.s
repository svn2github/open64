	.file	"cppinit.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl _cpp_trigraph_map
	.section	.rodata
	.align 32
	.type	_cpp_trigraph_map, @object
	.size	_cpp_trigraph_map, 256
_cpp_trigraph_map:
	.zero	33
	.byte	124
	.zero	5
	.byte	94
	.byte	91
	.byte	93
	.zero	3
	.byte	126
	.zero	1
	.byte	92
	.zero	12
	.byte	123
	.byte	35
	.byte	125
	.zero	193
	.text
	.type	path_include, @function
path_include:
.LFB21:
	.file 1 "../../../kgccfe/gnu/cppinit.c"
	.loc 1 170 0
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
	subl	$44, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 173 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L2:
	.loc 1 178 0
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 179 0
	jmp	.L3
.L4:
	addl	$1, -20(%ebp)
.L3:
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L5
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	.L4
.L5:
	.loc 1 180 0
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jne	.L7
	.loc 1 183 0
	movl	$2, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 184 0
	movl	-16(%ebp), %eax
	movb	$46, (%eax)
	.loc 1 185 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	jmp	.L9
.L7:
	.loc 1 190 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 191 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 192 0
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	-16(%ebp), %eax
	movb	$0, (%eax)
.L9:
	.loc 1 195 0
	cmpl	$1, 16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_include_chain
	.loc 1 198 0
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L12
	.loc 1 200 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 202 0
	jmp	.L2
.L12:
	.loc 1 203 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE21:
	.size	path_include, .-path_include
	.section	.rodata
.LC0:
	.string	"."
	.align 4
.LC1:
	.string	"ignoring nonexistent directory \"%s\"\n"
.LC2:
	.string	"%s: Not a directory"
	.text
	.type	append_include_chain, @function
append_include_chain:
.LFB22:
	.loc 1 215 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	pushl	%edi
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$160, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 216 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 221 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L14
	.loc 1 223 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 224 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, 12(%ebp)
.L14:
	.loc 1 226 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_simplify_pathname@PLT
	.loc 1 228 0
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	je	.L16
	.loc 1 231 0
	call	__errno_location@PLT
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L18
	.loc 1 232 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_errno@PLT
	jmp	.L20
.L18:
	.loc 1 233 0
	movl	8(%ebp), %eax
	movzbl	392(%eax), %eax
	testb	%al, %al
	je	.L20
	.loc 1 234 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L20:
	.loc 1 235 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 236 0
	jmp	.L46
.L16:
	.loc 1 239 0
	movl	-92(%ebp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	je	.L23
	.loc 1 241 0
	movl	12(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error_with_line@PLT
	.loc 1 242 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 243 0
	jmp	.L46
.L23:
	.loc 1 246 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -128(%ebp)
	movl	$0, %eax
	cld
	movl	-128(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 247 0
	movl	8(%ebp), %eax
	movl	172(%eax), %eax
	cmpl	-12(%ebp), %eax
	jae	.L25
	.loc 1 248 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 172(%edx)
.L25:
	.loc 1 250 0
	movl	$32, (%esp)
	call	xmalloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 251 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 252 0
	movl	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 253 0
	movl	-96(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 254 0
	movl	-108(%ebp), %eax
	movl	-104(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%eax, 16(%ecx)
	movl	%edx, 20(%ecx)
	.loc 1 258 0
	cmpl	$1, 16(%ebp)
	je	.L27
	cmpl	$2, 16(%ebp)
	jne	.L29
.L27:
	.loc 1 259 0
	cmpl	$0, 20(%ebp)
	je	.L30
	movl	$1, -124(%ebp)
	jmp	.L32
.L30:
	movl	$2, -124(%ebp)
.L32:
	movl	-16(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%edx, 24(%eax)
	.loc 1 258 0
	jmp	.L33
.L29:
	.loc 1 261 0
	movl	-16(%ebp), %eax
	movl	$0, 24(%eax)
.L33:
	.loc 1 262 0
	movl	-16(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 263 0
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 265 0
	movl	16(%ebp), %edi
	movl	%edi, -132(%ebp)
	cmpl	$1, -132(%ebp)
	je	.L35
	cmpl	$2, -132(%ebp)
	je	.L36
	cmpl	$0, -132(%ebp)
	je	.L34
	jmp	.L46
.L34:
	.loc 1 267 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L37
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 16(%edx)
	jmp	.L39
.L37:
	movl	-20(%ebp), %eax
	movl	20(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L39:
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L46
.L35:
	.loc 1 268 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L40
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 24(%edx)
	jmp	.L42
.L40:
	movl	-20(%ebp), %eax
	movl	28(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L42:
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 28(%edx)
	jmp	.L46
.L36:
	.loc 1 269 0
	movl	-20(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L43
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 32(%edx)
	jmp	.L45
.L43:
	movl	-20(%ebp), %eax
	movl	36(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L45:
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 36(%edx)
.L46:
	.loc 1 271 0
	addl	$160, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	append_include_chain, .-append_include_chain
	.section	.rodata
	.align 4
.LC3:
	.string	"ignoring duplicate directory \"%s\"\n"
	.text
	.type	remove_dup_dir, @function
remove_dup_dir:
.LFB23:
	.loc 1 282 0
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
	.loc 1 285 0
	cmpl	$0, 12(%ebp)
	je	.L48
	.loc 1 287 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 288 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L50
.L48:
	.loc 1 292 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 293 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L50:
	.loc 1 296 0
	movl	8(%ebp), %eax
	movzbl	392(%eax), %eax
	testb	%al, %al
	je	.L51
	.loc 1 297 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L51:
	.loc 1 299 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 300 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 302 0
	movl	12(%ebp), %eax
	.loc 1 303 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	remove_dup_dir, .-remove_dup_dir
	.section	.rodata
	.align 4
.LC4:
	.string	"  as it is a non-system directory that duplicates a system directory\n"
	.text
	.type	remove_dup_nonsys_dirs, @function
remove_dup_nonsys_dirs:
.LFB24:
	.loc 1 315 0
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
	subl	$44, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 316 0
	movl	$0, -28(%ebp)
	.loc 1 317 0
	movl	$0, -24(%ebp)
	.loc 1 319 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L55
.L56:
	.loc 1 321 0
	movl	-20(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L57
	.loc 1 323 0
	movl	$1, -28(%ebp)
	.loc 1 324 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -24(%ebp)
	.loc 1 325 0
	jmp	.L59
.L60:
	.loc 1 328 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L61
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L61
	movl	-20(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	-16(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L61
	.loc 1 332 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_dup_dir
	movl	%eax, -16(%ebp)
	.loc 1 333 0
	movl	8(%ebp), %eax
	movzbl	392(%eax), %eax
	testb	%al, %al
	je	.L61
	.loc 1 334 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$69, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L61:
	.loc 1 337 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 326 0
	cmpl	$0, -16(%ebp)
	je	.L66
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L68
.L66:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L68:
	movl	-32(%ebp), %eax
	movl	%eax, -16(%ebp)
.L59:
	.loc 1 325 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L60
.L57:
	.loc 1 319 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L55:
	cmpl	$0, -20(%ebp)
	jne	.L56
	.loc 1 342 0
	cmpl	$0, -28(%ebp)
	jne	.L70
	.loc 1 343 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L72
.L73:
	.loc 1 344 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 343 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L72:
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L73
.L70:
	.loc 1 346 0
	movl	-24(%ebp), %eax
	.loc 1 347 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE24:
	.size	remove_dup_nonsys_dirs, .-remove_dup_nonsys_dirs
	.type	remove_dup_dirs, @function
remove_dup_dirs:
.LFB25:
	.loc 1 357 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%edi
.LCFI23:
	pushl	%esi
.LCFI24:
	subl	$32, %esp
.LCFI25:
	.loc 1 358 0
	movl	$0, -20(%ebp)
	.loc 1 360 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L76
.L77:
	.loc 1 362 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L78
.L79:
	.loc 1 363 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L80
	movl	-16(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L80
	.loc 1 365 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_dup_dir
	movl	%eax, -16(%ebp)
	.loc 1 366 0
	jmp	.L83
.L80:
	.loc 1 362 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L78:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L79
.L83:
	.loc 1 368 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 360 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L76:
	cmpl	$0, -16(%ebp)
	jne	.L77
	.loc 1 371 0
	movl	-20(%ebp), %eax
	.loc 1 372 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE25:
	.size	remove_dup_dirs, .-remove_dup_dirs
	.type	merge_include_chains, @function
merge_include_chains:
.LFB26:
	.loc 1 382 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	pushl	%edi
.LCFI28:
	pushl	%esi
.LCFI29:
	subl	$48, %esp
.LCFI30:
	.loc 1 385 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 387 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 388 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 389 0
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 390 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 393 0
	cmpl	$0, -20(%ebp)
	je	.L87
	.loc 1 394 0
	movl	-12(%ebp), %eax
	movl	28(%eax), %edx
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%edx)
	jmp	.L89
.L87:
	.loc 1 396 0
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, -20(%ebp)
.L89:
	.loc 1 398 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L90
	.loc 1 399 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L92
.L90:
	.loc 1 401 0
	movl	-20(%ebp), %eax
	movl	%eax, -28(%ebp)
.L92:
	.loc 1 416 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_dup_nonsys_dirs
	.loc 1 417 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_dup_dirs
	.loc 1 419 0
	movl	-24(%ebp), %eax
	testl	%eax, %eax
	je	.L93
	.loc 1 421 0
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_dup_dirs
	movl	%eax, -16(%ebp)
	.loc 1 422 0
	movl	-28(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 424 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_dup_nonsys_dirs
	movl	%eax, -16(%ebp)
	.loc 1 427 0
	cmpl	$0, -16(%ebp)
	je	.L100
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L100
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	.L100
	movl	-16(%ebp), %eax
	movl	16(%eax), %esi
	movl	20(%eax), %edi
	movl	-28(%ebp), %eax
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.L100
	.loc 1 429 0
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_dup_dir
	movl	%eax, -28(%ebp)
	jmp	.L100
.L93:
	.loc 1 432 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
.L100:
	.loc 1 434 0
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 368(%eax)
	.loc 1 435 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 372(%eax)
	.loc 1 436 0
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE26:
	.size	merge_include_chains, .-merge_include_chains
	.section	.rodata
	.align 32
	.type	lang_defaults, @object
	.size	lang_defaults, 56
lang_defaults:
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.text
.globl cpp_set_lang
	.type	cpp_set_lang, @function
cpp_set_lang:
.LFB27:
	.loc 1 469 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	subl	$16, %esp
.LCFI33:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 470 0
	movl	12(%ebp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	leal	lang_defaults@GOTOFF(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 472 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 388(%edx)
	.loc 1 474 0
	movl	-4(%ebp), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 423(%eax)
	.loc 1 475 0
	movl	-4(%ebp), %eax
	movzbl	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 393(%eax)
	.loc 1 476 0
	movl	-4(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 400(%eax)
	.loc 1 477 0
	movl	-4(%ebp), %eax
	movzbl	3(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 424(%eax)
	.loc 1 478 0
	movl	-4(%ebp), %eax
	movzbl	3(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 398(%eax)
	.loc 1 479 0
	movl	-4(%ebp), %eax
	movzbl	4(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 420(%eax)
	.loc 1 480 0
	movl	-4(%ebp), %eax
	movzbl	5(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 394(%eax)
	.loc 1 481 0
	movl	-4(%ebp), %eax
	movzbl	6(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 399(%eax)
	.loc 1 482 0
	leave
	ret
.LFE27:
	.size	cpp_set_lang, .-cpp_set_lang
	.local	initialized.7394
	.comm	initialized.7394,4,4
	.type	init_library, @function
init_library:
.LFB28:
	.loc 1 501 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 504 0
	movl	initialized.7394@GOTOFF(%ecx), %eax
	testl	%eax, %eax
	jne	.L107
	.loc 1 506 0
	movl	$1, initialized.7394@GOTOFF(%ecx)
.L107:
	.loc 1 519 0
	popl	%ebp
	ret
.LFE28:
	.size	init_library, .-init_library
.globl cpp_create_reader
	.type	cpp_create_reader, @function
cpp_create_reader:
.LFB29:
	.loc 1 525 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$36, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 529 0
	call	init_library
	.loc 1 531 0
	movl	$528, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 533 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_set_lang@PLT
	.loc 1 534 0
	movl	-8(%ebp), %eax
	movb	$1, 409(%eax)
	.loc 1 535 0
	movl	-8(%ebp), %eax
	movb	$1, 410(%eax)
	.loc 1 536 0
	movl	-8(%ebp), %eax
	movb	$1, 396(%eax)
	.loc 1 537 0
	movl	-8(%ebp), %eax
	movb	$1, 397(%eax)
	.loc 1 538 0
	movl	-8(%ebp), %eax
	movb	$1, 431(%eax)
	.loc 1 539 0
	movl	-8(%ebp), %eax
	movl	$8, 360(%eax)
	.loc 1 540 0
	movl	-8(%ebp), %eax
	movb	$1, 432(%eax)
	.loc 1 541 0
	movl	-8(%ebp), %eax
	movb	$1, 413(%eax)
	.loc 1 542 0
	movl	-8(%ebp), %eax
	movb	$1, 404(%eax)
	.loc 1 543 0
	movl	-8(%ebp), %eax
	movzbl	423(%eax), %eax
	testb	%al, %al
	sete	%dl
	movl	-8(%ebp), %eax
	movb	%dl, 412(%eax)
	.loc 1 545 0
	movl	$56, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 364(%eax)
	.loc 1 550 0
	movl	-8(%ebp), %eax
	movl	$32, 444(%eax)
	.loc 1 551 0
	movl	-8(%ebp), %eax
	movl	$8, 448(%eax)
	.loc 1 552 0
	movl	-8(%ebp), %eax
	movl	$32, 456(%eax)
	.loc 1 553 0
	movl	-8(%ebp), %eax
	movl	$32, 452(%eax)
	.loc 1 554 0
	movl	-8(%ebp), %eax
	movb	$0, 460(%eax)
	.loc 1 555 0
	movl	-8(%ebp), %eax
	movb	$1, 461(%eax)
	.loc 1 559 0
	movl	-8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	init_line_maps@PLT
	.loc 1 560 0
	movl	-8(%ebp), %eax
	movl	$1, 52(%eax)
	.loc 1 563 0
	movl	-8(%ebp), %eax
	movzbl	396(%eax), %eax
	testb	%al, %al
	sete	%dl
	movl	-8(%ebp), %eax
	movb	%dl, 13(%eax)
	.loc 1 566 0
	movl	-8(%ebp), %eax
	movb	$67, 194(%eax)
	.loc 1 567 0
	movl	-8(%ebp), %eax
	movl	$0, 196(%eax)
	.loc 1 568 0
	movl	-8(%ebp), %eax
	movb	$24, 210(%eax)
	.loc 1 569 0
	movl	-8(%ebp), %eax
	movb	$0, 211(%eax)
	.loc 1 572 0
	movl	-8(%ebp), %eax
	subl	$-128, %eax
	movl	$250, 4(%esp)
	movl	%eax, (%esp)
	call	_cpp_init_tokenrun@PLT
	.loc 1 573 0
	movl	-8(%ebp), %edx
	subl	$-128, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 144(%eax)
	.loc 1 574 0
	movl	-8(%ebp), %eax
	movl	136(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 124(%eax)
	.loc 1 577 0
	movl	-8(%ebp), %edx
	addl	$72, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 100(%eax)
	.loc 1 578 0
	movl	-8(%ebp), %eax
	movl	$0, 92(%eax)
	.loc 1 579 0
	movl	-8(%ebp), %eax
	movl	$0, 72(%eax)
	movl	-8(%ebp), %eax
	movl	72(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 582 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_get_buff@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 60(%eax)
	.loc 1 583 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_get_buff@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 64(%eax)
	.loc 1 586 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_expand_op_stack@PLT
	.loc 1 589 0
	movl	-8(%ebp), %eax
	addl	$268, %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 591 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_init_includes@PLT
	.loc 1 593 0
	movl	-8(%ebp), %eax
	.loc 1 594 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	cpp_create_reader, .-cpp_create_reader
.globl cpp_destroy
	.type	cpp_destroy, @function
cpp_destroy:
.LFB30:
	.loc 1 601 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$52, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 606 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	48(%eax), %eax
	movl	%eax, (%esp)
	call	free_chain
	.loc 1 607 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 608 0
	movl	8(%ebp), %eax
	movl	352(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 610 0
	jmp	.L111
.L112:
	.loc 1 611 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_buffer@PLT
.L111:
	.loc 1 610 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L112
	.loc 1 613 0
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	testl	%eax, %eax
	je	.L114
	.loc 1 614 0
	movl	8(%ebp), %eax
	movl	508(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L114:
	.loc 1 616 0
	movl	8(%ebp), %eax
	movl	160(%eax), %eax
	testl	%eax, %eax
	je	.L116
	.loc 1 618 0
	movl	8(%ebp), %eax
	movl	160(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 619 0
	movl	8(%ebp), %eax
	movl	$0, 160(%eax)
	.loc 1 620 0
	movl	8(%ebp), %eax
	movl	$0, 164(%eax)
.L116:
	.loc 1 623 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	je	.L118
	.loc 1 624 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	movl	%eax, (%esp)
	call	deps_free@PLT
.L118:
.LBB2:
	.loc 1 625 0
	movl	8(%ebp), %eax
	addl	$268, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L120
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L120
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L123
.L120:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L123:
.LBE2:
	.loc 1 627 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_destroy_hashtable@PLT
	.loc 1 628 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_cleanup_includes@PLT
	.loc 1 630 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, (%esp)
	call	_cpp_free_buff@PLT
	.loc 1 631 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, (%esp)
	call	_cpp_free_buff@PLT
	.loc 1 632 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	_cpp_free_buff@PLT
	.loc 1 634 0
	movl	8(%ebp), %eax
	subl	$-128, %eax
	movl	%eax, -20(%ebp)
	jmp	.L124
.L125:
	.loc 1 636 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 637 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 638 0
	movl	8(%ebp), %eax
	subl	$-128, %eax
	cmpl	-20(%ebp), %eax
	je	.L126
	.loc 1 639 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L126:
	.loc 1 634 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L124:
	cmpl	$0, -20(%ebp)
	jne	.L125
	.loc 1 642 0
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L129
.L130:
	.loc 1 644 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 645 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 646 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 642 0
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
.L129:
	cmpl	$0, -36(%ebp)
	jne	.L130
	.loc 1 649 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L132
.L133:
	.loc 1 651 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 652 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 649 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
.L132:
	cmpl	$0, -28(%ebp)
	jne	.L133
	.loc 1 655 0
	movl	8(%ebp), %eax
	addl	$24, %eax
	movl	%eax, (%esp)
	call	free_line_maps@PLT
	.loc 1 656 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 657 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	cpp_destroy, .-cpp_destroy
	.section	.rodata
.LC5:
	.string	"__TIME__"
.LC6:
	.string	"__DATE__"
.LC7:
	.string	"__FILE__"
.LC8:
	.string	"__BASE_FILE__"
.LC9:
	.string	"__LINE__"
.LC10:
	.string	"__INCLUDE_LEVEL__"
.LC11:
	.string	"_Pragma"
.LC12:
	.string	"__STDC__"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	builtin_array, @object
	.size	builtin_array, 64
builtin_array:
	.long	.LC5
	.value	8
	.value	5
	.long	.LC6
	.value	8
	.value	1
	.long	.LC7
	.value	8
	.value	2
	.long	.LC8
	.value	13
	.value	3
	.long	.LC9
	.value	8
	.value	0
	.long	.LC10
	.value	17
	.value	4
	.long	.LC11
	.value	7
	.value	7
	.long	.LC12
	.value	8
	.value	6
	.section	.rodata
.LC13:
	.string	"and"
.LC14:
	.string	"and_eq"
.LC15:
	.string	"bitand"
.LC16:
	.string	"bitor"
.LC17:
	.string	"compl"
.LC18:
	.string	"not"
.LC19:
	.string	"not_eq"
.LC20:
	.string	"or"
.LC21:
	.string	"or_eq"
.LC22:
	.string	"xor"
.LC23:
	.string	"xor_eq"
	.section	.data.rel.ro.local
	.align 32
	.type	operator_array, @object
	.size	operator_array, 88
operator_array:
	.long	.LC13
	.value	3
	.value	17
	.long	.LC14
	.value	6
	.value	34
	.long	.LC15
	.value	6
	.value	9
	.long	.LC16
	.value	5
	.value	10
	.long	.LC17
	.value	5
	.value	16
	.long	.LC18
	.value	3
	.value	1
	.long	.LC19
	.value	6
	.value	26
	.long	.LC20
	.value	2
	.value	18
	.long	.LC21
	.value	5
	.value	35
	.long	.LC22
	.value	3
	.value	11
	.long	.LC23
	.value	6
	.value	36
	.text
	.type	mark_named_operators, @function
mark_named_operators:
.LFB31:
	.loc 1 715 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$36, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 718 0
	leal	operator_array@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 719 0
	jmp	.L137
.L138:
.LBB3:
	.loc 1 722 0
	movl	-12(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 723 0
	movl	-8(%ebp), %eax
	movzbl	17(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 724 0
	movl	-12(%ebp), %eax
	movzwl	6(%eax), %eax
	movzwl	%ax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
.LBE3:
	.loc 1 720 0
	addl	$8, -12(%ebp)
.L137:
	.loc 1 719 0
	leal	88+operator_array@GOTOFF(%ebx), %eax
	cmpl	%eax, -12(%ebp)
	jb	.L138
	.loc 1 726 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	mark_named_operators, .-mark_named_operators
	.section	.rodata
.LC24:
	.string	"__cplusplus 1"
.LC25:
	.string	"__ASSEMBLER__ 1"
.LC26:
	.string	"__STDC_VERSION__ 199409L"
.LC27:
	.string	"__STDC_VERSION__ 199901L"
.LC28:
	.string	"__OBJC__ 1"
	.text
	.type	init_builtins, @function
init_builtins:
.LFB32:
	.loc 1 733 0
	pushl	%ebp
.LCFI48:
	movl	%esp, %ebp
.LCFI49:
	pushl	%ebx
.LCFI50:
	subl	$36, %esp
.LCFI51:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 735 0
	movl	$8, -12(%ebp)
	.loc 1 737 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L142
	.loc 1 738 0
	subl	$2, -12(%ebp)
.L142:
	.loc 1 740 0
	leal	builtin_array@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L144
.L145:
.LBB4:
	.loc 1 742 0
	movl	-16(%ebp), %eax
	movzwl	4(%eax), %eax
	movzwl	%ax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_lookup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 743 0
	movl	-8(%ebp), %eax
	movb	$1, 16(%eax)
	.loc 1 744 0
	movl	-8(%ebp), %eax
	movzbl	17(%eax), %eax
	movl	%eax, %edx
	orl	$20, %edx
	movl	-8(%ebp), %eax
	movb	%dl, 17(%eax)
	.loc 1 745 0
	movl	-16(%ebp), %eax
	movzwl	6(%eax), %eax
	movzwl	%ax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
.LBE4:
	.loc 1 740 0
	addl	$8, -16(%ebp)
.L144:
	movl	-12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	leal	builtin_array@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	.L145
	.loc 1 748 0
	movl	8(%ebp), %eax
	movzbl	393(%eax), %eax
	testb	%al, %al
	je	.L147
	.loc 1 749 0
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_define_builtin@PLT
	jmp	.L149
.L147:
	.loc 1 750 0
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	cmpl	$7, %eax
	jne	.L150
	.loc 1 751 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_define_builtin@PLT
	jmp	.L149
.L150:
	.loc 1 752 0
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	cmpl	$3, %eax
	jne	.L152
	.loc 1 753 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_define_builtin@PLT
	jmp	.L149
.L152:
	.loc 1 754 0
	movl	8(%ebp), %eax
	movzbl	423(%eax), %eax
	testb	%al, %al
	je	.L149
	.loc 1 755 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_define_builtin@PLT
.L149:
	.loc 1 757 0
	movl	8(%ebp), %eax
	movzbl	395(%eax), %eax
	testb	%al, %al
	je	.L155
	.loc 1 758 0
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_define_builtin@PLT
.L155:
	.loc 1 760 0
	movl	8(%ebp), %eax
	movl	344(%eax), %eax
	testl	%eax, %eax
	je	.L159
	.loc 1 761 0
	movl	8(%ebp), %eax
	movl	344(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L159:
	.loc 1 762 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	init_builtins, .-init_builtins
	.section	.rodata
.LC29:
	.string	"CPATH"
.LC30:
	.string	"C_INCLUDE_PATH"
.LC31:
	.string	"CPLUS_INCLUDE_PATH"
.LC32:
	.string	"OBJC_INCLUDE_PATH"
.LC33:
	.string	"OBJCPLUS_INCLUDE_PATH"
	.text
	.type	init_standard_includes, @function
init_standard_includes:
.LFB33:
	.loc 1 768 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	pushl	%edi
.LCFI54:
	pushl	%esi
.LCFI55:
	pushl	%ebx
.LCFI56:
	subl	$92, %esp
.LCFI57:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 768 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 771 0
	movl	-64(%ebp), %eax
	movl	380(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 779 0
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -56(%ebp)
	.loc 1 780 0
	cmpl	$0, -56(%ebp)
	je	.L161
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L161
	.loc 1 781 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	path_include
.L161:
	.loc 1 783 0
	movl	-64(%ebp), %eax
	movzbl	395(%eax), %eax
	movzbl	%al, %eax
	leal	(%eax,%eax), %edx
	movl	-64(%ebp), %eax
	movzbl	393(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	%edx, -72(%ebp)
	cmpl	$1, -72(%ebp)
	je	.L166
	cmpl	$1, -72(%ebp)
	jg	.L169
	cmpl	$0, -72(%ebp)
	je	.L165
	jmp	.L164
.L169:
	cmpl	$2, -72(%ebp)
	je	.L167
	cmpl	$3, -72(%ebp)
	je	.L168
	jmp	.L164
.L165:
	.loc 1 786 0
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -56(%ebp)
	.loc 1 787 0
	jmp	.L164
.L166:
	.loc 1 789 0
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -56(%ebp)
	.loc 1 790 0
	jmp	.L164
.L167:
	.loc 1 792 0
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -56(%ebp)
	.loc 1 793 0
	jmp	.L164
.L168:
	.loc 1 795 0
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -56(%ebp)
.L164:
	.loc 1 798 0
	cmpl	$0, -56(%ebp)
	je	.L170
	movl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L170
	.loc 1 799 0
	movl	$1, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	path_include
.L170:
	.loc 1 803 0
	cmpl	$0, -48(%ebp)
	je	.L173
	movl	cpp_GCC_INCLUDE_DIR_len@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L173
.LBB5:
	.loc 1 807 0
	movl	cpp_GCC_INCLUDE_DIR_len@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 808 0
	movl	-44(%ebp), %eax
	addl	$1, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	16(%esp), %edi
	movl	%edi, -68(%ebp)
	movl	-68(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 809 0
	movl	-48(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -76(%ebp)
	movl	$0, %eax
	cld
	movl	-76(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 811 0
	movl	-44(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	cpp_GCC_INCLUDE_DIR@GOT(%ebx), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 812 0
	movl	-44(%ebp), %eax
	addl	-40(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 814 0
	movl	cpp_include_defaults@GOT(%ebx), %eax
	movl	%eax, -52(%ebp)
	jmp	.L176
.L177:
	.loc 1 817 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L178
	movl	-64(%ebp), %eax
	movzbl	393(%eax), %eax
	testb	%al, %al
	je	.L180
	movl	-64(%ebp), %eax
	movzbl	428(%eax), %eax
	testb	%al, %al
	jne	.L180
.L178:
	.loc 1 822 0
	movl	-44(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L180
.LBB6:
	.loc 1 825 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -80(%ebp)
	movl	$0, %eax
	cld
	movl	-80(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 826 0
	movl	-32(%ebp), %eax
	addl	-36(%ebp), %eax
	subl	-44(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 827 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 828 0
	movl	-36(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-48(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 829 0
	movl	-44(%ebp), %edx
	movl	-32(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 833 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	append_include_chain
.L180:
.LBE6:
	.loc 1 814 0
	addl	$16, -52(%ebp)
.L176:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L177
.L173:
.LBE5:
	.loc 1 840 0
	movl	cpp_include_defaults@GOT(%ebx), %eax
	movl	%eax, -52(%ebp)
	jmp	.L183
.L184:
	.loc 1 843 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L185
	movl	-64(%ebp), %eax
	movzbl	393(%eax), %eax
	testb	%al, %al
	je	.L187
	movl	-64(%ebp), %eax
	movzbl	428(%eax), %eax
	testb	%al, %al
	jne	.L187
.L185:
.LBB7:
	.loc 1 847 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	update_path@PLT
	movl	%eax, -20(%ebp)
	.loc 1 848 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	append_include_chain
.L187:
.LBE7:
	.loc 1 840 0
	addl	$16, -52(%ebp)
.L183:
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L184
	.loc 1 851 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L191
	call	__stack_chk_fail_local
.L191:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	init_standard_includes, .-init_standard_includes
	.type	push_include, @function
push_include:
.LFB34:
	.loc 1 859 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	pushl	%edi
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$32, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 864 0
	movb	$62, -18(%ebp)
	.loc 1 865 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 866 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 868 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 870 0
	movl	$3, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_execute_include@PLT
	movzbl	%al, %eax
	.loc 1 871 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	push_include, .-push_include
	.type	free_chain, @function
free_chain:
.LFB35:
	.loc 1 877 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$20, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 880 0
	jmp	.L195
.L196:
	.loc 1 882 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 883 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 884 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%ebp)
.L195:
	.loc 1 880 0
	cmpl	$0, 8(%ebp)
	jne	.L196
	.loc 1 886 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	free_chain, .-free_chain
.globl cpp_add_dependency_target
	.type	cpp_add_dependency_target, @function
cpp_add_dependency_target:
.LFB36:
	.loc 1 947 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$20, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 948 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L200
	.loc 1 949 0
	call	deps_init@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 220(%eax)
.L200:
	.loc 1 951 0
	movl	8(%ebp), %eax
	movl	220(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	deps_add_target@PLT
	.loc 1 952 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	cpp_add_dependency_target, .-cpp_add_dependency_target
	.section	.rodata
	.align 4
.LC34:
	.string	"#include \"...\" search starts here:\n"
	.align 4
.LC35:
	.string	"#include <...> search starts here:\n"
.LC36:
	.string	" %s\n"
.LC37:
	.string	"End of search list.\n"
	.text
.globl cpp_read_main_file
	.type	cpp_read_main_file, @function
cpp_read_main_file:
.LFB37:
	.loc 1 963 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$36, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 966 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	post_options
	.loc 1 971 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_init_hashtable@PLT
	.loc 1 974 0
	movl	8(%ebp), %eax
	movzbl	427(%eax), %eax
	testb	%al, %al
	jne	.L204
	.loc 1 975 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_standard_includes
.L204:
	.loc 1 977 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_include_chains
	.loc 1 980 0
	movl	8(%ebp), %eax
	movzbl	392(%eax), %eax
	testb	%al, %al
	je	.L206
.LBB8:
	.loc 1 983 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 984 0
	movl	8(%ebp), %eax
	movl	368(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L208
.L209:
	.loc 1 986 0
	movl	8(%ebp), %eax
	movl	372(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.L210
	.loc 1 987 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$35, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L210:
	.loc 1 988 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 984 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L208:
	cmpl	$0, -8(%ebp)
	jne	.L209
	.loc 1 990 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L206:
.LBE8:
	.loc 1 993 0
	movl	8(%ebp), %eax
	movl	436(%eax), %eax
	testl	%eax, %eax
	je	.L213
	.loc 1 995 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L215
	.loc 1 996 0
	call	deps_init@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 220(%eax)
.L215:
	.loc 1 999 0
	movl	8(%ebp), %eax
	movl	220(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	deps_add_default_target@PLT
.L213:
	.loc 1 1003 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_read_file@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L217
	.loc 1 1004 0
	movl	$0, -24(%ebp)
	jmp	.L219
.L217:
	.loc 1 1009 0
	movl	8(%ebp), %eax
	movzbl	401(%eax), %eax
	testb	%al, %al
	setne	%dl
	movl	8(%ebp), %eax
	movb	%dl, 44(%eax)
	.loc 1 1017 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_original_filename
	.loc 1 1019 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L219:
	movl	-24(%ebp), %eax
	.loc 1 1020 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	cpp_read_main_file, .-cpp_read_main_file
	.type	read_original_filename, @function
read_original_filename:
.LFB38:
	.loc 1 1029 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$36, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1034 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_direct@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1035 0
	movl	-12(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$41, %al
	jne	.L222
	.loc 1 1037 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_lex_direct@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1038 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
	.loc 1 1041 0
	movl	-8(%ebp), %eax
	movzbl	6(%eax), %eax
	cmpb	$58, %al
	jne	.L222
	.loc 1 1043 0
	movl	-12(%ebp), %eax
	movzbl	7(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_handle_directive@PLT
	.loc 1 1044 0
	jmp	.L226
.L222:
	.loc 1 1049 0
	movl	$1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
.L226:
	.loc 1 1050 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	read_original_filename, .-read_original_filename
	.section	.rodata
.LC38:
	.string	"<built-in>"
.LC39:
	.string	"<command line>"
	.text
.globl cpp_finish_options
	.type	cpp_finish_options, @function
cpp_finish_options:
.LFB39:
	.loc 1 1058 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$36, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1060 0
	movl	8(%ebp), %eax
	movzbl	393(%eax), %eax
	testb	%al, %al
	je	.L228
	movl	8(%ebp), %eax
	movzbl	432(%eax), %eax
	testb	%al, %al
	je	.L228
	.loc 1 1061 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_named_operators
.L228:
	.loc 1 1065 0
	movl	8(%ebp), %eax
	movzbl	426(%eax), %eax
	testb	%al, %al
	jne	.L231
.LBB9:
	.loc 1 1070 0
	movl	8(%ebp), %eax
	movl	$-1, 176(%eax)
	.loc 1 1071 0
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do_file_change@PLT
	.loc 1 1072 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_builtins
	.loc 1 1073 0
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do_file_change@PLT
	.loc 1 1074 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L233
.L234:
	.loc 1 1075 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 1074 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L233:
	cmpl	$0, -8(%ebp)
	jne	.L234
	.loc 1 1080 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L236
.L237:
	.loc 1 1081 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_include
	testb	%al, %al
	je	.L238
	.loc 1 1082 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_scan_nooutput@PLT
.L238:
	.loc 1 1080 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L236:
	cmpl	$0, -8(%ebp)
	jne	.L237
	.loc 1 1084 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	leal	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	.loc 1 1085 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_maybe_push_include_file@PLT
.L231:
.LBE9:
	.loc 1 1088 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 176(%eax)
	.loc 1 1090 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, (%esp)
	call	free_chain
	.loc 1 1091 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_chain
	.loc 1 1092 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	cpp_finish_options, .-cpp_finish_options
.globl _cpp_maybe_push_include_file
	.type	_cpp_maybe_push_include_file, @function
_cpp_maybe_push_include_file:
.LFB40:
	.loc 1 1098 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$36, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1099 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	testl	%eax, %eax
	je	.L251
.LBB10:
	.loc 1 1101 0
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1103 0
	jmp	.L245
.L246:
	.loc 1 1104 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L245:
	.loc 1 1103 0
	cmpl	$0, -8(%ebp)
	je	.L247
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_include
	xorl	$1, %eax
	testb	%al, %al
	jne	.L246
.L247:
	.loc 1 1106 0
	cmpl	$0, -8(%ebp)
	je	.L249
	.loc 1 1107 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	jmp	.L251
.L249:
	.loc 1 1111 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %eax
	movl	$0, 16(%esp)
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_do_file_change@PLT
	.loc 1 1114 0
	movl	8(%ebp), %eax
	movl	$0, 108(%eax)
.L251:
.LBE10:
	.loc 1 1117 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	_cpp_maybe_push_include_file, .-_cpp_maybe_push_include_file
.globl cpp_finish
	.type	cpp_finish, @function
cpp_finish:
.LFB41:
	.loc 1 1129 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$20, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1131 0
	movl	8(%ebp), %eax
	movzbl	422(%eax), %eax
	testb	%al, %al
	je	.L255
	.loc 1 1132 0
	movl	$0, 8(%esp)
	movl	_cpp_warn_if_unused_macro@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_forall_identifiers@PLT
	.loc 1 1139 0
	jmp	.L255
.L256:
	.loc 1 1140 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_pop_buffer@PLT
.L255:
	.loc 1 1139 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L256
	.loc 1 1143 0
	movl	8(%ebp), %eax
	movl	436(%eax), %eax
	testl	%eax, %eax
	je	.L258
	cmpl	$0, 12(%ebp)
	je	.L258
	movl	8(%ebp), %eax
	movl	156(%eax), %eax
	testl	%eax, %eax
	jne	.L258
	.loc 1 1146 0
	movl	8(%ebp), %eax
	movl	220(%eax), %edx
	movl	$72, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	deps_write@PLT
	.loc 1 1148 0
	movl	8(%ebp), %eax
	movzbl	441(%eax), %eax
	testb	%al, %al
	je	.L258
	.loc 1 1149 0
	movl	8(%ebp), %eax
	movl	220(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	deps_phony_targets@PLT
.L258:
	.loc 1 1153 0
	movl	8(%ebp), %eax
	movzbl	401(%eax), %eax
	testb	%al, %al
	je	.L263
	.loc 1 1154 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_cpp_report_missing_guards@PLT
.L263:
	.loc 1 1156 0
	movl	8(%ebp), %eax
	movl	156(%eax), %eax
	.loc 1 1157 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	cpp_finish, .-cpp_finish
	.type	new_pending_directive, @function
new_pending_directive:
.LFB42:
	.loc 1 1165 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$20, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1167 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1169 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1170 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1171 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 1172 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L267
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L269
.L267:
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
.L269:
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1173 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	new_pending_directive, .-new_pending_directive
	.section	.rodata
.LC40:
	.string	"A"
.LC41:
	.string	"assertion missing after %s"
.LC42:
	.string	"D"
.LC43:
	.string	"macro name missing after %s"
.LC44:
	.string	"I"
	.align 4
.LC45:
	.string	"directory name missing after %s"
.LC46:
	.string	"U"
.LC47:
	.string	"idirafter"
.LC48:
	.string	"imacros"
.LC49:
	.string	"file name missing after %s"
.LC50:
	.string	"include"
.LC51:
	.string	"iprefix"
.LC52:
	.string	"path name missing after %s"
.LC53:
	.string	"isystem"
.LC54:
	.string	"iwithprefix"
.LC55:
	.string	"iwithprefixbefore"
	.section	.data.rel.ro.local
	.align 32
	.type	cl_options, @object
	.size	cl_options, 176
cl_options:
	.long	.LC40
	.long	.LC41
	.long	1
	.long	0
	.long	.LC42
	.long	.LC43
	.long	1
	.long	1
	.long	.LC44
	.long	.LC45
	.long	1
	.long	2
	.long	.LC46
	.long	.LC43
	.long	1
	.long	3
	.long	.LC47
	.long	.LC45
	.long	9
	.long	4
	.long	.LC48
	.long	.LC49
	.long	7
	.long	5
	.long	.LC50
	.long	.LC49
	.long	7
	.long	6
	.long	.LC51
	.long	.LC52
	.long	7
	.long	7
	.long	.LC53
	.long	.LC45
	.long	7
	.long	8
	.long	.LC54
	.long	.LC45
	.long	11
	.long	9
	.long	.LC55
	.long	.LC45
	.long	17
	.long	10
	.text
	.type	parse_option, @function
parse_option:
.LFB43:
	.loc 1 1235 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$52, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1240 0
	movl	$0, -20(%ebp)
	.loc 1 1241 0
	movl	$11, -16(%ebp)
	.loc 1 1243 0
	jmp	.L292
.L273:
	.loc 1 1245 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	shrl	%eax
	movl	%eax, -24(%ebp)
	.loc 1 1247 0
	movl	-24(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1248 0
	movl	-24(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1250 0
	cmpl	$0, -8(%ebp)
	jle	.L274
	.loc 1 1251 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	jmp	.L272
.L274:
	.loc 1 1252 0
	cmpl	$0, -8(%ebp)
	jns	.L276
	.loc 1 1253 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	jmp	.L272
.L276:
	.loc 1 1256 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L278
	.loc 1 1257 0
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L280
.L278:
	.loc 1 1263 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1264 0
	movl	-24(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L272
	.loc 1 1269 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1270 0
	jmp	.L282
.L283:
	.loc 1 1272 0
	movl	-20(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1273 0
	movl	-20(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L284
	.loc 1 1275 0
	movl	-12(%ebp), %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L286
	.loc 1 1276 0
	movl	-20(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L280
.L286:
	.loc 1 1277 0
	movl	-20(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L288
	.loc 1 1278 0
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
.L288:
	.loc 1 1270 0
	addl	$1, -20(%ebp)
.L282:
	cmpl	$10, -20(%ebp)
	jbe	.L283
.L284:
	.loc 1 1280 0
	movl	-16(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L280
.L272:
.L292:
	.loc 1 1243 0
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L273
	.loc 1 1285 0
	movl	$-1, -40(%ebp)
.L280:
	movl	-40(%ebp), %eax
	.loc 1 1286 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	parse_option, .-parse_option
	.section	.rodata
.LC56:
	.string	"-"
.LC57:
	.string	"-I- specified twice"
	.text
.globl cpp_handle_option
	.type	cpp_handle_option, @function
cpp_handle_option:
.LFB44:
	.loc 1 1296 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%edi
.LCFI101:
	pushl	%esi
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$92, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1297 0
	movl	$0, -48(%ebp)
	.loc 1 1298 0
	movl	8(%ebp), %eax
	movl	364(%eax), %eax
	movl	%eax, -44(%ebp)
.LBB11:
	.loc 1 1303 0
	movl	$0, -32(%ebp)
	.loc 1 1306 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	parse_option
	movl	%eax, -36(%ebp)
	.loc 1 1307 0
	cmpl	$0, -36(%ebp)
	jns	.L294
	.loc 1 1308 0
	movl	-48(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L296
.L294:
	.loc 1 1310 0
	movl	-36(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	12(%eax,%edx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1311 0
	movl	-36(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L297
	.loc 1 1313 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	leal	(%ecx,%eax), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1314 0
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L297
	.loc 1 1316 0
	addl	$1, -48(%ebp)
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1317 0
	cmpl	$0, -32(%ebp)
	jne	.L297
	.loc 1 1319 0
	movl	-48(%ebp), %eax
	sall	$2, %eax
	addl	16(%ebp), %eax
	subl	$4, %eax
	movl	(%eax), %ecx
	movl	-36(%ebp), %eax
	leal	cl_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1321 0
	movl	12(%ebp), %ecx
	movl	%ecx, -64(%ebp)
	jmp	.L296
.L297:
	.loc 1 1326 0
	cmpl	$11, -40(%ebp)
	ja	.L301
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	.L312@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L312:
	.long	.L302@GOTOFF
	.long	.L303@GOTOFF
	.long	.L304@GOTOFF
	.long	.L305@GOTOFF
	.long	.L306@GOTOFF
	.long	.L307@GOTOFF
	.long	.L307@GOTOFF
	.long	.L308@GOTOFF
	.long	.L309@GOTOFF
	.long	.L310@GOTOFF
	.long	.L310@GOTOFF
	.long	.L301@GOTOFF
	.text
.L303:
	.loc 1 1332 0
	movl	cpp_define@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	new_pending_directive
	.loc 1 1333 0
	jmp	.L301
.L308:
	.loc 1 1335 0
	movl	8(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 380(%edx)
	.loc 1 1336 0
	movl	-32(%ebp), %eax
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
	movl	8(%ebp), %eax
	movl	%edx, 384(%eax)
	.loc 1 1337 0
	jmp	.L301
.L302:
	.loc 1 1340 0
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L313
	.loc 1 1341 0
	movl	-32(%ebp), %edx
	addl	$1, %edx
	movl	cpp_unassert@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	new_pending_directive
	jmp	.L301
.L313:
	.loc 1 1343 0
	movl	cpp_assert@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	new_pending_directive
	.loc 1 1344 0
	jmp	.L301
.L305:
	.loc 1 1346 0
	movl	cpp_undef@GOT(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	new_pending_directive
	.loc 1 1347 0
	jmp	.L301
.L304:
	.loc 1 1349 0
	movl	-32(%ebp), %eax
	movl	%eax, -72(%ebp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	movl	$2, -80(%ebp)
	cld
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
	jne	.L316
	.loc 1 1357 0
	movl	8(%ebp), %eax
	movzbl	419(%eax), %eax
	testb	%al, %al
	jne	.L318
	.loc 1 1359 0
	movl	-44(%ebp), %eax
	movl	16(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1360 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 1361 0
	movl	-44(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 1362 0
	movl	-44(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 1363 0
	movl	8(%ebp), %eax
	movb	$1, 419(%eax)
	jmp	.L301
.L318:
	.loc 1 1367 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_error@PLT
	.loc 1 1368 0
	movl	12(%ebp), %esi
	movl	%esi, -64(%ebp)
	jmp	.L296
.L316:
	.loc 1 1372 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_include_chain
	.loc 1 1373 0
	jmp	.L301
.L309:
	.loc 1 1377 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_include_chain
	.loc 1 1378 0
	jmp	.L301
.L307:
.LBB12:
	.loc 1 1383 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1384 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1385 0
	movl	-28(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1387 0
	cmpl	$6, -40(%ebp)
	jne	.L321
	.loc 1 1388 0
	movl	-44(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	jne	.L323
	movl	-44(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 48(%edx)
	jmp	.L325
.L323:
	movl	-44(%ebp), %eax
	movl	52(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L325:
	movl	-44(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 52(%edx)
	jmp	.L301
.L321:
	.loc 1 1390 0
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	.L327
	movl	-44(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 40(%edx)
	jmp	.L329
.L327:
	movl	-44(%ebp), %eax
	movl	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L329:
	movl	-44(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 44(%edx)
	.loc 1 1392 0
	jmp	.L301
.L310:
.LBE12:
.LBB13:
	.loc 1 1404 0
	movl	-32(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -84(%ebp)
	movl	$0, %eax
	cld
	movl	-84(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1406 0
	movl	8(%ebp), %eax
	movl	380(%eax), %eax
	testl	%eax, %eax
	je	.L330
.LBB14:
	.loc 1 1408 0
	movl	8(%ebp), %eax
	movl	384(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1409 0
	movl	-20(%ebp), %eax
	addl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1410 0
	movl	8(%ebp), %eax
	movl	380(%eax), %edx
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1411 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	addl	-24(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	jmp	.L332
.L330:
.LBE14:
	.loc 1 1413 0
	movl	cpp_GCC_INCLUDE_DIR_len@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L333
	.loc 1 1415 0
	movl	cpp_GCC_INCLUDE_DIR_len@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1416 0
	movl	cpp_GCC_INCLUDE_DIR_len@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	cpp_GCC_INCLUDE_DIR@GOT(%ebx), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 1417 0
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	cpp_GCC_INCLUDE_DIR_len@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	-24(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	jmp	.L332
.L333:
	.loc 1 1420 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -24(%ebp)
.L332:
	.loc 1 1422 0
	cmpl	$9, -40(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_include_chain
	.loc 1 1425 0
	jmp	.L301
.L306:
.LBE13:
	.loc 1 1428 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	append_include_chain
.L301:
.LBE11:
	.loc 1 1432 0
	movl	-48(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -64(%ebp)
.L296:
	movl	-64(%ebp), %eax
	.loc 1 1433 0
	addl	$92, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	cpp_handle_option, .-cpp_handle_option
.globl cpp_handle_options
	.type	cpp_handle_options, @function
cpp_handle_options:
.LFB45:
	.loc 1 1444 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$36, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1448 0
	movl	$0, -12(%ebp)
	jmp	.L337
.L338:
	.loc 1 1450 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	16(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	subl	%edx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cpp_handle_option@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1451 0
	cmpl	$0, -8(%ebp)
	je	.L339
	.loc 1 1448 0
	movl	-8(%ebp), %eax
	addl	%eax, -12(%ebp)
.L337:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L338
.L339:
	.loc 1 1455 0
	movl	-12(%ebp), %eax
	.loc 1 1456 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	cpp_handle_options, .-cpp_handle_options
	.type	post_options, @function
post_options:
.LFB46:
	.loc 1 1461 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	.loc 1 1463 0
	movl	8(%ebp), %eax
	movzbl	393(%eax), %eax
	testb	%al, %al
	je	.L343
	.loc 1 1464 0
	movl	8(%ebp), %eax
	movb	$0, 411(%eax)
.L343:
	.loc 1 1468 0
	movl	8(%ebp), %eax
	movzbl	426(%eax), %eax
	testb	%al, %al
	je	.L345
	.loc 1 1470 0
	movl	8(%ebp), %eax
	movb	$1, 17(%eax)
	.loc 1 1471 0
	movl	8(%ebp), %eax
	movb	$0, 433(%eax)
.L345:
	.loc 1 1475 0
	movl	8(%ebp), %eax
	movzbl	433(%eax), %eax
	testb	%al, %al
	je	.L349
	.loc 1 1476 0
	movl	8(%ebp), %eax
	movb	$0, 431(%eax)
.L349:
	.loc 1 1477 0
	popl	%ebp
	ret
.LFE46:
	.size	post_options, .-post_options
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI6-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI7
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI11-.LFB23
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
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI15-.LFB24
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
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI21-.LFB25
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI26-.LFB26
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
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI31-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI34-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI36-.LFB29
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
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI40-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI41
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
	.long	.LCFI44-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI47-.LCFI45
	.byte	0x83
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
	.long	.LCFI48-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI51-.LCFI49
	.byte	0x83
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
	.long	.LCFI52-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI57-.LCFI53
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI58-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI59
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI63-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI66-.LCFI64
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
	.long	.LCFI67-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI68
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
	.long	.LCFI71-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI72
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
	.long	.LCFI75-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI76
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
	.long	.LCFI79-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI80
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
	.long	.LCFI83-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI84
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI87-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI88
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
	.long	.LCFI91-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI92
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
	.long	.LCFI95-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI98-.LCFI96
	.byte	0x83
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
	.long	.LCFI99-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI104-.LCFI100
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
	.long	.LCFI105-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI106
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
	.long	.LCFI109-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE50:
	.file 2 "../../../kgccfe/gnu/cpplib.h"
	.file 3 "../../../kgccfe/gnu/hashtable.h"
	.file 4 "../../../kgccfe/gnu/cpphash.h"
	.file 5 "/usr/include/sys/types.h"
	.file 6 "/usr/include/bits/types.h"
	.file 7 "../../../kgccfe/gnu/line-map.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "../../../include/gnu/obstack.h"
	.file 10 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/bits/stat.h"
	.file 13 "/usr/include/time.h"
	.file 14 "../../../kgccfe/gnu/cppdefault.h"
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB32-.Ltext0
	.long	.LCFI48-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI48-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI49-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB36-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI67-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI68-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB37-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI71-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI72-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB38-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB40-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI83-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI84-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB41-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB43-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI95-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI96-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB46-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI109-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI110-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3727
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/cppinit.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa2
	.uleb128 0x3
	.long	0xa7
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
	.byte	0xa
	.byte	0xd6
	.long	0xb6
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
	.long	0x12a
	.uleb128 0x6
	.string	"__u_quad_t"
	.byte	0x6
	.byte	0x3c
	.long	0x13b
	.uleb128 0x6
	.string	"__dev_t"
	.byte	0x6
	.byte	0x89
	.long	0x165
	.uleb128 0x6
	.string	"__uid_t"
	.byte	0x6
	.byte	0x8a
	.long	0xb6
	.uleb128 0x6
	.string	"__gid_t"
	.byte	0x6
	.byte	0x8b
	.long	0xb6
	.uleb128 0x6
	.string	"__ino_t"
	.byte	0x6
	.byte	0x8c
	.long	0xf9
	.uleb128 0x6
	.string	"__mode_t"
	.byte	0x6
	.byte	0x8e
	.long	0xb6
	.uleb128 0x6
	.string	"__nlink_t"
	.byte	0x6
	.byte	0x8f
	.long	0xb6
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x6
	.byte	0x90
	.long	0x1e3
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x6
	.byte	0x91
	.long	0x155
	.uleb128 0x6
	.string	"__time_t"
	.byte	0x6
	.byte	0x98
	.long	0x1e3
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x6
	.string	"__blksize_t"
	.byte	0x6
	.byte	0xa7
	.long	0x1e3
	.uleb128 0x6
	.string	"__blkcnt_t"
	.byte	0x6
	.byte	0xac
	.long	0x1e3
	.uleb128 0x2
	.byte	0x4
	.long	0xa7
	.uleb128 0x6
	.string	"FILE"
	.byte	0x8
	.byte	0x2e
	.long	0x249
	.uleb128 0x8
	.long	0x4c4
	.long	.LASF1
	.byte	0x94
	.byte	0x8
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0xb
	.value	0x10c
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0xb
	.value	0x111
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0xb
	.value	0x112
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0xb
	.value	0x113
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0xb
	.value	0x114
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0xb
	.value	0x115
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0xb
	.value	0x116
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0xb
	.value	0x117
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0xb
	.value	0x118
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0xb
	.value	0x11a
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0xb
	.value	0x11b
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0xb
	.value	0x11c
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0xb
	.value	0x11e
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0xb
	.value	0x120
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0xb
	.value	0x122
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0xb
	.value	0x126
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0xb
	.value	0x128
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0xb
	.value	0x12c
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0xb
	.value	0x12d
	.long	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0xb
	.value	0x12e
	.long	0x542
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0xb
	.value	0x132
	.long	0x552
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0xb
	.value	0x13b
	.long	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0xb
	.value	0x144
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0xb
	.value	0x145
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0xb
	.value	0x146
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0xb
	.value	0x147
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0xb
	.value	0x148
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0xb
	.value	0x14a
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0xb
	.value	0x14c
	.long	0x558
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.long	0x4d4
	.long	0xa7
	.uleb128 0xb
	.long	0xbd
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4da
	.uleb128 0x3
	.long	0xd2
	.uleb128 0x2
	.byte	0x4
	.long	0xd2
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0xb
	.byte	0xb0
	.uleb128 0xd
	.long	0x536
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xb
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0xb
	.byte	0xb7
	.long	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0xb
	.byte	0xb8
	.long	0x53c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0xb
	.byte	0xbc
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4f3
	.uleb128 0x2
	.byte	0x4
	.long	0x249
	.uleb128 0xa
	.long	0x552
	.long	0xa7
	.uleb128 0xb
	.long	0xbd
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4e5
	.uleb128 0xa
	.long	0x568
	.long	0xa7
	.uleb128 0xb
	.long	0xbd
	.byte	0x27
	.byte	0x0
	.uleb128 0x6
	.string	"ino_t"
	.byte	0x5
	.byte	0x32
	.long	0x1a4
	.uleb128 0x6
	.string	"dev_t"
	.byte	0x5
	.byte	0x3e
	.long	0x177
	.uleb128 0xd
	.long	0x5b7
	.string	"timespec"
	.byte	0x8
	.byte	0xd
	.byte	0x7a
	.uleb128 0xe
	.string	"tv_sec"
	.byte	0xd
	.byte	0x7b
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tv_nsec"
	.byte	0xd
	.byte	0x7c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.long	0xaf
	.uleb128 0xd
	.long	0x700
	.string	"stat"
	.byte	0x58
	.byte	0xc
	.byte	0x25
	.uleb128 0xe
	.string	"st_dev"
	.byte	0xc
	.byte	0x26
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"__pad1"
	.byte	0xc
	.byte	0x27
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"st_ino"
	.byte	0xc
	.byte	0x29
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"st_mode"
	.byte	0xc
	.byte	0x2d
	.long	0x1b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"st_nlink"
	.byte	0xc
	.byte	0x2e
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"st_uid"
	.byte	0xc
	.byte	0x2f
	.long	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st_gid"
	.byte	0xc
	.byte	0x30
	.long	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"st_rdev"
	.byte	0xc
	.byte	0x31
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"__pad2"
	.byte	0xc
	.byte	0x32
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"st_size"
	.byte	0xc
	.byte	0x34
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"st_blksize"
	.byte	0xc
	.byte	0x38
	.long	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"st_blocks"
	.byte	0xc
	.byte	0x3b
	.long	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"st_atim"
	.byte	0xc
	.byte	0x46
	.long	0x582
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"st_mtim"
	.byte	0xc
	.byte	0x47
	.long	0x582
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"st_ctim"
	.byte	0xc
	.byte	0x48
	.long	0x582
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"__unused4"
	.byte	0xc
	.byte	0x55
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"__unused5"
	.byte	0xc
	.byte	0x56
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0xd
	.long	0x747
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x9
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF2
	.byte	0x9
	.byte	0xa3
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x9
	.byte	0xa4
	.long	0x747
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"contents"
	.byte	0x9
	.byte	0xa5
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x700
	.uleb128 0x10
	.long	0x87a
	.string	"obstack"
	.byte	0x2c
	.byte	0x8
	.value	0x31b
	.uleb128 0xe
	.string	"chunk_size"
	.byte	0x9
	.byte	0xaa
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"chunk"
	.byte	0x9
	.byte	0xab
	.long	0x747
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"object_base"
	.byte	0x9
	.byte	0xac
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"next_free"
	.byte	0x9
	.byte	0xad
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"chunk_limit"
	.byte	0x9
	.byte	0xae
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"temp"
	.byte	0x9
	.byte	0xaf
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"alignment_mask"
	.byte	0x9
	.byte	0xb0
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"chunkfun"
	.byte	0x9
	.byte	0xb5
	.long	0x88f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"freefun"
	.byte	0x9
	.byte	0xb6
	.long	0x8a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"extra_arg"
	.byte	0x9
	.byte	0xb7
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"use_extra_arg"
	.byte	0x9
	.byte	0xbd
	.long	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"maybe_empty_object"
	.byte	0x9
	.byte	0xbe
	.long	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"alloc_failed"
	.byte	0x9
	.byte	0xc2
	.long	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x12
	.long	0x88f
	.byte	0x1
	.long	0x747
	.uleb128 0x13
	.long	0x210
	.uleb128 0x13
	.long	0x1e3
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x87a
	.uleb128 0x14
	.long	0x8a6
	.byte	0x1
	.uleb128 0x13
	.long	0x210
	.uleb128 0x13
	.long	0x747
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x895
	.uleb128 0x8
	.long	0x8ea
	.long	.LASF4
	.byte	0xc
	.byte	0x3
	.byte	0x19
	.uleb128 0xe
	.string	"str"
	.byte	0x3
	.byte	0x1c
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"len"
	.byte	0x3
	.byte	0x1d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"hash_value"
	.byte	0x3
	.byte	0x1e
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF5
	.byte	0x3
	.byte	0x29
	.long	0x8f5
	.uleb128 0xd
	.long	0x993
	.string	"ht"
	.byte	0x48
	.byte	0x3
	.byte	0x29
	.uleb128 0xe
	.string	"stack"
	.byte	0x3
	.byte	0x32
	.long	0x74d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"entries"
	.byte	0x3
	.byte	0x34
	.long	0x9a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"alloc_node"
	.byte	0x3
	.byte	0x36
	.long	0x9c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"nslots"
	.byte	0x3
	.byte	0x38
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"nelements"
	.byte	0x3
	.byte	0x39
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.long	.LASF6
	.byte	0x3
	.byte	0x3c
	.long	0xd96
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.string	"searches"
	.byte	0x3
	.byte	0x3f
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"collisions"
	.byte	0x3
	.byte	0x40
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x6
	.string	"hashnode"
	.byte	0x3
	.byte	0x2a
	.long	0x9a3
	.uleb128 0x2
	.byte	0x4
	.long	0x8ac
	.uleb128 0x2
	.byte	0x4
	.long	0x993
	.uleb128 0x12
	.long	0x9bf
	.byte	0x1
	.long	0x993
	.uleb128 0x13
	.long	0x9bf
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x8ea
	.uleb128 0x2
	.byte	0x4
	.long	0x9af
	.uleb128 0x16
	.long	0xd96
	.long	.LASF7
	.value	0x210
	.byte	0x3
	.byte	0x28
	.uleb128 0x9
	.string	"buffer"
	.byte	0x4
	.value	0x151
	.long	0x2642
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"overlaid_buffer"
	.byte	0x4
	.value	0x154
	.long	0x2642
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"state"
	.byte	0x4
	.value	0x157
	.long	0x23b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF8
	.byte	0x4
	.value	0x15a
	.long	0xe56
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"map"
	.byte	0x4
	.value	0x15b
	.long	0x1fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"line"
	.byte	0x4
	.value	0x15c
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"directive_line"
	.byte	0x4
	.value	0x15f
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"a_buff"
	.byte	0x4
	.value	0x162
	.long	0x23b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"u_buff"
	.byte	0x4
	.value	0x163
	.long	0x23b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"free_buffs"
	.byte	0x4
	.value	0x164
	.long	0x23b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"base_context"
	.byte	0x4
	.value	0x167
	.long	0x22d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"context"
	.byte	0x4
	.value	0x168
	.long	0x2648
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.long	.LASF9
	.byte	0x4
	.value	0x16b
	.long	0x2654
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"next_include_file"
	.byte	0x4
	.value	0x170
	.long	0x26a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.string	"mi_cmacro"
	.byte	0x4
	.value	0x173
	.long	0x26b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.string	"mi_ind_cmacro"
	.byte	0x4
	.value	0x174
	.long	0x26b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.string	"mi_valid"
	.byte	0x4
	.value	0x175
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.string	"cur_token"
	.byte	0x4
	.value	0x178
	.long	0x21c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.string	"base_run"
	.byte	0x4
	.value	0x179
	.long	0x2277
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.string	"cur_run"
	.byte	0x4
	.value	0x179
	.long	0x22c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.string	"lookaheads"
	.byte	0x4
	.value	0x17a
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.string	"keep_tokens"
	.byte	0x4
	.value	0x17d
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.string	"errors"
	.byte	0x4
	.value	0x180
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.string	"macro_buffer"
	.byte	0x4
	.value	0x183
	.long	0x4df
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.string	"macro_buffer_len"
	.byte	0x4
	.value	0x184
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.string	"all_include_files"
	.byte	0x4
	.value	0x187
	.long	0x26cb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.string	"max_include_len"
	.byte	0x4
	.value	0x18b
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.string	"first_unused_line"
	.byte	0x4
	.value	0x18e
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.string	"date"
	.byte	0x4
	.value	0x191
	.long	0x21c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.string	"time"
	.byte	0x4
	.value	0x192
	.long	0x21c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.string	"avoid_paste"
	.byte	0x4
	.value	0x195
	.long	0x1602
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.string	"eof"
	.byte	0x4
	.value	0x196
	.long	0x1602
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.string	"deps"
	.byte	0x4
	.value	0x199
	.long	0x26d8
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x9
	.string	"hash_ob"
	.byte	0x4
	.value	0x19d
	.long	0x74d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.string	"buffer_ob"
	.byte	0x4
	.value	0x1a1
	.long	0x74d
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.string	"pragmas"
	.byte	0x4
	.value	0x1a5
	.long	0x26ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x9
	.string	"cb"
	.byte	0x4
	.value	0x1a8
	.long	0x17f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x17
	.long	.LASF5
	.byte	0x4
	.value	0x1ab
	.long	0x26f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x9
	.string	"op_stack"
	.byte	0x4
	.value	0x1ae
	.long	0x26fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x9
	.string	"op_limit"
	.byte	0x4
	.value	0x1ae
	.long	0x26fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.string	"opts"
	.byte	0x4
	.value	0x1b1
	.long	0x107c
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x17
	.long	.LASF10
	.byte	0x4
	.value	0x1b5
	.long	0x24ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x9
	.string	"print"
	.byte	0x4
	.value	0x1b8
	.long	0x254c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.string	"our_hashtable"
	.byte	0x4
	.value	0x1bb
	.long	0xd2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.string	"out"
	.byte	0x4
	.value	0x1c4
	.long	0x25ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.string	"saved_line"
	.byte	0x4
	.value	0x1c8
	.long	0xb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x9cb
	.uleb128 0x18
	.long	0xdd1
	.string	"lc_reason"
	.byte	0x4
	.byte	0x7
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
	.long	0xe56
	.string	"line_map"
	.byte	0x14
	.byte	0x7
	.byte	0x2a
	.uleb128 0xe
	.string	"to_file"
	.byte	0x7
	.byte	0x2b
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"to_line"
	.byte	0x7
	.byte	0x2c
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"from_line"
	.byte	0x7
	.byte	0x2d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"included_from"
	.byte	0x7
	.byte	0x2e
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"reason"
	.byte	0x7
	.byte	0x2f
	.long	0xd9c
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x7
	.byte	0x30
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0x0
	.uleb128 0x8
	.long	0xed4
	.long	.LASF8
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.uleb128 0xe
	.string	"maps"
	.byte	0x7
	.byte	0x36
	.long	0xed4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"allocated"
	.byte	0x7
	.byte	0x37
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"used"
	.byte	0x7
	.byte	0x38
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"last_listed"
	.byte	0x7
	.byte	0x3d
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"depth"
	.byte	0x7
	.byte	0x40
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"trace_includes"
	.byte	0x7
	.byte	0x43
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xdd1
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x15
	.long	.LASF7
	.byte	0x2
	.byte	0x28
	.long	0x9cb
	.uleb128 0x15
	.long	.LASF11
	.byte	0x2
	.byte	0x2a
	.long	0xef9
	.uleb128 0x8
	.long	0x107c
	.long	.LASF11
	.byte	0x58
	.byte	0x2
	.byte	0x2a
	.uleb128 0x9
	.string	"cur"
	.byte	0x4
	.value	0x114
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"backup_to"
	.byte	0x4
	.value	0x115
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF12
	.byte	0x4
	.value	0x116
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"line_base"
	.byte	0x4
	.value	0x117
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.long	.LASF3
	.byte	0x4
	.value	0x119
	.long	0x25c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"buf"
	.byte	0x4
	.value	0x11b
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"inc"
	.byte	0x4
	.value	0x11f
	.long	0x25dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x17
	.long	.LASF13
	.byte	0x4
	.value	0x123
	.long	0x25e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"col_adjust"
	.byte	0x4
	.value	0x126
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"saved_flags"
	.byte	0x4
	.value	0x129
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"last_Wtrigraphs"
	.byte	0x4
	.value	0x12d
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"warned_cplusplus_comments"
	.byte	0x4
	.value	0x133
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"from_stage3"
	.byte	0x4
	.value	0x138
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"search_cached"
	.byte	0x4
	.value	0x13c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"return_at_eof"
	.byte	0x4
	.value	0x141
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"dir"
	.byte	0x4
	.value	0x145
	.long	0x1f07
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"saved_cur"
	.byte	0x4
	.value	0x148
	.long	0x21c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.string	"saved_rlimit"
	.byte	0x4
	.value	0x148
	.long	0x21c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x8
	.long	0x1602
	.long	.LASF14
	.byte	0x68
	.byte	0x2
	.byte	0x2b
	.uleb128 0xe
	.string	"tabstop"
	.byte	0x2
	.byte	0xe5
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"pending"
	.byte	0x2
	.byte	0xe8
	.long	0x1f01
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"quote_include"
	.byte	0x2
	.byte	0xeb
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"bracket_include"
	.byte	0x2
	.byte	0xec
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"map_list"
	.byte	0x2
	.byte	0xf0
	.long	0x1fa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"include_prefix"
	.byte	0x2
	.byte	0xf4
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"include_prefix_len"
	.byte	0x2
	.byte	0xf5
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"lang"
	.byte	0x2
	.byte	0xf8
	.long	0x1c53
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"verbose"
	.byte	0x2
	.byte	0xfb
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.long	.LASF15
	.byte	0x2
	.byte	0xfe
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0x17
	.long	.LASF16
	.byte	0x2
	.value	0x101
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x9
	.string	"objc"
	.byte	0x2
	.value	0x105
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0x9
	.string	"discard_comments"
	.byte	0x2
	.value	0x108
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"discard_comments_in_macro_exp"
	.byte	0x2
	.value	0x10c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x9
	.string	"trigraphs"
	.byte	0x2
	.value	0x10f
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x17
	.long	.LASF17
	.byte	0x2
	.value	0x112
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0x17
	.long	.LASF18
	.byte	0x2
	.value	0x115
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"print_include_names"
	.byte	0x2
	.value	0x118
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x9
	.string	"pedantic_errors"
	.byte	0x2
	.value	0x11b
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x9
	.string	"inhibit_warnings"
	.byte	0x2
	.value	0x11e
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x9
	.string	"warn_deprecated"
	.byte	0x2
	.value	0x121
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"warn_system_headers"
	.byte	0x2
	.value	0x124
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x9
	.string	"inhibit_errors"
	.byte	0x2
	.value	0x128
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x9
	.string	"warn_comments"
	.byte	0x2
	.value	0x12b
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x9
	.string	"warn_trigraphs"
	.byte	0x2
	.value	0x12e
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"warn_import"
	.byte	0x2
	.value	0x131
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x9
	.string	"warn_multichar"
	.byte	0x2
	.value	0x134
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x9
	.string	"warn_traditional"
	.byte	0x2
	.value	0x138
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x9
	.string	"warn_long_long"
	.byte	0x2
	.value	0x13b
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"warn_endif_labels"
	.byte	0x2
	.value	0x13e
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x9
	.string	"warn_num_sign_change"
	.byte	0x2
	.value	0x142
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x9
	.string	"warnings_are_errors"
	.byte	0x2
	.value	0x145
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x9
	.string	"no_output"
	.byte	0x2
	.value	0x149
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"remap"
	.byte	0x2
	.value	0x14d
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x9
	.string	"no_line_commands"
	.byte	0x2
	.value	0x150
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.uleb128 0x9
	.string	"ignore_srcdir"
	.byte	0x2
	.value	0x154
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3b
	.uleb128 0x17
	.long	.LASF19
	.byte	0x2
	.value	0x157
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"warn_undef"
	.byte	0x2
	.value	0x15a
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0x9
	.string	"warn_unused_macros"
	.byte	0x2
	.value	0x15d
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0x9
	.string	"c99"
	.byte	0x2
	.value	0x160
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3f
	.uleb128 0x9
	.string	"std"
	.byte	0x2
	.value	0x163
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"pedantic"
	.byte	0x2
	.value	0x166
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x41
	.uleb128 0x9
	.string	"preprocessed"
	.byte	0x2
	.value	0x16a
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x9
	.string	"no_standard_includes"
	.byte	0x2
	.value	0x16d
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0x9
	.string	"no_standard_cplusplus_includes"
	.byte	0x2
	.value	0x170
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"dump_macros"
	.byte	0x2
	.value	0x173
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x9
	.string	"dump_includes"
	.byte	0x2
	.value	0x176
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"show_column"
	.byte	0x2
	.value	0x179
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"operator_names"
	.byte	0x2
	.value	0x17c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"traditional"
	.byte	0x2
	.value	0x17f
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x49
	.uleb128 0x9
	.string	"deps"
	.byte	0x2
	.value	0x190
	.long	0x1d4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"precision"
	.byte	0x2
	.value	0x196
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"char_precision"
	.byte	0x2
	.value	0x196
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"int_precision"
	.byte	0x2
	.value	0x196
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"wchar_precision"
	.byte	0x2
	.value	0x196
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"unsigned_char"
	.byte	0x2
	.value	0x199
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"unsigned_wchar"
	.byte	0x2
	.value	0x199
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x65
	.uleb128 0x9
	.string	"stdc_0_in_system_headers"
	.byte	0x2
	.value	0x19c
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.byte	0x0
	.uleb128 0x15
	.long	.LASF20
	.byte	0x2
	.byte	0x2c
	.long	0x160d
	.uleb128 0x8
	.long	0x1667
	.long	.LASF20
	.byte	0x10
	.byte	0x2
	.byte	0x2c
	.uleb128 0xe
	.string	"line"
	.byte	0x2
	.byte	0xb6
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"col"
	.byte	0x2
	.byte	0xb7
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"type"
	.byte	0x2
	.byte	0xb8
	.long	0x18ac
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
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"val"
	.byte	0x2
	.byte	0xc2
	.long	0x1cc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.long	.LASF21
	.byte	0x2
	.byte	0x2d
	.long	0x1672
	.uleb128 0x8
	.long	0x169c
	.long	.LASF21
	.byte	0x8
	.byte	0x2
	.byte	0x2d
	.uleb128 0xe
	.string	"len"
	.byte	0x2
	.byte	0xa5
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"text"
	.byte	0x2
	.byte	0xa6
	.long	0x4d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.long	.LASF22
	.byte	0x2
	.byte	0x2e
	.long	0x16a7
	.uleb128 0x8
	.long	0x173e
	.long	.LASF22
	.byte	0x18
	.byte	0x2
	.byte	0x2e
	.uleb128 0x9
	.string	"ident"
	.byte	0x2
	.value	0x1e6
	.long	0x8ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"arg_index"
	.byte	0x2
	.value	0x1e7
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"directive_index"
	.byte	0x2
	.value	0x1e8
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"rid_code"
	.byte	0x2
	.value	0x1e9
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x1a
	.string	"type"
	.byte	0x2
	.value	0x1ea
	.long	0x2077
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
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x9
	.string	"value"
	.byte	0x2
	.value	0x1f7
	.long	0x212a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	.LASF23
	.byte	0x2
	.byte	0x2f
	.long	0x1749
	.uleb128 0x8
	.long	0x17f7
	.long	.LASF23
	.byte	0x14
	.byte	0x2
	.byte	0x2f
	.uleb128 0xe
	.string	"params"
	.byte	0x4
	.byte	0x49
	.long	0x21d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"exp"
	.byte	0x4
	.byte	0x52
	.long	0x219f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"line"
	.byte	0x4
	.byte	0x55
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"count"
	.byte	0x4
	.byte	0x58
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"paramc"
	.byte	0x4
	.byte	0x5b
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"fun_like"
	.byte	0x4
	.byte	0x5e
	.long	0xb6
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
	.long	0xb6
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
	.long	0xb6
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
	.long	0xb6
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x18ac
	.long	.LASF24
	.byte	0x20
	.byte	0x2
	.byte	0x30
	.uleb128 0x9
	.string	"line_change"
	.byte	0x2
	.value	0x1a3
	.long	0x1fc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"file_change"
	.byte	0x2
	.value	0x1a4
	.long	0x1fe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"include"
	.byte	0x2
	.value	0x1a5
	.long	0x2005
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"define"
	.byte	0x2
	.value	0x1a7
	.long	0x2021
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"undef"
	.byte	0x2
	.value	0x1a8
	.long	0x2021
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"ident"
	.byte	0x2
	.value	0x1a9
	.long	0x2048
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"def_pragma"
	.byte	0x2
	.value	0x1aa
	.long	0x205f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"register_builtins"
	.byte	0x2
	.value	0x1ad
	.long	0x2071
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x18
	.long	0x1c53
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
	.long	0x1cc7
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
	.long	0x1d0c
	.byte	0x8
	.byte	0x2
	.byte	0xbc
	.uleb128 0x1c
	.string	"node"
	.byte	0x2
	.byte	0xbd
	.long	0x1d0c
	.uleb128 0x1c
	.string	"source"
	.byte	0x2
	.byte	0xbe
	.long	0x1d12
	.uleb128 0x1c
	.string	"str"
	.byte	0x2
	.byte	0xbf
	.long	0x1672
	.uleb128 0x1c
	.string	"arg_no"
	.byte	0x2
	.byte	0xc0
	.long	0xb6
	.uleb128 0x1c
	.string	"c"
	.byte	0x2
	.byte	0xc1
	.long	0xd2
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x169c
	.uleb128 0x2
	.byte	0x4
	.long	0x1d18
	.uleb128 0x3
	.long	0x1602
	.uleb128 0x1d
	.long	0x1d4d
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
	.long	0x1db6
	.byte	0x8
	.byte	0x2
	.value	0x183
	.uleb128 0x9
	.string	"style"
	.byte	0x2
	.value	0x185
	.long	0x1d1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"missing_files"
	.byte	0x2
	.value	0x188
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"phony_targets"
	.byte	0x2
	.value	0x18c
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"ignore_main_file"
	.byte	0x2
	.value	0x18f
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0xd
	.long	0x1f01
	.string	"cpp_pending"
	.byte	0x38
	.byte	0x2
	.byte	0xe8
	.uleb128 0xe
	.string	"directive_head"
	.byte	0x1
	.byte	0x4a
	.long	0x26ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"directive_tail"
	.byte	0x1
	.byte	0x4a
	.long	0x26ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"quote_head"
	.byte	0x1
	.byte	0x4c
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"quote_tail"
	.byte	0x1
	.byte	0x4c
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"brack_head"
	.byte	0x1
	.byte	0x4d
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"brack_tail"
	.byte	0x1
	.byte	0x4d
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"systm_head"
	.byte	0x1
	.byte	0x4e
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"systm_tail"
	.byte	0x1
	.byte	0x4e
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"after_head"
	.byte	0x1
	.byte	0x4f
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"after_tail"
	.byte	0x1
	.byte	0x4f
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"imacros_head"
	.byte	0x1
	.byte	0x51
	.long	0x26ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"imacros_tail"
	.byte	0x1
	.byte	0x51
	.long	0x26ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"include_head"
	.byte	0x1
	.byte	0x52
	.long	0x26ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"include_tail"
	.byte	0x1
	.byte	0x52
	.long	0x26ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1db6
	.uleb128 0xd
	.long	0x1f85
	.string	"search_path"
	.byte	0x20
	.byte	0x2
	.byte	0xeb
	.uleb128 0xf
	.long	.LASF25
	.byte	0x4
	.byte	0x86
	.long	0x1f85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"name"
	.byte	0x4
	.byte	0x8a
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"len"
	.byte	0x4
	.byte	0x8b
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"ino"
	.byte	0x4
	.byte	0x8e
	.long	0x568
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"dev"
	.byte	0x4
	.byte	0x8f
	.long	0x575
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"sysp"
	.byte	0x4
	.byte	0x91
	.long	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"name_map"
	.byte	0x4
	.byte	0x94
	.long	0x2240
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f07
	.uleb128 0x1f
	.string	"file_name_map_list"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x1f8b
	.uleb128 0x14
	.long	0x1fbc
	.byte	0x1
	.uleb128 0x13
	.long	0x1fbc
	.uleb128 0x13
	.long	0x1d12
	.uleb128 0x13
	.long	0xaf
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xee3
	.uleb128 0x2
	.byte	0x4
	.long	0x1fa6
	.uleb128 0x14
	.long	0x1fd9
	.byte	0x1
	.uleb128 0x13
	.long	0x1fbc
	.uleb128 0x13
	.long	0x1fd9
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1fdf
	.uleb128 0x3
	.long	0xdd1
	.uleb128 0x2
	.byte	0x4
	.long	0x1fc8
	.uleb128 0x14
	.long	0x2005
	.byte	0x1
	.uleb128 0x13
	.long	0x1fbc
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x4d4
	.uleb128 0x13
	.long	0x1d12
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1fea
	.uleb128 0x14
	.long	0x2021
	.byte	0x1
	.uleb128 0x13
	.long	0x1fbc
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x1d0c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x200b
	.uleb128 0x14
	.long	0x203d
	.byte	0x1
	.uleb128 0x13
	.long	0x1fbc
	.uleb128 0x13
	.long	0xb6
	.uleb128 0x13
	.long	0x203d
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2043
	.uleb128 0x3
	.long	0x1667
	.uleb128 0x2
	.byte	0x4
	.long	0x2027
	.uleb128 0x14
	.long	0x205f
	.byte	0x1
	.uleb128 0x13
	.long	0x1fbc
	.uleb128 0x13
	.long	0xb6
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x204e
	.uleb128 0x14
	.long	0x2071
	.byte	0x1
	.uleb128 0x13
	.long	0x1fbc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2065
	.uleb128 0x20
	.long	0x20af
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
	.long	0x212a
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
	.long	0x2173
	.byte	0x4
	.byte	0x2
	.value	0x1ee
	.uleb128 0x22
	.string	"macro"
	.byte	0x2
	.value	0x1ef
	.long	0x2173
	.uleb128 0x22
	.string	"answers"
	.byte	0x2
	.value	0x1f0
	.long	0x2182
	.uleb128 0x22
	.string	"operator"
	.byte	0x2
	.value	0x1f4
	.long	0x18ac
	.uleb128 0x22
	.string	"builtin"
	.byte	0x2
	.value	0x1f6
	.long	0x20af
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x173e
	.uleb128 0x1f
	.string	"answer"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2179
	.uleb128 0x6
	.string	"uchar"
	.byte	0x4
	.byte	0x20
	.long	0xd2
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x1b
	.long	0x21c2
	.byte	0x4
	.byte	0x4
	.byte	0x4f
	.uleb128 0x1c
	.string	"tokens"
	.byte	0x4
	.byte	0x50
	.long	0x21c2
	.uleb128 0x1c
	.string	"text"
	.byte	0x4
	.byte	0x51
	.long	0x21c8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1602
	.uleb128 0x2
	.byte	0x4
	.long	0x21ce
	.uleb128 0x3
	.long	0x2188
	.uleb128 0x2
	.byte	0x4
	.long	0x1d0c
	.uleb128 0x15
	.long	.LASF26
	.byte	0x4
	.byte	0x6f
	.long	0x21e4
	.uleb128 0x8
	.long	0x222a
	.long	.LASF26
	.byte	0x10
	.byte	0x4
	.byte	0x6f
	.uleb128 0xf
	.long	.LASF25
	.byte	0x4
	.byte	0x72
	.long	0x222a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"base"
	.byte	0x4
	.byte	0x73
	.long	0x4df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cur"
	.byte	0x4
	.byte	0x73
	.long	0x4df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0x73
	.long	0x4df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x21e4
	.uleb128 0x1f
	.string	"file_name_map"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x2230
	.uleb128 0x23
	.long	0x2271
	.string	"utoken"
	.byte	0x4
	.byte	0x4
	.byte	0x9b
	.uleb128 0x1c
	.string	"token"
	.byte	0x4
	.byte	0x9c
	.long	0x1d12
	.uleb128 0x1c
	.string	"ptoken"
	.byte	0x4
	.byte	0x9d
	.long	0x2271
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1d12
	.uleb128 0x15
	.long	.LASF27
	.byte	0x4
	.byte	0xa1
	.long	0x2282
	.uleb128 0x8
	.long	0x22c8
	.long	.LASF27
	.byte	0x10
	.byte	0x4
	.byte	0xa1
	.uleb128 0xf
	.long	.LASF25
	.byte	0x4
	.byte	0xa4
	.long	0x22c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0xa4
	.long	0x22c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"base"
	.byte	0x4
	.byte	0xa5
	.long	0x21c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x4
	.byte	0xa5
	.long	0x21c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2277
	.uleb128 0x15
	.long	.LASF28
	.byte	0x4
	.byte	0xae
	.long	0x22d9
	.uleb128 0x8
	.long	0x2340
	.long	.LASF28
	.byte	0x1c
	.byte	0x4
	.byte	0xae
	.uleb128 0xf
	.long	.LASF25
	.byte	0x4
	.byte	0xb2
	.long	0x23ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x4
	.byte	0xb2
	.long	0x23ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"u"
	.byte	0x4
	.byte	0xc5
	.long	0x238d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"buff"
	.byte	0x4
	.byte	0xc9
	.long	0x23b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"macro"
	.byte	0x4
	.byte	0xcc
	.long	0x1d0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"direct_p"
	.byte	0x4
	.byte	0xcf
	.long	0xeda
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x24
	.long	0x2368
	.byte	0x8
	.byte	0x4
	.byte	0xba
	.uleb128 0xe
	.string	"first"
	.byte	0x4
	.byte	0xbb
	.long	0x2246
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"last"
	.byte	0x4
	.byte	0xbc
	.long	0x2246
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x24
	.long	0x238d
	.byte	0x8
	.byte	0x4
	.byte	0xc1
	.uleb128 0xe
	.string	"cur"
	.byte	0x4
	.byte	0xc2
	.long	0x21c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.long	.LASF12
	.byte	0x4
	.byte	0xc3
	.long	0x21c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1b
	.long	0x23ad
	.byte	0x8
	.byte	0x4
	.byte	0xb5
	.uleb128 0x1c
	.string	"iso"
	.byte	0x4
	.byte	0xbd
	.long	0x2340
	.uleb128 0x1c
	.string	"trad"
	.byte	0x4
	.byte	0xc4
	.long	0x2368
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x22ce
	.uleb128 0x2
	.byte	0x4
	.long	0x21d9
	.uleb128 0xd
	.long	0x24ee
	.string	"lexer_state"
	.byte	0x10
	.byte	0x4
	.byte	0xd3
	.uleb128 0xe
	.string	"in_directive"
	.byte	0x4
	.byte	0xd5
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"directive_wants_padding"
	.byte	0x4
	.byte	0xda
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"skipping"
	.byte	0x4
	.byte	0xdd
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"angled_headers"
	.byte	0x4
	.byte	0xe0
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xe
	.string	"in_expression"
	.byte	0x4
	.byte	0xe3
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"save_comments"
	.byte	0x4
	.byte	0xe7
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xe
	.string	"lexing_comment"
	.byte	0x4
	.byte	0xea
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"va_args_ok"
	.byte	0x4
	.byte	0xed
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"poisoned_ok"
	.byte	0x4
	.byte	0xf0
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"prevent_expansion"
	.byte	0x4
	.byte	0xf3
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xe
	.string	"parsing_args"
	.byte	0x4
	.byte	0xf6
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"skip_eval"
	.byte	0x4
	.byte	0xf9
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x254c
	.long	.LASF10
	.byte	0x10
	.byte	0x4
	.byte	0xfe
	.uleb128 0xe
	.string	"n_defined"
	.byte	0x4
	.byte	0xff
	.long	0x1d0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"n_true"
	.byte	0x4
	.value	0x100
	.long	0x1d0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"n_false"
	.byte	0x4
	.value	0x101
	.long	0x1d0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"n__VA_ARGS__"
	.byte	0x4
	.value	0x102
	.long	0x1d0c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.long	0x25c1
	.string	"printer"
	.byte	0x18
	.byte	0x4
	.value	0x108
	.uleb128 0x9
	.string	"outf"
	.byte	0x4
	.value	0x109
	.long	0x25c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"map"
	.byte	0x4
	.value	0x10a
	.long	0x1fd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF3
	.byte	0x4
	.value	0x10b
	.long	0x1d12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"source"
	.byte	0x4
	.value	0x10c
	.long	0x1d12
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"line"
	.byte	0x4
	.value	0x10d
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"printed"
	.byte	0x4
	.value	0x10e
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x23d
	.uleb128 0x2
	.byte	0x4
	.long	0xef9
	.uleb128 0x1f
	.string	"include_file"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x25cd
	.uleb128 0x25
	.long	.LASF13
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x25e2
	.uleb128 0x1e
	.long	0x263c
	.byte	0x10
	.byte	0x4
	.value	0x1bf
	.uleb128 0x9
	.string	"base"
	.byte	0x4
	.value	0x1c0
	.long	0x263c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF2
	.byte	0x4
	.value	0x1c1
	.long	0x263c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"cur"
	.byte	0x4
	.value	0x1c2
	.long	0x263c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"first_line"
	.byte	0x4
	.value	0x1c3
	.long	0xb6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2188
	.uleb128 0x2
	.byte	0x4
	.long	0xeee
	.uleb128 0x2
	.byte	0x4
	.long	0x22d9
	.uleb128 0x25
	.long	.LASF9
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x265a
	.uleb128 0x3
	.long	0x264e
	.uleb128 0xd
	.long	0x26a5
	.string	"pending_option"
	.byte	0xc
	.byte	0x4
	.byte	0x1d
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x3f
	.long	0x26ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x40
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"handler"
	.byte	0x1
	.byte	0x41
	.long	0x2762
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x26ab
	.uleb128 0x2
	.byte	0x4
	.long	0x265f
	.uleb128 0x2
	.byte	0x4
	.long	0x26b7
	.uleb128 0x3
	.long	0x169c
	.uleb128 0x1f
	.string	"splay_tree_s"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x26bc
	.uleb128 0x1f
	.string	"deps"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x26d1
	.uleb128 0x1f
	.string	"pragma_entry"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x26de
	.uleb128 0x2
	.byte	0x4
	.long	0x8f5
	.uleb128 0x1f
	.string	"op"
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.long	0x26f9
	.uleb128 0xd
	.long	0x275d
	.string	"default_include"
	.byte	0x10
	.byte	0xe
	.byte	0x38
	.uleb128 0xe
	.string	"fname"
	.byte	0xe
	.byte	0x39
	.long	0x275d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"component"
	.byte	0xe
	.byte	0x3a
	.long	0x275d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.long	.LASF15
	.byte	0xe
	.byte	0x3c
	.long	0x5b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.long	.LASF29
	.byte	0xe
	.byte	0x3d
	.long	0x5b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.long	0x9c
	.uleb128 0x6
	.string	"cl_directive_handler"
	.byte	0x1
	.byte	0x3c
	.long	0x277e
	.uleb128 0x2
	.byte	0x4
	.long	0x2784
	.uleb128 0x14
	.long	0x2795
	.byte	0x1
	.uleb128 0x13
	.long	0x1fbc
	.uleb128 0x13
	.long	0x9c
	.byte	0x0
	.uleb128 0x26
	.long	0x280a
	.string	"path_include"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST0
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.byte	0xa7
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"list"
	.byte	0x1
	.byte	0xa8
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"path"
	.byte	0x1
	.byte	0xa9
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.byte	0xab
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"q"
	.byte	0x1
	.byte	0xab
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"name"
	.byte	0x1
	.byte	0xab
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x26
	.long	0x28a6
	.string	"append_include_chain"
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST1
	.uleb128 0x27
	.long	.LASF6
	.byte	0x1
	.byte	0xd3
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"dir"
	.byte	0x1
	.byte	0xd4
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"path"
	.byte	0x1
	.byte	0xd5
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF29
	.byte	0x1
	.byte	0xd6
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.string	"pend"
	.byte	0x1
	.byte	0xd8
	.long	0x1f01
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"new"
	.byte	0x1
	.byte	0xd9
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"st"
	.byte	0x1
	.byte	0xda
	.long	0x5bc
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.byte	0xdb
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2a
	.long	0x290b
	.string	"remove_dup_dir"
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x1f85
	.long	.LFB23
	.long	.LFE23
	.long	.LLST2
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x117
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF3
	.byte	0x1
	.value	0x118
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF30
	.byte	0x1
	.value	0x119
	.long	0x290b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"cur"
	.byte	0x1
	.value	0x11b
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1f85
	.uleb128 0x2a
	.long	0x29b0
	.string	"remove_dup_nonsys_dirs"
	.byte	0x1
	.value	0x13b
	.byte	0x1
	.long	0x1f85
	.long	.LFB24
	.long	.LFE24
	.long	.LLST3
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x138
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF30
	.byte	0x1
	.value	0x139
	.long	0x290b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"end"
	.byte	0x1
	.value	0x13a
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"sysdir"
	.byte	0x1
	.value	0x13c
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x13d
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"cur"
	.byte	0x1
	.value	0x13d
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"other"
	.byte	0x1
	.value	0x13d
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2a
	.long	0x2a27
	.string	"remove_dup_dirs"
	.byte	0x1
	.value	0x165
	.byte	0x1
	.long	0x1f85
	.long	.LFB25
	.long	.LFE25
	.long	.LLST4
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x163
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF30
	.byte	0x1
	.value	0x164
	.long	0x290b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF3
	.byte	0x1
	.value	0x166
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"cur"
	.byte	0x1
	.value	0x166
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"other"
	.byte	0x1
	.value	0x166
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	0x2ab5
	.string	"merge_include_chains"
	.byte	0x1
	.value	0x17e
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST5
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x17d
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"quote"
	.byte	0x1
	.value	0x17f
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"brack"
	.byte	0x1
	.value	0x17f
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"systm"
	.byte	0x1
	.value	0x17f
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"qtail"
	.byte	0x1
	.value	0x17f
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"pend"
	.byte	0x1
	.value	0x181
	.long	0x1f01
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x10
	.long	0x2b33
	.string	"lang_flags"
	.byte	0x7
	.byte	0x1
	.value	0x1b9
	.uleb128 0x9
	.string	"c99"
	.byte	0x1
	.value	0x1ba
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.long	.LASF15
	.byte	0x1
	.value	0x1bb
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.long	.LASF18
	.byte	0x1
	.value	0x1bc
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"std"
	.byte	0x1
	.value	0x1bd
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.long	.LASF19
	.byte	0x1
	.value	0x1be
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.long	.LASF16
	.byte	0x1
	.value	0x1bf
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x17
	.long	.LASF17
	.byte	0x1
	.value	0x1c0
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x30
	.long	0x2b83
	.byte	0x1
	.string	"cpp_set_lang"
	.byte	0x1
	.value	0x1d5
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST6
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x1d3
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"lang"
	.byte	0x1
	.value	0x1d4
	.long	0x1c53
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.value	0x1d6
	.long	0x2b83
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2b89
	.uleb128 0x3
	.long	0x2ab5
	.uleb128 0x2f
	.long	0x2bcb
	.string	"init_library"
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST7
	.uleb128 0x2c
	.string	"initialized"
	.byte	0x1
	.value	0x1f6
	.long	0xaf
	.byte	0x5
	.byte	0x3
	.long	initialized.7394
	.byte	0x0
	.uleb128 0x31
	.long	0x2c17
	.byte	0x1
	.string	"cpp_create_reader"
	.byte	0x1
	.value	0x20d
	.byte	0x1
	.long	0x1fbc
	.long	.LFB29
	.long	.LFE29
	.long	.LLST8
	.uleb128 0x2d
	.string	"lang"
	.byte	0x1
	.value	0x20c
	.long	0x1c53
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF6
	.byte	0x1
	.value	0x20e
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x2cd8
	.byte	0x1
	.string	"cpp_destroy"
	.byte	0x1
	.value	0x259
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST9
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x258
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"dir"
	.byte	0x1
	.value	0x25a
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"dirn"
	.byte	0x1
	.value	0x25a
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"context"
	.byte	0x1
	.value	0x25b
	.long	0x23ad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"contextn"
	.byte	0x1
	.value	0x25b
	.long	0x23ad
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"run"
	.byte	0x1
	.value	0x25c
	.long	0x22c8
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"runn"
	.byte	0x1
	.value	0x25c
	.long	0x22c8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x2c
	.string	"__o"
	.byte	0x1
	.value	0x271
	.long	0x2cd8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"__obj"
	.byte	0x1
	.value	0x271
	.long	0x210
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x74d
	.uleb128 0x10
	.long	0x2d20
	.string	"builtin"
	.byte	0x8
	.byte	0x1
	.value	0x2a2
	.uleb128 0x9
	.string	"name"
	.byte	0x1
	.value	0x2a3
	.long	0x21c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.value	0x2a4
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"value"
	.byte	0x1
	.value	0x2a5
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x2f
	.long	0x2d7f
	.string	"mark_named_operators"
	.byte	0x1
	.value	0x2cb
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST10
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x2ca
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"b"
	.byte	0x1
	.value	0x2cc
	.long	0x2d7f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x2c
	.string	"hp"
	.byte	0x1
	.value	0x2d2
	.long	0x1d0c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2d85
	.uleb128 0x3
	.long	0x2cde
	.uleb128 0x2f
	.long	0x2def
	.string	"init_builtins"
	.byte	0x1
	.value	0x2dd
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST11
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x2dc
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"b"
	.byte	0x1
	.value	0x2de
	.long	0x2d7f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0x2df
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2c
	.string	"hp"
	.byte	0x1
	.value	0x2e6
	.long	0x1d0c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x2f0b
	.string	"init_standard_includes"
	.byte	0x1
	.value	0x300
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST12
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x2ff
	.long	0x1fbc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"path"
	.byte	0x1
	.value	0x301
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0x302
	.long	0x2f0b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.string	"specd_prefix"
	.byte	0x1
	.value	0x303
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	0x2ef1
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2c
	.string	"default_len"
	.byte	0x1
	.value	0x327
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"default_prefix"
	.byte	0x1
	.value	0x328
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"specd_len"
	.byte	0x1
	.value	0x329
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2c
	.string	"flen"
	.byte	0x1
	.value	0x339
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"this_len"
	.byte	0x1
	.value	0x33a
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x33b
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x34f
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x2f11
	.uleb128 0x3
	.long	0x2704
	.uleb128 0x2a
	.long	0x2f6b
	.string	"push_include"
	.byte	0x1
	.value	0x35b
	.byte	0x1
	.long	0xeda
	.long	.LFB34
	.long	.LFE34
	.long	.LLST13
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x359
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x35a
	.long	0x26ab
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"header"
	.byte	0x1
	.value	0x35c
	.long	0x1602
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2f
	.long	0x2fab
	.string	"free_chain"
	.byte	0x1
	.value	0x36d
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST14
	.uleb128 0x2d
	.string	"head"
	.byte	0x1
	.value	0x36c
	.long	0x26ab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF25
	.byte	0x1
	.value	0x36e
	.long	0x26ab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x300e
	.byte	0x1
	.string	"cpp_add_dependency_target"
	.byte	0x1
	.value	0x3b3
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST15
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x3b0
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"target"
	.byte	0x1
	.value	0x3b1
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"quote"
	.byte	0x1
	.value	0x3b2
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x31
	.long	0x3084
	.byte	0x1
	.string	"cpp_read_main_file"
	.byte	0x1
	.value	0x3c3
	.byte	0x1
	.long	0x9c
	.long	.LFB37
	.long	.LFE37
	.long	.LLST16
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x3c0
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"fname"
	.byte	0x1
	.value	0x3c1
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"table"
	.byte	0x1
	.value	0x3c2
	.long	0x9bf
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2c
	.string	"l"
	.byte	0x1
	.value	0x3d6
	.long	0x1f85
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x30e3
	.string	"read_original_filename"
	.byte	0x1
	.value	0x405
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST17
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x404
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"token"
	.byte	0x1
	.value	0x406
	.long	0x1d12
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"token1"
	.byte	0x1
	.value	0x406
	.long	0x1d12
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x3133
	.byte	0x1
	.string	"cpp_finish_options"
	.byte	0x1
	.value	0x422
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST18
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x421
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0x42b
	.long	0x26ab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x3190
	.byte	0x1
	.string	"_cpp_maybe_push_include_file"
	.byte	0x1
	.value	0x44a
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST19
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x449
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2c
	.string	"head"
	.byte	0x1
	.value	0x44d
	.long	0x26ab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x31dc
	.byte	0x1
	.string	"cpp_finish"
	.byte	0x1
	.value	0x469
	.byte	0x1
	.long	0xaf
	.long	.LFB41
	.long	.LFE41
	.long	.LLST20
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x467
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"deps_stream"
	.byte	0x1
	.value	0x468
	.long	0x25c1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x3248
	.string	"new_pending_directive"
	.byte	0x1
	.value	0x48d
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST21
	.uleb128 0x2d
	.string	"pend"
	.byte	0x1
	.value	0x48a
	.long	0x1f01
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"text"
	.byte	0x1
	.value	0x48b
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"handler"
	.byte	0x1
	.value	0x48c
	.long	0x2762
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"o"
	.byte	0x1
	.value	0x48e
	.long	0x26ab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x34
	.long	0x32f1
	.long	.LASF31
	.byte	0x4
	.byte	0x1
	.value	0x4b1
	.uleb128 0x19
	.string	"OPT_A"
	.sleb128 0
	.uleb128 0x19
	.string	"OPT_D"
	.sleb128 1
	.uleb128 0x19
	.string	"OPT_I"
	.sleb128 2
	.uleb128 0x19
	.string	"OPT_U"
	.sleb128 3
	.uleb128 0x19
	.string	"OPT_idirafter"
	.sleb128 4
	.uleb128 0x19
	.string	"OPT_imacros"
	.sleb128 5
	.uleb128 0x19
	.string	"OPT_include"
	.sleb128 6
	.uleb128 0x19
	.string	"OPT_iprefix"
	.sleb128 7
	.uleb128 0x19
	.string	"OPT_isystem"
	.sleb128 8
	.uleb128 0x19
	.string	"OPT_iwithprefix"
	.sleb128 9
	.uleb128 0x19
	.string	"OPT_iwithprefixbefore"
	.sleb128 10
	.uleb128 0x19
	.string	"N_OPTS"
	.sleb128 11
	.byte	0x0
	.uleb128 0x10
	.long	0x334a
	.string	"cl_option"
	.byte	0x10
	.byte	0x1
	.value	0x4b8
	.uleb128 0x9
	.string	"opt_text"
	.byte	0x1
	.value	0x4b9
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"msg"
	.byte	0x1
	.value	0x4ba
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"opt_len"
	.byte	0x1
	.value	0x4bb
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.long	.LASF31
	.byte	0x1
	.value	0x4bc
	.long	0x3248
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2a
	.long	0x33cf
	.string	"parse_option"
	.byte	0x1
	.value	0x4d3
	.byte	0x1
	.long	0xaf
	.long	.LFB43
	.long	.LFE43
	.long	.LLST22
	.uleb128 0x2d
	.string	"input"
	.byte	0x1
	.value	0x4d2
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"md"
	.byte	0x1
	.value	0x4d4
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"mn"
	.byte	0x1
	.value	0x4d4
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"mx"
	.byte	0x1
	.value	0x4d4
	.long	0xb6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"opt_len"
	.byte	0x1
	.value	0x4d5
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"comp"
	.byte	0x1
	.value	0x4d6
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x34e3
	.byte	0x1
	.string	"cpp_handle_option"
	.byte	0x1
	.value	0x510
	.byte	0x1
	.long	0xaf
	.long	.LFB44
	.long	.LFE44
	.long	.LLST23
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x50d
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"argc"
	.byte	0x1
	.value	0x50e
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"argv"
	.byte	0x1
	.value	0x50f
	.long	0x34e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x511
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"pend"
	.byte	0x1
	.value	0x512
	.long	0x1f01
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2e
	.long	.LASF31
	.byte	0x1
	.value	0x515
	.long	0x3248
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"opt_index"
	.byte	0x1
	.value	0x516
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0x517
	.long	0x9c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	0x349e
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2c
	.string	"o"
	.byte	0x1
	.value	0x566
	.long	0x26ab
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x32
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2c
	.string	"fname"
	.byte	0x1
	.value	0x579
	.long	0x237
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x57a
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2c
	.string	"ipl"
	.byte	0x1
	.value	0x580
	.long	0xc4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x237
	.uleb128 0x31
	.long	0x3570
	.byte	0x1
	.string	"cpp_handle_options"
	.byte	0x1
	.value	0x5a4
	.byte	0x1
	.long	0xaf
	.long	.LFB45
	.long	.LFE45
	.long	.LLST24
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x5a1
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"argc"
	.byte	0x1
	.value	0x5a2
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"argv"
	.byte	0x1
	.value	0x5a3
	.long	0x34e3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x5a5
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"strings_processed"
	.byte	0x1
	.value	0x5a6
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x35a2
	.string	"post_options"
	.byte	0x1
	.value	0x5b5
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST25
	.uleb128 0x2b
	.long	.LASF6
	.byte	0x1
	.value	0x5b4
	.long	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.long	0x35b2
	.long	0x2ab5
	.uleb128 0xb
	.long	0xbd
	.byte	0x7
	.byte	0x0
	.uleb128 0x2c
	.string	"lang_defaults"
	.byte	0x1
	.value	0x1c4
	.long	0x35ce
	.byte	0x5
	.byte	0x3
	.long	lang_defaults
	.uleb128 0x3
	.long	0x35a2
	.uleb128 0xa
	.long	0x35e3
	.long	0x2cde
	.uleb128 0xb
	.long	0xbd
	.byte	0x7
	.byte	0x0
	.uleb128 0x2c
	.string	"builtin_array"
	.byte	0x1
	.value	0x2a9
	.long	0x35ff
	.byte	0x5
	.byte	0x3
	.long	builtin_array
	.uleb128 0x3
	.long	0x35d3
	.uleb128 0xa
	.long	0x3614
	.long	0x2cde
	.uleb128 0xb
	.long	0xbd
	.byte	0xa
	.byte	0x0
	.uleb128 0x2c
	.string	"operator_array"
	.byte	0x1
	.value	0x2b7
	.long	0x3631
	.byte	0x5
	.byte	0x3
	.long	operator_array
	.uleb128 0x3
	.long	0x3604
	.uleb128 0xa
	.long	0x3646
	.long	0x32f1
	.uleb128 0xb
	.long	0xbd
	.byte	0xa
	.byte	0x0
	.uleb128 0x2c
	.string	"cl_options"
	.byte	0x1
	.value	0x4c3
	.long	0x365f
	.byte	0x5
	.byte	0x3
	.long	cl_options
	.uleb128 0x3
	.long	0x3636
	.uleb128 0x35
	.string	"stderr"
	.byte	0x8
	.byte	0x90
	.long	0x53c
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x3684
	.long	0x2188
	.uleb128 0xb
	.long	0xbd
	.byte	0xff
	.byte	0x0
	.uleb128 0x36
	.string	"_cpp_trigraph_map"
	.byte	0x1
	.byte	0x99
	.long	0x36a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_cpp_trigraph_map
	.uleb128 0x3
	.long	0x3674
	.uleb128 0xa
	.long	0x36b4
	.long	0x2704
	.uleb128 0x37
	.byte	0x0
	.uleb128 0x35
	.string	"cpp_include_defaults"
	.byte	0xe
	.byte	0x42
	.long	0x36d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x36a9
	.uleb128 0xa
	.long	0x36e2
	.long	0xa7
	.uleb128 0x37
	.byte	0x0
	.uleb128 0x35
	.string	"cpp_GCC_INCLUDE_DIR"
	.byte	0xe
	.byte	0x43
	.long	0x36ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0x36d7
	.uleb128 0x35
	.string	"cpp_GCC_INCLUDE_DIR_len"
	.byte	0xe
	.byte	0x44
	.long	0x3725
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0xc4
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x104
	.value	0x2
	.long	.Ldebug_info0
	.long	0x372b
	.long	0x2b33
	.string	"cpp_set_lang"
	.long	0x2bcb
	.string	"cpp_create_reader"
	.long	0x2c17
	.string	"cpp_destroy"
	.long	0x2fab
	.string	"cpp_add_dependency_target"
	.long	0x300e
	.string	"cpp_read_main_file"
	.long	0x30e3
	.string	"cpp_finish_options"
	.long	0x3133
	.string	"_cpp_maybe_push_include_file"
	.long	0x3190
	.string	"cpp_finish"
	.long	0x33cf
	.string	"cpp_handle_option"
	.long	0x34e9
	.string	"cpp_handle_options"
	.long	0x3684
	.string	"_cpp_trigraph_map"
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
.LASF29:
	.string	"cxx_aware"
.LASF12:
	.string	"rlimit"
.LASF23:
	.string	"cpp_macro"
.LASF25:
	.string	"next"
.LASF10:
	.string	"spec_nodes"
.LASF6:
	.string	"pfile"
.LASF16:
	.string	"cplusplus_comments"
.LASF8:
	.string	"line_maps"
.LASF19:
	.string	"dollars_in_ident"
.LASF21:
	.string	"cpp_string"
.LASF24:
	.string	"cpp_callbacks"
.LASF28:
	.string	"cpp_context"
.LASF11:
	.string	"cpp_buffer"
.LASF9:
	.string	"directive"
.LASF18:
	.string	"extended_numbers"
.LASF26:
	.string	"_cpp_buff"
.LASF13:
	.string	"if_stack"
.LASF15:
	.string	"cplusplus"
.LASF20:
	.string	"cpp_token"
.LASF14:
	.string	"cpp_options"
.LASF30:
	.string	"head_ptr"
.LASF2:
	.string	"limit"
.LASF7:
	.string	"cpp_reader"
.LASF4:
	.string	"ht_identifier"
.LASF1:
	.string	"_IO_FILE"
.LASF31:
	.string	"opt_code"
.LASF5:
	.string	"hash_table"
.LASF22:
	.string	"cpp_hashnode"
.LASF27:
	.string	"tokenrun"
.LASF17:
	.string	"digraphs"
.LASF3:
	.string	"prev"
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
