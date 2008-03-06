	.file	"ggc-common.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl ggc_add_root
	.type	ggc_add_root, @function
ggc_add_root:
.LFB15:
	.file 1 "../../../kg++fe/gnu/ggc-common.c"
	.loc 1 76 0
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
	.loc 1 77 0
	movl	$20, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 79 0
	movl	roots@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 80 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 81 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 82 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 83 0
	movl	-8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 85 0
	movl	-8(%ebp), %eax
	movl	%eax, roots@GOTOFF(%ebx)
	.loc 1 86 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	ggc_add_root, .-ggc_add_root
	.type	ggc_htab_delete, @function
ggc_htab_delete:
.LFB16:
	.loc 1 94 0
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
	.loc 1 95 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 97 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	testl	%eax, %eax
	jne	.L4
	.loc 1 98 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_clear_slot@PLT
	jmp	.L6
.L4:
	.loc 1 100 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L6:
	.loc 1 102 0
	movl	$1, %eax
	.loc 1 103 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	ggc_htab_delete, .-ggc_htab_delete
.globl ggc_mark_roots
	.type	ggc_mark_roots, @function
ggc_mark_roots:
.LFB17:
	.loc 1 109 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%edi
.LCFI10:
	pushl	%ebx
.LCFI11:
	subl	$64, %esp
.LCFI12:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 117 0
	movl	gt_ggc_deletable_rtab@GOT(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L9
.L10:
	.loc 1 118 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L11
.L12:
	.loc 1 119 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 118 0
	addl	$16, -44(%ebp)
.L11:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L12
	.loc 1 117 0
	addl	$4, -48(%ebp)
.L9:
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L10
	.loc 1 121 0
	movl	gt_ggc_rtab@GOT(%ebx), %eax
	movl	%eax, -48(%ebp)
	jmp	.L15
.L16:
	.loc 1 122 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L17
.L18:
	.loc 1 123 0
	movl	$0, -32(%ebp)
	jmp	.L19
.L20:
	.loc 1 124 0
	movl	-44(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	imull	-32(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 123 0
	addl	$1, -32(%ebp)
.L19:
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	ja	.L20
	.loc 1 122 0
	addl	$16, -44(%ebp)
.L17:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L18
	.loc 1 121 0
	addl	$4, -48(%ebp)
.L15:
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L16
	.loc 1 126 0
	movl	roots@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
	jmp	.L24
.L25:
.LBB2:
	.loc 1 128 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 129 0
	movl	-52(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 130 0
	movl	-52(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 133 0
	movl	$0, -12(%ebp)
	jmp	.L26
.L27:
	.loc 1 134 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	movl	-16(%ebp), %eax
	call	*%eax
	.loc 1 133 0
	addl	$1, -12(%ebp)
	movl	-24(%ebp), %eax
	addl	%eax, -28(%ebp)
.L26:
	movl	-12(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L27
.LBE2:
	.loc 1 126 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L24:
	cmpl	$0, -52(%ebp)
	jne	.L25
	.loc 1 139 0
	movl	gt_ggc_cache_rtab@GOT(%ebx), %eax
	movl	%eax, -40(%ebp)
	jmp	.L30
.L31:
	.loc 1 140 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L32
.L33:
	.loc 1 141 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L34
	.loc 1 142 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	ggc_htab_delete@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_traverse@PLT
.L34:
	.loc 1 140 0
	addl	$20, -36(%ebp)
.L32:
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L33
	.loc 1 139 0
	addl	$4, -40(%ebp)
.L30:
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L31
	.loc 1 143 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE17:
	.size	ggc_mark_roots, .-ggc_mark_roots
.globl ggc_alloc_cleared
	.type	ggc_alloc_cleared, @function
ggc_alloc_cleared:
.LFB18:
	.loc 1 149 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%edi
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$32, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 150 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -12(%ebp)
	.loc 1 151 0
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 152 0
	movl	-12(%ebp), %eax
	.loc 1 153 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	ggc_alloc_cleared, .-ggc_alloc_cleared
.globl ggc_realloc
	.type	ggc_realloc, @function
ggc_realloc:
.LFB19:
	.loc 1 160 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%edi
.LCFI20:
	pushl	%esi
.LCFI21:
	pushl	%ebx
.LCFI22:
	subl	$28, %esp
.LCFI23:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 164 0
	cmpl	$0, 8(%ebp)
	jne	.L42
	.loc 1 165 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -32(%ebp)
	jmp	.L44
.L42:
	.loc 1 167 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_get_size@PLT
	movl	%eax, -16(%ebp)
	.loc 1 168 0
	movl	12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	ja	.L45
	.loc 1 183 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L44
.L45:
	.loc 1 186 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 194 0
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%eax, %edi
	movl	%edx, %esi
	cld
	rep
	movsb
	.loc 1 199 0
	movl	-20(%ebp), %eax
	movl	%eax, -32(%ebp)
.L44:
	movl	-32(%ebp), %eax
	.loc 1 200 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE19:
	.size	ggc_realloc, .-ggc_realloc
.globl ggc_calloc
	.type	ggc_calloc, @function
ggc_calloc:
.LFB20:
	.loc 1 206 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$4, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 207 0
	movl	8(%ebp), %eax
	imull	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_cleared@PLT
	.loc 1 208 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	ggc_calloc, .-ggc_calloc
	.section	.rodata
.LC0:
	.string	"% Total"
.LC1:
	.string	"Bytes"
.LC2:
	.string	"Number"
.LC3:
	.string	"Tree"
.LC4:
	.string	"\n%-17s%10s %16s %10s\n"
.LC6:
	.string	"%-17s%10u%16ld%c %10.3f\n"
.LC7:
	.string	"Total"
.LC8:
	.string	"%-17s%10u%16ld%c\n"
.LC9:
	.string	"RTX"
	.align 8
.LC5:
	.long	0
	.long	1079574528
	.text
.globl ggc_print_common_statistics
	.type	ggc_print_common_statistics, @function
ggc_print_common_statistics:
.LFB21:
	.loc 1 222 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$132, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 227 0
	movl	12(%ebp), %eax
	movl	%eax, ggc_stats@GOTOFF(%ebx)
	.loc 1 230 0
	call	ggc_collect@PLT
	.loc 1 233 0
	movl	$0, -12(%ebp)
	jmp	.L51
.L52:
	.loc 1 235 0
	movl	12(%ebp), %eax
	movl	4104(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4104(%eax)
	.loc 1 236 0
	movl	12(%ebp), %eax
	movl	4096(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	1024(%eax,%edx,4), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4096(%eax)
	.loc 1 233 0
	addl	$1, -12(%ebp)
.L51:
	cmpl	$255, -12(%ebp)
	jle	.L52
	.loc 1 238 0
	movl	$0, -12(%ebp)
	jmp	.L54
.L55:
	.loc 1 240 0
	movl	12(%ebp), %eax
	movl	4108(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	2048(%eax,%edx,4), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4108(%eax)
	.loc 1 241 0
	movl	12(%ebp), %eax
	movl	4100(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	3072(%eax,%edx,4), %eax
	leal	(%ecx,%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4100(%eax)
	.loc 1 238 0
	addl	$1, -12(%ebp)
.L54:
	cmpl	$162, -12(%ebp)
	jle	.L55
	.loc 1 245 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 247 0
	movl	$0, -12(%ebp)
	jmp	.L57
.L58:
	.loc 1 248 0
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L59
	.loc 1 250 0
	movl	ggc_stats@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	1024(%edx,%eax,4), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fldl	.LC5@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4096(%eax), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-104(%ebp)
	movl	ggc_stats@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	1024(%edx,%eax,4), %eax
	cmpl	$10239, %eax
	jbe	.L61
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	1024(%eax,%edx,4), %eax
	cmpl	$10485759, %eax
	ja	.L63
	movl	$107, -92(%ebp)
	jmp	.L65
.L63:
	movl	$77, -92(%ebp)
.L65:
	movl	-92(%ebp), %eax
	movl	%eax, -96(%ebp)
	jmp	.L66
.L61:
	movl	$32, -96(%ebp)
.L66:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	1024(%eax,%edx,4), %eax
	cmpl	$10239, %eax
	ja	.L67
	movl	ggc_stats@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	1024(%edx,%eax,4), %eax
	movl	%eax, -88(%ebp)
	jmp	.L69
.L67:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	1024(%eax,%edx,4), %eax
	cmpl	$10485759, %eax
	ja	.L70
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	1024(%eax,%edx,4), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -84(%ebp)
	jmp	.L72
.L70:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	1024(%eax,%edx,4), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -84(%ebp)
.L72:
	movl	-84(%ebp), %eax
	movl	%eax, -88(%ebp)
.L69:
	movl	ggc_stats@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	(%edx,%eax,4), %ecx
	movl	-12(%ebp), %edx
	movl	tree_code_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	fldl	-104(%ebp)
	fstpl	24(%esp)
	movl	-96(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-88(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L59:
	.loc 1 247 0
	addl	$1, -12(%ebp)
.L57:
	cmpl	$255, -12(%ebp)
	jle	.L58
	.loc 1 258 0
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4096(%eax), %eax
	cmpl	$10239, %eax
	jbe	.L74
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4096(%eax), %eax
	cmpl	$10485759, %eax
	ja	.L76
	movl	$107, -76(%ebp)
	jmp	.L78
.L76:
	movl	$77, -76(%ebp)
.L78:
	movl	-76(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	.L79
.L74:
	movl	$32, -80(%ebp)
.L79:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4096(%eax), %eax
	cmpl	$10239, %eax
	ja	.L80
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4096(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L82
.L80:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4096(%eax), %eax
	cmpl	$10485759, %eax
	ja	.L83
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4096(%eax), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -68(%ebp)
	jmp	.L85
.L83:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4096(%eax), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -68(%ebp)
.L85:
	movl	-68(%ebp), %eax
	movl	%eax, -72(%ebp)
.L82:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4104(%eax), %eax
	movl	-80(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-72(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 265 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 267 0
	movl	$0, -12(%ebp)
	jmp	.L86
.L87:
	.loc 1 268 0
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	2048(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L88
	.loc 1 270 0
	movl	ggc_stats@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	3072(%edx,%eax,4), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fldl	.LC5@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4100(%eax), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fdivrp	%st, %st(1)
	fstpl	-64(%ebp)
	movl	ggc_stats@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	3072(%edx,%eax,4), %eax
	cmpl	$10239, %eax
	jbe	.L90
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	3072(%eax,%edx,4), %eax
	cmpl	$10485759, %eax
	ja	.L92
	movl	$107, -52(%ebp)
	jmp	.L94
.L92:
	movl	$77, -52(%ebp)
.L94:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L95
.L90:
	movl	$32, -56(%ebp)
.L95:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	3072(%eax,%edx,4), %eax
	cmpl	$10239, %eax
	ja	.L96
	movl	ggc_stats@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	3072(%edx,%eax,4), %eax
	movl	%eax, -48(%ebp)
	jmp	.L98
.L96:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	3072(%eax,%edx,4), %eax
	cmpl	$10485759, %eax
	ja	.L99
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	3072(%eax,%edx,4), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -44(%ebp)
	jmp	.L101
.L99:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	3072(%eax,%edx,4), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -44(%ebp)
.L101:
	movl	-44(%ebp), %eax
	movl	%eax, -48(%ebp)
.L98:
	movl	ggc_stats@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	2048(%edx,%eax,4), %ecx
	movl	-12(%ebp), %edx
	movl	rtx_name@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	fldl	-64(%ebp)
	fstpl	24(%esp)
	movl	-56(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L88:
	.loc 1 267 0
	addl	$1, -12(%ebp)
.L86:
	cmpl	$162, -12(%ebp)
	jle	.L87
	.loc 1 278 0
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4100(%eax), %eax
	cmpl	$10239, %eax
	jbe	.L103
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4100(%eax), %eax
	cmpl	$10485759, %eax
	ja	.L105
	movl	$107, -36(%ebp)
	jmp	.L107
.L105:
	movl	$77, -36(%ebp)
.L107:
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	.L108
.L103:
	movl	$32, -40(%ebp)
.L108:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4100(%eax), %eax
	cmpl	$10239, %eax
	ja	.L109
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4100(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L111
.L109:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4100(%eax), %eax
	cmpl	$10485759, %eax
	ja	.L112
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4100(%eax), %eax
	movl	%eax, %edx
	shrl	$10, %edx
	movl	%edx, -28(%ebp)
	jmp	.L114
.L112:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4100(%eax), %eax
	movl	%eax, %edx
	shrl	$20, %edx
	movl	%edx, -28(%ebp)
.L114:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
.L111:
	movl	ggc_stats@GOTOFF(%ebx), %eax
	movl	4108(%eax), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 285 0
	movl	$0, ggc_stats@GOTOFF(%ebx)
	.loc 1 286 0
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	ggc_print_common_statistics, .-ggc_print_common_statistics
	.type	ggc_rlimit_bound, @function
ggc_rlimit_bound:
.LFB22:
	.loc 1 292 0
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
	.loc 1 296 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	getrlimit@PLT
	testl	%eax, %eax
	jne	.L117
	movl	-16(%ebp), %eax
	cmpl	$-1, %eax
	je	.L117
	movl	-16(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fldl	-32(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L121
	jmp	.L117
.L121:
	.loc 1 299 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fstpl	-32(%ebp)
.L117:
	.loc 1 302 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	getrlimit@PLT
	testl	%eax, %eax
	jne	.L122
	movl	-16(%ebp), %eax
	cmpl	$-1, %eax
	je	.L122
	movl	-16(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fldl	-32(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L126
	jmp	.L122
.L126:
	.loc 1 305 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fstpl	-32(%ebp)
.L122:
	.loc 1 308 0
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	getrlimit@PLT
	testl	%eax, %eax
	jne	.L127
	movl	-16(%ebp), %eax
	cmpl	$-1, %eax
	je	.L127
	movl	-16(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fldl	-32(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L131
	jmp	.L127
.L131:
	.loc 1 311 0
	movl	-16(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	fildll	(%esp)
	leal	8(%esp), %esp
	fstpl	-32(%ebp)
.L127:
	.loc 1 315 0
	fldl	-32(%ebp)
	.loc 1 316 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	ggc_rlimit_bound, .-ggc_rlimit_bound
	.section	.rodata
	.align 8
.LC10:
	.long	0
	.long	1104150528
	.align 8
.LC11:
	.long	0
	.long	1079083008
	.align 8
.LC12:
	.long	0
	.long	1077805056
	.text
.globl ggc_min_expand_heuristic
	.type	ggc_min_expand_heuristic, @function
ggc_min_expand_heuristic:
.LFB23:
	.loc 1 321 0
	pushl	%ebp
.LCFI36:
	movl	%esp, %ebp
.LCFI37:
	pushl	%ebx
.LCFI38:
	subl	$52, %esp
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 322 0
	call	physmem_total@PLT
	fstpl	-16(%ebp)
	.loc 1 325 0
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	ggc_rlimit_bound
	fstpl	-16(%ebp)
	.loc 1 329 0
	fldl	-16(%ebp)
	fldl	.LC10@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstpl	-16(%ebp)
	.loc 1 330 0
	fldl	-16(%ebp)
	fldl	.LC11@GOTOFF(%ebx)
	fmulp	%st, %st(1)
	fstpl	-16(%ebp)
	.loc 1 331 0
	fldl	-16(%ebp)
	fldl	.LC11@GOTOFF(%ebx)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L136
	jmp	.L134
.L136:
	fldl	-16(%ebp)
	fstpl	-40(%ebp)
	jmp	.L137
.L134:
	fldl	.LC11@GOTOFF(%ebx)
	fstpl	-40(%ebp)
.L137:
	fldl	-40(%ebp)
	fstpl	-16(%ebp)
	.loc 1 332 0
	fldl	-16(%ebp)
	fldl	.LC12@GOTOFF(%ebx)
	faddp	%st, %st(1)
	fstpl	-16(%ebp)
	.loc 1 334 0
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	.loc 1 335 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	ggc_min_expand_heuristic, .-ggc_min_expand_heuristic
	.section	.rodata
	.align 8
.LC13:
	.long	0
	.long	1083179008
	.align 8
.LC14:
	.long	0
	.long	1075838976
	.align 8
.LC15:
	.long	0
	.long	1085276160
	.align 8
.LC16:
	.long	0
	.long	1090519040
	.text
.globl ggc_min_heapsize_heuristic
	.type	ggc_min_heapsize_heuristic, @function
ggc_min_heapsize_heuristic:
.LFB24:
	.loc 1 340 0
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
	.loc 1 341 0
	call	physmem_total@PLT
	fstpl	-16(%ebp)
	.loc 1 344 0
	fldl	-16(%ebp)
	fstpl	(%esp)
	call	ggc_rlimit_bound
	fstpl	-16(%ebp)
	.loc 1 346 0
	fldl	-16(%ebp)
	fldl	.LC13@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstpl	-16(%ebp)
	.loc 1 350 0
	fldl	-16(%ebp)
	fldl	.LC14@GOTOFF(%ebx)
	fdivrp	%st, %st(1)
	fstpl	-16(%ebp)
	.loc 1 351 0
	fldl	-16(%ebp)
	fldl	.LC15@GOTOFF(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L142
	jmp	.L140
.L142:
	fldl	-16(%ebp)
	fstpl	-48(%ebp)
	jmp	.L143
.L140:
	fldl	.LC15@GOTOFF(%ebx)
	fstpl	-48(%ebp)
.L143:
	fldl	-48(%ebp)
	fstpl	-16(%ebp)
	.loc 1 352 0
	fldl	-16(%ebp)
	fldl	.LC16@GOTOFF(%ebx)
	fucompp
	fnstsw	%ax
	sahf
	ja	.L146
	jmp	.L144
.L146:
	fldl	-16(%ebp)
	fstpl	-40(%ebp)
	jmp	.L147
.L144:
	fldl	.LC16@GOTOFF(%ebx)
	fstpl	-40(%ebp)
.L147:
	fldl	-40(%ebp)
	fstpl	-16(%ebp)
	.loc 1 354 0
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	.loc 1 355 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	ggc_min_heapsize_heuristic, .-ggc_min_heapsize_heuristic
	.section	.rodata
.LC17:
	.string	"ggc-min-expand"
.LC18:
	.string	"ggc-min-heapsize"
	.text
.globl init_ggc_heuristics
	.type	init_ggc_heuristics, @function
init_ggc_heuristics:
.LFB25:
	.loc 1 359 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%ebx
.LCFI46:
	subl	$20, %esp
.LCFI47:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 361 0
	call	ggc_min_expand_heuristic@PLT
	movl	%eax, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 362 0
	call	ggc_min_heapsize_heuristic@PLT
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 364 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	init_ggc_heuristics, .-init_ggc_heuristics
	.local	ggc_stats
	.comm	ggc_stats,4,4
	.local	roots
	.comm	roots,4,4
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
	.byte	0x4
	.long	.LCFI12-.LCFI9
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI13-.LFB18
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
	.byte	0x87
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
	.long	.LCFI18-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI23-.LCFI19
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
	.long	.LCFI24-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI25
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
	.long	.LCFI31-.LCFI29
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
	.long	.LCFI32-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI36-.LFB23
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI40-.LFB24
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
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI44-.LFB25
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
	.file 2 "../../../kg++fe/gnu/ggc.h"
	.file 3 "../../../include/gnu/hashtab.h"
	.file 4 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/include/bits/resource.h"
	.file 9 "../../../kg++fe/gnu/rtl.h"
	.file 10 "../../../kg++fe/gnu/tree.h"
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI25-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xdd3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/ggc-common.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa5
	.uleb128 0x3
	.long	0xaa
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
	.byte	0x4
	.byte	0xd6
	.long	0xb9
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
	.long	0x12d
	.uleb128 0x6
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x177
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x158
	.uleb128 0x6
	.string	"__rlim_t"
	.byte	0x7
	.byte	0x95
	.long	0xfc
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.long	0xaa
	.uleb128 0x6
	.string	"FILE"
	.byte	0x5
	.byte	0x2e
	.long	0x1b8
	.uleb128 0x8
	.long	0x433
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0x9
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x4a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x183
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x1a4
	.uleb128 0x2
	.byte	0x4
	.long	0x43f
	.uleb128 0xa
	.long	0x44b
	.byte	0x1
	.uleb128 0xb
	.long	0x1a4
	.byte	0x0
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0xd
	.long	0x49c
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x4a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x459
	.uleb128 0x2
	.byte	0x4
	.long	0x1b8
	.uleb128 0xf
	.long	0x4b8
	.long	0xaa
	.uleb128 0x10
	.long	0xc0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x44b
	.uleb128 0xf
	.long	0x4ce
	.long	0xaa
	.uleb128 0x10
	.long	0xc0
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4d4
	.uleb128 0x11
	.long	0x4e9
	.byte	0x1
	.long	0xb2
	.uleb128 0xb
	.long	0x4e9
	.uleb128 0xb
	.long	0x4e9
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x4ef
	.uleb128 0x12
	.uleb128 0x6
	.string	"rlim_t"
	.byte	0x8
	.byte	0x7f
	.long	0x194
	.uleb128 0xd
	.long	0x534
	.string	"rlimit"
	.byte	0x8
	.byte	0x8
	.byte	0x88
	.uleb128 0xe
	.string	"rlim_cur"
	.byte	0x8
	.byte	0x8a
	.long	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"rlim_max"
	.byte	0x8
	.byte	0x8c
	.long	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x6
	.string	"hashval_t"
	.byte	0x3
	.byte	0x32
	.long	0xb9
	.uleb128 0x6
	.string	"htab_hash"
	.byte	0x3
	.byte	0x37
	.long	0x55f
	.uleb128 0x2
	.byte	0x4
	.long	0x565
	.uleb128 0x11
	.long	0x575
	.byte	0x1
	.long	0x53d
	.uleb128 0xb
	.long	0x4e9
	.byte	0x0
	.uleb128 0x6
	.string	"htab_eq"
	.byte	0x3
	.byte	0x3e
	.long	0x4ce
	.uleb128 0x6
	.string	"htab_del"
	.byte	0x3
	.byte	0x42
	.long	0x439
	.uleb128 0x6
	.string	"htab_alloc"
	.byte	0x3
	.byte	0x4e
	.long	0x5a6
	.uleb128 0x2
	.byte	0x4
	.long	0x5ac
	.uleb128 0x11
	.long	0x5c1
	.byte	0x1
	.long	0x1a4
	.uleb128 0xb
	.long	0xc7
	.uleb128 0xb
	.long	0xc7
	.byte	0x0
	.uleb128 0x6
	.string	"htab_free"
	.byte	0x3
	.byte	0x51
	.long	0x439
	.uleb128 0xd
	.long	0x6a5
	.string	"htab"
	.byte	0x2c
	.byte	0x3
	.byte	0x59
	.uleb128 0xe
	.string	"hash_f"
	.byte	0x3
	.byte	0x5b
	.long	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"eq_f"
	.byte	0x3
	.byte	0x5e
	.long	0x575
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"del_f"
	.byte	0x3
	.byte	0x61
	.long	0x584
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"entries"
	.byte	0x3
	.byte	0x64
	.long	0x433
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"size"
	.byte	0x3
	.byte	0x67
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"n_elements"
	.byte	0x3
	.byte	0x6a
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"n_deleted"
	.byte	0x3
	.byte	0x6d
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"searches"
	.byte	0x3
	.byte	0x71
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"collisions"
	.byte	0x3
	.byte	0x75
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"alloc_f"
	.byte	0x3
	.byte	0x78
	.long	0x594
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"free_f"
	.byte	0x3
	.byte	0x79
	.long	0x5c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x5d2
	.uleb128 0xd
	.long	0x6fd
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x2
	.byte	0x32
	.uleb128 0xe
	.string	"base"
	.byte	0x2
	.byte	0x33
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"nelt"
	.byte	0x2
	.byte	0x34
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"stride"
	.byte	0x2
	.byte	0x35
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"cb"
	.byte	0x2
	.byte	0x36
	.long	0x439
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.long	0x763
	.string	"ggc_cache_tab"
	.byte	0x14
	.byte	0x2
	.byte	0x3f
	.uleb128 0xe
	.string	"base"
	.byte	0x2
	.byte	0x40
	.long	0x763
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"nelt"
	.byte	0x2
	.byte	0x41
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"stride"
	.byte	0x2
	.byte	0x42
	.long	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"cb"
	.byte	0x2
	.byte	0x43
	.long	0x439
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"marked_p"
	.byte	0x2
	.byte	0x44
	.long	0x779
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x6a5
	.uleb128 0x11
	.long	0x779
	.byte	0x1
	.long	0xb2
	.uleb128 0xb
	.long	0x4e9
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x769
	.uleb128 0x13
	.long	0x84c
	.long	.LASF2
	.value	0x1010
	.byte	0x2
	.byte	0x9f
	.uleb128 0xe
	.string	"num_trees"
	.byte	0x2
	.byte	0xa1
	.long	0x84c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"size_trees"
	.byte	0x2
	.byte	0xa4
	.long	0x85c
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xe
	.string	"num_rtxs"
	.byte	0x2
	.byte	0xa6
	.long	0x84c
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xe
	.string	"size_rtxs"
	.byte	0x2
	.byte	0xa9
	.long	0x85c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xe
	.string	"total_size_trees"
	.byte	0x2
	.byte	0xab
	.long	0xc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xe
	.string	"total_size_rtxs"
	.byte	0x2
	.byte	0xad
	.long	0xc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1004
	.uleb128 0xe
	.string	"total_num_trees"
	.byte	0x2
	.byte	0xaf
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1008
	.uleb128 0xe
	.string	"total_num_rtxs"
	.byte	0x2
	.byte	0xb1
	.long	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x100c
	.byte	0x0
	.uleb128 0xf
	.long	0x85c
	.long	0xb9
	.uleb128 0x10
	.long	0xc0
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.long	0x86c
	.long	0xc7
	.uleb128 0x10
	.long	0xc0
	.byte	0xff
	.byte	0x0
	.uleb128 0x14
	.long	.LASF2
	.byte	0x2
	.byte	0xb2
	.long	0x77f
	.uleb128 0x2
	.byte	0x4
	.long	0x1ac
	.uleb128 0xd
	.long	0x8d8
	.string	"ggc_root"
	.byte	0x14
	.byte	0x1
	.byte	0x37
	.uleb128 0xe
	.string	"next"
	.byte	0x1
	.byte	0x38
	.long	0x8d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"base"
	.byte	0x1
	.byte	0x39
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"nelt"
	.byte	0x1
	.byte	0x3a
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"size"
	.byte	0x1
	.byte	0x3b
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"cb"
	.byte	0x1
	.byte	0x3c
	.long	0x439
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x87d
	.uleb128 0x15
	.long	0x947
	.byte	0x1
	.string	"ggc_add_root"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x16
	.string	"base"
	.byte	0x1
	.byte	0x49
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"nelt"
	.byte	0x1
	.byte	0x4a
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.string	"size"
	.byte	0x1
	.byte	0x4a
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.string	"cb"
	.byte	0x1
	.byte	0x4b
	.long	0x439
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x4d
	.long	0x8d8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x18
	.long	0x99a
	.string	"ggc_htab_delete"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	0xb2
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x16
	.string	"slot"
	.byte	0x1
	.byte	0x5c
	.long	0x433
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"info"
	.byte	0x1
	.byte	0x5d
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x5f
	.long	0x99a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x9a0
	.uleb128 0x3
	.long	0x6fd
	.uleb128 0x15
	.long	0xa61
	.byte	0x1
	.string	"ggc_mark_roots"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x6e
	.long	0x8d8
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"rt"
	.byte	0x1
	.byte	0x6f
	.long	0xa61
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"rti"
	.byte	0x1
	.byte	0x70
	.long	0xa6c
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"ct"
	.byte	0x1
	.byte	0x71
	.long	0xa77
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"cti"
	.byte	0x1
	.byte	0x72
	.long	0x99a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x73
	.long	0xc7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x17
	.string	"elt"
	.byte	0x1
	.byte	0x80
	.long	0x1a6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x81
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x81
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"cb"
	.byte	0x1
	.byte	0x82
	.long	0x439
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x83
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0xa67
	.uleb128 0x3
	.long	0xa6c
	.uleb128 0x2
	.byte	0x4
	.long	0xa72
	.uleb128 0x3
	.long	0x6ab
	.uleb128 0x2
	.byte	0x4
	.long	0xa7d
	.uleb128 0x3
	.long	0x99a
	.uleb128 0x1a
	.long	0xacb
	.byte	0x1
	.string	"ggc_alloc_cleared"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	0x1a4
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x16
	.string	"size"
	.byte	0x1
	.byte	0x94
	.long	0xc7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x96
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1a
	.long	0xb2b
	.byte	0x1
	.string	"ggc_realloc"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	0x1a4
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x9e
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"size"
	.byte	0x1
	.byte	0x9f
	.long	0xc7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0xa1
	.long	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"old_size"
	.byte	0x1
	.byte	0xa2
	.long	0xc7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1a
	.long	0xb6a
	.byte	0x1
	.string	"ggc_calloc"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.long	0x1a4
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x16
	.string	"s1"
	.byte	0x1
	.byte	0xcd
	.long	0xc7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"s2"
	.byte	0x1
	.byte	0xcd
	.long	0xc7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x15
	.long	0xbcc
	.byte	0x1
	.string	"ggc_print_common_statistics"
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x16
	.string	"stream"
	.byte	0x1
	.byte	0xdc
	.long	0x877
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"stats"
	.byte	0x1
	.byte	0xdd
	.long	0xbcc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"code"
	.byte	0x1
	.byte	0xdf
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x86c
	.uleb128 0x1b
	.long	0xc1e
	.string	"ggc_rlimit_bound"
	.byte	0x1
	.value	0x124
	.byte	0x1
	.long	0xc1e
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x1c
	.string	"limit"
	.byte	0x1
	.value	0x123
	.long	0xc1e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"rlim"
	.byte	0x1
	.value	0x126
	.long	0x4fe
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x4
	.string	"double"
	.byte	0x8
	.byte	0x4
	.uleb128 0x1e
	.long	0xc72
	.byte	0x1
	.string	"ggc_min_expand_heuristic"
	.byte	0x1
	.value	0x141
	.byte	0x1
	.long	0xb2
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x1d
	.string	"min_expand"
	.byte	0x1
	.value	0x142
	.long	0xc1e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1e
	.long	0xcc3
	.byte	0x1
	.string	"ggc_min_heapsize_heuristic"
	.byte	0x1
	.value	0x154
	.byte	0x1
	.long	0xb2
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x1d
	.string	"min_heap_kbytes"
	.byte	0x1
	.value	0x155
	.long	0xc1e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.string	"init_ggc_heuristics"
	.byte	0x1
	.value	0x167
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x17
	.string	"ggc_stats"
	.byte	0x1
	.byte	0x2d
	.long	0xbcc
	.byte	0x5
	.byte	0x3
	.long	ggc_stats
	.uleb128 0x17
	.string	"roots"
	.byte	0x1
	.byte	0x3f
	.long	0x8d8
	.byte	0x5
	.byte	0x3
	.long	roots
	.uleb128 0xf
	.long	0xd23
	.long	0x9f
	.uleb128 0x10
	.long	0xc0
	.byte	0xa2
	.byte	0x0
	.uleb128 0x20
	.string	"rtx_name"
	.byte	0x9
	.byte	0x39
	.long	0xd35
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0xd13
	.uleb128 0xf
	.long	0xd45
	.long	0x9f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x20
	.string	"tree_code_name"
	.byte	0xa
	.byte	0x53
	.long	0xd5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0xd3a
	.uleb128 0xf
	.long	0xd6d
	.long	0xa6c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x20
	.string	"gt_ggc_rtab"
	.byte	0x2
	.byte	0x3a
	.long	0xd82
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0xd62
	.uleb128 0x20
	.string	"gt_ggc_deletable_rtab"
	.byte	0x2
	.byte	0x3b
	.long	0xda6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0xd62
	.uleb128 0xf
	.long	0xdb6
	.long	0x99a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x20
	.string	"gt_ggc_cache_rtab"
	.byte	0x2
	.byte	0x48
	.long	0xdd1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.long	0xdab
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xdb
	.value	0x2
	.long	.Ldebug_info0
	.long	0xdd7
	.long	0x8de
	.string	"ggc_add_root"
	.long	0x9a5
	.string	"ggc_mark_roots"
	.long	0xa82
	.string	"ggc_alloc_cleared"
	.long	0xacb
	.string	"ggc_realloc"
	.long	0xb2b
	.string	"ggc_calloc"
	.long	0xb6a
	.string	"ggc_print_common_statistics"
	.long	0xc28
	.string	"ggc_min_expand_heuristic"
	.long	0xc72
	.string	"ggc_min_heapsize_heuristic"
	.long	0xcc3
	.string	"init_ggc_heuristics"
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
	.string	"ggc_statistics"
.LASF1:
	.string	"_IO_FILE"
.LASF0:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
